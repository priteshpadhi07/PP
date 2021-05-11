from time import sleep

import selenium.webdriver.support.ui as ui
from selenium.webdriver import ActionChains
from selenium.webdriver.common.by import By
import time
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.select import Select
from selenium import webdriver

driver = webdriver.Chrome(executable_path="C:\\Users\\riteshpa\\Downloads\\chromedriver_win32 (2)\\chromedriver.exe")
driver.get("https://www.naukri.com/mnjuser/homepage")
driver.maximize_window()

##driver.execute_script("window.scrollBy(0, 800);")
sleep(5)
driver.find_element_by_id('usernameField').send_keys('priteshpadhi@gmail.com')
driver.find_element_by_id('passwordField').send_keys('pulsardtsi')


driver.find_elements_by_tag_name('button')[0].click()

sleep(6)
ele = "//*[text()='My Naukri']"
tops = driver.find_element(By.XPATH, ele)

##hov = "//a[@href='https://www.naukri.com/mnjuser/profile?id=&altresid']"

try:
    actions = ActionChains(driver)
    actions.move_to_element(tops).perform()
    sleep(5)
    driver.find_element_by_xpath("//a[@href='https://www.naukri.com/mnjuser/profile?id=&altresid']").click()
    ##actions.move_to_element(toplink).click().perform()
    print("yes")
except:
    print("error")

sleep(2)

driver.find_element_by_xpath("//*[@class='edit icon']").click()
sleep(2)
##driver.find_element_by_class_name('cancelLayer').click()

##driver.find_elements_by_tag_name('button')[0].click()
driver.find_element_by_xpath("/html/body/div[5]/div[8]/div[2]/form/div[3]/div/button").click()

sleep(2)
driver.close()
