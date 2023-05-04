from selenium.webdriver import Firefox
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import time


target_url = 'http://192.168.231.129:9900/login'
try:
    driver = Firefox(executable_path='./geckodriver')
    driver.get(target_url)
    while True:

        # 等待登录表单出现
        WebDriverWait(driver, 10).until(
        EC.presence_of_element_located((By.ID, "loginUsername"))
        )

        driver.find_element(By.ID,'loginUsername').send_keys('A1D8M4I5N2')
        driver.find_element(By.ID,'loginPassword').send_keys('qwertyuiop')
        driver.find_element(By.ID,'login_btn').click()

        time.sleep(10)

        # 等待登录成功后页面加载完成
        WebDriverWait(driver, 10).until(
        EC.presence_of_element_located((By.ID, "aDmIn_IndeX_getbtn"))
        )

        driver.find_element(By.ID,'aDmIn_IndeX_getbtn').click()

        time.sleep(10)

except:
    print('error')
