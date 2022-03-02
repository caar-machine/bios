(defmacro ret ()
  (pop #PC))

(defmacro loop ()
  (label _halt)
  (jmp _halt))

(defmacro livt (lab)
  (mov #IVT lab))
