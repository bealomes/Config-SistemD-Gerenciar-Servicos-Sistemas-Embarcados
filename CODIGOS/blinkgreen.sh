#!/bin/python

# blink.py
import RPi.GPIO as GPIO
import time

# Configurar GPIO
GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)
GPIO.setup(26, GPIO.OUT)

try:
    while True:
        GPIO.output(26, GPIO.HIGH)  # Liga o LED
        time.sleep(0.2)
        GPIO.output(26, GPIO.LOW)   # Desliga o LED
        time.sleep(0.2)
except KeyboardInterrupt:
    GPIO.cleanup()  # Limpa a configuração da GPIO ao interromper
