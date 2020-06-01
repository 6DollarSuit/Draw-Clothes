'Date: 8/28/2018 -- UPDATED 6/1/2020
'Programmer: Emily Wood
'Purpose: Draw outfits to the screen.
SCREEN 12
RANDOMIZE TIMER
PRINT "This program generates simple outfits."
PRINT "There are shirts, pants, shorts, and skirts."
PRINT "Once an outfit is generated, press 1 to generate another."
PRINT "Press any key to begin generating."
SLEEP
start:
CLS
bottomcolor% = INT((RND * 16) + 1) 'generates from 0 to 15 then adds 1 to get results from 1 to 16, avoiding 0 (black)
LINE (20, 440)-(200, 200), bottomcolor%, BF
skirt! = RND
IF skirt! > 0.5 THEN LINE (110, 440)-(110, 280), 0 'pant leg seperator if it isnt a skirt
shorts! = RND
IF shorts! > 0.5 THEN LINE (20, 440)-(200, 340), 0, BF 'coin flip for bottoms length
topcolor% = INT((RND * 16) + 1) 'same method as bottomcolor
LINE (600, 40)-(440, 200), topcolor%, BF
sleeves! = RND 'single with decimal
IF sleeves! < 0.5 THEN LINE (440, 80)-(280, 40), topcolor%, BF
IF sleeves! > 0.5 THEN LINE (440, 80)-(360, 40), topcolor%, BF
SLEEP
INPUT "Enter 1 to generate another outfit, enter any other value to exit"; choice%
IF choice% = 1 THEN GOTO start
END





