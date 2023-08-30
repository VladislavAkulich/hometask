from selenium import webdriver
from selenium.webdriver.chrome.options import Options


class DriverLibrary:
    def __init__(self, *args, **kwargs):
        print(f"Library for simple Driver configuration")

    def get_chrome_options(self):
        chrome_options: Options = webdriver.ChromeOptions()
        chrome_options.add_argument("--no-sandbox")
        chrome_options.add_argument("--start-maximized")
        return chrome_options
