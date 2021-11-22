-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = true
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/993390/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/993390/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/993390/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/993390/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/993390/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  autopairs = {
    loaded = true,
    path = "/Users/993390/.local/share/nvim/site/pack/packer/start/autopairs",
    url = "https://github.com/autopairs"
  },
  barbar = {
    loaded = true,
    path = "/Users/993390/.local/share/nvim/site/pack/packer/start/barbar",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["coq.artifacts"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/993390/.local/share/nvim/site/pack/packer/opt/coq.artifacts",
    url = "https://github.com/ms-jpq/coq.artifacts"
  },
  ["coq.nvim"] = {
    after = { "coq.tp", "sniprun" },
    loaded = true,
    only_config = true
  },
  ["coq.tp"] = {
    after = { "coq.artifacts" },
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18config.coq_3p\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/993390/.local/share/nvim/site/pack/packer/opt/coq.tp",
    url = "https://github.com/ms-jpq/coq.thirdparty"
  },
  dashboard = {
    config = { "\27LJ\2\n_\0\0\5\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\1K\0\1\0\topts\27alpha.themes.dashboard\nsetup\nalpha\frequire\0" },
    loaded = true,
    path = "/Users/993390/.local/share/nvim/site/pack/packer/start/dashboard",
    url = "https://github.com/goolord/alpha-nvim"
  },
  devicons = {
    loaded = true,
    path = "/Users/993390/.local/share/nvim/site/pack/packer/start/devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  diffview = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20config.diffview\frequire\0" },
    loaded = true,
    path = "/Users/993390/.local/share/nvim/site/pack/packer/start/diffview",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  dracula = {
    loaded = true,
    path = "/Users/993390/.local/share/nvim/site/pack/packer/start/dracula",
    url = "https://github.com/dracula/vim"
  },
  feline = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18config.feline\frequire\0" },
    loaded = true,
    path = "/Users/993390/.local/share/nvim/site/pack/packer/start/feline",
    url = "https://github.com/famiu/feline.nvim"
  },
  ["filetype.nvim"] = {
    loaded = true,
    path = "/Users/993390/.local/share/nvim/site/pack/packer/start/filetype.nvim",
    url = "https://github.com/nathom/filetype.nvim"
  },
  ["fzy-native"] = {
    loaded = true,
    path = "/Users/993390/.local/share/nvim/site/pack/packer/start/fzy-native",
    url = "https://github.com/romgrk/fzy-lua-native"
  },
  gitsigns = {
    loaded = true,
    path = "/Users/993390/.local/share/nvim/site/pack/packer/start/gitsigns",
    url = "https://github.com/gitsigns"
  },
  gitsigns2 = {
    commands = { "BufEnter" },
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20config.gitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/993390/.local/share/nvim/site/pack/packer/opt/gitsigns2",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/Users/993390/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  lspcolors = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/993390/.local/share/nvim/site/pack/packer/opt/lspcolors",
    url = "https://github.com/folke/lsp-colors.nvim"
  },
  lspconfig = {
    after = { "lspcolors", "rust-tools", "null_ls" },
    loaded = true,
    only_config = true
  },
  neogit = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18config.neogit\frequire\0" },
    loaded = true,
    path = "/Users/993390/.local/share/nvim/site/pack/packer/start/neogit",
    url = "https://github.com/TimUntersberger/neogit"
  },
  notify = {
    loaded = true,
    path = "/Users/993390/.local/share/nvim/site/pack/packer/start/notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  null_ls = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19config.null_ls\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/993390/.local/share/nvim/site/pack/packer/opt/null_ls",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-mapper"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\16nvim-mapper\frequire\0" },
    loaded = true,
    path = "/Users/993390/.local/share/nvim/site/pack/packer/start/nvim-mapper",
    url = "https://github.com/lazytanuki/nvim-mapper"
  },
  ["org-bullets"] = {
    config = { "\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23config.org-bullets\frequire\0" },
    load_after = {
      orgmode = true
    },
    loaded = false,
    needs_bufread = true,
    path = "/Users/993390/.local/share/nvim/site/pack/packer/opt/org-bullets",
    url = "https://github.com/akinsho/org-bullets.nvim"
  },
  orgmode = {
    after = { "org-bullets" },
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19config.orgmode\frequire\0" },
    load_after = {},
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/993390/.local/share/nvim/site/pack/packer/opt/orgmode",
    url = "https://github.com/kristijanhusak/orgmode.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/993390/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  plenary = {
    loaded = true,
    path = "/Users/993390/.local/share/nvim/site/pack/packer/start/plenary",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  popup = {
    loaded = true,
    path = "/Users/993390/.local/share/nvim/site/pack/packer/start/popup",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["rust-tools"] = {
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22config.rust-tools\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = true,
    path = "/Users/993390/.local/share/nvim/site/pack/packer/opt/rust-tools",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  sniprun = {
    after = { "tmux-conf" },
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19config.sniprun\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/993390/.local/share/nvim/site/pack/packer/opt/sniprun",
    url = "https://github.com/michaelb/sniprun"
  },
  telescope = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21config.telescope\frequire\0" },
    loaded = true,
    path = "/Users/993390/.local/share/nvim/site/pack/packer/start/telescope",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/Users/993390/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzy-native.nvim"
  },
  ["tmux-conf"] = {
    load_after = {},
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/993390/.local/share/nvim/site/pack/packer/opt/tmux-conf",
    url = "https://github.com/tmux-plugins/vim-tmux"
  },
  treesitter = {
    after = { "orgmode" },
    loaded = true,
    only_config = true
  },
  whichkey = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21config.which-key\frequire\0" },
    loaded = true,
    path = "/Users/993390/.local/share/nvim/site/pack/packer/start/whichkey",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["wilder.nvim"] = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18config.wilder\frequire\0" },
    loaded = true,
    path = "/Users/993390/.local/share/nvim/site/pack/packer/start/wilder.nvim",
    url = "https://github.com/gelguy/wilder.nvim"
  },
  ["zinit-vim"] = {
    loaded = true,
    path = "/Users/993390/.local/share/nvim/site/pack/packer/start/zinit-vim",
    url = "https://github.com/zdharma-continuum/zinit-vim-syntax"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: whichkey
time([[Config for whichkey]], true)
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21config.which-key\frequire\0", "config", "whichkey")
time([[Config for whichkey]], false)
-- Config for: diffview
time([[Config for diffview]], true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20config.diffview\frequire\0", "config", "diffview")
time([[Config for diffview]], false)
-- Config for: lspconfig
time([[Config for lspconfig]], true)
try_loadstring("\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15config.lsp\frequire\0", "config", "lspconfig")
time([[Config for lspconfig]], false)
-- Config for: nvim-mapper
time([[Config for nvim-mapper]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\16nvim-mapper\frequire\0", "config", "nvim-mapper")
time([[Config for nvim-mapper]], false)
-- Config for: treesitter
time([[Config for treesitter]], true)
try_loadstring("\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22config.treesitter\frequire\0", "config", "treesitter")
time([[Config for treesitter]], false)
-- Config for: neogit
time([[Config for neogit]], true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18config.neogit\frequire\0", "config", "neogit")
time([[Config for neogit]], false)
-- Config for: telescope
time([[Config for telescope]], true)
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21config.telescope\frequire\0", "config", "telescope")
time([[Config for telescope]], false)
-- Config for: feline
time([[Config for feline]], true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18config.feline\frequire\0", "config", "feline")
time([[Config for feline]], false)
-- Config for: coq.nvim
time([[Config for coq.nvim]], true)
try_loadstring("\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15config.coq\frequire\0", "config", "coq.nvim")
time([[Config for coq.nvim]], false)
-- Config for: dashboard
time([[Config for dashboard]], true)
try_loadstring("\27LJ\2\n_\0\0\5\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\1K\0\1\0\topts\27alpha.themes.dashboard\nsetup\nalpha\frequire\0", "config", "dashboard")
time([[Config for dashboard]], false)
-- Config for: wilder.nvim
time([[Config for wilder.nvim]], true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18config.wilder\frequire\0", "config", "wilder.nvim")
time([[Config for wilder.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd null_ls ]]

-- Config for: null_ls
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19config.null_ls\frequire\0", "config", "null_ls")

vim.cmd [[ packadd rust-tools ]]

-- Config for: rust-tools
try_loadstring("\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22config.rust-tools\frequire\0", "config", "rust-tools")

vim.cmd [[ packadd lspcolors ]]
vim.cmd [[ packadd coq.tp ]]

-- Config for: coq.tp
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18config.coq_3p\frequire\0", "config", "coq.tp")

vim.cmd [[ packadd coq.artifacts ]]
vim.cmd [[ packadd sniprun ]]

-- Config for: sniprun
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19config.sniprun\frequire\0", "config", "sniprun")

time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file BufEnter lua require("packer.load")({'gitsigns2'}, { cmd = "BufEnter", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType org ++once lua require("packer.load")({'orgmode'}, { ft = "org" }, _G.packer_plugins)]]
vim.cmd [[au FileType tmux ++once lua require("packer.load")({'tmux-conf'}, { ft = "tmux" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /Users/993390/.local/share/nvim/site/pack/packer/opt/orgmode/ftdetect/org.vim]], true)
vim.cmd [[source /Users/993390/.local/share/nvim/site/pack/packer/opt/orgmode/ftdetect/org.vim]]
time([[Sourcing ftdetect script at: /Users/993390/.local/share/nvim/site/pack/packer/opt/orgmode/ftdetect/org.vim]], false)
time([[Sourcing ftdetect script at: /Users/993390/.local/share/nvim/site/pack/packer/opt/orgmode/ftdetect/org_archive.vim]], true)
vim.cmd [[source /Users/993390/.local/share/nvim/site/pack/packer/opt/orgmode/ftdetect/org_archive.vim]]
time([[Sourcing ftdetect script at: /Users/993390/.local/share/nvim/site/pack/packer/opt/orgmode/ftdetect/org_archive.vim]], false)
time([[Sourcing ftdetect script at: /Users/993390/.local/share/nvim/site/pack/packer/opt/tmux-conf/ftdetect/tmux.vim]], true)
vim.cmd [[source /Users/993390/.local/share/nvim/site/pack/packer/opt/tmux-conf/ftdetect/tmux.vim]]
time([[Sourcing ftdetect script at: /Users/993390/.local/share/nvim/site/pack/packer/opt/tmux-conf/ftdetect/tmux.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
