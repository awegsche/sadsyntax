syntax clear
setlocal iskeyword=a-z,A-Z,48-57,_,.

syntax match sadComment /!.*$/
syntax region sadComment start=/(\*/ end=/\*)/
syntax region sadString start=/"/ skip=/\\"/ end=/"/

" function parameters (ending with an underscore)
" this is mainly to highlight mistakenly used underscores
syntax match sadParam /\w\+_/

" Main mode commands
syntax keyword sadMainCommands ON OFF FFS show end
syntax keyword sadTkCommands TkWait
syntax keyword sadKnownValues ECHO CTIME LOG Pi

" FFS mode commands
" I tried to separate particle accelerator related commands from Mathematica
" commands
syntax keyword sadFFSCommands GetMAIN ExtractBeamLine USE STAT CELL CALC CHRO Twiss LINE DISP TrackParticle Flatten
syntax keyword sadFFSBasic Print OpenWrite Close TableForm WriteString AppendTo ToString Length Nest StringJoin Max StringLength Element WriteBeamLine BeamLineName
syntax keyword sadFFSConditional Do While If With

" since it often happened to me that I didn't see an abort command and
" wondered why my newly written code wasn't executed
syntax keyword sadAbort abort

highlight link sadComment Comment
highlight link sadMainCommands Statement
highlight link sadKnownValues Constant
highlight link sadFFSCommands Identifier
highlight link sadFFSBasic Statement
highlight link sadFFSConditional Identifier
highlight link sadAbort Error
highlight link sadTkCommands Statement
highlight link sadString String
highlight link sadParam Number
