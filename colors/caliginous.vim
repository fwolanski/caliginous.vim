" Caliginous.vim
" Author: Filip Wolanski
" Templated from: Base 16 (https://github.com/chriskempson/base16)


if &background == "light"
  " light color definitions
  let s:gui00 = "ffffff" " 0
  let s:gui01 = "ebf2f4" " 10
  let s:gui02 = "91b0bc" " 11
  let s:gui03 = "000000" " 8  2e4d55
  let s:gui04 = "12262d" " 12 244c59
  let s:gui05 = "b84202" " 9
  let s:gui06 = "605c47" " 13
  let s:gui07 = "75a03d" " 15

  let s:gui08 = "787878" " 1
  let s:gui09 = "986624" " 7
  let s:gui0A = "90581f" " 3
  let s:gui0B = "2b944e" " 2
  let s:gui0C = "7a82b5" " 6
  let s:gui0D = "486473" " 4
  let s:gui0E = "548e8e" " 5
  let s:gui0F = "616161" " 14

else
  " dark color definitions
  let s:gui00 = "000000"
  let s:gui01 = "001821"
  let s:gui02 = "275c67"
  let s:gui03 = "44737f"
  let s:gui04 = "5d8c98"
  let s:gui05 = "b58300"
  let s:gui06 = "d2ca9c"
  let s:gui07 = "ebeace"

  let s:gui08 = "787878"
  let s:gui09 = "b3aa77" " b661b3
  let s:gui0A = "b97128"
  let s:gui0B = "64a179"
  let s:gui0C = "7a82b5"
  let s:gui0D = "638a9f"
  let s:gui0E = "548e8e"
  let s:gui0F = "616161"

endif


" Terminal color definitions
let s:cterm00 = "00"
let s:cterm03 = "08"
let s:cterm05 = "09"
let s:cterm07 = "15"
let s:cterm08 = "01"
let s:cterm0A = "03"
let s:cterm0B = "02"
let s:cterm0C = "06"
let s:cterm0D = "04"
let s:cterm0E = "05"
let s:cterm01 = "10"
let s:cterm02 = "11"
let s:cterm04 = "12"
let s:cterm06 = "13"
let s:cterm09 = "07"
let s:cterm0F = "14"

" Theme setup
hi clear
syntax reset
let g:colors_name = "caliginous"

" Highlighting function
fun <sid>hi(group, guifg, guibg, ctermfg, ctermbg, attr)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=#" . a:guifg
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=#" . a:guibg
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfun

