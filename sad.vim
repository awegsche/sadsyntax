syntax clear
setlocal iskeyword=a-z,A-Z,48-57,_,.

syntax match sadComment /!.*$/
syntax region sadComment start=/(\*/ end=/\*)/
syntax region sadString start=/"/ skip=/\\"/ end=/"/
syntax match sadParam /\w\+_/

" Main mode commands
syntax keyword sadMainCommands ON OFF FFS show end
syntax keyword sadTkCommands TkWait
syntax keyword sadKnownValues ECHO CTIME LOG Pi

" FFS mode commands
syntax keyword sadFFSCommands GetMAIN ExtractBeamLine USE STAT CELL CALC CHRO Twiss LINE DISP TrackParticle Flatten
syntax keyword sadFFSBasic Print OpenWrite Close TableForm WriteString AppendTo ToString Length Nest StringJoin Max StringLength Element WriteBeamLine BeamLineName
syntax keyword sadFFSConditional Do While If With

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
