" Vim syntax file
" Language:    dol
" Maintainer:  Tim Reddehase <robustus@rightsrestricted.com>
" Last Change: 16 March 2014
" License:     MIT license (see README.md)

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn keyword tmuxKeywords set setw set-option set-window-option nextgroup=tmuxGlobalSwitch,tmuxSwitch skipwhite
" Basic Keywords
syn keyword dolLogic logic nextgroup=dolLogicConstant skipwhite
syn keyword dolOntologyRangeWords ontology end
syn keyword dolImportWords with
syn keyword dolDefinition then
syn keyword dolLogicConstant OWL CASL CLIF

" Comments
syn region dolComment matchgroup=dolComment start='\%(^\|\s\)%%' end='$'

let b:current_syntax = "dol"

hi def link dolComment Comment
hi def link dolOntologyRangeWords Keyword
hi def link dolLogic Keyword
hi def link dolLogicConstant Type
hi def link dolImportWords Special
hi def link dolDefinition Operator