" Vim editor colors
call <sid>hi("Bold",          "", "", "", "", "bold")
call <sid>hi("Debug",         s:gui08, "", s:cterm08, "", "")
call <sid>hi("Directory",     s:gui0D, "", s:cterm0D, "", "")
call <sid>hi("ErrorMsg",      s:gui08, s:gui00, s:cterm08, s:cterm00, "")
call <sid>hi("Exception",     s:gui08, "", s:cterm08, "", "")
call <sid>hi("FoldColumn",    "", s:gui01, "", s:cterm01, "")
call <sid>hi("Folded",        s:gui03, s:gui01, s:cterm03, s:cterm01, "")
call <sid>hi("IncSearch",     s:gui01, s:gui0A, s:cterm01, s:cterm0A, "none")
call <sid>hi("Italic",        "", "", "", "", "none")
call <sid>hi("Macro",         s:gui08, "", s:cterm08, "", "")
call <sid>hi("MatchParen",    s:gui00, s:gui03, s:cterm00, s:cterm03,  "")
call <sid>hi("ModeMsg",       s:gui0B, "", s:cterm0B, "", "")
call <sid>hi("MoreMsg",       s:gui0B, "", s:cterm0B, "", "")
call <sid>hi("Question",      s:gui0A, "", s:cterm0A, "", "")
call <sid>hi("Search",        s:gui01, s:gui0A, s:cterm01, s:cterm0A,  "")
call <sid>hi("SpecialKey",    s:gui03, "", s:cterm03, "", "")
call <sid>hi("TooLong",       s:gui08, "", s:cterm08, "", "")
call <sid>hi("Underlined",    s:gui08, "", s:cterm08, "", "")
call <sid>hi("Visual",        "", s:gui02, "", s:cterm02, "")
call <sid>hi("VisualNOS",     s:gui08, "", s:cterm08, "", "")
call <sid>hi("WarningMsg",    s:gui08, "", s:cterm08, "", "")
call <sid>hi("WildMenu",      s:gui08, "", s:cterm08, "", "")
call <sid>hi("Title",         s:gui0D, "", s:cterm0D, "", "none")
call <sid>hi("Conceal",       s:gui0D, s:gui00, s:cterm0D, s:cterm00, "")
call <sid>hi("Cursor",        s:gui00, s:gui02, s:cterm00, s:cterm02, "")
call <sid>hi("NonText",       s:gui03, "", s:cterm03, "", "")
call <sid>hi("Normal",        s:gui03, s:gui00, s:cterm03, s:cterm00, "")
call <sid>hi("LineNr",        s:gui02, s:gui00, s:cterm02, s:cterm00, "")
call <sid>hi("SignColumn",    s:gui03, s:gui00, s:cterm03, s:cterm00, "")
call <sid>hi("SpecialKey",    s:gui03, "", s:cterm03, "", "")
call <sid>hi("StatusLine",    s:gui04, s:gui02, s:cterm04, s:cterm02, "none")
call <sid>hi("StatusLineNC",  s:gui03, s:gui01, s:cterm03, s:cterm01, "none")
call <sid>hi("VertSplit",     s:gui03, s:gui00, s:cterm03, s:cterm00, "none")
call <sid>hi("ColorColumn",   "", s:gui01, "", s:cterm01, "none")
call <sid>hi("CursorColumn",  "", s:gui01, "", s:cterm01, "none")
call <sid>hi("CursorLine",    "", s:gui01, "", s:cterm01, "none")
call <sid>hi("CursorLineNr",  s:gui03, s:gui01, s:cterm03, s:cterm01, "")
call <sid>hi("PMenu",         s:gui04, s:gui01, s:cterm04, s:cterm01, "none")
call <sid>hi("PMenuSel",      s:gui01, s:gui04, s:cterm01, s:cterm04, "")
call <sid>hi("TabLine",       s:gui03, s:gui01, s:cterm03, s:cterm01, "none")
call <sid>hi("TabLineFill",   s:gui03, s:gui01, s:cterm03, s:cterm01, "none")
call <sid>hi("TabLineSel",    s:gui0B, s:gui01, s:cterm0B, s:cterm01, "none")

set fillchars+=vert:\│


" Standard syntax highlighting
call <sid>hi("Boolean",      s:gui06, "", s:cterm06, "", "")
call <sid>hi("Character",    s:gui05, "", s:cterm05, "", "")
call <sid>hi("Comment",      s:gui02, "", s:cterm02, "", "")
call <sid>hi("Conditional",  s:gui0A, "", s:cterm0A, "", "")
call <sid>hi("Constant",     s:gui08, "", s:cterm08, "", "")
call <sid>hi("Define",       s:gui05, "", s:cterm05, "", "none")
call <sid>hi("Delimiter",    s:gui0F, "", s:cterm0F, "", "")
call <sid>hi("Float",        s:gui09, "", s:cterm09, "", "")
call <sid>hi("Function",     s:gui06, "", s:cterm06, "", "")
call <sid>hi("Identifier",   s:gui04, "", s:cterm04, "", "none")
call <sid>hi("Include",      s:gui0D, "", s:cterm0D, "", "")
call <sid>hi("Keyword",      s:gui09, "", s:cterm09, "", "")
call <sid>hi("Label",        s:gui0A, "", s:cterm0A, "", "")
call <sid>hi("Number",       s:gui09, "", s:cterm09, "", "")
call <sid>hi("Operator",     s:gui04, "", s:cterm04, "", "none")
call <sid>hi("PreProc",      s:gui0A, "", s:cterm0A, "", "")
call <sid>hi("Repeat",       s:gui0A, "", s:cterm0A, "", "")
call <sid>hi("Special",      s:gui0C, "", s:cterm0C, "", "")
call <sid>hi("SpecialChar",  s:gui0F, "", s:cterm0F, "", "")
call <sid>hi("Statement",    s:gui04, "", s:cterm04, "", "")
call <sid>hi("StorageClass", s:gui0A, "", s:cterm0A, "", "")
call <sid>hi("String",       s:gui0B, "", s:cterm0B, "", "")
call <sid>hi("Structure",    s:gui0E, "", s:cterm0E, "", "")
call <sid>hi("Tag",          s:gui0A, "", s:cterm0A, "", "")
call <sid>hi("Todo",         s:gui0A, s:gui00, s:cterm0A, s:cterm00, "")
call <sid>hi("Type",         s:gui09, "", s:cterm09, "", "none")
call <sid>hi("Typedef",      s:gui0A, "", s:cterm0A, "", "")

