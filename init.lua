-- pick your plugin manager
local pack = "lazy"

local function bootstrap(url, ref)
    local name = url:gsub(".*/", "")
    local path

    if pack == "lazy" then
        path = vim.fn.stdpath("data") .. "/lazy/" .. name
        vim.opt.rtp:prepend(path)
    else
        path = vim.fn.stdpath("data") .. "/site/pack/".. pack .. "/start/" .. name
    end

    if vim.fn.isdirectory(path) == 0 then
        print(name .. ": installing in data dir...")

        vim.fn.system {"git", "clone", url, path}
        if ref then
            vim.fn.system {"git", "-C", path, "checkout", ref}
        end

        vim.cmd "redraw"
        print(name .. ": finished installing")
    end
end

-- for git head
bootstrap("https://github.com/udayvir-singh/tangerine.nvim")
-- for git head
bootstrap("https://github.com/udayvir-singh/hibiscus.nvim")

require("tangerine").setup({
  -- target = vim.fn.stdpath [[data]] .. "/tangerine",

  -- compile files in &rtp
  rtpdirs = {
    "ftplugin",
  },

  compiler = {
    -- disable popup showing compiled files
    verbose = false,

    -- compile every time changed are made to fennel files or on entering vim
    hooks = { "onsave", "oninit" },
  },
  keymaps = {},
})
