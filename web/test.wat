(module
    (memory (export "mem") 1)

   	(global $ptr (mut i32) (i32.const 0))
  	(global $e i32 (i32.const 101))
  	(global $l i32 (i32.const 108))
  	(global $i i32 (i32.const 105))
    (global (i32.const 0) "")

  	(data (i32.const 0) "")
  	(data (i32.const 0) "transition:transform 2s;transform:rotate(1080deg)\00")
  
  	(func $keyup (export "keyup") (param $key i32) (result i32)
		
      	global.get $ptr
    	i32.const 0
      	i32.eq
      	(if (result i32)
          (then
            global.get $ptr
            i32.const 1
          	i32.add
          )
          (else
            i32.const 0
          )
        )
        global.set $ptr
      	
          
      
		;;global.set $g
      	;;global.get $g
 
      	;;i32.load 
      	global.get $ptr
		return
  	)
  
  	(func $which_key (result i32)
      	;; e
        global.get $ptr
  		i32.const 0
      	i32.eq
      	(if (result i32)
          (then global.get $e)
          (else
            ;; 1
          	global.get $ptr
  			i32.const 1
      		i32.eq
            (if (result i32)
            	(then global.get $l)
                (else
                  	;; 1
                  	global.get $ptr
                  	i32.const 2
                  	i32.eq
                  	(if (result i32)
                      (then global.get $l)
                       (else
                        ;; 1
                        global.get $ptr
                        i32.const 2
                        i32.eq
                        (if (result i32)
                        (then global.get $l)
                        
                  )
				)
                      
                    )
				)
            )
        )
    	return
  	)
      
     
  
  
	(func $prt_inc (result i32)
    	global.get $ptr
        i32.const 1
        i32.add
		return
  	)
)