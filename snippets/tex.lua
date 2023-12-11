return {
  s("eqn", {
    t({ "\\begin{equation}", "  " }),
    i(0),
    t({ "", "\\end{equation}" })
  }),
  s("eq", {
    t({ "\\begin{equation*}", "  " }),
    i(0),
    t({ "", "\\end{equation*}" })
  }),
 s("al", {
    t({ "\\begin{align*}", "  " }),
    i(0),
    t({ "", "\\end{align*}" })
  }),
  s("aln", {
    t({ "\\begin{align}", "  " }),
    i(0),
    t({ "", "\\end{align}" })
  })
}
