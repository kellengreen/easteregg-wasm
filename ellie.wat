(module
  (memory (export "memory") 1)
  (global $len_on i32 (i32.const 85))
  (global $len_off i32 (i32.const 33))
  (global $is_on (mut i32) (i32.const 0))
  (data (i32.const 0) "transition:transform 2s,filter 3s;transform:rotate(1080deg);filter:hue-rotate(180deg)")

  (global $next_key (mut i32) (i32.const 0))
  (global $last_key i32 (i32.const 5))
  (table 5 funcref)
  (elem (i32.const 0) $e $l $l $i $e)
  (func $e (result i32) i32.const 101)
  (func $l (result i32) i32.const 108)
  (func $i (result i32) i32.const 105)
  (type $keys (func (result i32)))

  (func $check (export "check") (param $key i32) (result i32)

    ;; Check if the key matches our next key.
    global.get $next_key
    call_indirect (type $keys)
    local.get $key
    i32.eq
    if
      ;; Move on to the next key.
      i32.const 1
      global.get $next_key
      i32.add
      global.set $next_key

      ;; Check if that was the last key.
      global.get $next_key
      global.get $last_key
      i32.eq
      if
        ;; Trigger the easter egg.
        i32.const 0
        global.set $next_key

        ;; Determine the direction of the animation.
        i32.const 1
        global.get $is_on
        i32.eq
        if
          ;; Trigger the on->off animation.
          i32.const 0
          global.set $is_on

          global.get $len_off
          return
        else
          ;; Trigger the off->on animation.
          i32.const 1
          global.set $is_on

          global.get $len_on
          return
        end
      end
    else
      ;; Check if the key matches our first key.
      i32.const 0
      call_indirect (type $keys)
      local.get $key
      i32.eq
      if
        ;; Matches the first key.
        i32.const 1
        global.set $next_key
      else
        ;; No match.
        i32.const 0
        global.set $next_key
      end
    end

    ;; Do not trigger the easter egg.
    i32.const 0
    return
  )
)
