onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib Data_Memory_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {Data_Memory.udo}

run -all

quit -force
