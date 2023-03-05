import subprocess
import sys
import pyautogui
import time

time.sleep(1)
pyautogui.write('3', interval=0.05)
pyautogui.press('enter')
pyautogui.write('-1', interval=0.05) #exit automated program
pyautogui.press('enter')
