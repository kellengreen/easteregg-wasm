(module
  (memory 1)
  (global $ptr (mut i32) (i32.const 0))
  (global $len (mut i32) (i32.const 5))
  (data (i32.const 00) "\65\00\00\00") ;; e
  (data (i32.const 04) "\6c\00\00\01") ;; l
  (data (i32.const 08) "\6c\00\00\01") ;; l
  (data (i32.const 12) "\69\00\00\01") ;; i
  (data (i32.const 16) "\65\00\00\00") ;; e

  

  (func $check (export "check") (param $key i32) (result i32)
    i32.const 0
    i32.load


    ;; ;; Move the pointer if the key is a match.
    ;; i32.const 32
    ;; global.get $ptr
    ;; i32.mul
    ;; i32.load
    ;; local.get $key
    ;; i32.eq
    ;; if (result i32)
    ;;   i32.const 1
    ;;   global.get $ptr
    ;;   i32.add
    ;; else
    ;;   ;; Check if it matches the first item in the sequence.
    ;;   i32.const 0
    ;;   i32.load 
    ;;   local.get $key
    ;;   i32.eq
    ;;   if (result i32)
    ;;     i32.const 1
    ;;   else 
    ;;     i32.const 0
    ;;   end
    ;; end
    ;; global.set $ptr
    
    ;; ;; Mark as a success once we've reached the end of our sequence.
    ;; global.get $ptr
    ;; local.get $len
    ;; i32.eq
    ;; if (result i32)
    ;;   i32.const 0
    ;;   global.set $ptr
    ;;   i32.const 1
    ;; else
    ;;   i32.const 0
    ;; end
    ;; return
  )
)
