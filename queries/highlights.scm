(identifier) @variable

[
  "if"
  "else"
  "switch"
  "case"
  "default"
] @conditional

[
  "do"
  "for"
  "while"
  "break"
  "continue"
] @repeat

"return" @keyword.return
"#include" @include

"struct" @type.builtin

[
  "."
  "--"
  "-"
  "-="
  "="
  "!="
  "%"
  "%="
  "*"
  "*="
  "/"
  "/="
  "&"
  "&&"
  "&="
  "+"
  "++"
  "+="
  "<"
  "<<"
  "<="
  "<<="
  "="
  "=="
  ">"
  ">>"
  ">>>"
  ">="
  ">>="
  ">>>="
  "|"
  "||"
  "|="
  "^"
  "^="
  "~"
] @operator

[ "." ";" "," ] @punctuation.delimiter

(conditional_expression [ "?" ":" ] @conditional)


[ "(" ")" "[" "]" "{" "}"] @punctuation.bracket


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

(nwnsc_macro) @macro

(comment) @comment
