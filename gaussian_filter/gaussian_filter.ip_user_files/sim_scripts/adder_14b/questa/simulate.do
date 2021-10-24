onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib adder_14b_opt

do {wave.do}

view wave
view structure
view signals

do {adder_14b.udo}

run -all

quit -force
