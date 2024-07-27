# Scrap Speedtest

This project demonstrates how to scrape data from the Speedtest Global Index website using Python, Selenium, and Google Colab. The data includes Mobile and Fixed Broadband connection statistics for countries worldwide. The scraped data is stored in CSV files and SQL format for database insertion.

## Prerequisites

- **Python Version:** 3.x
- **Environment:** Google Colab or Local Jupyter Notebook
- **Packages:** `selenium`, `beautifulsoup4`, `pandas`, `pymysql`, `chromedriver-autoinstaller`

## Setup Instructions

### Google Colab Environment

If running in Google Colab, set up Selenium and ChromeDriver with the following commands:

```python
# Install necessary packages and ChromeDriver
%%shell
sudo apt -y update
sudo apt install -y wget curl unzip
wget http://archive.ubuntu.com/ubuntu/pool/main/libu/libu2f-host/libu2f-udev_1.1.4-1_all.deb
dpkg -i libu2f-udev_1.1.4-1_all.deb
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb
CHROME_DRIVER_VERSION=`curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE`
wget -N https://chromedriver.storage.googleapis.com/$CHROME_DRIVER_VERSION/chromedriver_linux64.zip -P /tmp/
unzip -o /tmp/chromedriver_linux64.zip -d /tmp/
chmod +x /tmp/chromedriver
mv /tmp/chromedriver /usr/local/bin/chromedriver
pip install selenium
