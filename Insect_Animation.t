%Emily Hu
%03/11/2016
%This turing program prints an animation of insects interacting with each other

var i : int := 0
process music
    for i : 0 .. 4
	play (">2f>cc1c4<-bagf2f>dd1d<2f>cc1c4<bagf2bag1f<")
    end for
end music
fork music

procedure name
    locate (2, 5)
    colourback (102)
    put "By: Emily Hu"
    for x : 0 .. 30
	drawbox (570, 390 - x, 640, 360, 138)
    end for
    delay (2000)
    for x : 0 .. 30
	drawbox (20, 390 - x, 130, 360, 102)
    end for
end name

procedure background

    for x : 0 .. 340
	drawbox (0, 400 - x, 640, 400 - x, 102)
    end for
    for x : 0 .. 60
	drawbox (0, 0 + x, 640, 0 + x, 120)
    end for
end background

procedure treeBranch
    for x : 0 .. 70 %treeTrunk
	drawbox (570 + x, 400, 570 + x, 60, 138)
	drawline (570, 120, 550 + x, 60, 138)
    end for
    for x : 0 .. 70
	drawbox (480 + x, 330, 570 - x, 300, 138) %branch
    end for
    for x : 0 .. 20
	drawline (480, 330, 570, 340 - x, 138)
	drawline (480, 300, 570, 290 + x, 138)
	drawline (480, 300 + x, 380, 300 + x, 138)
	drawline (380, 320, 480, 330 - x, 138)
	drawline (380, 300 + x, 340, 305, 138)
	drawline (420, 370, 460 + x, 325, 138)
    end for
    for x : 0 .. 5
	drawline (460, 360, 450 - x, 350, 138)
	drawline (340, 310 - x, 380, 320 - x, 138)
    end for
end treeBranch

procedure beehive
    for x : 0 .. 20
	drawoval (450, 288, 20 - x, 12, 67)
	drawoval (450, 270, 30, 16 - x, 67)
	drawoval (450, 250, 35, 20 - x, 67)
	drawoval (450, 230, 40, 20 - x, 67)
	drawoval (450, 210, 45, 0 + x, 67)
    end for
    for x : 0 .. 23
	drawarc (450, 190, 10, 22 - x, 0, 180, 210)
	drawarc (451, 190, 10, 22 - x, 0, 180, 210)
    end for
end beehive

procedure caterpillar
    for x : 0 .. 500
	delay (20)
	drawfillbox (-101 + x, 61, 0 + x, 100, 102) %eraser
	drawfillbox (-93 + x, 61, -87 + x, 65, 188) %legs
	drawfillbox (-78 + x, 61, -72 + x, 65, 188)
	drawfillbox (-63 + x, 61, -57 + x, 65, 188)
	drawfillbox (-48 + x, 61, -42 + x, 65, 188)
	drawfillbox (-33 + x, 61, -27 + x, 65, 188)
	drawfilloval (-90 + x, 77, 10, 12, 46) %body
	drawfilloval (-75 + x, 77, 10, 12, 2)
	drawfilloval (-60 + x, 77, 10, 12, 46)
	drawfilloval (-45 + x, 77, 10, 12, 2)
	drawfilloval (-30 + x, 77, 10, 12, 46)
	drawfilloval (-13 + x, 77, 12, 12, 2)
	drawline (-5 + x, 100, -10 + x, 89, 16) %antennae
	drawline (-20 + x, 100, -15 + x, 89, 16)
	drawfilloval (-8 + x, 78, 2, 2, 16) %eyes
	drawfilloval (-18 + x, 78, 2, 2, 16)
	drawarc (-13 + x, 77, 9, 9, 215, 325, 16) %mouth
    end for
end caterpillar

procedure ladybugBody (x : int)
    for y : 0 .. 20
	drawarc (-28 + x, 70, 20, 20 - y, 0, 180, 40)
    end for
    for y : 0 .. 4
	drawarc (-29 + x, 95, 31 - y, 30 - y, 230, 310, 40)
    end for
end ladybugBody
procedure ladybugBody2 (x : int)
    for y : 0 .. 20
	drawarc (25 + 305 + x, 70 + x, 20, 20 - y, 0, 180, 40)
    end for
    for y : 0 .. 4
	drawarc (24 + 305 + x, 95 + x, 31 - y, 30 - y, 230, 310, 40)
    end for
end ladybugBody2
procedure ladybugBody3 (x : int)
    for y : 0 .. 20
	drawarc (-28 + x, 100, 20, 20 - y, 0, 180, 40)
    end for
    for y : 0 .. 4
	drawarc (-29 + x, 125, 31 - y, 30 - y, 230, 310, 40)
    end for
