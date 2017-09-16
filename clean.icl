module clean

Start :: !*World -> (!Int, !*World)
Start world = forty_two_rs world

forty_two_rs :: !*World -> (!Int, !*World)
forty_two_rs w = code {
	ccall forty_two ":I:A"
}
