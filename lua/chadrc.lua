---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "palenight",
  transparency = true,
  
  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.ui = {
  statusline = {
    theme = "minimal",
    separator_style = "default",
  },
  
  tabufline = {
    enabled = true,
  },
}

M.nvdash = {
  load_on_startup = true,
  header = {
    "                                      ",
    "       ░░                  ░░         ",
    "       ░█░                ░▓░         ",
    "       ░█▒░     ░██▒     ░▓░░         ",
    "       ░▒░░░   ░█▒██▒    ▓░▒░         ",
    "       ░░ ░▒░ ░▒░ ░██▒  ░░░▒          ",
    "       ░█░░▒▓░░    ░██░░░ ░▒          ",
    "       ░█░ ░▒▓      ░▓░░  ▒▒          ",
    "        █▒ ▒█▒░      ░█░░ ▓░  ░       ",
    "       ░█▒▓▓░█▓░░▒▒▓██▓▓▒░█▒░░        ",
    "       ░█████▓██   ░█░ ░░░█░          ",
    "        ░░    ▓█▒  ▓▒    ░░           ",
    "              ░██▒░▓                  ",
    "               ░███░                  ",
    "                ░█▓                   ",
    "                                      ",
  },
  buttons = {
    { txt = "  Start Working", keys = "e", cmd = "enew" },
    { txt = "  Recent Files", keys = "fo", cmd = "Telescope oldfiles" },
    { txt = "  Find File", keys = "ff", cmd = "Telescope find_files" },
    { txt = "󰑑  Find Word", keys = "fw", cmd = "Telescope live_grep" },
    { txt = "  Mappings", keys = "nm", cmd = "NvCheatsheet" },
  },
}

M.lsp = { signature = true }

M.colorify = {
  enabled = true,
  mode = "virtual",
  virt_text = "󱓻 ",
  highlight = { hex = true, lspvars = true },
}

return M
