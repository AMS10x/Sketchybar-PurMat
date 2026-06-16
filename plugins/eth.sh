#!/bin/bash
ETH=$(curl -s "https://api.binance.com/api/v3/ticker/price?symbol=ETHUSDT" | python3 -c "import sys,json; d=json.load(sys.stdin); print(f'\${float(d[\"price\"]):,.0f}')" 2>/dev/null)
sketchybar --set eth label="${ETH:-N/A}"
