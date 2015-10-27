cscript "Unit tests for texclean" adofile texclean.ado

loc texttest "This # is $& some ~%_ t^xt with\ {LaTeX} special characters"

texclean "`texttest'" 

assert `"`r(clntex)'"' == "This \textbackslash\{\}# is $\textbackslash\{\}& some \textbackslash\{\}textasciitilde\{\}\textbackslash\{\}%\textbackslash\{\}_ t\textbackslash\{\}textasciicircum\{\}xt with\textbackslash\{\} \{LaTeX\} special characters"

texclean "`texttest'", r

assert `"`r(clntex)'"' == "This  is  some  txt with LaTeX special characters"
