-- :fennel:1749852089
local function _1_()
  local colors = {bg = "#161616", blue = "#82cfff", diffblue = "#33b0ff", cyan = "#3ddbda", darkblue = "#78aaff", fg = "#f2f2f2", green = "#08bdba", alertgreen = "#42be65", magenta = "#ff7eb6", orange = "#FF8800", red = "#ee5296", alertred = "#fa4d56", violet = "#be96ff", yellow = "#fddc69"}
  local conditions
  local function _2_()
    return (vim.fn.empty(vim.fn.expand("%:t")) ~= 1)
  end
  local function _3_()
    local filepath = vim.fn.expand("%:p:h")
    local gitdir = vim.fn.finddir(".git", (filepath .. ";"))
    return ((gitdir and (#gitdir > 0)) and (#gitdir < #filepath))
  end
  local function _4_()
    return (vim.fn.winwidth(0) > 80)
  end
  conditions = {buffer_not_empty = _2_, check_git_workspace = _3_, hide_in_width = _4_}
  local config = {inactive_sections = {lualine_a = {}, lualine_b = {}, lualine_c = {}, lualine_x = {}, lualine_y = {}, lualine_z = {}}, options = {component_separators = "", section_separators = "", theme = {inactive = {c = {bg = colors.bg, fg = colors.fg}}, normal = {c = {bg = colors.bg, fg = colors.fg}}}}, sections = {lualine_a = {}, lualine_b = {}, lualine_c = {}, lualine_x = {}, lualine_y = {}, lualine_z = {}}}
  local function ins_left(component)
    return table.insert(config.sections.lualine_c, component)
  end
  local function ins_right(component)
    return table.insert(config.sections.lualine_x, component)
  end
  local function _5_()
    return "\226\150\138"
  end
  ins_left({_5_, color = {fg = colors.darkblue}, padding = {left = 0, right = 1}})
  local function _6_()
    return "\239\140\140"
  end
  local function _7_()
    local mode_color = {["\22"] = colors.orange, [" "] = colors.blue, ["!"] = colors.red, R = colors.violet, Rv = colors.violet, S = colors.orange, V = colors.blue, c = colors.magenta, ce = colors.red, cv = colors.red, i = colors.green, ic = colors.yellow, n = colors.red, no = colors.red, r = colors.cyan, ["r?"] = colors.cyan, rm = colors.cyan, s = colors.orange, t = colors.red, v = colors.blue}
    return {fg = mode_color[vim.fn.mode()]}
  end
  ins_left({_6_, color = _7_, padding = {right = 1}})
  ins_left({"filesize", cond = conditions.buffer_not_empty})
  ins_left({"filename", color = {fg = colors.magenta, gui = "bold"}, cond = conditions.buffer_not_empty})
  ins_left({"location"})
  ins_left({"progress", color = {fg = colors.fg, gui = "bold"}})
  ins_left({"diagnostics", diagnostics_color = {error = {fg = colors.red}, info = {fg = colors.cyan}, warn = {fg = colors.yellow}}, sources = {"nvim_diagnostic"}, symbols = {error = "\239\129\151 ", info = "\239\129\170 ", warn = "\239\129\177 "}})
  local function _8_()
    return "%="
  end
  ins_left({_8_})
  local function _9_()
    local msg = "No Active Lsp"
    local buf_ft = vim.api.nvim_get_option_value("filetype", {buf = 0})
    local clients = vim.lsp.get_active_clients({bufnr = 0})
    if not next(clients) then
      return msg
    else
    end
    local client_names = {}
    for _, client in ipairs(clients) do
      table.insert(client_names, client.name)
    end
    return (((#client_names > 0) and table.concat(client_names, ", ")) or msg)
  end
  ins_left({_9_, color = {fg = "#ffffff", gui = "bold"}, icon = "\239\130\133 LSP:"})
  ins_right({"o:encoding", color = {fg = colors.green, gui = "bold"}, cond = conditions.hide_in_width, fmt = string.upper})
  ins_right({"fileformat", color = {fg = colors.green, gui = "bold"}, fmt = string.upper, icons_enabled = false})
  ins_right({"branch", color = {fg = colors.violet, gui = "bold"}, icon = "\239\145\191"})
  ins_right({"diff", cond = conditions.hide_in_width, diff_color = {added = {fg = colors.green}, modified = {fg = colors.diffblue}, removed = {fg = colors.alertred}}, symbols = {added = "\239\131\190 ", modified = "\243\176\157\164 ", removed = "\239\133\134 "}})
  local function _11_()
    return "\226\150\138"
  end
  ins_right({_11_, color = {fg = colors.blue}, padding = {left = 1}})
  return config
end
return {"nvim-lualine/lualine.nvim", dependencies = {"nvim-tree/nvim-web-devicons"}, event = "VeryLazy", opts = _1_}