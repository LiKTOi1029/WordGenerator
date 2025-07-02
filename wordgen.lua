function SyllablePutTogether(choice)
	
end
repeat
	io.write("Write a number to generate syllables and words from those syllables")
	local choice = io.read():gsub("\n","")
	if choice:upper() ~= "EXIT" and choice == int then SyllablePutTogether(choice) end
until choice:upper() == "EXIT'"