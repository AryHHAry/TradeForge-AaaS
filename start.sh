#!/bin/bash

# TradeForge AaaS - Quick Start Script
# Author: Ary HH
# Email: aryhharyanto@proton.me
# GitHub: https://github.com/AryHHAry
# © 2026

set -e

echo "════════════════════════════════════════════════════════════════"
echo "   TradeForge AaaS - Algorithm-as-a-Service Trading Platform"
echo "   Author: Ary HH | GitHub: @AryHHAry"
echo "════════════════════════════════════════════════════════════════"
echo ""

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "❌ Docker is not installed. Please install Docker first."
    echo "   Visit: https://docs.docker.com/get-docker/"
    exit 1
fi

# Check if Docker Compose is installed
if ! command -v docker-compose &> /dev/null; then
    echo "❌ Docker Compose is not installed. Please install Docker Compose first."
    echo "   Visit: https://docs.docker.com/compose/install/"
    exit 1
fi

echo "✅ Docker and Docker Compose are installed"
echo ""

# Check if .env file exists
if [ ! -f .env ]; then
    echo "📝 Creating .env file from .env.example..."
    cp .env.example .env
    echo "✅ .env file created"
    echo "⚠️  Please edit .env file and add your API keys and secrets"
    echo ""
else
    echo "✅ .env file already exists"
    echo ""
fi

echo "🚀 Starting TradeForge AaaS..."
echo ""

# Navigate to docker directory
cd docker

# Pull latest images (optional)
echo "📦 Pulling Docker images..."
docker-compose pull

# Build containers
echo "🔨 Building containers..."
docker-compose build

# Start services
echo "▶️  Starting services..."
docker-compose up -d

echo ""
echo "════════════════════════════════════════════════════════════════"
echo "   ✅ TradeForge AaaS is now running!"
echo "════════════════════════════════════════════════════════════════"
echo ""
echo "📊 Access points:"
echo "   • Frontend Dashboard: http://localhost:8501"
echo "   • Backend API:        http://localhost:8000"
echo "   • API Documentation:  http://localhost:8000/docs"
echo "   • PgAdmin (optional): http://localhost:5050"
echo ""
echo "🔍 Check status:"
echo "   docker-compose ps"
echo ""
echo "📋 View logs:"
echo "   docker-compose logs -f"
echo ""
echo "🛑 Stop services:"
echo "   docker-compose down"
echo ""
echo "════════════════════════════════════════════════════════════════"
echo ""
echo "⚠️  IMPORTANT REMINDERS:"
echo "   1. Edit .env file with your API keys"
echo "   2. Never commit .env file to version control"
echo "   3. Review security settings before production deployment"
echo "   4. Read the full documentation in README.md"
echo ""
echo "════════════════════════════════════════════════════════════════"
echo ""
echo "Happy Trading! 🚀"
echo ""
echo "Author: Ary HH"
echo "Email: aryhharyanto@proton.me"
echo "GitHub: https://github.com/AryHHAry"
echo ""