" Spelling highlighting
call <sid>hi("SpellBad",     "", s:gui00, "", s:cterm00, "undercurl")
call <sid>hi("SpellLocal",   "", s:gui00, "", s:cterm00, "undercurl")
call <sid>hi("SpellCap",     "", s:gui00, "", s:cterm00, "undercurl")
call <sid>hi("SpellRare",    "", s:gui00, "", s:cterm00, "undercurl")

" Additional diff highlighting
call <sid>hi("DiffAdd",      s:gui0B, s:gui00, s:cterm0B, s:cterm00, "")
call <sid>hi("DiffChange",   s:gui0D, s:gui00, s:cterm0D, s:cterm00, "")
call <sid>hi("DiffDelete",   s:gui08, s:gui00, s:cterm08, s:cterm00, "")
call <sid>hi("DiffText",     s:gui0D, s:gui00, s:cterm0D, s:cterm00, "")
call <sid>hi("DiffAdded",    s:gui0B, s:gui00, s:cterm0B, s:cterm00, "")
call <sid>hi("DiffFile",     s:gui08, s:gui00, s:cterm08, s:cterm00, "")
call <sid>hi("DiffNewFile",  s:gui0B, s:gui00, s:cterm0B, s:cterm00, "")
call <sid>hi("DiffLine",     s:gui0D, s:gui00, s:cterm0D, s:cterm00, "")
call <sid>hi("DiffRemoved",  s:gui08, s:gui00, s:cterm08, s:cterm00, "")

" Ruby highlighting
call <sid>hi("rubyAttribute",               s:gui0D, "", s:cterm0D, "", "")
call <sid>hi("rubyConstant",                s:gui0A, "", s:cterm0A, "", "")
call <sid>hi("rubyInterpolation",           s:gui0B, "", s:cterm0B, "", "")
call <sid>hi("rubyInterpolationDelimiter",  s:gui0F, "", s:cterm0F, "", "")
call <sid>hi("rubyRegexp",                  s:gui0C, "", s:cterm0C, "", "")
call <sid>hi("rubySymbol",                  s:gui0B, "", s:cterm0B, "", "")
call <sid>hi("rubyStringDelimiter",         s:gui0B, "", s:cterm0B, "", "")

" PHP highlighting
call <sid>hi("phpMemberSelector",  s:gui05, "", s:cterm05, "", "")
call <sid>hi("phpComparison",      s:gui05, "", s:cterm05, "", "")
call <sid>hi("phpParent",          s:gui05, "", s:cterm05, "", "")

" HTML highlighting
call <sid>hi("htmlBold",    s:gui0A, "", s:cterm0A, "", "")
call <sid>hi("htmlItalic",  s:gui0E, "", s:cterm0E, "", "")
call <sid>hi("htmlEndTag",  s:gui05, "", s:cterm05, "", "")
call <sid>hi("htmlTag",     s:gui05, "", s:cterm05, "", "")

