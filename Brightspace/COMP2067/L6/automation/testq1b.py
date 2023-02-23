import subprocess
import sys
import pyautogui
import time

time.sleep(1)
pyautogui.write('150', interval=0.05)
pyautogui.press('enter')
print("Should be 337.5")
