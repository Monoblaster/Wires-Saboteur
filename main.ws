@fold

@left in start: exec
@left in board: entity

import * as Card from "cards"
import { CHANNEL } from "chair"

//format:
// each tile is 4 characters wide and 2 characters tall
// the grid is 12x9
let gridwidth = 12
let gridheight = 9
let tilewidth = 4
let tileheight = 2
let emptytunnelrow = "                                                "
let gridwidthlength = gridwidth * tilewidth

var tunneldisplayarray: string[]
var tunneldisplay: string

var tunneldisplaysymbol1array: string[]
var tunneldisplaysymbol2array: string[]
var tunneldisplaysymbol1: string
var tunneldisplaysymbol2: string

var tunneldisplaybackgroundarray: string[]
var tunneldisplaybackground: string

@closed chip ClearTunnels()
{
	tunneldisplayarray.clear()
	tunneldisplaysymbol1array.clear()
	tunneldisplaysymbol2array.clear()
	tunneldisplaybackgroundarray.clear()

	tunneldisplayarray.resize(gridwidth * tileheight,emptytunnelrow)
	tunneldisplaysymbol1array.resize(gridwidth * gridheight,"   ")
	tunneldisplaysymbol2array.resize(gridwidth * gridheight,"   ")
	tunneldisplaybackgroundarray.resize(gridwidth * gridheight,"  ")
}

@closed chip UpdateTunnelDisplay() {
	tunneldisplay = ""
	tunneldisplaysymbol1 = ""
	tunneldisplaysymbol2 = ""
	tunneldisplaybackground = ""
	mod AppendRow(appendto: ref string, copyfrom: string) {
		appendto = "${appendto}${copyfrom}\n"
	}
	AppendRow(tunneldisplay,tunneldisplayarray[0])
	AppendRow(tunneldisplay,tunneldisplayarray[1])
	AppendRow(tunneldisplay,tunneldisplayarray[2])
	AppendRow(tunneldisplay,tunneldisplayarray[3])
	AppendRow(tunneldisplay,tunneldisplayarray[4])
	AppendRow(tunneldisplay,tunneldisplayarray[5])
	AppendRow(tunneldisplay,tunneldisplayarray[6])
	AppendRow(tunneldisplay,tunneldisplayarray[7])
	AppendRow(tunneldisplay,tunneldisplayarray[8])
	AppendRow(tunneldisplay,tunneldisplayarray[9])
	AppendRow(tunneldisplay,tunneldisplayarray[10])
	AppendRow(tunneldisplay,tunneldisplayarray[11])
	AppendRow(tunneldisplay,tunneldisplayarray[12])
	AppendRow(tunneldisplay,tunneldisplayarray[13])
	AppendRow(tunneldisplay,tunneldisplayarray[14])
	AppendRow(tunneldisplay,tunneldisplayarray[15])
	AppendRow(tunneldisplay,tunneldisplayarray[16])
	AppendRow(tunneldisplay,tunneldisplayarray[17])

	mod AppendIndex(appendto: ref string, copyfrom: string[], index: int) {
		let newline = if (index + 1) % gridwidth == 0 then "\n" else ""
		let value = copyfrom[index]
		appendto = "${appendto}${value}${newline}"
	}

	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,0)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,1)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,2)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,3)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,4)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,5)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,6)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,7)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,8)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,9)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,10)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,11)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,12)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,13)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,14)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,15)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,16)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,17)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,18)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,19)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,20)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,21)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,22)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,23)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,24)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,25)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,26)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,27)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,28)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,29)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,30)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,31)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,32)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,33)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,34)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,35)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,36)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,37)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,38)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,39)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,40)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,41)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,42)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,43)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,44)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,45)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,46)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,47)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,48)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,49)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,50)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,51)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,52)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,53)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,54)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,55)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,56)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,57)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,58)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,59)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,60)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,61)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,62)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,63)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,64)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,65)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,66)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,67)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,68)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,69)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,70)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,71)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,72)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,73)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,74)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,75)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,76)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,77)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,78)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,79)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,80)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,81)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,82)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,83)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,84)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,85)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,86)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,87)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,88)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,89)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,90)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,91)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,92)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,93)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,94)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,95)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,96)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,97)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,98)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,99)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,100)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,101)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,102)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,103)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,104)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,105)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,106)
	AppendIndex(tunneldisplaysymbol1,tunneldisplaysymbol1array,107)

	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,0)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,1)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,2)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,3)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,4)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,5)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,6)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,7)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,8)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,9)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,10)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,11)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,12)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,13)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,14)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,15)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,16)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,17)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,18)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,19)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,20)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,21)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,22)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,23)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,24)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,25)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,26)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,27)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,28)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,29)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,30)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,31)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,32)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,33)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,34)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,35)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,36)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,37)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,38)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,39)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,40)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,41)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,42)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,43)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,44)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,45)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,46)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,47)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,48)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,49)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,50)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,51)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,52)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,53)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,54)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,55)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,56)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,57)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,58)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,59)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,60)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,61)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,62)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,63)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,64)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,65)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,66)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,67)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,68)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,69)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,70)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,71)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,72)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,73)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,74)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,75)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,76)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,77)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,78)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,79)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,80)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,81)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,82)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,83)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,84)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,85)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,86)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,87)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,88)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,89)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,90)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,91)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,92)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,93)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,94)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,95)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,96)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,97)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,98)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,99)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,100)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,101)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,102)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,103)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,104)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,105)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,106)
	AppendIndex(tunneldisplaysymbol2,tunneldisplaysymbol2array,107)

	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,0)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,1)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,2)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,3)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,4)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,5)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,6)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,7)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,8)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,9)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,10)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,11)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,12)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,13)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,14)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,15)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,16)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,17)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,18)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,19)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,20)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,21)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,22)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,23)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,24)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,25)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,26)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,27)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,28)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,29)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,30)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,31)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,32)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,33)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,34)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,35)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,36)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,37)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,38)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,39)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,40)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,41)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,42)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,43)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,44)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,45)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,46)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,47)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,48)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,49)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,50)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,51)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,52)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,53)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,54)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,55)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,56)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,57)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,58)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,59)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,60)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,61)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,62)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,63)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,64)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,65)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,66)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,67)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,68)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,69)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,70)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,71)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,72)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,73)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,74)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,75)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,76)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,77)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,78)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,79)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,80)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,81)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,82)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,83)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,84)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,85)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,86)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,87)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,88)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,89)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,90)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,91)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,92)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,93)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,94)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,95)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,96)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,97)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,98)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,99)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,100)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,101)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,102)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,103)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,104)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,105)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,106)
	AppendIndex(tunneldisplaybackground,tunneldisplaybackgroundarray,107)
}

