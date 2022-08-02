  -- look at
  -- https://github.com/ms-jpq/coq_nvim/blob/coq/config/defaults.yml
  -- for details

vim.g.coq_settings = {
    auto_start = true,
    xdg = true,
  ["clients.tabnine"] = {
    enabled = true,
    weight_adjust = -0.4,
  },
  ["keymap"] ={
    "manual_complete" == "<C-space>",  --if you don see any method
  },
    ["clients.tmux"] = {
      enabled = false,
    },
}
require "coq"
