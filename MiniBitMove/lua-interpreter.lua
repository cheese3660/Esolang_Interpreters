--Mini bit move interpreter
function toArray(str)
	t = {}
	str:gsub(".",function(c) table.insert(t,c) end)
	return t
end
function contains(t, e)
  for _, value in pairs(t) do
    if value == e then
      return true
    end
  end
  return false
end
do
	print("MiniBitMove interpreter")
	io.write("Program: ")
	program = toArray(io.read())
	io.write("Data: ")
	data = toArray(io.read())
	if not contains(program,"0") then
		error("INFINITE LOOP")
	else
		pointer = 1
		index = 1
		while data[pointer] ~= nil do
			if program[index] == nil then
				index = 1
			end
			if program[index] == "1" then
				if data[pointer] == "1" then
					data[pointer] = "0"
				else
					data[pointer] = "1"
				end
			elseif program[index] == "0" then
				pointer = pointer + 1
			end
			index = index + 1
		end
			print("------------------")
		print("Code: ",unpack(program))
		print("Data: ",unpack(data))
		print("Result: ", unpack(data))
	end
end
