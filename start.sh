#!/data/data/com.termux/files/usr/bin/sh
cd "$(dirname "$0")"
if ! command -v python >/dev/null 2>&1; then
    pkg update -y
    pkg install -y python
fi
python -m pip install --upgrade pip
python src/Main.py
