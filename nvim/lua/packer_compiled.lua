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
local package_path_str = "/home/arabach/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/arabach/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/arabach/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/arabach/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/arabach/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
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
  barbar = {
    commands = { "BufEnter" },
    loaded = false,
    needs_bufread = false,
    path = "/home/arabach/.local/share/nvim/site/pack/packer/opt/barbar"
  },
  ["coq.artifacts"] = {
    load_after = {
      ["coq.tp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/arabach/.local/share/nvim/site/pack/packer/opt/coq.artifacts"
  },
  ["coq.nvim"] = {
    after = { "sniprun", "coq.tp" },
    commands = { "InsertEnter" },
    config = { "\27LJ\1\2*\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\15config.coq\frequire\0" },
    loaded = false,
    needs_bufread = true,
    path = "/home/arabach/.local/share/nvim/site/pack/packer/opt/coq.nvim"
  },
  ["coq.tp"] = {
    after = { "coq.artifacts" },
    config = { "\27LJ\1\2-\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\18config.coq_3p\frequire\0" },
    load_after = {
      ["coq.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/arabach/.local/share/nvim/site/pack/packer/opt/coq.tp"
  },
  dashboard = {
    after = { "feline", "dracula" },
    commands = { "VimEnter" },
    config = { "\27LJ\1\2_\0\0\3\0\5\0\n4\0\0\0%\1\1\0>\0\2\0027\0\2\0004\1\0\0%\2\3\0>\1\2\0027\1\4\1>\0\2\1G\0\1\0\topts\27alpha.themes.dashboard\nsetup\nalpha\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/arabach/.local/share/nvim/site/pack/packer/opt/dashboard"
  },
  devicons = {
    loaded = true,
    path = "/home/arabach/.local/share/nvim/site/pack/packer/start/devicons"
  },
  dracula = {
    after_files = { "/home/arabach/.local/share/nvim/site/pack/packer/opt/dracula/after/plugin/dracula.vim" },
    load_after = {
      dashboard = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/arabach/.local/share/nvim/site/pack/packer/opt/dracula"
  },
  feline = {
    config = { "\27LJ\1\2-\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\18config.feline\frequire\0" },
    load_after = {
      dashboard = true,
      gitsigns = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/arabach/.local/share/nvim/site/pack/packer/opt/feline"
  },
  gitsigns = {
    after = { "feline" },
    commands = { "BufEnter" },
    config = { "\27LJ\1\2/\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\20config.gitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/arabach/.local/share/nvim/site/pack/packer/opt/gitsigns"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/arabach/.local/share/nvim/site/pack/packer/start/impatient.nvim"
  },
  ["lsp-colors.nvim"] = {
    load_after = {
      lspconfig = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/arabach/.local/share/nvim/site/pack/packer/opt/lsp-colors.nvim"
  },
  lspconfig = {
    after = { "lsp-colors.nvim" },
    commands = { "BufEnter" },
    config = { "\27LJ\1\2*\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\15config.lsp\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/arabach/.local/share/nvim/site/pack/packer/opt/lspconfig"
  },
  notify = {
    loaded = true,
    path = "/home/arabach/.local/share/nvim/site/pack/packer/start/notify"
  },
  ["nvim-mapper"] = {
    config = { "\27LJ\1\2=\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\16nvim-mapper\frequire\0" },
    loaded = true,
    path = "/home/arabach/.local/share/nvim/site/pack/packer/start/nvim-mapper"
  },
  ["org-bullets"] = {
    config = { "\27LJ\1\0022\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\23config.org-bullets\frequire\0" },
    load_after = {
      orgmode = true
    },
    loaded = false,
    needs_bufread = true,
    path = "/home/arabach/.local/share/nvim/site/pack/packer/opt/org-bullets"
  },
  orgmode = {
    after = { "org-bullets" },
    config = { "\27LJ\1\2.\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\19config.orgmode\frequire\0" },
    load_after = {},
    loaded = false,
    needs_bufread = true,
    path = "/home/arabach/.local/share/nvim/site/pack/packer/opt/orgmode"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/arabach/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  plenary = {
    loaded = true,
    path = "/home/arabach/.local/share/nvim/site/pack/packer/start/plenary"
  },
  popup = {
    loaded = true,
    path = "/home/arabach/.local/share/nvim/site/pack/packer/start/popup"
  },
  sniprun = {
    after = { "tmux-conf" },
    config = { "\27LJ\1\2.\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\19config.sniprun\frequire\0" },
    load_after = {
      ["coq.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/arabach/.local/share/nvim/site/pack/packer/opt/sniprun"
  },
  telescope = {
    after = { "whichkey" },
    commands = { "VimEnter" },
    config = { "\27LJ\1\0020\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\21config/telescope\frequire\0" },
    loaded = false,
    needs_bufread = true,
    path = "/home/arabach/.local/share/nvim/site/pack/packer/opt/telescope"
  },
  ["tmux-conf"] = {
    load_after = {
      sniprun = true
    },
    loaded = false,
    needs_bufread = true,
    path = "/home/arabach/.local/share/nvim/site/pack/packer/opt/tmux-conf"
  },
  treesitter = {
    after = { "orgmode" },
    loaded = true,
    only_config = true
  },
  whichkey = {
    config = { "\27LJ\1\0020\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\21config.which-key\frequire\0" },
    load_after = {
      telescope = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/arabach/.local/share/nvim/site/pack/packer/opt/whichkey"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-mapper
time([[Config for nvim-mapper]], true)
try_loadstring("\27LJ\1\2=\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\16nvim-mapper\frequire\0", "config", "nvim-mapper")
time([[Config for nvim-mapper]], false)
-- Config for: treesitter
time([[Config for treesitter]], true)
try_loadstring("\27LJ\1\0021\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\22config.treesitter\frequire\0", "config", "treesitter")
time([[Config for treesitter]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command! -nargs=* -range -bang -complete=file InsertEnter lua require("packer.load")({'coq.nvim'}, { cmd = "InsertEnter", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command! -nargs=* -range -bang -complete=file BufEnter lua require("packer.load")({'lspconfig', 'barbar', 'gitsigns'}, { cmd = "BufEnter", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command! -nargs=* -range -bang -complete=file VimEnter lua require("packer.load")({'telescope', 'dashboard'}, { cmd = "VimEnter", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType tmux ++once lua require("packer.load")({'tmux-conf'}, { ft = "tmux" }, _G.packer_plugins)]]
vim.cmd [[au FileType org ++once lua require("packer.load")({'orgmode'}, { ft = "org" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/arabach/.local/share/nvim/site/pack/packer/opt/orgmode/ftdetect/org.vim]], true)
vim.cmd [[source /home/arabach/.local/share/nvim/site/pack/packer/opt/orgmode/ftdetect/org.vim]]
time([[Sourcing ftdetect script at: /home/arabach/.local/share/nvim/site/pack/packer/opt/orgmode/ftdetect/org.vim]], false)
time([[Sourcing ftdetect script at: /home/arabach/.local/share/nvim/site/pack/packer/opt/orgmode/ftdetect/org_archive.vim]], true)
vim.cmd [[source /home/arabach/.local/share/nvim/site/pack/packer/opt/orgmode/ftdetect/org_archive.vim]]
time([[Sourcing ftdetect script at: /home/arabach/.local/share/nvim/site/pack/packer/opt/orgmode/ftdetect/org_archive.vim]], false)
time([[Sourcing ftdetect script at: /home/arabach/.local/share/nvim/site/pack/packer/opt/tmux-conf/ftdetect/tmux.vim]], true)
vim.cmd [[source /home/arabach/.local/share/nvim/site/pack/packer/opt/tmux-conf/ftdetect/tmux.vim]]
time([[Sourcing ftdetect script at: /home/arabach/.local/share/nvim/site/pack/packer/opt/tmux-conf/ftdetect/tmux.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
