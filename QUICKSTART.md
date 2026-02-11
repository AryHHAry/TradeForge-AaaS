# TradeForge AaaS - Quick Reference Guide

**Author:** Ary HH | **Email:** aryhharyanto@proton.me | **GitHub:** @AryHHAry

---

## 🚀 Quick Start (3 Steps)

```bash
# 1. Clone or extract
cd trade-forge-aaas

# 2. Setup (choose one)
./setup.sh          # Interactive setup
# OR
./start.sh          # Quick start with Docker
# OR
make init && make start  # Using Makefile

# 3. Access
# Frontend: http://localhost:8501
# Backend:  http://localhost:8000/docs
```

---

## 📁 Project Structure

```
trade-forge-aaas/
├── backend/           # FastAPI + DeFi + Trading
├── frontend/          # Streamlit Dashboard
├── docker/            # Docker configuration
├── .env.example       # Configuration template
└── Makefile          # Development commands
```

---

## 🛠️ Essential Commands

```bash
# Setup
make init              # First time setup
make install           # Install dependencies

# Run
make start             # Start all services (Docker)
make stop              # Stop all services
make restart           # Restart all services
make dev-backend       # Run backend locally
make dev-frontend      # Run frontend locally

# Development
make logs              # View all logs
make shell-backend     # Backend container shell
make test              # Run tests
make format            # Format code
make lint              # Check code quality

# Database
make migrate           # Run migrations
make shell-postgres    # PostgreSQL shell

# Cleanup
make clean             # Remove containers & images
```

---

## 🔧 Configuration

### 1. Environment Variables (.env)

```bash
# Copy template
cp .env.example .env

# Edit with your values
nano .env

# Required:
SECRET_KEY=           # Generate: openssl rand -hex 32
ENCRYPTION_KEY=       # Generate: python -c "from cryptography.fernet import Fernet; print(Fernet.generate_key().decode())"

# Exchange APIs (optional):
BINANCE_API_KEY=
BINANCE_API_SECRET=

# Blockchain RPCs (optional):
ETH_RPC_URL=
POLYGON_RPC_URL=
```

### 2. Database Setup

```bash
# Auto (with Docker)
make start  # Automatically creates PostgreSQL

# Manual
createdb tradeforge_db
make migrate
```

---

## 📊 Features Overview

### Backend (FastAPI)
✅ JWT Authentication  
✅ API Key Encryption  
✅ Bilingual i18n (EN/ID)  
✅ DeFi Integration (Uniswap, Aave)  
✅ SQLAlchemy Models  
✅ Alembic Migrations  
✅ Pydantic Validation  

### Frontend (Streamlit)
✅ Bilingual Dashboard  
✅ Backtest Page  
✅ Live Trading Panel  
✅ DeFi Operations  
✅ Settings Management  
✅ Risk Controls  

---

## 🔐 Security Checklist

Before production:
- [ ] Change `SECRET_KEY` in .env
- [ ] Generate new `ENCRYPTION_KEY`
- [ ] Use strong database passwords
- [ ] Enable HTTPS/SSL
- [ ] Set up firewall rules
- [ ] Configure rate limiting
- [ ] Review CORS settings
- [ ] Enable security headers
- [ ] Set up monitoring

---

## 🐛 Troubleshooting

### Docker Issues
```bash
# Rebuild containers
make clean && make build && make start

# View logs
make logs

# Check container status
docker-compose ps
```

### Port Conflicts
```bash
# Check what's using ports
lsof -i :8000  # Backend
lsof -i :8501  # Frontend
lsof -i :5432  # PostgreSQL

# Kill process or change ports in docker-compose.yml
```

### Database Connection
```bash
# Test PostgreSQL
make shell-postgres

# Reset database
docker-compose down -v
make start
```

---

## 📚 Documentation

- `README.md` - Full documentation
- `STRUCTURE.md` - Project structure
- `CONTRIBUTING.md` - Contribution guide
- `CHANGELOG.md` - Version history
- `DELIVERY.md` - Delivery notes

---

## 🔗 Important Links

- **API Docs:** http://localhost:8000/docs
- **Frontend:** http://localhost:8501
- **GitHub:** https://github.com/AryHHAry
- **Email:** aryhharyanto@proton.me

---

## ⚠️ Critical Warnings

### Trading Risks
🔴 This software executes REAL trades with REAL money  
🔴 Cryptocurrency trading is HIGHLY RISKY  
🔴 Never invest more than you can afford to lose  
🔴 Always test in testnet/sandbox first  
🔴 Use stop-loss and risk management  

### DeFi Risks
🔴 Smart contracts may have vulnerabilities  
🔴 Impermanent loss in liquidity pools  
🔴 High gas fees on Ethereum  
🔴 Liquidation risk when borrowing  

### Legal
⚖️ For educational purposes only  
⚖️ Not financial advice  
⚖️ Comply with local regulations  
⚖️ Use at your own risk  

---

## 🆘 Support

**Issues?** Open an issue on GitHub  
**Questions?** Email: aryhharyanto@proton.me  
**Contribute?** See CONTRIBUTING.md  

---

## 📄 License

MIT License © 2026 Ary HH

See LICENSE file for full text and disclaimer.

---

## 🎉 Next Steps

1. ✅ Read README.md thoroughly
2. ✅ Configure .env file
3. ✅ Run `make start`
4. ✅ Access http://localhost:8501
5. ✅ Test with paper trading first
6. ✅ Review risk management settings
7. ✅ Start small with real trading

---

**Built with ❤️ by Ary HH**  
**© 2026 TradeForge AaaS**

**Happy Trading! 🚀**
