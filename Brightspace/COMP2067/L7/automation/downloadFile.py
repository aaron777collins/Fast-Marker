import subprocess
import sys
import pyautogui


worked = False
confidence_amount = 1.0
while(worked != True):
	try:
		x, y = pyautogui.locateCenterOnScreen('images\\downloadWork0.png', confidence=confidence_amount)
		pyautogui.moveTo( (x, y), duration=0.25)
		pyautogui.click((x, y))
		worked = True
	except TypeError:
		confidence_amount-=0.1

worked = False
confidence_amount = 1.0
while(worked != True):
	try:
		x, y = pyautogui.locateCenterOnScreen('images\\downloadWork1.png', confidence=confidence_amount)
		pyautogui.moveTo( (x, y), duration=0.25)
		pyautogui.click((x, y))
		worked = True
	except TypeError:
		confidence_amount-=0.1