end ladybugBody3

procedure ladybug
    for x : 0 .. 358
	delay (20)
	drawfillbox (-5 - 48 + x, 61, 50 - 48 + x, 92, 102) %erase
	drawfillbox (10 - 48 + x, 61, 13 - 48 + x, 67, 16) %legs
	drawfillbox (27 - 48 + x, 61, 30 - 48 + x, 67, 16)
	ladybugBody (x)
	drawfilloval (42 - 48 + x, 75, 7, 7, 16) %head
	drawfilloval (17 - 48 + x, 80, 4, 4, 16) %spots
	drawfilloval (9 - 48 + x, 73, 3, 3, 16)
	drawfilloval (29 - 48 + x, 77, 3, 3, 16)
	drawfilloval (22 - 48 + x, 70, 3, 3, 16)
	drawfilloval (-4 + x, 77, 2, 2, 0) %eyes
	drawline (-4 + x, 82, 48 - 48 + x, 90, 16) %anetnnae
	drawline (-4 + x, 82, 42 - 48 + x, 90, 16)
	drawfilloval (0 + x, 90, 2, 2, 16)
	drawfilloval (-6 + x, 90, 2, 2, 16)
    end for
    for x : 0 .. 30
	delay (10)
	drawfillbox (0 + 305 + x, 61 + x, 55 + 305 + x, 92 + x, 102) %erase
	drawfillbox (15 + 305 + x, 62 + x, 18 + 305 + x, 67 + x, 16) %legs
	drawfillbox (32 + 305 + x, 62 + x, 35 + 305 + x, 67 + x, 16)
	ladybugBody2 (x)
	drawfilloval (47 + 305 + x, 75 + x, 7, 7, 16) %head
	drawfilloval (22 + 305 + x, 80 + x, 4, 4, 16) %spots
	drawfilloval (14 + 305 + x, 73 + x, 3, 3, 16)
	drawfilloval (34 + 305 + x, 77 + x, 3, 3, 16)
	drawfilloval (27 + 305 + x, 70 + x, 3, 3, 16)
	drawfilloval (49 + 305 + x, 77 + x, 2, 2, 0) %eyes
	drawline (49 + 305 + x, 82 + x, 53 + 305 + x, 90 + x, 16) %anetnnae
	drawline (49 + 305 + x, 82 + x, 47 + 305 + x, 90 + x, 16)
	drawfilloval (53 + 305 + x, 90 + x, 2, 2, 16)
	drawfilloval (47 + 305 + x, 90 + x, 2, 2, 16)
    end for
    for x : 388 .. 470
	delay (20)
	drawfillbox (-5 - 48 + x, 91, 50 - 48 + x, 122, 102) %erase
	drawfillbox (10 - 48 + x, 91, 13 - 48 + x, 97, 16) %legs
	drawfillbox (27 - 48 + x, 91, 30 - 48 + x, 97, 16)
	ladybugBody3 (x)
	drawfilloval (42 - 48 + x, 105, 7, 7, 16) %head
	drawfilloval (17 - 48 + x, 110, 4, 4, 16) %spots
	drawfilloval (9 - 48 + x, 103, 3, 3, 16)
	drawfilloval (29 - 48 + x, 107, 3, 3, 16)
	drawfilloval (22 - 48 + x, 100, 3, 3, 16)
	drawfilloval (-4 + x, 107, 2, 2, 0) %eyes
	drawline (-4 + x, 112, 48 - 48 + x, 120, 16) %anetnnae
	drawline (-4 + x, 112, 42 - 48 + x, 120, 16)
	drawfilloval (0 + x, 120, 2, 2, 16)
	drawfilloval (-6 + x, 120, 2, 2, 16)
    end for
end ladybug

procedure beetleBody (x : int)
    for y : 0 .. 20
	drawarc (20 + x, 70, 20, 21 + y, 132, 180, 102)
	drawarc (20 + x, 70, 28, 14, 0, 125, 16)
	drawarc (20 + x, 70, 30, 18 - y, 0, 180, 145)
    end for
end beetleBody

procedure beetleBody2 (x : int)
    for y : 0 .. 20
	drawarc (20 + x, 70 - 305 + x, 20, 21 + y, 132, 180, 102)
	drawarc (20 + x, 70 - 305 + x, 28, 14, 0, 125, 16)
	drawarc (20 + x, 70 - 305 + x, 30, 18 - y, 0, 180, 145)
    end for
end beetleBody2

procedure beetleBody3 (x : int)
    for y : 0 .. 20
	drawarc (20 + x, 132, 20, 21 + y, 132, 180, 102)
	drawarc (20 + x, 132, 28, 14, 0, 125, 16)
	drawarc (20 + x, 132, 30, 18 - y, 0, 180, 145)
    end for
