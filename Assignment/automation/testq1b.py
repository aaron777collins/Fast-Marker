import subprocess
import sys
import pyautogui
import time

time.sleep(1)
pyautogui.write('JACK', interval=0.05)
pyautogui.press('enter')