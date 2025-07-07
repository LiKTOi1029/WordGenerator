math.randomseed(os.clock())
function RandomValueGenerator(V, C, Weights, InputTable)
	local MaxSlice, Slice = 0, 0
	for num3, value in ipairs(Weights) do
		MaxSlice = MaxSlice + value
		print(MaxSlice)
	end
end
function Separator(String)
	local Table = {}
	for num1 = 1, String:len(), 1 do
		if String:sub(num1,num1):match("%s") then
			table.insert(Table, String:sub(num1,String:len()))
			Table[1] = Table[1]:gsub(" ", "")
			table.insert(Table, String:sub(1,num1))
		end
	end
	for num2, _ in ipairs(Table) do
		Table[num2] = tonumber(Table[num2])
	end
	return Table
end
function SyllablePutTogether(choice)
	local V, C, Weights, InputTable = {"a","e","i","o","u","y",},{"b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z",},{45,45,10},Separator(choice)
	for num1 = 1, 2, 1 do
		RandomValueGenerator(V, C, Weights, InputTable)
	end
end
repeat
	io.write("Write two numbers, the first one for the number of words and the second one for syllables per word.\nUse spaces as the delimiter I.E. \"3 3\"\n type exit to exit\n")
	local choice = io.read():gsub("\n","")
	if choice:match("^%d+%s%d+$") then SyllablePutTogether(choice) end
until choice:upper() == "EXIT"