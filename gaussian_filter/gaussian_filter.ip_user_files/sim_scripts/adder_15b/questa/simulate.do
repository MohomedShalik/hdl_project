onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib adder_15b_opt

do {wave.do}

view wave
view structure
view signals

do {adder_15b.udo}

run -all

quit -force