end beetleBody3

procedure beetle
    for x : 0 .. 300
	delay (20)
	drawfillbox (0 + x, 61, 70 + x, 86, 102) %erase
	drawline (42 + x, 70, 50 + x, 61, 16) %legs 1
	drawline (43 + x, 70, 51 + x, 61, 16)
	drawline (33 + x, 70, 33 + x, 65, 16) %legs 2
	drawline (34 + x, 70, 34 + x, 65, 16)
	drawline (33 + x, 65, 29 + x, 61, 16)
	drawline (34 + x, 65, 30 + x, 61, 16)
	drawline (23 + x, 70, 15 + x, 65, 16) %legs 3
	drawline (24 + x, 70, 16 + x, 65, 16)
	drawline (15 + x, 65, 15 + x, 61, 16)
	drawline (16 + x, 65, 16 + x, 61, 16)
	beetleBody (x)
	drawline (53 + x, 80, 70 + x, 86, 16) %anntenae
	drawline (53 + x, 80, 70 + x, 81, 16)
	drawfilloval (50 + x, 75, 8, 6, 42) %face
	drawfilloval (52 + x, 76, 2, 2, 16) %eyes
	drawfillbox (-10 + x, 70, 0 + x, 85, 102) %erase butt
    end for
    for x : 305 .. 367
	delay (10)
	drawfillbox (0 + x, 61 - 305 + x, 70 + x, 86 - 305 + x, 102) %erase
	drawline (42 + x, 70 - 305 + x, 50 + x, 62 - 305 + x, 16) %legs 1
	drawline (43 + x, 70 - 305 + x, 51 + x, 62 - 305 + x, 16)
	drawline (33 + x, 70 - 305 + x, 33 + x, 65 - 305 + x, 16) %legs 2
	drawline (34 + x, 70 - 305 + x, 34 + x, 65 - 305 + x, 16)
	drawline (33 + x, 65 - 305 + x, 29 + x, 62 - 305 + x, 16)
	drawline (34 + x, 65 - 305 + x, 30 + x, 62 - 305 + x, 16)
	drawline (23 + x, 70 - 305 + x, 15 + x, 65 - 305 + x, 16) %legs 3
	drawline (24 + x, 70 - 305 + x, 16 + x, 65 - 305 + x, 16)
	drawline (15 + x, 65 - 305 + x, 15 + x, 62 - 305 + x, 16)
	drawline (16 + x, 65 - 305 + x, 16 + x, 62 - 305 + x, 16)
	beetleBody2 (x)
	drawline (53 + x, 80 - 305 + x, 70 + x, 86 - 305 + x, 16) %anntenae
	drawline (53 + x, 80 - 305 + x, 70 + x, 81 - 305 + x, 16)
	drawfilloval (50 + x, 75 - 305 + x, 8, 6, 42) %face
	drawfilloval (52 + x, 76 - 305 + x, 2, 2, 16) %eyes
	drawfillbox (-10 + x, 70 - 305 + x, 0 + x, 85 - 305 + x, 102) %erase butt
    end for
    for x : 367 .. 415
	delay (20)
	drawfillbox (0 + x, 61 + 62, 70 + x, 86 + 62, 102) %erase
	drawline (42 + x, 70 + 62, 50 + x, 61 + 62, 16) %legs 1
	drawline (43 + x, 70 + 62, 51 + x, 61 + 62, 16)
	drawline (33 + x, 70 + 62, 33 + x, 65 + 62, 16) %legs 2
	drawline (34 + x, 70 + 62, 34 + x, 65 + 62, 16)
	drawline (33 + x, 65 + 62, 29 + x, 61 + 62, 16)
	drawline (34 + x, 65 + 62, 30 + x, 61 + 62, 16)
	drawline (23 + x, 70 + 62, 15 + x, 65 + 62, 16) %legs 3
	drawline (24 + x, 70 + 62, 16 + x, 65 + 62, 16)
	drawline (15 + x, 65 + 62, 15 + x, 61 + 62, 16)
	drawline (16 + x, 65 + 62, 16 + x, 61 + 62, 16)
	beetleBody3 (x)
	drawline (53 + x, 80 + 62, 70 + x, 86 + 62, 16) %anntenae
	drawline (53 + x, 80 + 62, 70 + x, 81 + 62, 16)
	drawfilloval (50 + x, 75 + 62, 8, 6, 42) %face
	drawfilloval (52 + x, 76 + 62, 2, 2, 16) %eyes
	drawfillbox (-10 + x, 70 + 62, 0 + x, 85 + 62, 102) %erase butt
    end for
