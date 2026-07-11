#!/usr/bin/env bash
set -euo pipefail

# لنُشغّل على Ubuntu/Debian (في GitHub Actions استخدام sudo مقبول)
sudo apt-get update
sudo apt-get install -y build-essential gfortran libopenblas-dev liblapack-dev pkg-config

# تحسين أدوات البناء و تثبيت numpy أولاً
python -m pip install --upgrade pip setuptools wheel build
pip install numpy==1.26.3

# ثم تثبيت بقية المتطلبات
pip install -r requirements.txt