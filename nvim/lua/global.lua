local notify = require('notify')

notify.print_history = function()
  local color = {
    DEBUG = 'NotifyDEBUGTitle',
    TRACE = 'NotifyTRACETitle',
    INFO = 'NotifyINFOTitle',
    WARN = 'NotifyWARNTitle',
    ERROR = 'NotifyERRORTitle',
  }
  for _, m in ipairs(notify.history()) do
    vim.api.nvim_echo({
      {vim.fn.strftime('%FT%T', m.time), 'Identifier'},
      {' ', 'Normal'},
      {m.level, color[m.level] or 'Title'},
      {' ', 'Normal'},
      {table.concat(m.message, ' '), 'Normal'},
    }, false, {})
  end
end
vim.cmd([[command! Message :lua require'notify'.print_history()<CR>]])
