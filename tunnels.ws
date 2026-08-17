type Tunnel = {topart: string, botart: string, connections: int}

let longstraight: Tunnel = {
	topart: " ▐▌ ",
	botart: " ▐▌ ",
	connections: 0b0101010100,
}
let longtleft: Tunnel = {
	topart: "▂𜷕▌ ",
	botart: "🮂𜶘▌ ",
	connections: 0b1101110100,
}
let longtright: Tunnel = {
	topart: " ▐𜷀▂",
	botart: " ▐𜵊🮂",
	connections: 0b0111011100,
}
let shortstraight: Tunnel = {
	topart: "▂▂▂▂",
	botart: "🮂🮂🮂🮂",
	connections: 0b1010101000,
}
let shorttdown: Tunnel = {
	topart: "▂▂▂▂",
	botart: "🮂𜶘𜵊🮂",
	connections: 0b1011101100,
}
let shorttup: Tunnel = {
	topart: "▂𜷕𜷀▂",
	botart: "🮂🮂🮂🮂",
	connections: 0b1110111000,
}
let cross: Tunnel = {
	topart: "▂𜷕𜷀▂",
	botart: "🮂𜶘𜵊🮂",
	connections: 0b1111111100,
}
let rightturndown: Tunnel = {
	topart: "▂▂🬼 ",
	botart: "🮂𜶘▌ ",
	connections: 0b1001100100,
}
let rightturnup: Tunnel = {
	topart: " ▐𜷀▂",
	botart: " 🭢🮂🮂",
	connections: 0b0110011000,
}
let leftturndown: Tunnel = {
	topart: " 🭇▂▂",
	botart: " ▐𜵊🮂",
	connections: 0b0011001100,
}
let leftturnup: Tunnel = {
	topart: "▂𜷕▌ ",
	botart: "🮂🮂🭗 ",
	connections: 0b1100110000,
}
let shortdeadendleft: Tunnel = {
	topart: "▂🭆🬿 ",
	botart: "🮂🭧🭚 ",
	connections: 0b1000000000,
}
let shortdeadendright: Tunnel = {
	topart: " 🭊🭑▂",
	botart: " 🭥🭜🮂",
	connections: 0b0010000000,
}
let longdeadenddown: Tunnel = {
	topart: " 🭊🬿 ",
	botart: " 🭔🭟 ",
	connections: 0b0001000000,
}
let longdeadendup: Tunnel = {
	topart: " 🭃🭎 ",
	botart: " 🭥🭚 ",
	connections: 0b0100000000,
}
let longstraightdeadend: Tunnel = {
	topart: " 🭤🭙 ",
	botart: " 🭉🬾 ",
	connections: 0b0101000000,
}
let shortstraightdeadend: Tunnel = {
	topart: "🭆🬾🭉🭑",
	botart: "🭧🭙🭤🭜",
	connections: 0b1010000000,
}
let longtdeadendright: Tunnel = {
	topart: " 🭤🭙🭈",
	botart: " 🭉🬾🭣",
	connections: 0b0111000000,
}
let longtdeadendleft: Tunnel = {
	topart: "🬽🭤🭙 ",
	botart: "🭘🭉🬾 ",
	connections: 0b1101000000,
}
let shorttdeadendup: Tunnel = {
	topart: "🬽🭤🭙🭈",
	botart: "🭘  🭣",
	connections: 0b1110000000,
}
let shorttdeadenddown: Tunnel = {
	topart: "🬽  🭈",
	botart: "🭘🭉🬾🭣",
	connections: 0b1011000000,
}
let crossdeadend: Tunnel = {
	topart: "🬽🭤🭙🭈",
	botart: "🭘🭉🬾🭣",
	connections: 0b1111000000,
}
let rightturndeadenddown: Tunnel = {
	topart: "🬽   ",
	botart: "🭘🭉🬾 ",
	connections: 0b1001000000,
}
let rightturndeadendup: Tunnel = {
	topart: " 🭤🭙🭈",
	botart: "   🭣",
	connections: 0b0110000000,
}
let leftturndeadenddown: Tunnel = {
	topart: "   🭈",
	botart: " 🭉🬾🭣",
	connections: 0b0011000000,
}
let leftturndeadendup: Tunnel = {
	topart: "🬽🭤🭙 ",
	botart: "🭘   ",
	connections: 0b1100000000,
}
let longcrossdeadend: Tunnel = {
	topart: "🬼▐▌🭇",
	botart: "🭗▐▌🭢",
	connections: 0b1111010100,
}
let longcrossdeadendleft: Tunnel = {
	topart: "▂𜷕▌🭇",
	botart: "🮂𜶘▌🭢",
	connections: 0b1111110100,
}
let longcrossdeadendright: Tunnel = {
	topart: "🬼▐𜷀▂",
	botart: "🭗▐𜵊🮂",
	connections: 0b1111011100,
}
let shortcrossdeadendup: Tunnel = {
	topart: "▂𜶭𜶰▂",
	botart: "🮂𜶘𜵊🮂",
	connections: 0b1111101100,
}
let shortcrossdeadenddown: Tunnel = {
	topart: "▂𜷕𜷀▂",
	botart: "🮂𜶒𜴸🮂",
	connections: 0b1111111000,
}
let shortcrossdeadend: Tunnel = {
	topart: "▂𜶭𜶰▂",
	botart: "🮂𜶒𜴸🮂",
	connections: 0b1111101000,
}
let longtstraightdeadendleft: Tunnel = {
	topart: "🬼▐▌ ",
	botart: "🭗▐▌ ",
	connections: 0b1101010100,
}
let longtstraightdeadendright: Tunnel = {
	topart: " ▐▌🭇",
	botart: " ▐▌🭢",
	connections: 0b0111010100,
}
let shorttstraightdeadendup: Tunnel = {
	topart: "▂𜶭𜶰▂",
	botart: "🮂🮂🮂🮂",
	connections: 0b1110101000,
}
let shorttstraightdeadenddown: Tunnel = {
	topart: "▂▂▂▂",
	botart: "🮂𜶒𜴸🮂",
	connections: 0b1011101000,
}
let longtleftturndeadenddown: Tunnel = {
	topart: " 🭇𜶬▂",
	botart: " ▐𜵊🮂",
	connections: 0b0111001100,
}
let longtleftturndeadendup: Tunnel = {
	topart: "▂𜷕▌ ",
	botart: "🮂𜵳🭗 ",
	connections: 0b1101110000,
}
let longtrightturndeadenddown: Tunnel = {
	topart: "▂𜶭🬼 ",
	botart: "🮂𜶘▌ ",
	connections: 0b1101100100,
}
let longtrightturndeadendup: Tunnel = {
	topart: " ▐𜷀▂",
	botart: " 🭢𜴸🮂",
	connections: 0b0111011000,
}
let doubleturn: Tunnel = {
	topart: "▂▝𜶩𜶻",
	botart: "𜴅𜶩▖🮂",
	connections: 0b1111111110,
}
let tunnel: Tunnel = {
	topart: "▂▐▌▂",
	botart: "🮂▐▌🮂",
	connections: 0b1111111101,
}
let empty: Tunnel = {
	topart: "    ",
	botart: "    ",
	connections: 0b0000000000
}
let facedown: Tunnel = {
	topart: "𜵊🮂🮂𜶘",
	botart: "𜷀▂▂𜷕",
	connections: 0b1111000000
}


