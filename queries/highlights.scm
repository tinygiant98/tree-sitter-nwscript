"if" @keyword
"else" @keyword
"do" @keyword
"for" @keyword
"while" @keyword
"break" @keyword
"continue" @keyword
"return" @keyword
"switch" @keyword
"case" @keyword
"default" @keyword
"struct" @type.builtin
"#include" @keyword

"." @operator
"--" @operator
"-" @operator
"-=" @operator
"=" @operator
"!=" @operator
"*" @operator
"&" @operator
"&&" @operator
"+" @operator
"++" @operator
"+=" @operator
"<" @operator
"=" @operator
"==" @operator
">" @operator
"||" @operator

";" @punctuation
"{" @punctuation
"}" @punctuation
"[" @punctuation
"]" @punctuation
"(" @punctuation
")" @punctuation
"," @punctuation


(field_expression) @enum

(const_qualifier) @type.modification
(function_definition
    declarator: (identifier) @function)

(struct_declarator
    declarator: (identifier) @type)
(struct_declarator
    (identifier) @type)

(struct_members 
    (type_identifier) @type.builtin
    (identifier) @enum)

(decoration) @keyword

(struct_specifier
    (identifier) @type)
(struct_specifier) @type

(call_expression
    function: (identifier) @function)

(primitive_type) @type.builtin
(nwn_type) @type.builtin

(escape_sequence) @string.special
(string_literal) @string

(number_literal) @number

(nwn_constant) @constant.builtin

((identifier) @constant
    (#match? @constant "^[A-Z][A-Z\\d_]*$"))
(identifier) @variable

(nwnsc_macro) @macro

(comment) @comment


