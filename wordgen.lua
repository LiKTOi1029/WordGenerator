math.randomseed(os.clock())
function RandomValueGenerator(V, C, SV, Weights)
	local WeightChooserNumber = math.random(100)
	
end
function SyllablePutTogether(choice)
	local V, C, Weights = {"a","e","i","o","u","y",},{"b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z",},{45,45,10}
	for num1 = 1, choice, 1 do
		RandomValueGenerator(V, C, SV, Weights)
	end
end
repeat
	io.write("Write two numbers, one for the number of words and another for syllables per word.\nUse spaces as the delimiter I.E. \"3 3\"\n type exit to exit")
	local choice = io.read():gsub("\n","")
	if choice:match("^%d+%s+%d+$") then SyllablePutTogether(choice) end
until choice:upper() == "EXIT'"