# TradeForge AaaS

**Algorithm-as-a-Service Trading Platform**

---

**Author:** Ary HH  
**Email:** aryhharyanto@proton.me / caterya.tech@proton.me  
**GitHub:** https://github.com/AryHHAry  
**© 2026**

---

## 🇬🇧 English Description

TradeForge AaaS is a modern, multi-tenant algorithmic trading platform that combines traditional CEX trading with DeFi operations. Built with Python, FastAPI, and Streamlit, it enables users to backtest strategies, execute live trades across multiple exchanges, and interact with DeFi protocols like Uniswap V3 and Aave V3.

### Key Features

- 🔐 **Multi-tenant Authentication**: JWT-based user authentication with encrypted API keys
- 📊 **Backtesting Engine**: Test strategies with historical data using vectorbt
- 🤖 **Live Trading**: Execute trades on Binance, Bybit, Coinbase, Kraken via CCXT
- 🌐 **DeFi Integration**: Swap tokens on Uniswap V3, lend/borrow on Aave V3
- 📈 **Risk Management**: Position sizing, stop-loss, daily loss limits
- 🌍 **Bilingual**: English & Bahasa Indonesia support
- 📱 **Alerts**: Telegram/Discord notifications (configurable)

### Tech Stack

- **Backend**: FastAPI, PostgreSQL, SQLAlchemy 2.x, Alembic
- **Frontend**: Streamlit
- **Cache/Queue**: Redis
- **DeFi**: web3.py, web3-ethereum-defi
- **Exchange**: CCXT
- **Containerization**: Docker, docker-compose

---

## 🇮🇩 Deskripsi Bahasa Indonesia

TradeForge AaaS adalah platform algorithmic trading modern multi-tenant yang menggabungkan trading CEX tradisional dengan operasi DeFi. Dibangun dengan Python, FastAPI, dan Streamlit, platform ini memungkinkan pengguna untuk backtest strategi, eksekusi trading live di berbagai exchange, dan berinteraksi dengan protokol DeFi seperti Uniswap V3 dan Aave V3.

### Fitur Utama

- 🔐 **Autentikasi Multi-tenant**: Autentikasi berbasis JWT dengan enkripsi API keys
- 📊 **Engine Backtesting**: Test strategi dengan data historis menggunakan vectorbt
- 🤖 **Live Trading**: Eksekusi trading di Binance, Bybit, Coinbase, Kraken via CCXT
- 🌐 **Integrasi DeFi**: Swap token di Uniswap V3, lending/borrowing di Aave V3
- 📈 **Manajemen Risiko**: Position sizing, stop-loss, batas kerugian harian
- 🌍 **Bilingual**: Dukungan English & Bahasa Indonesia
- 📱 **Notifikasi**: Alert Telegram/Discord (dapat dikonfigurasi)

---

## 🚀 Installation & Setup

### Prerequisites

- Python 3.11+
- Docker & Docker Compose
- PostgreSQL 15+
- Redis 7+
- Node.js (optional, for future frontend expansion)

### Local Development

1. **Clone the repository**
```bash
git clone https://github.com/AryHHAry/trade-forge-aaas.git
cd trade-forge-aaas
```

2. **Setup environment variables**
```bash
cp .env.example .env
# Edit .env with your configurations
```

3. **Run with Docker Compose**
```bash
docker-compose up -d
```

4. **Access the application**
- Backend API: http://localhost:8000
- API Docs: http://localhost:8000/docs
- Frontend Dashboard: http://localhost:8501

### Manual Setup (without Docker)

1. **Install Poetry**
```bash
curl -sSL https://install.python-poetry.org | python3 -
```

2. **Install backend dependencies**
```bash
cd backend
poetry install
poetry run alembic upgrade head
poetry run uvicorn app.main:app --reload
```

3. **Install frontend dependencies**
```bash
cd frontend
pip install -r requirements.txt
streamlit run app.py
```

---

## ⚠️ RISK WARNING / PERINGATAN RISIKO

### 🇬🇧 English

**IMPORTANT DISCLAIMER:**

Trading cryptocurrencies and using DeFi protocols carries substantial risk of financial loss. This software is provided for educational and research purposes only. 

- **No Financial Advice**: This platform does NOT provide financial, investment, or trading advice
- **Use at Your Own Risk**: You are solely responsible for any trading decisions and their outcomes
- **Loss of Capital**: You may lose some or all of your invested capital
- **Smart Contract Risk**: DeFi protocols may contain bugs or vulnerabilities
- **Market Volatility**: Crypto markets are highly volatile and unpredictable
- **No Warranty**: This software is provided "AS IS" without warranty of any kind

**Always:**
- Start with small amounts
- Test strategies thoroughly in backtesting before live trading
- Never invest more than you can afford to lose
- Do your own research (DYOR)
- Understand the risks of leverage and DeFi

### 🇮🇩 Bahasa Indonesia

**DISCLAIMER PENTING:**

Trading cryptocurrency dan penggunaan protokol DeFi membawa risiko kerugian finansial yang substansial. Software ini disediakan untuk tujuan edukasi dan riset saja.

- **Bukan Nasihat Keuangan**: Platform ini TIDAK memberikan nasihat keuangan, investasi, atau trading
- **Gunakan dengan Risiko Sendiri**: Anda sepenuhnya bertanggung jawab atas keputusan trading dan hasilnya
- **Kehilangan Modal**: Anda mungkin kehilangan sebagian atau seluruh modal yang diinvestasikan
- **Risiko Smart Contract**: Protokol DeFi mungkin mengandung bug atau kerentanan
- **Volatilitas Pasar**: Pasar crypto sangat volatil dan tidak dapat diprediksi
- **Tanpa Garansi**: Software ini disediakan "APA ADANYA" tanpa jaminan apapun

**Selalu:**
- Mulai dengan jumlah kecil
- Test strategi secara menyeluruh dalam backtesting sebelum live trading
- Jangan investasi lebih dari yang mampu Anda rugikan
- Lakukan riset sendiri (DYOR)
- Pahami risiko leverage dan DeFi

---

## 📖 Documentation

Detailed documentation is available in the `/docs` folder:

- [API Documentation](docs/api.md)
- [DeFi Integration Guide](docs/defi.md)
- [Strategy Development](docs/strategies.md)
- [Deployment Guide](docs/deployment.md)

---

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 📧 Contact

**Ary HH**
- Email: aryhharyanto@proton.me
- Email: caterya.tech@proton.me
- GitHub: [@AryHHAry](https://github.com/AryHHAry)

---

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

---

## 🙏 Acknowledgments

- FastAPI team for the amazing framework
- CCXT for exchange connectivity
- web3-ethereum-defi for DeFi integrations
- Streamlit for rapid dashboard prototyping

---

**Built with ❤️ by Ary HH | © 2026**
