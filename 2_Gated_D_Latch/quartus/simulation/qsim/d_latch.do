onerror {exit -code 1}
vlib work
vlog -work work d_latch.vo
vlog -work work Waveform1.vwf.vt
vsim -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.d_latch_vlg_vec_tst
vcd file -direction d_latch.msim.vcd
vcd add -internal d_latch_vlg_vec_tst/*
vcd add -internal d_latch_vlg_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 200 simTimestamp
    }
}
after 200 simTimestamp
run -all
quit -f
