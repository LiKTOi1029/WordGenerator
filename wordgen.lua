math.randomseed(os.clock())
function RandomValueGenerator(V, C, Weights, InputTable, MaxSlice, LastLetter)
	local RandomNumber = math.random(MaxSlice)
	return SyllableGenerator(V, C, RandomNumber, Weights, LastLetter)
end
function SyllableGenerator(V, C, RandomNumber, Weights, LastLetter)
	for num5, value in ipairs(Weights) do
		if RandomNumber - Weights[num5] == RandomNumber < Weights[num5] then
			return CasePicker(num5)
		end
	end
	local function CasePicker(num5, V, C, LastLetter)
		if num5 == 1 then
			return CaseVC(V, C, LastLetter)
		elseif num5 == 2 then
			return CaseCV(V, C, LastLetter)
		else
			return CaseVCV(V, C, LastLetter)
		end
	end
end
function CaseVC(V, C, LastLetter)
	local AllowedCases = {["b"] = {"a","b","e","l","o","r","s","u","y"},["c"] = {"a","c","e","h","i","k","l","o","r","s","t","u","y"}, ["d"] = {"a","d","e","i","o","r","s","u","y"}, ["f"] = {"a","e","f","i","l","o","r","s","u","y"}, ["g"] = {"a","e","g","i","l","o","r","s","u","y"}, ["h"] = {"a","e","i","o","u","y"}, ["j"] = {"a","e","i","o","u"}, ["k"] = {"a","e","i","k","o"}, ["l"] = {"a","e","i","l","o","r","t","u"}, ["m"] = {}}
	if LastLetter then
		
	else
		
	end
end
function CaseVCV(V, C, LastLetter)
	if LastLetter then
		
	else
		
	end
end
function CaseCV(V, C, LastLetter)
	if LastLetter then
		
	else
		
	end
end
function Separator(String)
	local Table = {}
	for num4 = 1, String:len(), 1 do
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
	local MaxSlice = 0
	for num3, value in ipairs(Weights) do
		MaxSlice = MaxSlice + value
	end
	local V, C, Weights, InputTable, Result, LastLetter = {"a","e","i","o","u","y",},{"b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z",},{30,30,30},Separator(choice),""
	for num1 = 1, InputTable[1], 1 do
		local Len = Result:len()
		LastLetter = Result:sub(Len,Len)
		Result = Result + RandomValueGenerator(V, C, Weights, InputTable, MaxSlice, LastLetter)
	end
end
repeat
	io.write("Write two numbers, the first one for the number of words and the second one for syllables per word.\nUse spaces as the delimiter I.E. \"3 3\"\n type exit to exit\n")
	local choice = io.read():gsub("\n","")
	if choice:match("^%d+%s%d+$") then SyllablePutTogether(choice) end
until choice:upper() == "EXIT"