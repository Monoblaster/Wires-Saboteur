import * as symbol from "symbols"
import * as tunnel from "tunnels"
import * as action from "actions"

let brickgrid = ReadBrickGrid()

type TunnelCard = {a: tunnel.Tunnel, b: tunnel.Tunnel, symbol: symbol.Symbol}
let empty: TunnelCard = {a: tunnel.empty, b: tunnel.empty, symbol: symbol.empty}
let start: TunnelCard = {...empty, a: tunnel.cross, b: tunnel.cross, symbol: symbol.ladder}
let gold: TunnelCard = {...empty, a: tunnel.cross, b: tunnel.cross, symbol: symbol.gold}
let coalleft: TunnelCard = {...empty, a: tunnel.leftturnup, b: tunnel.leftturndown, symbol: symbol.coal}
let coalright: TunnelCard = {...empty, a: tunnel.rightturnup, b: tunnel.rightturndown, symbol: symbol.coal}
let uknown: TunnelCard = {...empty, a: tunnel.facedown, b: tunnel.facedown, symbol: symbol.uknown}

type ActionCard = {}

type TunnelInfo = {card: TunnelCard, amount: int}

let tunnels = ({
	card: {
		...empty,
		a: tunnel.longstraight, b: tunnel.longstraight, symbol: symbol.empty,
	},
	amount: 4,
},{
	card: {
		...empty,
		a: tunnel.longtleft, b: tunnel.longtright, symbol: symbol.empty,
	},
	amount: 5,
},{
	card: {
		...empty,
		a: tunnel.cross, b: tunnel.cross, symbol: symbol.empty,
	},
	amount: 5,
},{
	card: {
		...empty,
		a: tunnel.rightturnup, b: tunnel.rightturndown, symbol: symbol.empty,
	},
	amount: 4,
},{
	card: {
		...empty,
		a: tunnel.leftturnup, b: tunnel.leftturndown, symbol: symbol.empty,
	},
	amount: 5,
},{
	card: {
		...empty,
		a: tunnel.longdeadendup, b: tunnel.longdeadenddown, symbol: symbol.empty,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: tunnel.longtdeadendleft, b: tunnel.longtdeadendright, symbol: symbol.empty,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: tunnel.crossdeadend, b: tunnel.crossdeadend, symbol: symbol.empty,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: tunnel.rightturndeadendup, b: tunnel.rightturndeadenddown, symbol: symbol.empty,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: tunnel.leftturndeadendup, b: tunnel.leftturndeadenddown, symbol: symbol.empty,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: tunnel.shortdeadendleft, b: tunnel.shortdeadendright, symbol: symbol.empty,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: tunnel.shorttup, b: tunnel.shorttdown, symbol: symbol.empty,
	},
	amount: 5,
},{
	card: {
		...empty,
		a: tunnel.shortstraight, b: tunnel.shortstraight, symbol: symbol.empty,
	},
	amount: 3,
},{
	card: {
		...empty,
		a: tunnel.longstraightdeadend, b: tunnel.longstraightdeadend, symbol: symbol.empty,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: tunnel.shorttdeadendup, b: tunnel.shorttdeadenddown, symbol: symbol.empty,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: tunnel.shortstraightdeadend, b: tunnel.shortstraightdeadend, symbol: symbol.empty,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: tunnel.tunnel, b: tunnel.tunnel, symbol: symbol.tunnelsupport,
	},
	amount: 2,
},{
	card: {
		...empty,
		a: tunnel.longtstraightdeadendleft, b: tunnel.longtstraightdeadendright, symbol: symbol.greendoor,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: tunnel.leftturnup, b: tunnel.leftturndown, symbol: symbol.greendoor,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: tunnel.shortstraight, b: tunnel.shortstraight, symbol: symbol.greendoor,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: tunnel.longstraight, b: tunnel.longstraight, symbol: symbol.bluedoor,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: tunnel.rightturnup, b: tunnel.rightturndown, symbol: symbol.bluedoor,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: tunnel.shortstraight, b: tunnel.shortstraight, symbol: symbol.bluedoor,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: tunnel.shortdeadendleft, b: tunnel.shortdeadendright, symbol: symbol.ladder,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: tunnel.longdeadendup, b: tunnel.longdeadenddown, symbol: symbol.ladder,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: tunnel.rightturnup, b: tunnel.rightturndown, symbol: symbol.ladder,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: tunnel.leftturnup, b: tunnel.leftturndown, symbol: symbol.ladder,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: tunnel.shortdeadendleft, b: tunnel.shortdeadendright, symbol: symbol.gem,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: tunnel.shorttup, b: tunnel.shorttdown, symbol: symbol.gem,
	},
	amount: 3,
},{
	card: {
		...empty,
		a: tunnel.cross, b: tunnel.cross, symbol: symbol.gem,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: tunnel.longtleft, b: tunnel.longtright, symbol: symbol.gem,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: tunnel.shortcrossdeadendup, b: tunnel.shortcrossdeadenddown, symbol: symbol.gem,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: tunnel.longdeadendup, b: tunnel.longdeadenddown, symbol: symbol.gem,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: tunnel.longcrossdeadendleft, b: tunnel.longcrossdeadendleft, symbol: symbol.gem,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: tunnel.shorttstraightdeadendup, b: tunnel.shorttstraightdeadenddown, symbol: symbol.gem,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: tunnel.doubleturn, b: tunnel.doubleturn, symbol: symbol.empty,
	},
	amount: 2,
},{
	card: {
		...empty,
		a: tunnel.longtrightturndeadendup, b: tunnel.longtrightturndeadenddown, symbol: symbol.empty,
	},
	amount: 2,
},{
	card: {
		...empty,
		a: tunnel.longtleftturndeadendup, b: tunnel.longtleftturndeadenddown, symbol: symbol.empty,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: tunnel.longtstraightdeadendleft, b: tunnel.longtstraightdeadendright, symbol: symbol.empty,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: tunnel.longcrossdeadend, b: tunnel.longcrossdeadend, symbol: symbol.empty,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: tunnel.shortcrossdeadend, b: tunnel.shortcrossdeadend, symbol: symbol.empty,
	},
	amount: 1,
})

