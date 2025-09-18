# 🤝 SplitPay - Blockchain-Powered Group Expense Splitter

<div align="center">

![SplitPay Logo](https://img.shields.io/badge/SplitPay-🤝_Split_Smart-blue?style=for-the-badge&logo=blockchain)
[![Aptos](https://img.shields.io/badge/Built_on-Aptos-00D4AA?style=for-the-badge&logo=aptos)](https://aptoslabs.com/)
[![Move](https://img.shields.io/badge/Language-Move-FF6B6B?style=for-the-badge)](https://move-language.github.io/move/)

**💸 Say goodbye to awkward "you owe me" conversations forever! 💸**

*The smart way to split expenses with friends, powered by blockchain transparency*

</div>

---

## 🎯 **What is SplitPay?**

SplitPay is a **revolutionary decentralized application** that transforms how groups handle shared expenses. Built on the blazing-fast Aptos blockchain, it eliminates the social friction of collecting money from friends by automating fair splits with mathematical precision.

### 🔥 **The Problem We Solve**
- 😤 Tired of chasing friends for money?
- 🤔 Confused about who paid what during group trips?
- 📱 Sick of using multiple apps that don't actually transfer money?
- 💔 Relationships strained over unpaid group expenses?

**SplitPay fixes this with blockchain-guaranteed fairness!**

---

## ✨ **Core Features**

### 🎯 **Smart Splitting**
- **Equal Division**: Automatically calculates fair shares for all participants
- **Instant Settlement**: Participants pay directly through smart contracts
- **Zero Disputes**: Blockchain transparency eliminates arguments

### 🔒 **Trustless & Secure**
- **No Central Authority**: Pure peer-to-peer transactions
- **Cryptographic Security**: Your money is protected by Aptos blockchain
- **Immutable Records**: All transactions permanently recorded

### ⚡ **Lightning Fast**
- **Sub-Second Transactions**: Built on Aptos for speed
- **Low Fees**: Minimal gas costs for all operations
- **Real-time Updates**: Instant settlement notifications

### 💰 **APT Native Integration**
- **Native APT Support**: Uses Aptos' native cryptocurrency
- **Octa Precision**: Handles micro-payments with 8-decimal precision
- **No Middleman**: Direct wallet-to-wallet transfers

---

## 🚀 **How SplitPay Works**

### **Step 1: Create Expense Split** 🏗️
The person who paid creates a split group:
```move
create_expense_split(payer, total_amount, participants)
```
*Example: Alice pays 40 APT for group dinner, adds Bob, Charlie, and Dave*

### **Step 2: Automatic Calculation** 🧮
Smart contract instantly calculates equal shares:
- **Total**: 40 APT (4,000,000,000 Octas)
- **Per Person**: 10 APT (1,000,000,000 Octas)

### **Step 3: Easy Settlement** 💳
Each participant settles with one transaction:
```move
settle_expense(participant, payer_address)
```
*Bob, Charlie, and Dave each send 10 APT directly to Alice*

---

## 🎮 **Quick Start Guide**

### **Prerequisites**
- [Aptos CLI](https://aptos.dev/cli-tools/aptos-cli-tool/install-aptos-cli) installed
- Aptos wallet with APT tokens
- Basic understanding of blockchain transactions

### **🛠️ Setup & Deployment**

```bash
# 1. Clone the repository
git clone https://github.com/yourusername/splitpay-aptos
cd splitpay-aptos

# 2. Initialize for your preferred network
aptos init --network devnet  # Start with devnet for testing

# 3. Fund your account (devnet/testnet only)
aptos account fund-with-faucet --account default

# 4. Deploy the smart contract
aptos move publish --named-addresses ExpenseSplitter=default

# 5. Start splitting expenses! 🎉
```

### **💡 Real-World Example: Weekend Trip**

**Scenario**: Mountain cabin weekend for 4 friends
- **Total Cost**: 200 APT (cabin + supplies)
- **Split Among**: Alice, Bob, Charlie, Dave
- **Each Pays**: 50 APT

```bash
# Alice creates the expense split
aptos move run --function-id YOUR_ADDRESS::ExpenseSplitter::create_expense_split \
  --args u64:20000000000 vector<address>:[0xBob,0xCharlie,0xDave]

# Bob settles his share (50 APT)
aptos move run --function-id YOUR_ADDRESS::ExpenseSplitter::settle_expense \
  --args address:0xAlice

# Charlie and Dave do the same!
```

---

## 🌐 **Network Support**

| Network | Status | Best For | Tokens Needed |
|---------|--------|----------|---------------|
| **🧪 Devnet** | ✅ Live | Testing & Development | Free (Faucet) |
| **🔬 Testnet** | ✅ Live | Pre-production Testing | Free (Faucet) |
| **🌍 Mainnet** | ✅ Live | Real Transactions | Real APT Required |

---

## 🔮 **Future Roadmap**

### **Phase 1: Core Enhancement** (Q1 2025)
- 🎯 **Custom Split Ratios**: Not everyone pays equally
- 🏷️ **Expense Categories**: Track different types of expenses
- 📊 **Settlement History**: View past group expenses

### **Phase 2: Advanced Features** (Q2 2025)
- 💱 **Multi-Token Support**: Split expenses in different cryptocurrencies
- 🔔 **Smart Notifications**: Automated payment reminders
- 📱 **Mobile SDK**: Easy integration for mobile apps

### **Phase 3: Ecosystem Expansion** (Q3 2025)
- 🌐 **Web Interface**: User-friendly frontend application
- 🤖 **Telegram Bot**: Split expenses directly in group chats
- 🔗 **Cross-Chain Bridge**: Expand to other blockchains

### **Phase 4: Enterprise Solutions** (Q4 2025)
- 🏢 **Corporate Expense Management**: Business-grade features
- 📈 **Analytics Dashboard**: Detailed spending insights
- 🔐 **Multi-Signature Support**: Enhanced security for large amounts

---

## 📊 **Technical Specifications**

### **Smart Contract Details**
- **Language**: Move
- **Blockchain**: Aptos
- **Functions**: 2 core functions (create_expense_split, settle_expense)
- **Gas Optimization**: ~45 lines of efficient code
- **Security**: Audited smart contract patterns

### **Token Precision**
- **Base Unit**: Octas (1 APT = 100,000,000 Octas)
- **Minimum Split**: 0.00000001 APT (1 Octa)
- **Maximum Participants**: Virtually unlimited

---

## 🎨 **Use Cases**

### **👥 Social Scenarios**
- 🍕 Pizza nights with friends
- 🎬 Group movie tickets
- ☕ Coffee shop runs
- 🎮 Gaming tournament entry fees

### **✈️ Travel & Events**
- 🏖️ Vacation rentals
- 🚗 Road trip gas money
- 🎪 Concert tickets
- 🍽️ Group dinners

### **🎓 Student Life**
- 📚 Textbook sharing
- 🏠 Dorm room supplies
- 🍜 Late-night food orders
- 📝 Group project expenses

---

## 🤝 **Contributing to SplitPay**

We welcome contributions from the community! Here's how you can help:

### **🐛 Bug Reports**
Found an issue? [Open an issue](https://github.com/yourusername/splitpay-aptos/issues) with:
- Clear description of the problem
- Steps to reproduce
- Expected vs actual behavior

### **💡 Feature Requests**
Have a cool idea? We'd love to hear it!
- Check existing [feature requests](https://github.com/yourusername/splitpay-aptos/issues?q=is%3Aissue+is%3Aopen+label%3Aenhancement)
- Create a new issue with the `enhancement` label
- Describe the feature and its benefits

### **🔧 Development**
Ready to code?
1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Write tests for your changes
4. Ensure all tests pass
5. Submit a pull request

---

## ⚠️ **Important Notes**

### **🛡️ Security**
- Always test on devnet/testnet before mainnet
- This is experimental software - use at your own risk
- Keep your private keys secure
- Verify all transaction details before confirming

### **💰 **Cost Considerations**
- Gas fees apply to all transactions
- Devnet and testnet are free
- Mainnet requires real APT tokens

### **🔍 **Transparency**
- All transactions are public on the blockchain
- Smart contract code is open source
- No hidden fees or commissions

---

## 📄 **License**

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 🌟 **Join the Community**

<div align="center">

[![Twitter](https://img.shields.io/badge/Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/splitpay_aptos)
[![Discord](https://img.shields.io/badge/Discord-5865F2?style=for-the-badge&logo=discord&logoColor=white)](https://discord.gg/splitpay)
[![Telegram](https://img.shields.io/badge/Telegram-26A5E4?style=for-the-badge&logo=telegram&logoColor=white)](https://t.me/splitpay_community)

**⭐ Star this repo if you found it helpful! ⭐**

*Made with ❤️ for the Aptos ecosystem*

**🚀 Stop manually tracking who owes what. Let blockchain handle it! 🚀**

</div>
