local file = io.open(os.getenv("HOME") .. "/.config/nvim/commands.json", "rb")

if (file ~= nil) then
	local content = file:read "*a"
	file:close()

	status, commands_tbl = pcall(require('lunajson').decode, content)

	if (status == true) then
		for i = 0, 9 do
			if (commands_tbl["C"..i] ~= nil) then
				vim.keymap.set('t', '<A-' .. i .. '>', '<CMD>lua require("FTerm").run(commands_tbl["C' .. i .. '"])<CR>')
			end
		end
	else
		print("Failed to read commands.json, please make sure your formatting is valid: " .. commands_tbl)
	end
else
	print("Failed to open commands.json")
end
