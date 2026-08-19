import * as Symbol from "symbols"
import * as Tunnel from "tunnels"
import * as Action from "actions"

let brickgrid = ReadBrickGrid()

type TunnelCard = {a: Tunnel.Tunnel, b: Tunnel.Tunnel, symbol: Symbol.Symbol}
let empty: TunnelCard = {a: Tunnel.empty, b: Tunnel.empty, symbol: Symbol.empty}
let start: TunnelCard = {...empty, a: Tunnel.cross, b: Tunnel.cross, symbol: Symbol.ladder}
let gold: TunnelCard = {...empty, a: Tunnel.cross, b: Tunnel.cross, symbol: Symbol.gold}
let coalleft: TunnelCard = {...empty, a: Tunnel.leftturnup, b: Tunnel.leftturndown, symbol: Symbol.coal}
let coalright: TunnelCard = {...empty, a: Tunnel.rightturnup, b: Tunnel.rightturndown, symbol: Symbol.coal}
let uknown: TunnelCard = {...empty, a: Tunnel.facedown, b: Tunnel.facedown, symbol: Symbol.uknown}

type ActionCard = {}

type TunnelInfo = {card: TunnelCard, amount: int}

let tunnels = ({
	card: {
		...empty,
		a: Tunnel.longstraight, b: Tunnel.longstraight, symbol: Symbol.empty,
	},
	amount: 4,
},{
	card: {
		...empty,
		a: Tunnel.longtleft, b: Tunnel.longtright, symbol: Symbol.empty,
	},
	amount: 5,
},{
	card: {
		...empty,
		a: Tunnel.cross, b: Tunnel.cross, symbol: Symbol.empty,
	},
	amount: 5,
},{
	card: {
		...empty,
		a: Tunnel.rightturnup, b: Tunnel.rightturndown, symbol: Symbol.empty,
	},
	amount: 4,
},{
	card: {
		...empty,
		a: Tunnel.leftturnup, b: Tunnel.leftturndown, symbol: Symbol.empty,
	},
	amount: 5,
},{
	card: {
		...empty,
		a: Tunnel.longdeadendup, b: Tunnel.longdeadenddown, symbol: Symbol.empty,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: Tunnel.longtdeadendleft, b: Tunnel.longtdeadendright, symbol: Symbol.empty,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: Tunnel.crossdeadend, b: Tunnel.crossdeadend, symbol: Symbol.empty,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: Tunnel.rightturndeadendup, b: Tunnel.rightturndeadenddown, symbol: Symbol.empty,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: Tunnel.leftturndeadendup, b: Tunnel.leftturndeadenddown, symbol: Symbol.empty,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: Tunnel.shortdeadendleft, b: Tunnel.shortdeadendright, symbol: Symbol.empty,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: Tunnel.shorttup, b: Tunnel.shorttdown, symbol: Symbol.empty,
	},
	amount: 5,
},{
	card: {
		...empty,
		a: Tunnel.shortstraight, b: Tunnel.shortstraight, symbol: Symbol.empty,
	},
	amount: 3,
},{
	card: {
		...empty,
		a: Tunnel.longstraightdeadend, b: Tunnel.longstraightdeadend, symbol: Symbol.empty,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: Tunnel.shorttdeadendup, b: Tunnel.shorttdeadenddown, symbol: Symbol.empty,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: Tunnel.shortstraightdeadend, b: Tunnel.shortstraightdeadend, symbol: Symbol.empty,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: Tunnel.tunnel, b: Tunnel.tunnel, symbol: Symbol.tunnelsupport,
	},
	amount: 2,
},{
	card: {
		...empty,
		a: Tunnel.longtstraightdeadendleft, b: Tunnel.longtstraightdeadendright, symbol: Symbol.greendoor,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: Tunnel.leftturnup, b: Tunnel.leftturndown, symbol: Symbol.greendoor,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: Tunnel.shortstraight, b: Tunnel.shortstraight, symbol: Symbol.greendoor,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: Tunnel.longstraight, b: Tunnel.longstraight, symbol: Symbol.bluedoor,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: Tunnel.rightturnup, b: Tunnel.rightturndown, symbol: Symbol.bluedoor,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: Tunnel.shortstraight, b: Tunnel.shortstraight, symbol: Symbol.bluedoor,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: Tunnel.shortdeadendleft, b: Tunnel.shortdeadendright, symbol: Symbol.ladder,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: Tunnel.longdeadendup, b: Tunnel.longdeadenddown, symbol: Symbol.ladder,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: Tunnel.rightturnup, b: Tunnel.rightturndown, symbol: Symbol.ladder,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: Tunnel.leftturnup, b: Tunnel.leftturndown, symbol: Symbol.ladder,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: Tunnel.shortdeadendleft, b: Tunnel.shortdeadendright, symbol: Symbol.gem,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: Tunnel.shorttup, b: Tunnel.shorttdown, symbol: Symbol.gem,
	},
	amount: 3,
},{
	card: {
		...empty,
		a: Tunnel.cross, b: Tunnel.cross, symbol: Symbol.gem,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: Tunnel.longtleft, b: Tunnel.longtright, symbol: Symbol.gem,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: Tunnel.shortcrossdeadendup, b: Tunnel.shortcrossdeadenddown, symbol: Symbol.gem,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: Tunnel.longdeadendup, b: Tunnel.longdeadenddown, symbol: Symbol.gem,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: Tunnel.longcrossdeadendleft, b: Tunnel.longcrossdeadendleft, symbol: Symbol.gem,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: Tunnel.shorttstraightdeadendup, b: Tunnel.shorttstraightdeadenddown, symbol: Symbol.gem,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: Tunnel.doubleturn, b: Tunnel.doubleturn, symbol: Symbol.empty,
	},
	amount: 2,
},{
	card: {
		...empty,
		a: Tunnel.longtrightturndeadendup, b: Tunnel.longtrightturndeadenddown, symbol: Symbol.empty,
	},
	amount: 2,
},{
	card: {
		...empty,
		a: Tunnel.longtleftturndeadendup, b: Tunnel.longtleftturndeadenddown, symbol: Symbol.empty,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: Tunnel.longtstraightdeadendleft, b: Tunnel.longtstraightdeadendright, symbol: Symbol.empty,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: Tunnel.longcrossdeadend, b: Tunnel.longcrossdeadend, symbol: Symbol.empty,
	},
	amount: 1,
},{
	card: {
		...empty,
		a: Tunnel.shortcrossdeadend, b: Tunnel.shortcrossdeadend, symbol: Symbol.empty,
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
		tunnelartarray.push("${symbol.layer1}")
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

//format:
// type:index
var deck: string[]

//makes the deck fills it with indexes from the tunnel and action card tables
mod MakeDeck() {
	deck.clear()
	let cardtype = "tunnel"
	let amountarray = tunnelamountarray
	mod AddToDeck(index: int) {
		let amount = amountarray[index]

		mod AddCard() {
			deck.push('${cardtype}:${index}')
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

	deck.shuffle()
}

type DrawnCard = {cardtype: string, tunnelcard: TunnelCard, actioncard: ActionCard}
let drawncardempty: DrawnCard = {cardtype: "", tunnelcard: empty, actioncard: {}}


//draws the next card from the deck
mod DrawCard() -> (card: DrawnCard) {
	let r = deck.pop()
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
		let tunnela: Tunnel.Tunnel = {topart: arta.Substring(0,4), botart: arta.Substring(4,4), connections: connectionsa}
		let tunnelb: Tunnel.Tunnel = {topart: artb.Substring(0,4), botart: artb.Substring(4,4), connections: connectionsb}
		let symbol: Symbol.Symbol = {layer1: symbol1, layer2: symbol2}

		out card = {...drawncardempty, cardtype: cardtype, tunnelcard: {...empty, a: tunnela, b: tunnelb, symbol: symbol}}
		return 
	}
}

mod UnwrapTunnelCard({cardtype,tunnelcard}: DrawnCard) -> (success: bool, card: TunnelCard) {
	out success = cardtype == "Tunnel"
	out card = tunnelcard
}

mod UnwrapActionCard({cardtype,actioncard}: DrawnCard) -> (success: bool, card: ActionCard) {
	out success = cardtype == "Action"
	out card = actioncard
}


//gets the art for the tunnel card
mod SplitTunnelCard({a,b,symbol}: TunnelCard, isb: bool) -> (topart: string, botart: string, symbol1: string, symbol2: string, connections: int) {
	out topart = if isb then b.topart else a.topart
	out botart = if isb then b.botart else a.botart
	out symbol1 = Symbol.layer1
	out symbol2 = Symbol.layer2
	out connections = if isb then b.connections else a.connections
}

//checks if the tunnel card works for the required connections
mod Connects({a,b}: TunnelCard, mask: int) -> (a: bool, b: bool) {
	let requiredmask = mask & 0b00001111
	let connectionsmask = (mask & 0b11110000) >> 4
	let requiredconnections = connectionsmask & requiredmask
	let requiredempties = ~connectionsmask & requiredmask
	mod CanTunnelConnect(tunnel: Tunnel.Tunnel) -> bool {
		let connections = (tunnel.connections & 0b1111000000) >> 6
		//checking if all connection hits match the required connections and likewise for empties
		let connects = (~(requiredconnections ^ connections) & requiredconnections) == requiredconnections
		let empties = (~(requiredempties ^ ~connections) & requiredempties) == requiredempties
		return connects && empties
	}

	out a = CanTunnelConnect(a)
	out b = CanTunnelConnect(b)
}
