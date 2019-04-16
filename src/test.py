import time
import os

from selenium import webdriver
from selenium.webdriver.common.keys import Keys

output_image_path = os.path.join(os.path.dirname(__file__), 'screenshot.png')

def main():
    options = webdriver.ChromeOptions()
    options.add_argument('--headless')
    options.add_argument('--no-sandbox')
    
    driver = webdriver.Chrome(options=options)

    driver.get('https://www.google.co.jp/')
    search = driver.find_element_by_name('q')
    search.send_keys('Python')
    search.send_keys(Keys.RETURN)

    time.sleep(3)
    driver.save_screenshot(output_image_path)

    driver.quit()

if __name__ == '__main__':
    main()
