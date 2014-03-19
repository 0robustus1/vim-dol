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

" Basic Keywords
syn keyword dolOntologyRangeWords ontology end
syn keyword dolImportWords with
syn keyword dolDefinition then

" Complex grouped Keywords
syn keyword dolLogic logic nextgroup=dolLogicConstant skipwhite
syn keyword dolLogicConstant OWL CASL CommonLogic

" Comments
syn region dolComment matchgroup=dolComment start='\%(^\|\s\)%%' end='$'

let b:current_syntax = "dol"

hi def link dolComment Comment
hi def link dolOntologyRangeWords Keyword
hi def link dolLogic Keyword
hi def link dolLogicConstant Type
hi def link dolImportWords Special
hi def link dolDefinition Operator


