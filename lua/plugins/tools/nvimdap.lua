-- :fennel:1758087332
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
  dap.configurations.rust = dap.configurations.cpp
  local which_key = require("which-key")
  which_key.add({{"<leader>d", group = "debug"}})
  vim.keymap.set({"n"}, "<leader>dt", dap.toggle_breakpoint, {desc = "Toggle Breakpoint", silent = true})
  vim.keymap.set({"n"}, "<leader>dj", dap.run_to_cursor, {desc = "Run to cursor", silent = true})
  local function _3_()
    return require("dapui").eval(nil, {enter = true})
  end
  vim.keymap.set({"n"}, "<leader>de", _3_, {desc = "eval under cursor", silent = true})
  vim.keymap.set({"n"}, "<leader>dc", dap.continue, {desc = "Continue debugging", silent = true})
  vim.keymap.set({"n"}, "<leader>di", dap.step_into, {desc = "Step Into", silent = true})
  vim.keymap.set({"n"}, "<leader>da", dap.step_over, {desc = "Step Over", silent = true})
  vim.keymap.set({"n"}, "<leader>do", dap.step_out, {desc = "Step Out", silent = true})
  vim.keymap.set({"n"}, "<leader>db", dap.step_back, {desc = "Step Back", silent = true})
  vim.keymap.set({"n"}, "<leader>dr", dap.restart, {desc = "Restart DAP", silent = true})
  vim.keymap.set({"n"}, "<leader>dq", ui.close, {desc = "Close dap", silent = true})
  dap.listeners.before.attach.dapui_config = function()
    return ui.open()
  end
  dap.listeners.before.launch.dapui_config = function()
    return ui.open()
  end
  return dap.listeners.before.launch.dapui_config
end
return {"mfussenegger/nvim-dap", event = "VeryLazy", dependencies = {"folke/which-key.nvim", "rcarriga/nvim-dap-ui", "nvim-neotest/nvim-nio", "williamboman/mason.nvim"}, config = _1_}