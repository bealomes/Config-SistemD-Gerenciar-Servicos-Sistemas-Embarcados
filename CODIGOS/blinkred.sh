#!/bin/python
# blink.py
import RPi.GPIO as GPIO
import time

# Configurar GPIO
GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)
GPIO.setup(17, GPIO.OUT)

try:
    GPIO.output(17, GPIO.HIGH)  # Liga o LED
    time.sleep(2)
    GPIO.output(17, GPIO.LOW)   # Desliga o LED
except KeyboardInterrupt:
    GPIO.cleanup()  # Limpa a configuração da GPIO ao interromper