let brickgrid = ReadBrickGrid()

var cardpositions: vector[]
var seated: character[]
@closed chip on brickgrid {
	var empty: character
	seated.resize(12,empty)
	cardpositions = [Vec(0.0,0.8,0),Vec(0.1,0.8,0),Vec(0.2,0.8,0),Vec(0.3,0.8,0),Vec(0.4,0.8,0),Vec(0.4,0.8,0)]
}

mod SetTunnelArt(x: int, y: int, (topart, botart, symbol1, symbol2, background): (string, string, string, string, color)) {
	let arrayindex = x + y * gridwidth

	let tunnelrow = y * tileheight
	let tunnelcolumn = x * tilewidth

	let hex = background.ToHex()
	if hex == "000000" {
		tunneldisplaybackgroundarray[arrayindex] = "  "
	}
	else {
		tunneldisplaybackgroundarray[arrayindex] = '<color="#${hex}">██'
	}

	mod SetLayer(strings: ref string[], string: string) {
		let newstring = if string == "" then "   " else string
		strings[arrayindex] = newstring
	}

	SetLayer(tunneldisplaysymbol1array,symbol1)
	SetLayer(tunneldisplaysymbol2array,symbol2)

	let top = tunneldisplayarray[tunnelrow]
	let bottom = tunneldisplayarray[tunnelrow + 1]
	let end = tunnelcolumn + tilewidth
	let lengthafterend = top.Length() - end
	mod TunnelReplace(string: string, replace: string) -> string {
		let before = string.Substring(0,tunnelcolumn)
		let after = string.Substring(end, lengthafterend)
		return before .. replace .. after
	}
	tunneldisplayarray[tunnelrow] = TunnelReplace(top, topart)
	tunneldisplayarray[tunnelrow + 1] = TunnelReplace(bottom, botart)
}

var possibleconnectionsarray: int[]
var placedlocationsarray: vector[]

mod DisplayTunnelCard(character: entity, {tunnelcard}: Card.DrawnCard, position: int) {
	let anchor = cardpositions[position]
	let anchorx = anchor.x
	let anchory = anchor.y
	let {symbol, a} = tunnelcard
	let {layer1, layer2} = symbol
	let {topart, botart} = a
	let displaysize = 40
	let symbolsize = displaysize * 1.34375
	let backgroundsize = displaysize * 2
	let symbolyoffset = 0
	let outlinesize = 1
	let tunneloutlinecolor = ColorHex("#FFFFFF")
	let backgroundcolor = ColorHex("#666")
	character.DisplayText('<font="IosevkaTerm"><sharp><color="${backgroundcolor.ToHex()}"><size="${backgroundsize}">██', outlineSize = outlinesize, outlineColor = backgroundcolor , anchorX = anchorx, anchorY = anchory, justify = "Left", textId = 1)
	character.DisplayText('<font="IosevkaTerm"><sharp><size="${displaysize}">${topart}\n${botart}', outlineSize = outlinesize, outlineColor = tunneloutlinecolor, anchorX = anchorx, anchorY = anchory, justify = "Left", textId = 2)
	character.DisplayText('<font="IosevkaTerm"><size="${symbolsize}">${layer1}', outlineSize = outlinesize, positionY = symbolyoffset, anchorX = anchorx, anchorY = anchory, justify = "Left", textId = 3)
	character.DisplayText('<font="IosevkaTerm"><size="${symbolsize}">${layer2}', outlineSize = outlinesize, positionY = symbolyoffset, justify = "Left", textId = 4)
}

