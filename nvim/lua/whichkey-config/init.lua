local wk = require("which-key")
local mappings = {
  c = {":CommentToggle<cr>", "Comment line"},
  e = {":NvimTreeToggle<cr>", "Explorer"},
  f = {":Telescope find_files<cr>", "Find File"},
  g = {":Telescope live_grep<cr>", "Live Grep"},
  H = {":nohl<cr>", "No Highlight"},
  m = {[[i"""<esc>o<esc>o"""<esc>ki]], "Multiline comment"},
  d = {":set background=light<cr>", "Light mode"},
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
    s = {":set spell spellang=sv_SV<cr>", "Spell Check"},
    n = {":set nospell<cr>", "No spell check"}
  },
  j = {
    name = "Julia",
    r = {[[:w <cr>:FloatermSend include("%")<cr>]], "Run"},
    R = {":FloatermToggle<cr> exit()<cr> julia<cr>", "Restart REPL"}
  },
  t = {
    name = "Terminal",
    s = {":FloatermSend<cr>", "Send line"},
    t = {":FloatermToggle<cr>", "Toggle Termianl"},
    r = {":w<cr> :FloatermSend \\%run %<cr>", "Run python"},
    f = {":FloatermNew --width=0.9 --height=0.9<cr>", "New Floating Terminal"},
    i = {":FloatermNew --width=0.4 --wintype=vsplit<cr> ipython<cr>", "New iPython"},
    m = {":FloatermNew --width=0.4 --wintype=vsplit<cr> source ~/Master/Master_env/bin/activate<cr> ipython<cr>", "New Master"},
    S = {":FloatermNew --width=0.4 --wintype=vsplit<cr> source ~/Master/Safelife_env/bin/activate<cr> ipython<cr>", "New Safelife"},
    v = {":FloatermNew --width=0.4 --wintype=vsplit<cr> source ~/Viscando/Viscando_env/bin/activate<cr> ipython<cr>", "New Viscando"},
    j = {":FloatermNew --width=0.4 --wintype=vsplit<cr> julia<cr>", "Julia"},
  }
}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)

