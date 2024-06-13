return {
  mode = { "n", "v" },
  w = { ":w!<CR>", "Save" },
  q = { ":confirm q<CR>", "Quit" },
  -- h = { ":nohlsearch<CR>", "No Highlight" },
  -- p = { require("telescope.builtin").lsp_document_symbols, "Document Symbols" },
  -- P = { require("telescope.builtin").lsp_dynamic_workspace_symbols, "Workspace Symbols" },
  -- f = { require("config.utils").telescope_git_or_file, "Find Files (Root)" },
  v = "Go to definition in a split",
  a = "Swap next param",
  A = "Swap previous param",
  o = { require("telescope.builtin").buffers, "Open Buffer" },
  W = { "<cmd>noautocmd w<cr>", "Save without formatting (noautocmd)" },
  b = {
    r = { "<cmd>Git status<CR>", "Git Status" },
  },
  u = {
    name = "UI",
    -- v = { require("config.utils").toggle_set_color_column, "Toggle Color Line" },
    -- c = { require("config.utils").toggle_cursor_line, "Toggle Cursor Line" },
  },
  i = {
    name = "Sessions",
    s = { "<cmd>lua require('persistence').load()<cr>", "Load Session" },
    l = { "<cmd>lua require('persistence').load({ last = true })<cr>", "Load Last Session" },
    d = { "<cmd>lua require('persistence').stop()<cr>", "Stop Persistence" },
  },
  -- r = {
  --   name = "Replace (Spectre)",
  --   r = { "<cmd>lua require('spectre').open()<cr>", "Replace" },
  --   w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Replace Word" },
  --   f = { "<cmd>lua require('spectre').open_file_search()<cr>", "Replace Buffer" },
  -- },
  G = {
    name = "+Git",
    k = { "<cmd>lua require 'gitsigns'.prev_hunk({navigation_message = false})<cr>", "Prev Hunk" },
    l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
    p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
    r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
    R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
    j = { "<cmd>lua require 'gitsigns'.next_hunk({navigation_message = false})<cr>", "Next Hunk" },
    s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
    u = {
      "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
      "Undo Stage Hunk",
    },
    o = { require("telescope.builtin").git_status, "Open changed file" },
    b = { require("telescope.builtin").git_branches, "Checkout branch" },
    c = { require("telescope.builtin").git_commits, "Checkout commit" },
    C = {
      require("telescope.builtin").git_bcommits,
      "Checkout commit(for current file)",
    },
    d = {
      "<cmd>Gitsigns diffthis HEAD<cr>",
      "Git Diff",
    },
    U = { ":UndotreeToggle<CR>", "Toggle UndoTree" },
  },
  l = {
    name = "+LSP",
    a = { vim.lsp.buf.code_action, "Code Action" },
    A = { vim.lsp.buf.range_code_action, "Range Code Actions" },
    s = { vim.lsp.buf.signature_help, "Display Signature Information" },
    r = { vim.lsp.buf.rename, "Rename all references" },
    f = { vim.lsp.buf.format, "Format" },
    i = { require("telescope.builtin").lsp_implementations, "Implementation" },
    -- h = { vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled()), "Inlay Hints" },
    -- l = { "<cmd>TroubleToggle document_diagnostics<cr>", "Document Diagnostics (Trouble)" },
    -- L = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "Workspace Diagnostics (Trouble)" },
    w = { require("telescope.builtin").diagnostics, "Diagnostics" },
    -- t = { require("telescope").extensions.refactoring.refactors, "Refactor" },
    -- c = { require("config.utils").copyFilePathAndLineNumber, "Copy File Path and Line Number" },

    W = {
      name = "+Workspace",
      a = { vim.lsp.buf.add_workspace_folder, "Add Folder" },
      r = { vim.lsp.buf.remove_workspace_folder, "Remove Folder" },
      l = {
        function()
          print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end,
        "List Folders",
      },
    },
  },
  s = {
    name = "+Search",
    f = { "<cmd>Telescope find_files<cr>", "Find File (CWD)" },
    h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
    H = { "<cmd>Telescope highlights<cr>", "Find highlight groups" },
    M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
    o = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
    R = { "<cmd>Telescope registers<cr>", "Registers" },
    t = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
    T = { "<cmd>Telescope grep_string<cr>", "Grep String" },
    k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
    C = { "<cmd>Telescope commands<cr>", "Commands" },
    l = { "<cmd>Telescope resume<cr>", "Resume last search" },
    c = { "<cmd>Telescope git_commits<cr>", "Git commits" },
    B = { "<cmd>Telescope git_branches<cr>", "Git branches" },
    m = { "<cmd>Telescope git_status<cr>", "Git status" },
    S = { "<cmd>Telescope git_stash<cr>", "Git stash" },
    e = { "<cmd>Telescope frecency<cr>", "Frecency" },
    b = { "<cmd>Telescope buffers<cr>", "Buffers" },
    d = {
      name = "+DAP",
      c = { "<cmd>Telescope dap commands<cr>", "Dap Commands" },
      b = { "<cmd>Telescope dap list_breakpoints<cr>", "Dap Breakpoints" },
      g = { "<cmd>Telescope dap configurations<cr>", "Dap Configurations" },
      v = { "<cmd>Telescope dap variables<cr>", "Dap Variables" },
      f = { "<cmd>Telescope dap frames<cr>", "Dap Frames" },
    },
    N = {
      function ()
        require("telescope.builtin").find_files({ cwd = vim.fn.stdpath("config") })
      end,
      "Search Neovim Config",
    },
  },
  -- T = {
  --   name = "+Todo",
  --   t = { "<cmd>TodoTelescope<cr>", "Todo" },
  --   T = { "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>", "Todo/Fix/Fixme" },
  --   x = { "<cmd>TodoTrouble<cr>", "Todo (Trouble)" },
  --   X = { "<cmd>TodoTrouble keywords=TODO,FIX,FIXME<cr><cr>", "Todo/Fix/Fixme (Trouble)" },
  -- },
  d = {
    name = "Debug",
    b = { require("dap").toggle_breakpoint, "Breakpoint" },
    c = { require("dap").continue, "Continue" },
    i = { require("dap").step_into, "Into" },
    o = { require("dap").step_over, "Over" },
    O = { require("dap").step_out, "Out" },
    r = { require("dap").repl.toggle, "Repl" },
    l = { require("dap").run_last, "Last" },
    u = { require("dapui").toggle, "UI" },
    x = { require("dap").terminate, "Exit" },
  },
  t = {
    name = "+Tests",
  },
  x = {
    name = "+Trouble",
  }
}
