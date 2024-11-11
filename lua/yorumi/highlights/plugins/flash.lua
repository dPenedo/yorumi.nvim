local M = {}

---@param config YorumiConfig
function M.setup(config)
	local palette = require("yorumi.colors")
	return {
		FlashBackdrop = { fg = palette.tsuki3 },
		FlashLabel = { bg = palette.kairoOrange, bold = true, fg = palette.kuroiViolet },
	}
end

return M
