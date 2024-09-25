﻿#HotIf Vim.IsVimGroup() and (Vim.State.IsCurrentVimMode("Vim_Normal"))
:::Vim.State.SetMode("Command") ;(:)
`;::Vim.State.SetMode("Command") ;(;)
#HotIf Vim.IsVimGroup() and (Vim.State.IsCurrentVimMode("Command"))
w::Vim.State.SetMode("Command_w")
q::Vim.State.SetMode("Command_q")
h::
{
  Send("{F1}")
  Vim.State.SetMode("Vim_Normal")
}

#HotIf Vim.IsVimGroup() and (Vim.State.IsCurrentVimMode("Command_w"))
Enter::
{
  Send("^s")
  Vim.State.SetMode("Vim_Normal")
}

q::
{
  Send("^s")
  Send("!{F4}")
  Vim.State.SetMode("Insert")
}

Space::
{
  Send("!fa")
  Vim.State.SetMode("Insert")
}

#HotIf Vim.IsVimGroup() and (Vim.State.IsCurrentVimMode("Command_q"))
Enter::
{
  Send("!{F4}")
  Vim.State.SetMode("Insert")
}

#HotIf
