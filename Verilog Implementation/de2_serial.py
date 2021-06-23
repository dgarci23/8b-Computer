# -*- coding: utf-8 -*-
"""
Created on Mon May 31 13:39:55 2021

@author: jaybr
"""


import serial
import serial.tools.list_ports

ports = serial.tools.list_ports.comports()
for p in ports:
    print(p.description)
    
ser = serial.Serial('COM11')  # open serial port
print(ser.name)         # check which port was really used
ser.write(b'T')         # write a string ('T' = 0x54)
#x = ser.read()          # read one byte
v = input("Waiting for user input:  ")
print(f'incoming = {ser.in_waiting}')
while True:        
    while ser.in_waiting > 0:
        x = ser.read()
        print(str(x.decode('utf-8')))
ser.close()             # close port