end beetle

procedure beeLines (x : int)
    for y : 0 .. 5
	drawarc (58 + x, 201 - 65, 23 + y, 23, 156, 204, 16)
	drawarc (45 + x, 201 - 65, 23 + y, 23, 156, 204, 16)
    end for
end beeLines

procedure beeLines2 (x : int)
    for y : 0 .. 5
	drawarc (58 + 350, 201 + x, 23 + y, 23, 156, 204, 16)
	drawarc (45 + 350, 201 + x, 23 + y, 23, 156, 204, 16)
    end for
end beeLines2

procedure beeLines3 (x : int)
    for y : 0 .. 5
	drawarc (58 + x, 201 - 97, 23 + y, 23, 156, 204, 16)
	drawarc (45 + x, 201 - 97, 23 + y, 23, 156, 204, 16)
    end for
end beeLines3

procedure beeLines4 (x : int)
    for y : 0 .. 5
	drawarc (58 + x, 201 - 128, 23 + y, 23, 156, 204, 16)
	drawarc (45 + x, 201 - 128, 23 + y, 23, 156, 204, 16)
    end for
end beeLines4

procedure bee
    for x : 0 .. 440
	delay (10)
	drawfillbox (0 + x, 188 - 65, 50 + x, 230 - 65, 102)%erase
	drawfilloval (30 + x, 218 - 65, 12, 12, 0) %wings
	drawoval (30 + x, 218 - 65, 12, 12, 16)
	drawfilloval (22 + x, 218 - 65, 12, 12, 0)
	drawoval (22 + x, 218 - 65, 12, 12, 16)
	drawfillbox (15 + x, 192 - 65, 20 + x, 188 - 65, 16) %legs
	drawfillbox (30 + x, 192 - 65, 35 + x, 188 - 65, 16)
	drawfillbox (15 + x, 192 - 65, 40 + x, 210 - 65, 44) %body
	drawfilloval (17 + x, 201 - 65, 9, 9, 44)
	drawfilloval (41 + x, 201 - 65, 9, 9, 44)
	drawfilloval (42 + x, 203 - 65, 2, 2, 16) %eyes
	drawarc (50 + x, 200 - 65, 6, 6, 200, 255, 16) %mouth
	drawline (44 + x, 210 - 65, 42 + x, 220 - 65, 16) %antennae
	drawline (44 + x, 210 - 65, 46 + x, 220 - 65, 16)
	beeLines (x)
    end for
    for decreasing x : 440 .. 350
	delay (10)
	drawfillbox (0 + x, 188 - 65, 51 + x, 230 - 65, 102) %eraser
	drawfilloval (30 + x, 218 - 65, 12, 12, 0) %wings
	drawoval (30 + x, 218 - 65, 12, 12, 16)
	drawfilloval (22 + x, 218 - 65, 12, 12, 0)
	drawoval (22 + x, 218 - 65, 12, 12, 16)
	drawfillbox (15 + x, 192 - 65, 20 + x, 188 - 65, 16) %legs
	drawfillbox (30 + x, 192 - 65, 35 + x, 188 - 65, 16)
	drawfillbox (15 + x, 192 - 65, 40 + x, 210 - 65, 44) %body
	drawfilloval (17 + x, 201 - 65, 9, 9, 44)
	drawfilloval (41 + x, 201 - 65, 9, 9, 44)
	drawfilloval (42 + x, 203 - 65, 2, 2, 16) %eyes
	drawarc (50 + x, 200 - 65, 6, 6, 200, 255, 16) %mouth
	drawline (44 + x, 210 - 65, 42 + x, 220 - 65, 16) %antennae
	drawline (44 + x, 210 - 65, 46 + x, 220 - 65, 16)
	beeLines (x)
    end for
    for decreasing x : -65 .. -97
	delay (10)
	drawfillbox (0 + 350, 188 + x, 51 + 350, 231 + x, 102) %eraser
	drawfilloval (30 + 350, 218 + x, 12, 12, 0) %wings
	drawoval (30 + 350, 218 + x, 12, 12, 16)
	drawfilloval (22 + 350, 218 + x, 12, 12, 0)
	drawoval (22 + 350, 218 + x, 12, 12, 16)
	drawfillbox (15 + 350, 192 + x, 20 + 350, 188 + x, 16) %legs
	drawfillbox (30 + 350, 192 + x, 35 + 350, 188 + x, 16)
	drawfillbox (15 + 350, 192 + x, 40 + 350, 210 + x, 44) %body
	drawfilloval (17 + 350, 201 + x, 9, 9, 44)
	drawfilloval (41 + 350, 201 + x, 9, 9, 44)
	drawfilloval (42 + 350, 203 + x, 2, 2, 16) %eyes
	drawarc (50 + 350, 200 + x, 6, 6, 200, 255, 16) %mouth
	drawline (44 + 350, 210 + x, 42 + 350, 220 + x, 16) %antennae
	drawline (44 + 350, 210 + x, 46 + 350, 220 + x, 16)
	beeLines2 (x)
    end for
    for x : 350 .. 425
	delay (10)
	drawfillbox (0 + x, 188 - 97, 50 + x, 230 - 97, 102)%erase
	drawfilloval (30 + x, 218 - 97, 12, 12, 0) %wings
	drawoval (30 + x, 218 - 97, 12, 12, 16)
	drawfilloval (22 + x, 218 - 97, 12, 12, 0)
	drawoval (22 + x, 218 - 97, 12, 12, 16)
	drawfillbox (15 + x, 192 - 97, 20 + x, 188 - 97, 16) %legs
	drawfillbox (30 + x, 192 - 97, 35 + x, 188 - 97, 16)
	drawfillbox (15 + x, 192 - 97, 40 + x, 210 - 97, 44) %body
	drawfilloval (17 + x, 201 - 97, 9, 9, 44)
	drawfilloval (41 + x, 201 - 97, 9, 9, 44)
	drawfilloval (42 + x, 203 - 97, 2, 2, 16) %eyes
	drawarc (50 + x, 200 - 97, 6, 6, 200, 255, 16) %mouth
	drawline (44 + x, 210 - 97, 42 + x, 220 - 97, 16) %antennae
	drawline (44 + x, 210 - 97, 46 + x, 220 - 97, 16)
	beeLines3 (x)
    end for
    for decreasing x : 425 .. 350
	delay (10)
	drawfillbox (0 + x, 188 - 97, 51 + x, 230 - 97, 102)%erase
	drawfilloval (30 + x, 218 - 97, 12, 12, 0) %wings
	drawoval (30 + x, 218 - 97, 12, 12, 16)
	drawfilloval (22 + x, 218 - 97, 12, 12, 0)
	drawoval (22 + x, 218 - 97, 12, 12, 16)
	drawfillbox (15 + x, 192 - 97, 20 + x, 188 - 97, 16) %legs
	drawfillbox (30 + x, 192 - 97, 35 + x, 188 - 97, 16)
	drawfillbox (15 + x, 192 - 97, 40 + x, 210 - 97, 44) %body
	drawfilloval (17 + x, 201 - 97, 9, 9, 44)
	drawfilloval (41 + x, 201 - 97, 9, 9, 44)
	drawfilloval (42 + x, 203 - 97, 2, 2, 16) %eyes
	drawarc (50 + x, 200 - 97, 6, 6, 200, 255, 16) %mouth
	drawline (44 + x, 210 - 97, 42 + x, 220 - 97, 16) %antennae
	drawline (44 + x, 210 - 97, 46 + x, 220 - 97, 16)
	beeLines3 (x)
    end for
    for decreasing x : -97 .. -127
	delay (10)
	drawfillbox (0 + 350, 188 + x, 51 + 350, 232 + x, 102) %eraser
	drawfilloval (30 + 350, 218 + x, 12, 12, 0) %wings
	drawoval (30 + 350, 218 + x, 12, 12, 16)
	drawfilloval (22 + 350, 218 + x, 12, 12, 0)
	drawoval (22 + 350, 218 + x, 12, 12, 16)
	drawfillbox (15 + 350, 192 + x, 20 + 350, 188 + x, 16) %legs
	drawfillbox (30 + 350, 192 + x, 35 + 350, 188 + x, 16)
	drawfillbox (15 + 350, 192 + x, 40 + 350, 210 + x, 44) %body
	drawfilloval (17 + 350, 201 + x, 9, 9, 44)
	drawfilloval (41 + 350, 201 + x, 9, 9, 44)
	drawfilloval (42 + 350, 203 + x, 2, 2, 16) %eyes
	drawarc (50 + 350, 200 + x, 6, 6, 200, 255, 16) %mouth
	drawline (44 + 350, 210 + x, 42 + 350, 220 + x, 16) %antennae
	drawline (44 + 350, 210 + x, 46 + 350, 220 + x, 16)
	beeLines2 (x)
    end for
    for x : 350 .. 450
	delay (10)
	drawfillbox (0 + x, 188 - 127, 50 + x, 231 - 128, 102)%erase
	drawfilloval (30 + x, 218 - 128, 12, 12, 0) %wings
	drawoval (30 + x, 218 - 128, 12, 12, 16)
	drawfilloval (22 + x, 218 - 128, 12, 12, 0)
	drawoval (22 + x, 218 - 128, 12, 12, 16)
	drawfillbox (15 + x, 192 - 128, 20 + x, 188 - 127, 16) %legs
	drawfillbox (30 + x, 192 - 128, 35 + x, 188 - 127, 16)
	drawfillbox (15 + x, 192 - 128, 40 + x, 210 - 127, 44) %body
	drawfilloval (17 + x, 201 - 128, 9, 9, 44)
	drawfilloval (41 + x, 201 - 128, 9, 9, 44)
	drawfilloval (42 + x, 203 - 128, 2, 2, 16) %eyes
	drawarc (50 + x, 200 - 128, 6, 6, 200, 255, 16) %mouth
	drawline (44 + x, 210 - 128, 42 + x, 220 - 128, 16) %antennae
	drawline (44 + x, 210 - 128, 46 + x, 220 - 128, 16)
	beeLines4 (x)
    end for
    for x : 450 .. 640
	delay (10)
	drawfillbox (0 + x, 188 - 127, 50 + x, 231 - 128, 102)%erase
	treeBranch
	drawfilloval (30 + x, 218 - 128, 12, 12, 0) %wings
	drawoval (30 + x, 218 - 128, 12, 12, 16)
	drawfilloval (22 + x, 218 - 128, 12, 12, 0)
	drawoval (22 + x, 218 - 128, 12, 12, 16)
	drawfillbox (15 + x, 192 - 128, 20 + x, 188 - 127, 16) %legs
	drawfillbox (30 + x, 192 - 128, 35 + x, 188 - 127, 16)
	drawfillbox (15 + x, 192 - 128, 40 + x, 210 - 127, 44) %body
	drawfilloval (17 + x, 201 - 128, 9, 9, 44)
	drawfilloval (41 + x, 201 - 128, 9, 9, 44)
	drawfilloval (42 + x, 203 - 128, 2, 2, 16) %eyes
	drawarc (50 + x, 200 - 128, 6, 6, 200, 255, 16) %mouth
	drawline (44 + x, 210 - 128, 42 + x, 220 - 128, 16) %antennae
	drawline (44 + x, 210 - 128, 46 + x, 220 - 128, 16)
	beeLines4 (x)

    end for
