-- :fennel:1758729277
vim.opt_local["makeprg"] = "cargo build"
local function _1_()
  return vim.cmd.RustLsp({"hover", "actions"})
end
vim.keymap.set({"n"}, "K", _1_, {buffer = true, desc = "Symbol info (Rust)", silent = true})
local function _2_()
  return vim.cmd.RustLsp("openDocs")
end
vim.keymap.set({"n"}, "gK", _2_, {buffer = true, desc = "Open docs.rs", silent = true})
local function _3_()
  return vim.cmd.RustLsp("renderDiagnostic")
end
vim.keymap.set({"n"}, "grd", _3_, {buffer = true, desc = "Render diagnostics", silent = true})
local function _4_()
  return vim.cmd.RustLsp("explainError")
end
vim.keymap.set({"n"}, "gre", _4_, {buffer = true, desc = "Explain error", silent = true})
local function _5_()
  return vim.cmd.RustLsp("syntaxTree")
end
vim.keymap.set({"n"}, "<leader>ct", _5_, {buffer = true, desc = "Show syntax tree", silent = true})
local function _6_()
  return vim.cmd.RustLsp("run")
end
vim.keymap.set({"n"}, "<leader>crr", _6_, {buffer = true, desc = "Run code (Rust)", silent = true})
local function _7_()
  return vim.cmd("terminal RUST_LOG=debug cargo run")
end
vim.keymap.set({"n"}, "<leader>crd", _7_, {buffer = true, desc = "Run with debug log", silent = true})
local function _8_()
  return vim.cmd("terminal RUST_LOG=error cargo run")
end
vim.keymap.set({"n"}, "<leader>cre", _8_, {buffer = true, desc = "Run code (Rust)", silent = true})
local function _9_()
  return vim.cmd("terminal RUST_LOG=info cargo run")
end
vim.keymap.set({"n"}, "<leader>cri", _9_, {buffer = true, desc = "Run with info log", silent = true})
local function _10_()
  return vim.cmd("terminal RUST_LOG=off cargo run")
end
vim.keymap.set({"n"}, "<leader>cro", _10_, {buffer = true, desc = "Run without log", silent = true})
local function _11_()
  return vim.cmd("terminal RUST_LOG=trace cargo run")
end
vim.keymap.set({"n"}, "<leader>crt", _11_, {buffer = true, desc = "Run with trace/all", silent = true})
local function _12_()
  return vim.cmd("terminal RUST_LOG=warn cargo run")
end
vim.keymap.set({"n"}, "<leader>crw", _12_, {buffer = true, desc = "Run with warn log", silent = true})
local function _13_()
  return vim.cmd.RustLsp("runnables")
end
vim.keymap.set({"n"}, "<leader>cR", _13_, {buffer = true, desc = "Select target and Run (Rust)", silent = true})
local function _14_()
  return vim.cmd.RustLsp("openCargo")
end
return vim.keymap.set({"n"}, "<leader>pm", _14_, {buffer = true, desc = "Open Cargo.toml", silent = true})