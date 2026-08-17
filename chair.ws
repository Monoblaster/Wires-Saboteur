@left in character: character
let channel = "seatoutput"
let brickgrid = ReadBrickGrid()

var seat = 0

chip {
	let {Forward,Right,Up,PressedLeftMouse} = character.InputReader()
	on Forward {
		SendCustomEvent(channel, target = brickgrid, data1 = seat, data2 = if Forward == 1 then "w" else "s")
	}
	on Right {
		SendCustomEvent(channel, target = brickgrid, data1 = seat, data2 = if Right == 1 then "d" else "a")
	}
	on PressedLeftMouse {
		SendCustomEvent(channel, target = brickgrid, data1 = seat, data2 = "click")
	}
}

