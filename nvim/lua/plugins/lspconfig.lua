local lspconfig = require("lspconfig")

local runtime_paths = {
  vim.env.VIMRUNTIME,
  vim.fn.stdpath("data") .. "/site/pack/*/start/*",
  vim.fn.stdpath("data") .. "/site/pack/*/opt/*",
}

lspconfig.lua_ls.setup({
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
            },
            diagnostics = {
                globals = { "vim" },
            },
            workspace = {
                library = runtime_paths,
                checkThirdParty = false,
            },
            telemetry = {
                enable = false,
            },
        },
    },
})