mod PlaceTunnelCard(x: int, y: int, card: Card.TunnelCard, isb: bool) {
	let {topart,botart,symbol1,symbol2,connections} = Card.SplitTunnelCard(card,isb)
	SetTunnelArt(x,y,(topart,botart,symbol1,symbol2,ColorHex("#666")))

	let left = Vec(x - 1, y, 0)
	let up = Vec(x, y - 1, 0)
	let right = Vec(x + 1, y, 0)
	let down = Vec(x, y + 1, 0)
	placedlocationsarray.push(Vec(x,y,0))

	mod AddDirection(vec: vector, mask: int,isconnection: bool) {
		let split = vec.SplitVec()
		let x = split.x
		let y = split.y
		let {Found} = placedlocationsarray.find(vec)
		//mask: 4 connections to adjacent tiles 4 bits that must follow connection rules
		let connectionmask = mask & (if isconnection then 0b1111 else 0b0000)
		let fullmask = connectionmask << 4 | mask
		if Found {
			return
		}

		let index = x + y * gridwidth
		let oldmask = possibleconnectionsarray[index]
		let newmask = oldmask | fullmask
		possibleconnectionsarray[index] = newmask
	}

	if left.x >= 0 {
		AddDirection(left,0b0010,0b1000000000 & connections)
	}
	if up.y >= 0 {
		AddDirection(up,0b0001,0b0100000000 & connections)
	}
	if right.x < gridwidth {
		AddDirection(right,0b1000,0b0010000000 & connections)
	}
	if down.y < gridheight {
		AddDirection(down,0b0100,0b0001000000 & connections )
	}
}

@closed chip on start {
	Card.MakeDeck()

	possibleconnectionsarray.clear()
	placedlocationsarray.clear()
	possibleconnectionsarray.resize(gridwidth * gridheight, 0b00000000) 
	ClearTunnels()
	UpdateTunnelDisplay()

	//setup
	mod SetTunnelArtFromCard(x: int, y: int, card: Card.TunnelCard, background: color) {
		let {topart,botart,symbol1,symbol2} = Card.SplitTunnelCard(card,false)
		SetTunnelArt(x,y,(topart,botart,symbol1,symbol2,background))

	}
	SetTunnelArtFromCard(9,4,Card.start,ColorHex("#666"))
	SetTunnelArtFromCard(2,2,Card.uknown,ColorHex("#500"))
	SetTunnelArtFromCard(2,4,Card.uknown,ColorHex("#500"))
	SetTunnelArtFromCard(2,6,Card.uknown,ColorHex("#500"))

	UpdateTunnelDisplay()
}


@closed chip on CustomEvent(CHANNEL, isObject = true) -> (data1: int, data2: string, data3: character) {
	if data3 != seated[data1]  {
		seated[data1] = data3
	}
	if data2 == "click" {
		let character = seated[data1]
		let rotation = board.GetRotation().Invert()
		let position = board.GetLocation()
		let gridbrickwidth = gridwidth * 10
		let gridbrickheight = gridheight * 12

		let aim = character.GetAim()
		let origin = aim.Origin
		let direction = aim.Direction
		let result = Sweep(origin,direction,1000, ignore = brickgrid,detectBricks = true,detectPlayers1 = false,detectPlayers2 = false,detectPlayers3 = false ,detectPlayers4 = false)
		if result.Miss || result.HitEntity != board {
			return
		}
		let localhitlocation = (result.HitLocation - position).Rotate(rotation)


		let u = (localhitlocation.x / (gridbrickheight / 2) - 1) / -2
		let v = (localhitlocation.y / (gridbrickwidth / 2) + 1) / 2

		let y = floor(clamp(gridheight * u, 0, gridheight-1))
		let x = floor(clamp(gridwidth * v, 0, gridwidth-1))

		if placedlocationsarray.find(Vec(x, y, 0)).Found {
			return
		}

		let r = Card.UnwrapTunnelCard(Card.DrawCard())
		if r.success {
			PlaceTunnelCard(x,y,r.card,false)
			UpdateTunnelDisplay()
		}
	}
}

@bottom out tunnel_display = tunneldisplay.Value
@bottom out tunnel_display_symbol1 = tunneldisplaysymbol1.Value
@bottom out tunnel_display_symbol2 = tunneldisplaysymbol2.Value
@bottom out tunnel_display_background = tunneldisplaybackground.Value
