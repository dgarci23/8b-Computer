import serial
import serial.tools.list_ports
import msvcrt
import numpy as np
import matplotlib.pyplot as plt
import pygame
from pygame.locals import *

import compile8b

def pressNew():
    code = ["" for i in range(0, 16)]
    return code

def pressSend(code, ser):
    compile8b.send(code, ser)

DIM = 800
SIZE = DIM*DIM

display_size = (DIM, DIM)
pygame.init()
display = pygame.display.set_mode((800,500))
palette = tuple([(i, i, i) for i in range(256)])
pygame.display.set_caption("8-bit Computer Terminal")

# Font
mono_font = pygame.font.SysFont("FreeMono, Monospace", 20)

# New program button
new_btn = Rect(50,15,125,30)
pygame.draw.rect(display, "white", new_btn)
new_btn_txt = mono_font.render("New", True, "black")
display.blit(new_btn_txt, (50 + 15,20))

# Send program button
send_btn = Rect(2*50 + 125, 15, 125, 30)
pygame.draw.rect(display, "white", send_btn)
send_btn_txt = mono_font.render("Send", True, "black")
display.blit(send_btn_txt, (225 + 15,20))

# Draw the program window
program_win = Rect(400 + 15, 15, 400 - 30, 500 - 30)
pygame.draw.rect(display, "white", program_win)

# Draw the output terminal
output_win_w = 400 - 30
output_win_h = 200
output_win = Rect(15, 15 + 30 + 15, output_win_w, output_win_h)
pygame.draw.rect(display, "white", output_win)
output = ""

# Code
code = ["" for i in range(0, 16)]
curr_line = 0

# serial
# ser = serial.Serial('COM11')

# cursor
class Cursor:
    def __init__(self):
        self.x = 415
        self.y = 15
        self.graphic = Rect(self.x, self.y, 2, 20)
        self.indexX = 0
        self.indexY = 0
    def draw(self):
        pygame.draw.rect(display, "black", self.graphic)
    def update(self):
        self.graphic = Rect(self.x, self.y, 2, 20)
    def incrementX(self):
        self.x += 11.5
        self.indexX += 1
        self.redraw()
    def reduceX(self):
        if (self.indexX > 0):
            self.x -= 11.5
            self.indexX -= 1
        self.redraw()
    def incrementY(self):
        self.y += 20
        self.indexY += 1
        self.redraw()
    def reduceY(self):
        if (self.indexY > 0):
            self.y -= 20
            self.indexY -= 1
        self.redraw()
    def jumpDown(self):
        self.x = 415
        self.indexX = 0
        self.incrementY()
    def jumpUp(self, index):
        self.x = 415 + index*11.5
        self.indexX = index
        self.reduceY()
    def new(self):
        self.x = 415
        self.y = 15
        self.indexX = 0
        self.indexY = 0
        self.redraw()
    def redraw(self):
        self.update()
        self.draw()

cursor = Cursor()
cursor.draw()

running = True
while running:
    # Refills the program text
    pygame.draw.rect(display, "white", program_win)
    pygame.draw.rect(display, "white", output_win)
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False
        if event.type == pygame.KEYDOWN:
            key = pygame.key.name(event.key)
            if (key == "return"):
                cursor.jumpDown()
            elif (key == "backspace"):
                if (len(code[cursor.indexY]) == 0 and cursor.indexY > 0):
                    cursor.jumpUp(len(code[cursor.indexY - 1]))
                else:
                    code[cursor.indexY] = code[cursor.indexY][0:len(code[cursor.indexY])-1]
                    cursor.reduceX()
            elif (key == "space"):
                code[cursor.indexY] = code[cursor.indexY][0:cursor.indexX] + " " + code[cursor.indexY][cursor.indexX:]
                cursor.incrementX()
            elif (len(key) == 1):
                code[cursor.indexY] = code[cursor.indexY][0:cursor.indexX] + pygame.key.name(event.key) + code[cursor.indexY][cursor.indexX:]
                cursor.incrementX()
            elif (key in ["up", "down", "left", "right"]):
                if (key == "up"):
                    if (cursor.indexY > 0 and cursor.indexX > len(code[cursor.indexY - 1])):
                        diff = cursor.indexX - len(code[cursor.indexY - 1])
                        cursor.reduceY()
                        for i in range(diff):
                            cursor.reduceX()
                    else:
                        cursor.reduceY()
                elif (key == "down"):
                    if (cursor.indexY < 15 and cursor.indexX > len(code[cursor.indexY + 1])):
                        diff = cursor.indexX - len(code[cursor.indexY + 1])
                        cursor.incrementY()
                        for i in range(diff):
                            cursor.reduceX()
                    else:
                        cursor.incrementY()
                elif (key == "right"):
                    if (len(code[cursor.indexY]) > cursor.indexX):
                        cursor.incrementX()
                elif (key == "left"):
                    cursor.reduceX()
        if event.type == pygame.MOUSEBUTTONDOWN and event.button == 1:
            x, y = pygame.mouse.get_pos()
            if (x >= 50 and x <= 50+125 and y >= 15 and y <= 15+30):
                code = pressNew()
                cursor.new()
            elif (x >= 225 and x <= 225+125 and y >= 15 and y <= 15+30):
                pass
                #pressSend(code, ser)

    for line in range(0, 16):
        text = mono_font.render(code[line], False, "black")
        display.blit(text, (400 + 15, 15 + 20*line))


    #output = compile8b.receive(ser, output)

    text = mono_font.render(output, False, "black")
    display.blit(text, (15, 60))

    cursor.draw()
    pygame.display.update()

pygame.quit()