" CSS highlighting
call <sid>hi("cssBraces",      s:gui05, "", s:cterm05, "", "")
call <sid>hi("cssClassName",   s:gui0E, "", s:cterm0E, "", "")
call <sid>hi("cssColor",       s:gui0C, "", s:cterm0C, "", "")

" SASS highlighting
call <sid>hi("sassidChar",     s:gui08, "", s:cterm08, "", "")
call <sid>hi("sassClassChar",  s:gui09, "", s:cterm09, "", "")
call <sid>hi("sassInclude",    s:gui0E, "", s:cterm0E, "", "")
call <sid>hi("sassMixing",     s:gui0E, "", s:cterm0E, "", "")
call <sid>hi("sassMixinName",  s:gui0D, "", s:cterm0D, "", "")

" JavaScript highlighting
call <sid>hi("javaScript",        s:gui05, "", s:cterm05, "", "")
call <sid>hi("javaScriptBraces",  s:gui05, "", s:cterm05, "", "")
call <sid>hi("javaScriptNumber",  s:gui09, "", s:cterm09, "", "")
call <sid>hi("jsFuncBlock",  s:gui04, "", s:cterm04, "", "")

" Markdown highlighting
call <sid>hi("markdownCode",              s:gui0B, "", s:cterm0B, "", "")
call <sid>hi("markdownCodeBlock",         s:gui0B, "", s:cterm0B, "", "")
call <sid>hi("markdownHeadingDelimiter",  s:gui0D, "", s:cterm0D, "", "")

" Git highlighting
call <sid>hi("gitCommitOverflow",  s:gui08, "", s:cterm08, "", "")
call <sid>hi("gitCommitSummary",   s:gui0B, "", s:cterm0B, "", "")

" GitGutter highlighting
call <sid>hi("GitGutterAdd",     s:gui0B, s:gui00, s:cterm0B, s:cterm00, "")
call <sid>hi("GitGutterChange",  s:gui0D, s:gui00, s:cterm0D, s:cterm00, "")
call <sid>hi("GitGutterDelete",  s:gui08, s:gui00, s:cterm08, s:cterm00, "")
call <sid>hi("GitGutterChangeDelete",  s:gui0E, s:gui00, s:cterm0E, s:cterm00, "")

" Signify highlighting
call <sid>hi("SignifySignAdd",     s:gui0B, s:gui01, s:cterm0B, s:cterm01, "")
call <sid>hi("SignifySignChange",  s:gui0D, s:gui01, s:cterm0D, s:cterm01, "")
call <sid>hi("SignifySignDelete",  s:gui08, s:gui01, s:cterm08, s:cterm01, "")

" NERDTree highlighting
call <sid>hi("NERDTreeDirSlash",  s:gui0D, "", s:cterm0D, "", "")
call <sid>hi("NERDTreeExecFile",  s:gui05, "", s:cterm05, "", "")

" Coffeescript highlighting
call <sid>hi("coffeeObjAssign",  s:gui05, "", s:cterm05, "", "")

" MYSQL highlighting
call <sid>hi("mysqlKeyword",  s:gui07, "", s:cterm07, "", "")
call <sid>hi("mysqlOperator",  s:gui09, "", s:cterm09, "", "")
call <sid>hi("mysqlFlow",  s:gui09, "", s:cterm09, "", "")

" Clojure
call <sid>hi("clojureKeyword",  s:gui09, "", s:cterm09, "", "")


" Remove function
delf <sid>hi

" Remove color variables
unlet s:gui00 s:gui01 s:gui02 s:gui03  s:gui04  s:gui05  s:gui06  s:gui07  s:gui08  s:gui09 s:gui0A  s:gui0B  s:gui0C  s:gui0D  s:gui0E  s:gui0F
unlet s:cterm00 s:cterm01 s:cterm02 s:cterm03 s:cterm04 s:cterm05 s:cterm06 s:cterm07 s:cterm08 s:cterm09 s:cterm0A s:cterm0B s:cterm0C s:cterm0D s:cterm0E s:cterm0F

