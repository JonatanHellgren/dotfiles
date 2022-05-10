local wk = require("which-key")
local mappings = {
  q = {":q<CR>", "Quit"},
  x = {":bdelete<cr>", "Close"},
  f = {":Telescope find_files<cr>", "Find File"},
  s = {":Telescope live_grep<cr>", "Live Grep"},
  c = {":CommentToggle<cr>", "Comment line"},
  m = {[[i"""<esc>o<esc>o"""<esc>ki]], "Multiline comment"},
  e = {":NvimTreeToggle<cr>", "Explorer"},
  H = {":nohl<cr>", "No Highlight"},
  t = {":FloatermToggle<cr>", "Toggle Termianl"},
  r = {":w<cr> :FloatermSend \\%run %<cr>", "Run python"},
  q = {":quitall<cr>", "Quit nvim"},
  w = {":w<cr>", "Write file"},
  T = {
    name = "Terminal",
    s = {":FloatermSend<cr>", "Send line"},
    t = {":FloatermToggle<cr>", "Toggle Termianl"},
    f = {":FloatermNew --width=0.9 --height=0.9<cr>", "New Floating Terminal"},
    i = {":FloatermNew --width=0.4 --wintype=vsplit<cr> ipython<cr>", "New iPython"},
    v = {":FloatermNew --width=0.4 --wintype=vsplit<cr> source ~/Viscando/Viscando_env/bin/activate<cr> ipython<cr>", "New Viscando enviroment"},
    m = {":FloatermNew --width=0.4 --wintype=vsplit<cr> source ~/Master/Master_env/bin/activate<cr> ipython<cr>", "New Master enviroment"},
  }

}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)


