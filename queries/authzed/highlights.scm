((identifier) @function)

(block
  (relation
    (relation_literal) @function.builtin
    (identifier) @property))

(block
  (permission
    (permission_literal) @function.builtin
    (identifier) @property))

; relations
((relation_literal) @function.builtin)
; TODO: ask Mike about appearing to capture permission identifier
;       and relation identifier as new names
(relation (identifier) @constant)
(rel_expression (identifier) @property)

((pipe_literal) @operator)

(relation
  (rel_expression
    ((hash_literal)
     . (identifier) @constant)))

; permissions
; NOTE: asked Mike about second capture of permission_literal
((permission_literal) @function.builtin)
(permission (identifier) @type)
(perm_expression (identifier) @property)

((plus_literal) @operator)

(call_expression
  (selector_expression
    (identifier) @constant))

(call_expression
  function: (selector_expression
    field: (field_identifier) @function.method))

(permission
  (perm_expression
    ((stabby) @operator
     . (identifier) @function)))

; misc
[
  (true)
  (false)
  (nil)
] @constant.builtin

[
 (caveat_literal)
 (definition_literal)
] @keyword

[
  (hash_literal)
  (comment)
] @comment
