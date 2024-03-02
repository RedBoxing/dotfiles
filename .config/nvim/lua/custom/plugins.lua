local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
        "intelephense"
      }
    }
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function (_, opts)
      require('mason-lspconfig').setup(opts)
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function ()
      return require "custom.configs.rust-tools"
    end,
    config = function (_, opts)
      require('rust-tools').setup(opts)
    end
  },
  {
    "mfussenegger/nvim-dap"
  },
  {
    "saecki/crates.nvim",
    dependencies = "hrsh7th/nvim-cmp",
    ft = { "rust", "toml" },
    config = function (_, opts)
      local crates = require('crates')
      crates.setup(opts)
      crates.show()
    end
  },
  {
    "hrsh7th/nvim-cmp";
    opts = function ()
      local M = require "plugins.configs.cmp"
      table.insert(M.sources, { name = "crates" })
      return M
    end
  },
  {
    "ray-x/web-tools.nvim",
    cmd = {
      "BrowserSync",
      "BrowserOpen",
      "BrowerPreview",
      "BrowserRestart",
      "BrowserStop",
      "TagRename",
      "HurlRun"
    },
    config = function (_, opts)
      require('web-tools').setup(opts)
    end
  },
  {
    "neoclide/jsonc.vim"
  },
  {
	  "michaelrommel/nvim-silicon",
	  lazy = true,
	  cmd = "Silicon",
	  config = function()
		  require("silicon").setup({
			  -- Configuration here, or leave empty to use defaults
			  font = "Hack Nerd Font=34;Noto Color Emoji=34"
		  })
	  end
  },
}

return plugins