var tunnelamountarray: int[]
// tunnel information
// element 1 is topart and botart a and b
// element 2 is symbol1
// element 3 is symbol2
var tunnelartarray: string[]
//each element is for a and b but combined
var tunnelconnectionsarray: int[]

on brickgrid {
	mod AddTunnelCard({card, amount}: TunnelInfo) {
		let {a,b,symbol} = card
		tunnelamountarray.push(amount)
		tunnelartarray.push("${a.topart}${a.botart}${b.topart}${b.botart}")
		tunnelartarray.push("${symbol.layer2}")
		tunnelconnectionsarray.push((a.connections << 10) | b.connections)
	}

	AddTunnelCard(tunnels.0)
	AddTunnelCard(tunnels.1)
	AddTunnelCard(tunnels.2)
	AddTunnelCard(tunnels.3)
	AddTunnelCard(tunnels.4)
	AddTunnelCard(tunnels.5)
	AddTunnelCard(tunnels.6)
	AddTunnelCard(tunnels.7)
	AddTunnelCard(tunnels.8)
	AddTunnelCard(tunnels.9)
	AddTunnelCard(tunnels.10)
	AddTunnelCard(tunnels.11)
	AddTunnelCard(tunnels.12)
	AddTunnelCard(tunnels.13)
	AddTunnelCard(tunnels.14)
	AddTunnelCard(tunnels.15)
	AddTunnelCard(tunnels.16)
	AddTunnelCard(tunnels.17)
	AddTunnelCard(tunnels.18)
	AddTunnelCard(tunnels.19)
	AddTunnelCard(tunnels.20)
	AddTunnelCard(tunnels.21)
	AddTunnelCard(tunnels.22)
	AddTunnelCard(tunnels.23)
	AddTunnelCard(tunnels.24)
	AddTunnelCard(tunnels.25)
	AddTunnelCard(tunnels.26)
	AddTunnelCard(tunnels.27)
	AddTunnelCard(tunnels.28)
	AddTunnelCard(tunnels.29)
	AddTunnelCard(tunnels.30)
	AddTunnelCard(tunnels.31)
	AddTunnelCard(tunnels.32)
	AddTunnelCard(tunnels.33)
	AddTunnelCard(tunnels.34)
	AddTunnelCard(tunnels.35)
	AddTunnelCard(tunnels.36)
	AddTunnelCard(tunnels.37)
	AddTunnelCard(tunnels.38)
	AddTunnelCard(tunnels.39)
	AddTunnelCard(tunnels.40)
}

chip {
	//format:
	// type:index
	var Deck: string[]
}
//makes the deck fills it with indexes from the tunnel and action card tables
mod MakeDeck() {
	Deck.clear()
	let cardtype = "tunnel"
	let amountarray = tunnelamountarray
	mod AddToDeck(index: int) {
		let amount = amountarray[index]

		mod AddCard() {
			Deck.push('${cardtype}:${index}')
		}

