module MyModule::ExpenseSplitter {
    use aptos_framework::signer;
    use aptos_framework::coin;
    use aptos_framework::aptos_coin::AptosCoin;
    use std::vector;

    /// Struct representing an expense split group
    struct ExpenseGroup has store, key {
        total_expense: u64,     // Total amount to be split
        participants: vector<address>,  // List of participant addresses
        paid_by: address,       // Who paid the initial expense
        amount_per_person: u64, // Amount each person owes
        settled_count: u64,     // Number of people who have settled
    }

    /// Function to create a new expense group and split the cost
    public fun create_expense_split(
        payer: &signer, 
        total_amount: u64, 
        participants: vector<address>
    ) {
        let payer_addr = signer::address_of(payer);
        let participant_count = vector::length(&participants);
        
        // Calculate amount per person (simple division)
        let amount_per_person = total_amount / participant_count;
        
        let expense_group = ExpenseGroup {
            total_expense: total_amount,
            participants,
            paid_by: payer_addr,
            amount_per_person,
            settled_count: 0,
        };
        
        move_to(payer, expense_group);
    }

    /// Function for participants to settle their share of the expense
    public fun settle_expense(
        participant: &signer, 
        payer_address: address
    ) acquires ExpenseGroup {
        let expense_group = borrow_global_mut<ExpenseGroup>(payer_address);
        let participant_addr = signer::address_of(participant);
        
        // Check if participant is in the group
        assert!(vector::contains(&expense_group.participants, &participant_addr), 1);
        
        // Transfer the participant's share to the original payer
        let payment = coin::withdraw<AptosCoin>(participant, expense_group.amount_per_person);
        coin::deposit<AptosCoin>(payer_address, payment);
        
        // Update settled count
        expense_group.settled_count = expense_group.settled_count + 1;
    }
}