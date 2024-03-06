local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- Definition
  s({
    trig = "def",
    name = "definition",
    desc = "definition environment",
  }, {
      t({ "#definition[", "  " }),
      i(1),
      t({ "", "]" }), i(2),
  }),
  s({
    trig = "eq",
    name = "numbered equation",
    desc = "numbered equation environment",
  }, {
      t({ "#math.equation(block: true, numbering: \"(1)\")[$", "  " }),
      i(1),
      t({ "", "$]" }), i(2),
  }),
  -- Theorem
  s({
    trig = "theorem",
    name = "theorem",
    desc = "theorem environment",
  }, {
      t({ "#theorem[", "  " }),
      i(1),
      t({ "", "]" }), i(2),
  }),
  -- Proposition
  s({
    trig = "proposition",
    name = "proposition",
    desc = "proposition environment",
  }, {
      t({ "#proposition[", "  " }),
      i(1),
      t({ "", "]" }), i(2),
  }),
  -- Lemma
  s({
    trig = "lemma",
    name = "lemma",
    desc = "lemma environment",
  }, {
      t({ "#lemma[", "  " }),
      i(1),
      t({ "", "]" }), i(2),
  }),

}
