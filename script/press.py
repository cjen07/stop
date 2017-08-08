import keyboard
import time

for num in range(0, 5):
  time.sleep(1)
  keyboard.write("stop" + str(num) + "\n")

  