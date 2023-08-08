if vim.g.genghis_disable_commands then
	vim.g.genghis_disable_commands = false
end

if not vim.g.genghis_disable_commands then
	local command = vim.api.nvim_create_user_command
	local genghis = require("genghis")
	command("NewFromSelection", function() genghis.moveSelectionToNewFile() end, { range = true, desc = "Genghis: Move selected lines to new file" })
	command("Duplicate", function() genghis.duplicateFile() end, { desc = "Genghis: Duplicate current file" })
	command("Rename", function() genghis.renameFile() end, { desc = "Genghis: Rename current file" })
	command("Trash", function() genghis.trashFile() end, { desc = "Genghis: Trash current file" })
	command("Move", function() genghis.moveAndRenameFile() end, { desc = "Genghis: Move and rename current file" })
	command("YankFilename", function() genghis.copyFilename() end, { desc = "Genghis: Yank name of current file " })
	command("YankFilepath", function() genghis.copyFilepath() end, { desc = "Genghis: Yank path of current file" })
	command("Chmodx", function() genghis.chmodx() end, { desc = "Genghis: Make current file executable" })
	command("New", function() genghis.createNewFile() end, { desc = "Genghis: Create new file" })
end
