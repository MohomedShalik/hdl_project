onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+adder_14b -L xil_defaultlib -L xpm -L xbip_utils_v3_0_9 -L c_reg_fd_v12_0_5 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_pipe_v3_0_5 -L xbip_dsp48_addsub_v3_0_5 -L xbip_addsub_v3_0_5 -L c_addsub_v12_0_12 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.adder_14b xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {adder_14b.udo}

run -all

endsim

quit -force
