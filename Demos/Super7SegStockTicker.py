# Super7SegStockTicker.py
#
# Demo of Maniacal Labs Super 7 Seg Display
# 
# Uses Alpha Vantage API to obtain current prices for 
# stock and cryptocurrencies, then displays the prices
# to the Super7Seg display connected to the specified COM port
#
# Alpha Vantage API documentation: https://www.alphavantage.co/documentation/

import json
import requests
import time
from super7 import Super7, BaudRates

# Alpha Vantage API Key.
# https://www.alphavantage.co/support/#api-key
API_KEY = "---YOUR API KEY HERE---"

# Total display width. Equal to number of S7 displays x 12
TOTAL_CHARS = 12

# Stock and Cryptocurrency symbols
STOCKS = ['RHT', 'AMD', 'NVDA', 'ML']
CRYPTOS = ['BTC', 'ETH']

# Delay between each quote displayed
QUOTE_DISPLAY_DELAY = 5

# List of quotes will display this many times before prices are updated
GET_QUOTES_LOOP_COUNT = 5

# Initialize S7 display
# --Specify your COM port here--
s7 = Super7('COM4', baudrate=BaudRates.BAUD_38400)
s7.clear()

def scroll_in_msg(msg, delay=0.1):
    """Scroll text from R to L across available S7 displays.
    
    The display will pause when the quote reaches the left side
    of the display. This delay specified by QUOTE_DISPLAY_DELAY
    """
    msg = ''.join(([' '] * TOTAL_CHARS)) + msg
    for i in range(len(msg) + 1):
        s7.write(msg[i:i + TOTAL_CHARS])
        if i == TOTAL_CHARS:
            time.sleep(QUOTE_DISPLAY_DELAY)
        time.sleep(delay)

def get_current_stock_price(symbol):
    """Requests intra-day prices, returns most recent price."""
    r = requests.get("https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=" + symbol + "&interval=1min&apikey=" + API_KEY)
    data = r.json()
    del r
    current = data["Meta Data"]["3. Last Refreshed"]
    price = float(data["Time Series (1min)"][current]["1. open"])
    return price
	
def get_current_crypto_price(symbol):
    """Requests intra-day prices, returns most recent price."""
    r = requests.get("https://www.alphavantage.co/query?function=DIGITAL_CURRENCY_INTRADAY&symbol=" + symbol + "&market=CNY&apikey=" + API_KEY)
    data = r.json()
    del r
    current = data["Meta Data"]["7. Last Refreshed"]
    price = float(data["Time Series (Digital Currency Intraday)"][current]["1b. price (USD)"])
    return price

def update_quotes(stocks, cryptos):
    """Get current quotes, return dict with {symbol : price}."""      
    dict_quotes = {i: get_current_stock_price(i) for i in stocks}
    for i in cryptos:
        dict_quotes[i] = get_current_crypto_price(i)
    return dict_quotes

while True:
    s7.clear()
    s7.write("-GET QUOTES-")
    quotesToPrint = update_quotes(STOCKS, CRYPTOS)
    for i in range(GET_QUOTES_LOOP_COUNT):
        for k, v in quotesToPrint.items():
            # --Uncomment the next two lines for static display (no scroll)
            # s7.write("" + k + " {0:.2f}".format(v))
            # time.sleep(QUOTE_DISPLAY_DELAY)
            # --OR--
            # --Uncomment the next two lines for scrolling display
            msg = "" + k + " {0:.2f}".format(v)
            scroll_in_msg(msg, 0.1)
            