local wk = require("which-key")
local mappings = {
  c = {":CommentToggle<cr>", "Comment line"},
  e = {":NvimTreeToggle<cr>", "Explorer"},
  f = {":Telescope find_files<cr>", "Find File"},
  g = {":Telescope live_grep<cr>", "Live Grep"},
  H = {":nohl<cr>", "No Highlight"},
  m = {[[i"""<esc>o<esc>o"""<esc>ki]], "Multiline comment"},
  -- r = {":w<cr> :!python %<cr>", "Run python"},
  -- r = {":w<cr> :FloatermSend \\%run %<cr>", "Run python"},
  q = {":quitall<cr>", "Quit nvim"},
  w = {":w<cr>", "Write file"},
  x = {":BufferClose<cr>", "Close"},
  l = {
    name = "LaTeX",
    r = {":w<cr> :!pdflatex %<cr>", "Compile"},
  },    
  r = {
    name = "Resize",
    h = {":vertical resize +5<cr>", "left"},
    l = {":vertical resize -5<cr>", "right"},
    j = {":resize +5<cr>", "down"},
    k = {":resize -5<cr>", "up"},
  },
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
    r = {":w<cr> :FloatermSend \\%run %<cr>", "Run python"},
    f = {":FloatermNew --width=0.9 --height=0.9<cr>", "New Floating Terminal"},
    i = {":FloatermNew --width=0.4 --wintype=vsplit<cr> ipython<cr>", "New iPython"},
    m = {":FloatermNew --width=0.4 --wintype=vsplit<cr> conda activate master<cr> ipython<cr>", "New master"},
    p = {":FloatermNew --width=0.4 --wintype=vsplit<cr> conda activate Proj<cr> ipython<cr>", "New Proj"},
    v = {":FloatermNew --width=0.4 --wintype=vsplit<cr> conda activate Viscando<cr> ipython<cr>", "New Viscando"},
    n = {":FloatermNew --width=0.4 --wintype=vsplit<cr> conda activate NLP<cr> ipython<cr>", "New NLP"},
  }
}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)

