return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "haydenmeade/neotest-jest",
    },
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-jest")({}),
        },
      })

      -- Key bindings
      local map = vim.api.nvim_set_keymap
      local opts = { noremap = true, silent = true }

      -- Run tests
      map("n", "<leader>tn", "<cmd>lua require('neotest').run.run()<CR>", opts)
      -- Run nearest test
      map("n", "<leader>tf", "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>", opts)
      -- Run last test
      map("n", "<leader>tl", "<cmd>lua require('neotest').run.run_last()<CR>", opts)
      -- Debug last test
      map("n", "<leader>tL", "<cmd>lua require('neotest').run.run_last({ strategy = 'dap' })<CR>", opts)
      -- Run tests in watch mode
      map("n", "<leader>tw", "<cmd>lua require('neotest').run.run({ jestCommand = 'jest --watch ' })<CR>", opts)
    end,
  },
}
