-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Add project node_modules/.bin to PATH so conform can find local tools
local root = vim.fs.root(0, { "package.json", ".git" })
  or vim.fs.root(vim.fn.getcwd(), { "package.json", ".git" })
if root then
  local node_bin = root .. "/node_modules/.bin"
  if vim.fn.isdirectory(node_bin) == 1 then
    vim.env.PATH = node_bin .. ":" .. vim.env.PATH
  end
end

-- Set up custom filetypes
vim.filetype.add {
  -- extension = {
  --   foo = "fooscript",
  -- },
  -- filename = {
  --   ["Foofile"] = "fooscript",
  -- },
  -- pattern = {
  --   ["~/%.config/foo/.*"] = "fooscript",
  -- },
}
