local M = {}

M.dap = {
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>";
      "Toggle breakpoint"
    },
    ["<leader>so"] = {
      "<cmd> DapStepOver <CR>",
      "Step over"
    },
    ["<leader>co"] = {
      "<cmd> DapContinue <CR>",
      "Resume execution"
    },
    ["<leader>dus"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open()
      end,
      "Open debugging sidebar"
    }
  }
}

return M
