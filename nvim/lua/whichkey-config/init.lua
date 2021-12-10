local wk = require("which-key")
local mappings = {
  c = {":CommentToggle<cr>", "Comment line"},
  e = {":NvimTreeToggle<cr>", "Explorer"},
  f = {":Telescope find_files<cr>", "Find File"},
  g = {":Telescope live_grep<cr>", "Live Grep"},
  H = {":nohl<cr>", "No Highlight"},
  m = {[[i"""<esc>o<esc>o"""<esc>ki]], "Multiline comment"},
  r = {":w<cr> :FloatermSend \\%run %<cr>", "Run python"},
  q = {":quitall<cr>", "Quit nvim"},
  w = {":w<cr>", "Write file"},
  x = {":BufferClose<cr>", "Close"},
  b = {
    name = "BarBar",
    b = {":BufferOrderByBufferNumber<CR>", "BufferNumber"},
    d = {":BufferOrderByDirectory<CR>", "Directory"},
    l = {":BufferOrderByLanguage<CR>", "Language"},
    w = {":BufferOrderByWindowNumber<CR>", "WindowNumber"},
  },
  s = {
    name = "Spellcheck",
    e = {":set spell spellang=en_US<cr>", "Spell Check"},
    n = {":set nospell<cr>", "No spell check"}
  },
  t = {
    name = "Terminal",
    s = {":FloatermSend<cr>", "Send line"},
    t = {":FloatermToggle<cr>", "Toggle Termianl"},
    f = {":FloatermNew --width=0.9 --height=0.9<cr>", "New Floating Terminal"},
    i = {":FloatermNew --width=0.4 --wintype=vsplit<cr> ipython<cr>", "New iPython"},
    p = {":FloatermNew --width=0.4 --wintype=vsplit<cr> conda activate Proj<cr> ipython<cr>", "New Proj"},
    n = {":FloatermNew --width=0.4 --wintype=vsplit<cr> conda activate NLP<cr> ipython<cr>", "New NLP"},
  }
}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)

