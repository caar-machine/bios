(label print_str)
  ; If A[i] is 0
  (cmp #r1 0)
  ; return
  (je end)
  ; Else, write char to serial
  (out 0 #r1)
  ; i++
  (add #r0 1)
  ; B = A[i]
  (ldr #r1 #r0)
  ; Continue
  (jmp print_str)

(label end)
	(pop #PC)

; Define a macro that takes a parameter named param
(defmacro display (param)
  ; A = address of string
  (mov #r0 param)

  ; B = *A
  (ldr #r1 #r0)

  (call print_str))
