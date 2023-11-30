return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestions = { enabled = false },
      panel = { enabled = false },
    })
  end,
}
