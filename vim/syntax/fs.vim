" Vim syntax file
" Language:     F#
" Filenames:    *.fs *.fsi *.fsx
" Maintainers:  Torbjörn Gyllebring <i.am@drunkencoder.com>
" Last Change:  2009 Jun 01 - Initial version.

"For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
"if version < 600
"  syntax clear
"elseif exists("b:current_syntax") && b:current_syntax == "fs"
"  finish
"endif

" F# is case sensitive.
syn case match

"Keywords
syn keyword fsKeyword abstract and as assert
syn keyword fsKeyword base begin
syn keyword fsKeyword class
syn keyword fsKeyword default delegate do done downcast downto
syn keyword fsKeyword elif else end exception extern
syn keyword fsKeyword false failwith finally for fun function
syn keyword fsKeyword if in inherit inline interface internal
syn keyword fsKeyword lazy let
syn keyword fsKeyword match member module mutable
syn keyword fsKeyword namespace new null
syn keyword fsKeyword of open or override
syn keyword fsKeyword private public
syn keyword fsKeyword raise rec return
syn keyword fsKeyword static struct
syn keyword fsKeyword then to true try type
syn keyword fsKeyword upcast use
syn keyword fsKeyword val void when while with
syn keyword fsKeyword yield

syn keyword fsReservedKeyword atomic break checked component const constraint constructor continue eager event external fixed functor global include method mixin object parallel process protected pure sealed tailcall trait virtual volatile

"Operators
syn match fsOperator /=\||\|->\|\[\|\]\|<\|>\|(\|)\|{\|}\|\.\|'\|;\|:\|\!/
syn match fsOperator "+"
"Preprocessor
syn region fsPreProcessor start="^#" end="$"

"Strings
syn match fsEscaped /\\./

syn region fsString start=+"+ end=+"+ contains=fsEscaped

"Comments
syn region fsCommentBlock start=+(\*+ end=+\*)+
syn region fsCommentLine start="//" end="$"

"Core types
syn keyword fsCoreTypes seq unit string

"Interactive
syn keyword fsInteractive __SOURCE_FILE__

"Link 'em
hi def link fsKeyword Statement
hi def link fsReservedKeyword Statement
hi def link fsOperator Operator
hi def link fsString String
hi def link fsCommentBlock Comment
hi def link fsCommentLine Comment
hi def link fsPreProcessor PreProc
hi def link fsEscaped SpecialChar
hi def link fsCoreTypes Type
hi def link fsInteractive Constant
