#!/bin/bash
BTC=$(curl -s "https://api.binance.com/api/v3/ticker/price?symbol=BTCUSDT" | python3 -c "import sys,json; d=json.load(sys.stdin); print(f'\${float(d[\"price\"]):,.0f}')" 2>/dev/null)
sketchybar --set btc label="${BTC:-N/A}"
