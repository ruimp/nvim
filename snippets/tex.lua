local ls = require("luasnip")
local extras = require("luasnip.extras")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local rep = extras.rep

return {
  -- Equations
  s({
    trig = "eq",
    name = "equation",
    desc = "equation environment",
  }, {
      t({ "\\begin{equation*}", "  "}),
      i(1),
      t({ "", "\\end{equation*}" }), i(2),
    }),
  s({
    trig = "eqn",
    name = "numbered equation",
    desc = "numbered equation environment",
  },{
      t({ "\\begin{equation}", "  "}),
      i(1),
      t({ "", "\\end{equation}" }), i(2),
    }),
  s({
    trig = "ali",
    name = "align",
    desc = "align enviroment",
  },{
      t({ "\\begin{align*}", "  " }),
      i(1),
      t({ "", "\\end{align*}" }), i(2),
    }),
  s({
    trig = "alin",
    name = "numbered align",
    desc = "numbered align enviroment",
  },{
      t({ "\\begin{align}", "  " }),
      i(1),
      t({ "", "\\end{align}" }), i(2),
    }),
  -- Fractions
  s({
    trig = "frac",
    name = "fraction",
    desc = "fraction",
  },{
      t("\\frac{"), i(1), t("}{"), i(2), t("}"), i(3),
    }),
  -- Parenthesis
  s({
    trig = "lr(",
    name = "paired parenthesis",
    desc = "automatic paired parenthesis",
  },{
      t("\\left("), i(1), t("\\right)"), i(2),
    }),
  s({
    trig = "blr(",
    name = "big parenthesis",
    desc = "big paired parenthesis",
  },{
      t("\\bigl("), i(1), t("\\bigr)"), i(2),
    }),
  s({
    trig = "Blr(",
    name = "Big parenthesis",
    desc = "Big paired parenthesis",
  },{
      t("\\Bigl("), i(1), t("\\Bigr)"), i(2),
    }),
  s({
    trig = "lr[",
    name = "paired brackets",
    desc = "automatic paired brackets",
  },{
      t("\\left["), i(1), t("\\right]"), i(2),
    }),
  s({
    trig = "blr[",
    name = "big brackets",
    desc = "big paired brackets",
  },{
      t("\\bigl["), i(1), t("\\bigr]"), i(2),
    }),
  s({
    trig = "Blr[",
    name = "Big brackets",
    desc = "Big paired brackets",
  },{
      t("\\Bigl["), i(1), t("\\Bigr]"), i(2),
    }),
  s({
    trig = "lr{",
    name = "paired curly brackets",
    desc = "automatic paired curly brackets",
  },{
      t("\\left\\{"), i(1), t("\\right\\}"), i(2),
    }),
  s({
    trig = "blr{",
    name = "big curly brackets",
    desc = "big paired curly brackets",
  },{
      t("\\bigl\\{"), i(1), t("\\bigr\\}"), i(2),
    }),
  s({
    trig = "Blr{",
    name = "Big curly brackets",
    desc = "Big paired curly brackets",
  },{
      t("\\Bigl\\{"), i(1), t("\\Bigr\\}"), i(2),
    }),
  -- Theorems
  s({
    trig = "thm",
    name = "theorem",
    desc = "Theorem enviroment",
  }, {
      t({ "\\begin{theorem}", "  " }),
      i(1),
      t({ "", "\\end{theorem}" }), i(2),
    }),
  s({
    trig = "prop",
    name = "proposition",
    desc = "Proposition enviroment",
  }, {
      t({ "\\begin{proposition}", "  " }),
      i(1),
      t({ "", "\\end{proposition}" }), i(2),
    }),
  s({
    trig = "lem",
    name = "lemma",
    desc = "Lemma enviroment",
  }, {
      t({ "\\begin{lemma}", "  " }),
      i(1),
      t({ "", "\\end{lemma}" }), i(2),
    }),
  s({
    trig = "exe",
    name = "exercise",
    desc = "Exercise enviroment",
  }, {
      t({ "\\begin{exercise}", "  " }),
      i(1),
      t({ "", "\\end{exercise}" }), i(2),
    }),
  s({
    trig = "tik",
    name = "tikz",
    desc = "Tikz enviroment",
  }, {
      t({ "\\begin{tikz}", "  " }),
      i(1),
      t({ "", "\\end{tikz}" }), i(2),
    }),
  s({
    trig = "tikcd",
    name = "tikzc &",
    desc = "Tikz-cd enviroment",
  }, {
      t({ "\\begin{tikzcd}", "  " }),
      i(1),
      t({ "", "\\end{tikzcdf}" }), i(2),
    }),

  s({
    trig = "tikcda",
    name = "tikzcd &",
    desc = "Tikz-cd enviroment with & replacement",
  }, {
      t({ "\\begin{tikzcd}[ampersand replacement = \\&]", "  " }),
      i(1),
      t({ "", "\\end{tikzcd}" }), i(2),
    }),
  -- Text Styles
  s({
    trig = "it",
    name = "italic",
    desc = "italic text",
  }, {
      t("\\textit{"), i(1), t("}"), i(2),
    }),
  s({
    trig = "und",
    name = "underline",
    desc = "underline text",
  }, {
      t("\\underline{"), i(1), t("}"), i(2),
    }),
   s({
    trig = "bf",
    name = "bold",
    desc = "bold text",
  }, {
      t("\\textbf{"), i(1), t("}"), i(2),
    }),
   s({
    trig = "emph",
    name = "emphasis",
    desc = "emphasis text",
  }, {
      t("\\emph{"), i(1), t("}"), i(2),
    }),
  -- Defferentials
  s({
    trig = "dd",
    name = "differential",
    desc = "upright differential",
  }, {
      t("\\, \\dd "), i(1),
    }),
  s({
    trig = "dv",
    name = "derivative",
    desc = "derivative",
  }, {
      t("\\frac{ \\dd "), i(1), t(" }{ \\dd "), i(2), t(" }"), i(3),
    }),
  s({
    trig = "pdv",
    name = "partial derivative",
    desc = "partial derivative",
  }, {
      t("\\frac{ \\partial "), i(1), t(" }{ \\partial "), i(2), t(" }"), i(3),
    }),
  -- Sections
  s({
    trig = "sec",
    name = "section",
    desc = "New section",
  }, {
      t("\\section{"), i(1), t("}"), i(2),
    }),
  s({
    trig = "ssec",
    name = "subsection",
    desc = "New subsection",
  }, {
      t("\\subsection{"), i(1), t("}"), i(2),
    }),
  s({
    trig = "sssec",
    name = "subsubsection",
    desc = "New subsubsection",
  }, {
      t("\\subsubsection{"), i(1), t("}"), i(2),
    }),
  -- Lists
  s({
    trig = "item",
    name = "itemize",
    desc = "Itemize enviroment",
  }, {
      t({ "\\begin{itemize}", "  \\item " }), i(1),
      t({ "", "\\end{itemize}" }), i(2)
    }),
  s({
    trig = "enum",
    name = "enumerate",
    desc = "Enumerate enviroment",
  }, {
      t({ "\\begin{enumerate}", "  \\item " }), i(1),
      t({ "", "\\end{enumerate}" }), i(2)
    }),
  s({
    trig = "enumrom",
    name = "enumerate roman",
    desc = "Enumerate enviroment with roman numerals",
  }, {
      t({ "\\begin{enumerate}[label = \\roman*)]", "  \\item " }), i(1),
      t({ "", "\\end{enumerate}" }), i(2)
    }),
  -- Meta
  s({
    trig = "begin",
    name = "begin",
    desc = "Begin enviroment",
  }, {
      t("\\begin{"), i(1), t({ "}", "  " }),
      i(2),
      t({ "", "\\end{" }), rep(1), t("}"), i(3)
    }),
}
