if false then
  return {}
end
return {
  {
    "navarasu/onedark.nvim",
    opts = {
      style = "dark",
      colors = {
        white = "#cccccc",
      },
      highlights = {
        ["@punctuation.bracket.php"] = { fg = "$white" },
        ["@punctuation.delimiter.php"] = { fg = "$white" },
        ["@variable"] = { fg = "$red" },
        ["@variable.javascript"] = { fg = "$red" },
        ["@variable.member.javascript"] = { fg = "$red" },
        ["@variable.member.php"] = { fg = "$red" },
        ["@property.php"] = { fg = "$red" },
        ["@operator"] = { fg = "$purple" },
        ["@type.builtin.php"] = { fg = "$purple" },
        ["@constructor"] = { fg = "$cyan" },
        ["NeoTreeFileName"] = { fg = "$white" },
      },
    },
  },
  --{ "olimorris/onedarkpro.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
