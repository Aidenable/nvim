local nvlsp = require "nvchad.configs.lspconfig"

local servers = {
  "html",
  "cssls",
  "eslint",
  "pyright",
  "ts_ls",
  "tailwindcss",
  "ruff",
}

-- Default config for most servers
for _, lsp in ipairs(servers) do
  vim.lsp.config(lsp, {
    capabilities = nvlsp.capabilities,
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
  })
end

-- Pyright with poetry support
vim.lsp.config.pyright = vim.tbl_deep_extend("force", vim.lsp.config.pyright, {
  capabilities = nvlsp.capabilities,
  on_attach = nvlsp.on_attach,
  on_new_config = function(config, root_dir)
    local env = vim.trim(vim.fn.system('cd "' .. root_dir .. '"; poetry env info -p 2>/dev/null'))
    if string.len(env) > 0 then
      config.settings = config.settings or {}
      config.settings.python = config.settings.python or {}
      config.settings.python.pythonPath = env .. "/bin/python"
    end
  end,
})

-- Enable servers
vim.lsp.enable(servers)
