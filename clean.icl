module clean

Start :: !*World -> (!Int, !*World)
Start world = add_rs 42 1024 world

add_rs :: !Int !Int !*World -> (!Int, !*World)
add_rs a b w = code {
	ccall add "II:I:A"
}
