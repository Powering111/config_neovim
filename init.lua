if not vim.g.vscode then
  vim.loader.enable()

  print("Hello, Juntae!")
  require("plugins")
  require("mapping")
  require("options")
  require("plugin/init")
end
