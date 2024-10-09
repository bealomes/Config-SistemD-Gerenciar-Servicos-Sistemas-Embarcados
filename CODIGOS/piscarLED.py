# blink.py
import RPi.GPIO as GPIO
import time

# Configurar GPIO
GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)
GPIO.setup(18, GPIO.OUT)

try:
    while True:
        GPIO.output(18, GPIO.HIGH)  # Liga o LED
        time.sleep(0.2)
        GPIO.output(18, GPIO.LOW)   # Desliga o LED
        time.sleep(0.2)
except KeyboardInterrupt:
    GPIO.cleanup()  # Limpa a configuração da GPIO ao interromper
