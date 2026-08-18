@left in character: character
const CHANNEL = "seatoutput"


chip {
	var seat = 0
	let brickgrid = ReadBrickGrid()
	let {Forward,Right,Up,PressedLeftMouse} = character.InputReader()
	on Forward {
		SendCustomEvent(CHANNEL, target = brickgrid, data1 = seat, data2 = if Forward == 1 then "w" else "s", data3 = character)
	}
	on Right {
		SendCustomEvent(CHANNEL, target = brickgrid, data1 = seat, data2 = if Right == 1 then "d" else "a", data3 = character)
	}
	on PressedLeftMouse {
		SendCustomEvent(CHANNEL, target = brickgrid, data1 = seat, data2 = "click", data3 = character)
	}
	on Change(character) {
		SendCustomEvent(CHANNEL, target = brickgrid, data1 = seat, data3 = character)
	}
}