end bee

procedure ant
    for x : 0 .. 468
	delay (20)
	drawfillbox (-39 + x, 61, 0 + x, 85, 102) %eraser
	drawfillbox (-11 + x, 72, -13 + x, 61, 16) %legs
	drawfillbox (-19 + x, 72, -17 + x, 61, 16)
	drawfillbox (-23 + x, 72, -25 + x, 61, 16)
	drawfilloval (-5 + x, 73, 5, 5, 40) %body
	drawfilloval (-17 + x, 73, 9, 5, 40)
	drawfilloval (-30 + x, 73, 8, 7, 40)
	drawline (-4 + x, 78, -2 + x, 85, 16) %antenni
	drawline (-4 + x, 78, -5 + x, 85, 16)
	drawfilloval (-4 + x, 74, 1, 1, 16)
	drawarc (-3 + x, 73, 4, 4, 215, 280, 16)
    end for
end ant

procedure spider
    for x : 0 .. 100
	delay (50)
	drawfillbox (422, 466 - x, 477, 400 - x, 102) %erase
	treeBranch
	
	drawfillbox (449, 447 + 66 - x, 451, 370 + 66 - x, 24) %web
	drawfilloval (450, 342 + 66 - x, 5, 5, 16) %body
	drawfilloval (450, 354 + 66 - x, 8, 8, 16)
	drawfilloval (450, 370 + 66 - x, 11, 11, 16)
	drawarc (450, 403 - x, 3, 3, 310, 230, 16)

	drawline (462, 372 + 66 - x, 470, 380 + 66 - x, 16) %legs top right
	drawline (462, 371 + 66 - x, 470, 379 + 66 - x, 16)
	drawline (470, 380 + 66 - x, 462, 395 + 66 - x, 16)
	drawline (470, 379 + 66 - x, 462, 394 + 66 - x, 16)

	drawline (438, 372 + 66 - x, 430, 380 + 66 - x, 16) %legs top left
	drawline (438, 371 + 66 - x, 430, 379 + 66 - x, 16)
	drawline (430, 380 + 66 - x, 438, 395 + 66 - x, 16)
	drawline (430, 379 + 66 - x, 438, 394 + 66 - x, 16)

	drawline (462, 368 + 66 - x, 475, 376 + 66 - x, 16) %legs 2nd top right
	drawline (462, 367 + 66 - x, 475, 375 + 66 - x, 16)
	drawline (475, 376 + 66 - x, 474, 388 + 66 - x, 16)
	drawline (475, 375 + 66 - x, 474, 387 + 66 - x, 16)

	drawline (438, 368 + 66 - x, 425, 376 + 66 - x, 16) %legs 2nd top left
	drawline (438, 367 + 66 - x, 425, 375 + 66 - x, 16)
	drawline (425, 376 + 66 - x, 426, 388 + 66 - x, 16)
	drawline (425, 375 + 66 - x, 426, 387 + 66 - x, 16)

	drawline (459, 356 + 66 - x, 470, 351 + 66 - x, 16) %legs 3nd top right
	drawline (459, 355 + 66 - x, 470, 350 + 66 - x, 16)
	drawline (470, 351 + 66 - x, 477, 342 + 66 - x, 16)
	drawline (470, 350 + 66 - x, 477, 341 + 66 - x, 16)

	drawline (441, 356 + 66 - x, 430, 351 + 66 - x, 16) %legs 3nd top left
	drawline (441, 355 + 66 - x, 430, 350 + 66 - x, 16)
	drawline (430, 351 + 66 - x, 423, 342 + 66 - x, 16)
	drawline (430, 350 + 66 - x, 423, 341 + 66 - x, 16)

	drawline (459, 353 + 66 - x, 468, 345 + 66 - x, 16) %legs bottom right
	drawline (459, 352 + 66 - x, 468, 344 + 66 - x, 16)
	drawline (468, 345 + 66 - x, 462, 335 + 66 - x, 16)
	drawline (468, 344 + 66 - x, 462, 334 + 66 - x, 16)

	drawline (441, 353 + 66 - x, 432, 345 + 66 - x, 16) %legs bottom left
	drawline (441, 352 + 66 - x, 432, 344 + 66 - x, 16)
	drawline (432, 345 + 66 - x, 438, 335 + 66 - x, 16)
	drawline (432, 344 + 66 - x, 438, 334 + 66 - x, 16)
    end for
    for x : 100 ..339
	delay (50)
	drawfillbox (422, 466 - x, 477, 399 - x, 102) %erase
	
	treeBranch
	beehive

	drawfillbox (449, 447, 451, 370 + 66 - x, 24) %web
	drawfilloval (450, 342 + 66 - x, 5, 5, 16) %body
	drawfilloval (450, 354 + 66 - x, 8, 8, 16)
	drawfilloval (450, 370 + 66 - x, 11, 11, 16)
	drawarc (450, 403 - x, 3, 3, 310, 230, 16)

	drawline (462, 372 + 66 - x, 470, 380 + 66 - x, 16) %legs top right
	drawline (462, 371 + 66 - x, 470, 379 + 66 - x, 16)
	drawline (470, 380 + 66 - x, 462, 395 + 66 - x, 16)
	drawline (470, 379 + 66 - x, 462, 394 + 66 - x, 16)

	drawline (438, 372 + 66 - x, 430, 380 + 66 - x, 16) %legs top left
	drawline (438, 371 + 66 - x, 430, 379 + 66 - x, 16)
	drawline (430, 380 + 66 - x, 438, 395 + 66 - x, 16)
	drawline (430, 379 + 66 - x, 438, 394 + 66 - x, 16)

	drawline (462, 368 + 66 - x, 475, 376 + 66 - x, 16) %legs 2nd top right
	drawline (462, 367 + 66 - x, 475, 375 + 66 - x, 16)
	drawline (475, 376 + 66 - x, 474, 388 + 66 - x, 16)
	drawline (475, 375 + 66 - x, 474, 387 + 66 - x, 16)

	drawline (438, 368 + 66 - x, 425, 376 + 66 - x, 16) %legs 2nd top left
	drawline (438, 367 + 66 - x, 425, 375 + 66 - x, 16)
	drawline (425, 376 + 66 - x, 426, 388 + 66 - x, 16)
	drawline (425, 375 + 66 - x, 426, 387 + 66 - x, 16)

	drawline (459, 356 + 66 - x, 470, 351 + 66 - x, 16) %legs 3nd top right
	drawline (459, 355 + 66 - x, 470, 350 + 66 - x, 16)
	drawline (470, 351 + 66 - x, 477, 342 + 66 - x, 16)
	drawline (470, 350 + 66 - x, 477, 341 + 66 - x, 16)

	drawline (441, 356 + 66 - x, 430, 351 + 66 - x, 16) %legs 3nd top left
	drawline (441, 355 + 66 - x, 430, 350 + 66 - x, 16)
	drawline (430, 351 + 66 - x, 423, 342 + 66 - x, 16)
	drawline (430, 350 + 66 - x, 423, 341 + 66 - x, 16)

	drawline (459, 353 + 66 - x, 468, 345 + 66 - x, 16) %legs bottom right
	drawline (459, 352 + 66 - x, 468, 344 + 66 - x, 16)
	drawline (468, 345 + 66 - x, 462, 335 + 66 - x, 16)
	drawline (468, 344 + 66 - x, 462, 334 + 66 - x, 16)

	drawline (441, 353 + 66 - x, 432, 345 + 66 - x, 16) %legs bottom left
	drawline (441, 352 + 66 - x, 432, 344 + 66 - x, 16)
	drawline (432, 345 + 66 - x, 438, 335 + 66 - x, 16)
	drawline (432, 344 + 66 - x, 438, 334 + 66 - x, 16)
    end for
    for decreasing x : 338 .. 210
	delay (50)
	drawfillbox (422, 466 - x, 477, 399 - x, 102) %erase
	drawline (422, 60, 477, 60, 2)

	beehive

	drawfillbox (449, 447, 451, 370 + 66 - x, 24) %web
	drawfilloval (450, 342 + 66 - x, 5, 5, 16) %body
	drawfilloval (450, 354 + 66 - x, 8, 8, 16)
	drawfilloval (450, 370 + 66 - x, 11, 11, 16)
	drawarc (450, 403 - x, 3, 3, 310, 230, 16)

	drawline (462, 372 + 66 - x, 470, 380 + 66 - x, 16) %legs top right
	drawline (462, 371 + 66 - x, 470, 379 + 66 - x, 16)
	drawline (470, 380 + 66 - x, 462, 395 + 66 - x, 16)
	drawline (470, 379 + 66 - x, 462, 394 + 66 - x, 16)

	drawline (438, 372 + 66 - x, 430, 380 + 66 - x, 16) %legs top left
	drawline (438, 371 + 66 - x, 430, 379 + 66 - x, 16)
	drawline (430, 380 + 66 - x, 438, 395 + 66 - x, 16)
	drawline (430, 379 + 66 - x, 438, 394 + 66 - x, 16)

	drawline (462, 368 + 66 - x, 475, 376 + 66 - x, 16) %legs 2nd top right
	drawline (462, 367 + 66 - x, 475, 375 + 66 - x, 16)
	drawline (475, 376 + 66 - x, 474, 388 + 66 - x, 16)
	drawline (475, 375 + 66 - x, 474, 387 + 66 - x, 16)

	drawline (438, 368 + 66 - x, 425, 376 + 66 - x, 16) %legs 2nd top left
	drawline (438, 367 + 66 - x, 425, 375 + 66 - x, 16)
	drawline (425, 376 + 66 - x, 426, 388 + 66 - x, 16)
	drawline (425, 375 + 66 - x, 426, 387 + 66 - x, 16)

	drawline (459, 356 + 66 - x, 470, 351 + 66 - x, 16) %legs 3nd top right
	drawline (459, 355 + 66 - x, 470, 350 + 66 - x, 16)
	drawline (470, 351 + 66 - x, 477, 342 + 66 - x, 16)
	drawline (470, 350 + 66 - x, 477, 341 + 66 - x, 16)

	drawline (441, 356 + 66 - x, 430, 351 + 66 - x, 16) %legs 3nd top left
	drawline (441, 355 + 66 - x, 430, 350 + 66 - x, 16)
	drawline (430, 351 + 66 - x, 423, 342 + 66 - x, 16)
	drawline (430, 350 + 66 - x, 423, 341 + 66 - x, 16)

	drawline (459, 353 + 66 - x, 468, 345 + 66 - x, 16) %legs bottom right
	drawline (459, 352 + 66 - x, 468, 344 + 66 - x, 16)
	drawline (468, 345 + 66 - x, 462, 335 + 66 - x, 16)
	drawline (468, 344 + 66 - x, 462, 334 + 66 - x, 16)

	drawline (441, 353 + 66 - x, 432, 345 + 66 - x, 16) %legs bottom left
	drawline (441, 352 + 66 - x, 432, 344 + 66 - x, 16)
	drawline (432, 345 + 66 - x, 438, 335 + 66 - x, 16)
	drawline (432, 344 + 66 - x, 438, 334 + 66 - x, 16)
    end for
end spider

procedure endStatement
    cls
    locate (12, 29)
    put "And the spider gets all"
    locate (13, 31)
    put "of the bee's honey!"
    drawbox (205, 180, 420, 240, 179)
end endStatement

background
treeBranch
beehive
name
caterpillar
ladybug
beetle
bee
ant
spider
delay (1500)
endStatement
