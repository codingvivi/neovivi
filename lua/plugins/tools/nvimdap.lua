-- :fennel:1749519592
local function _1_()
  local dap = require("dap")
  local ui = require("dapui")
  require("dapui").setup()
  dap.adapters.codelldb = {command = "codelldb", type = "executable"}
  local function _2_()
    return vim.fn.input("Path to executable: ", (vim.fn.getcwd() .. "/"), "file")
  end
  dap.configurations.cpp = {{cwd = "${workspaceFolder}", name = "Launch file", program = _2_, request = "launch", type = "codelldb", stopOnEntry = false}}
  dap.configurations.c = dap.configurations.cpp
  local which_key = require("which-key")
  which_key.add({{"<leader>d", group = "debug"}})
  vim.keymap.set("n", "<leader>dt", dap.toggle_breakpoint)
  vim.keymap.set("n", "<leader>dj", dap.run_to_cursor)
  local function _3_()
    return require("dapui").eval(nil, {enter = true})
  end
  vim.keymap.set("n", "<leader>de", _3_)
  vim.keymap.set("n", "dc", dap.continue)
  vim.keymap.set("n", "di", dap.step_into)
  vim.keymap.set("n", "da", dap.step_over)
  vim.keymap.set("n", "do", dap.step_out)
  vim.keymap.set("n", "db", dap.step_back)
  vim.keymap.set("n", "dr", dap.restart)
  vim.keymap.set("n", "dq", ui.close)
  dap.listeners.before.attach.dapui_config = function()
    return ui.open()
  end
  dap.listeners.before.launch.dapui_config = function()
    return ui.open()
  end
  return dap.listeners.before.launch.dapui_config
end
return {"mfussenegger/nvim-dap", event = "VeryLazy", dependencies = {"folke/which-key.nvim", "rcarriga/nvim-dap-ui", "nvim-neotest/nvim-nio", "williamboman/mason.nvim"}, config = _1_}