		if amount > 0 {
			AddCard()
		}
		if amount > 1 {
			AddCard()
		}
		if amount > 2 {
			AddCard()
		}
		if amount > 3 {
			AddCard()
		}
		if amount > 4 {
			AddCard()
		}
		if amount > 5 {
			AddCard()
		}
		if amount > 6 {
			AddCard()
		}
	}

	AddToDeck(0)
	AddToDeck(1)
	AddToDeck(2)
	AddToDeck(3)
	AddToDeck(4)
	AddToDeck(5)
	AddToDeck(6)
	AddToDeck(7)
	AddToDeck(8)
	AddToDeck(9)
	AddToDeck(10)
	AddToDeck(11)
	AddToDeck(12)
	AddToDeck(13)
	AddToDeck(14)
	AddToDeck(15)
	AddToDeck(16)
	AddToDeck(17)
	AddToDeck(18)
	AddToDeck(19)
	AddToDeck(20)
	AddToDeck(21)
	AddToDeck(22)
	AddToDeck(23)
	AddToDeck(24)
	AddToDeck(25)
	AddToDeck(26)
	AddToDeck(27)
	AddToDeck(28)
	AddToDeck(29)
	AddToDeck(30)
	AddToDeck(31)
	AddToDeck(32)
	AddToDeck(33)
	AddToDeck(34)
	AddToDeck(35)
	AddToDeck(36)
	AddToDeck(37)
	AddToDeck(38)
	AddToDeck(39)
	AddToDeck(40)

	Deck.shuffle()
}

type DrawnCard = {cardtype: string, tunnelcard: TunnelCard, actioncard: ActionCard}
let drawncardempty = {cardtype: "", tunnelcard: empty, actioncard: {}}

//draws the next card from the deck
mod DrawCard() -> (card: DrawnCard) {
	let r = Deck.pop()
	if r.IsEmpty {
		out card = drawncardempty
		return
	}
	let card = r.Value
	let r = card.Split(":")
	let cardtype = r.Left
	let cardindex = r.Right.ParseInt()

	if cardtype == "Tunnel" {
		let artstart = cardindex * 3
		let art = tunnelartarray[artstart]
		let symbol1 = tunnelartarray[artstart + 1]
		let symbol2 = tunnelartarray[artstart + 2]
		let bothconnections = tunnelconnectionsarray[cardindex]
		let connectionsa = (bothconnections & 0b11111111110000000000) >> 10
		let connectionsb = bothconnections & 0b00000000001111111111
		let arta = art.Substring(0,8)
		let artb = art.Substring(8,8)
		let tunnela: tunnel.Tunnel = {topart: arta.Substring(0,4), botart: arta.Substring(4,4), connections: connectionsa}
		let tunnelb: tunnel.Tunnel = {topart: artb.Substring(0,4), botart: artb.Substring(4,4), connections: connectionsb}
		let symbol: symbol.Symbol = {layer1: symbol1, layer2: symbol2}

		out card = {...drawncardempty, cardtype: cardtype, tunnelcard: {...empty, a: tunnela, b: tunnelb, symbol: symbol}}
		return 
	}
}

mod IsTunnelCard({cardtype}: DrawnCard) -> bool {
	return cardtype == "Tunnel"
}

mod IsActionCard({cardtype}: DrawnCard) -> bool {
	return cardtype == "Action"
}

//gets the art for the tunnel card
mod SplitTunnelCard({tunnelcard}: DrawnCard, isb: bool) -> (topart: string, botart: string, symbol1: string, symbol2: string, connections: int) {
	let a = tunnelcard.a
	let b = tunnelcard.b
	let symbol = tunnelcard.symbol
	out topart = if isb then b.topart else a.topart
	out botart = if isb then b.botart else a.botart
	out symbol1 = symbol.layer1
	out symbol2 = symbol.layer2
	out connections = if isb then b.connections else a.connections
}

//checks if the tunnel card works for the required connections
mod Connects({tunnelcard}: DrawnCard, mask: int) -> (a: bool, b: bool) {
	let requiredmask = mask & 0b00001111
	let connectionsmask = (mask & 0b11110000) >> 4
	let requiredconnections = connectionsmask & requiredmask
	let requiredempties = ~connectionsmask & requiredmask
	mod CanTunnelConnect(tunnel: tunnel.Tunnel) -> bool {
		let connections = (tunnel.connections & 0b1111000000) >> 6
		//checking if all connection hits match the required connections and likewise for empties
		let connects = (~(requiredconnections ^ connections) & requiredconnections) == requiredconnections
		let empties = (~(requiredempties ^ ~connections) & requiredempties) == requiredempties
		return connects && empties
	}

	out a = CanTunnelConnect(tunnelcard.a)
	out b = CanTunnelConnect(tunnelcard.b)
}
