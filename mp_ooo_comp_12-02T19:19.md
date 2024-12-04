# AG Report mp_ooo_comp 2024-12-02T19:19:07-06:00 
Report generated at 2024-12-02T19:19:07-06:00, using commit ``b7cee86a898110114be1d3390068e201d153c032``

Autograder Run ID: 9a66388a-950e-48af-b03c-bc9990d764e8

Autograder Job ID: e67b94bd-74f8-4b22-a3ba-437defecdcb8

|Tests|Result|IPC|Delay (μs)|Power (mW)|PD<sup>3</sup>A<sup>½</sup>|
|---|---|--:|--:|--:|--:|
|SRAM|✅|
|compile|✅|
|lint|✅|
|synth|❌|

### Logs
<details><summary>SRAM ✅</summary> 

 ``` 
 make clean
make[1]: Entering directory '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram'
rm -rf output
mkdir output
touch output/.gitkeep
make[1]: Leaving directory '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram'
python3 sram.py
sync
make -j4 
make[1]: Entering directory '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram'
make clean
make[2]: Entering directory '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram'
rm -rf output
mkdir output
touch output/.gitkeep
make[2]: Leaving directory '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram'
python3 sram.py
sync
make -j4 mp_cache_tag_array mp_cache_data_array
make[2]: Entering directory '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram'
make[2]: warning: -j4 forced in submake: resetting jobserver mode.
source /srv/ece411ag/OpenRAM/miniconda/bin/activate ;\
python3 /srv/ece411ag/OpenRAM/compiler/../sram_compiler.py /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.py
source /srv/ece411ag/OpenRAM/miniconda/bin/activate ;\
python3 /srv/ece411ag/OpenRAM/compiler/../sram_compiler.py /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_data_array/mp_cache_data_array.py
|==============================================================================|
|=========                      OpenRAM v1.2.48                       =========|
|=========                                                            =========|
|=========               VLSI Design and Automation Lab               =========|
|=========        Computer Science and Engineering Department         =========|
|=========            University of California Santa Cruz             =========|
|=========                                                            =========|
|=========          Usage help: openram-user-group@ucsc.edu           =========|
|=========        Development help: openram-dev-group@ucsc.edu        =========|
|=========                See LICENSE for license info                =========|
|==============================================================================|
** Start: 12/02/2024 19:19:14
Technology: freepdk45
Total size: 384 bits
Word size: 24
Words: 16
Banks: 1
RW ports: 1
R-only ports: 0
W-only ports: 0
Design supply routing skipped. Supplies will have multiple must-connect pins. (route_supplies=True to enable supply routing).
DRC/LVS/PEX is only run on the top-level design to save run-time (inline_lvsdrc=True to do inline checking).
DRC/LVS/PEX is disabled (check_lvsdrc=True to enable).
Characterization is disabled (using analytical delay models) (analytical_delay=False to simulate).
Only generating nominal corner timing.
Words per row: None
Output files are: 
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.lvs
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.sp
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.v
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.lib
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.py
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.html
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.log
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.lef
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.gds
|==============================================================================|
|=========                      OpenRAM v1.2.48                       =========|
|=========                                                            =========|
|=========               VLSI Design and Automation Lab               =========|
|=========        Computer Science and Engineering Department         =========|
|=========            University of California Santa Cruz             =========|
|=========                                                            =========|
|=========          Usage help: openram-user-group@ucsc.edu           =========|
|=========        Development help: openram-dev-group@ucsc.edu        =========|
|=========                See LICENSE for license info                =========|
|==============================================================================|
** Start: 12/02/2024 19:19:14
Technology: freepdk45
Total size: 4096 bits
Word size: 256
Words: 16
Banks: 1
Write size: 8
RW ports: 1
R-only ports: 0
W-only ports: 0
Design supply routing skipped. Supplies will have multiple must-connect pins. (route_supplies=True to enable supply routing).
DRC/LVS/PEX is only run on the top-level design to save run-time (inline_lvsdrc=True to do inline checking).
DRC/LVS/PEX is disabled (check_lvsdrc=True to enable).
Characterization is disabled (using analytical delay models) (analytical_delay=False to simulate).
Only generating nominal corner timing.
Words per row: None
Output files are: 
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_data_array/mp_cache_data_array.lvs
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_data_array/mp_cache_data_array.sp
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_data_array/mp_cache_data_array.v
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_data_array/mp_cache_data_array.lib
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_data_array/mp_cache_data_array.py
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_data_array/mp_cache_data_array.html
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_data_array/mp_cache_data_array.log
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_data_array/mp_cache_data_array.lef
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_data_array/mp_cache_data_array.gds
** Submodules: 1.2 seconds
** Placement: 0.0 seconds
** Routing: 0.0 seconds
** Verification: 0.0 seconds
** SRAM creation: 1.3 seconds
SP: Writing to /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.sp
** Spice writing: 0.1 seconds
DELAY: Writing stimulus...
** DELAY: 0.1 seconds
GDS: Writing to /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.gds
** GDS: 0.5 seconds
LEF: Writing to /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.lef
** LEF: 0.0 seconds
LVS: Writing to /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.lvs.sp
** LVS writing: 0.0 seconds
LIB: Characterizing... 
** Characterization: 0.1 seconds
Config: Writing to /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.py
** Config: 0.0 seconds
Datasheet: Writing to /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.html
** Datasheet: 0.0 seconds
Verilog: Writing to /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.v
** Verilog: 0.0 seconds
Extended Config: Writing to /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_extended.py
** Extended Config: 0.0 seconds
** End: 2.2 seconds
sed -i -E 's/falling_edge/rising_edge/g' /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C.lib
source /srv/ece411ag/OpenRAM/miniconda/bin/activate ;\
python3 /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/area.py /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.gds > /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.area.txt
cat ./output/mp_cache_tag_array/mp_cache_tag_array.area.txt | xargs -I {} sed -i -E 's/area : .*/area : {}/g' output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C.lib
cd /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_tag_array ;\
lc_shell -x 'read_lib /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C.lib; write_lib mp_cache_tag_array_TT_1p0V_25C_lib; exit' ;\
rm -f lc*.log lc*.txt

                             Library Compiler (TM)
                                 DesignWare (R)

               Version R-2020.09-SP5 for linux64 - Apr 14, 2021 

                    Copyright (c) 1988 - 2021 Synopsys, Inc.
   This software and the associated documentation are proprietary to Synopsys,
 Inc. This software may only be used in accordance with the terms and conditions
 of a written license agreement with Synopsys, Inc. All other use, reproduction,
            or distribution of this software is strictly prohibited.
 
Initializing...
Reading '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C.lib' ...
Warning: Line 1, The 'internal_power_calculation' attribute in char_config group is required for NLPM library. 
	No default can be applied to this attribute. (LBDB-366)
Information: Line 74, Cell 'mp_cache_tag_array', The cell 'mp_cache_tag_array' contiains memory/memory_read/memory_write groups which are deprecated, use the is_memory_cell attribute instead. (LIBG-280)
Technology library 'mp_cache_tag_array_TT_1p0V_25C_lib' read successfully
Wrote the 'mp_cache_tag_array_TT_1p0V_25C_lib' library to 'mp_cache_tag_array_TT_1p0V_25C_lib.db' successfully
Maximum memory usage for this session: 84.32 MB
CPU usage for this session:      2 seconds (  0.00 hours)
Elapsed time for this session:      3 seconds (  0.00 hours)
Thank you for using Library Compiler.

Thank you...
** Submodules: 14.6 seconds
** Placement: 1.2 seconds
** Routing: 0.0 seconds
** Verification: 0.0 seconds
** SRAM creation: 15.7 seconds
SP: Writing to /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_data_array/mp_cache_data_array.sp
** Spice writing: 0.5 seconds
DELAY: Writing stimulus...
** DELAY: 0.6 seconds
GDS: Writing to /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_data_array/mp_cache_data_array.gds
** GDS: 2.5 seconds
LEF: Writing to /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_data_array/mp_cache_data_array.lef
** LEF: 0.0 seconds
LVS: Writing to /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_data_array/mp_cache_data_array.lvs.sp
** LVS writing: 0.1 seconds
LIB: Characterizing... 
** Characterization: 0.8 seconds
Config: Writing to /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_data_array/mp_cache_data_array.py
** Config: 0.0 seconds
Datasheet: Writing to /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_data_array/mp_cache_data_array.html
** Datasheet: 0.0 seconds
Verilog: Writing to /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_data_array/mp_cache_data_array.v
** Verilog: 0.0 seconds
Extended Config: Writing to /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_data_array/mp_cache_data_array_extended.py
** Extended Config: 0.0 seconds
** End: 20.3 seconds
sed -i -E 's/falling_edge/rising_edge/g' /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C.lib
source /srv/ece411ag/OpenRAM/miniconda/bin/activate ;\
python3 /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/area.py /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_data_array/mp_cache_data_array.gds > /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_data_array/mp_cache_data_array.area.txt
cat ./output/mp_cache_data_array/mp_cache_data_array.area.txt | xargs -I {} sed -i -E 's/area : .*/area : {}/g' output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C.lib
cd /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_data_array ;\
lc_shell -x 'read_lib /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C.lib; write_lib mp_cache_data_array_TT_1p0V_25C_lib; exit' ;\
rm -f lc*.log lc*.txt

                             Library Compiler (TM)
                                 DesignWare (R)

               Version R-2020.09-SP5 for linux64 - Apr 14, 2021 

                    Copyright (c) 1988 - 2021 Synopsys, Inc.
   This software and the associated documentation are proprietary to Synopsys,
 Inc. This software may only be used in accordance with the terms and conditions
 of a written license agreement with Synopsys, Inc. All other use, reproduction,
            or distribution of this software is strictly prohibited.
 
Initializing...
Reading '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C.lib' ...
Warning: Line 1, The 'internal_power_calculation' attribute in char_config group is required for NLPM library. 
	No default can be applied to this attribute. (LBDB-366)
Information: Line 82, Cell 'mp_cache_data_array', The cell 'mp_cache_data_array' contiains memory/memory_read/memory_write groups which are deprecated, use the is_memory_cell attribute instead. (LIBG-280)
Technology library 'mp_cache_data_array_TT_1p0V_25C_lib' read successfully
Wrote the 'mp_cache_data_array_TT_1p0V_25C_lib' library to 'mp_cache_data_array_TT_1p0V_25C_lib.db' successfully
Maximum memory usage for this session: 88.14 MB
CPU usage for this session:      3 seconds (  0.00 hours)
Elapsed time for this session:      3 seconds (  0.00 hours)
Thank you for using Library Compiler.

Thank you...
make[2]: Leaving directory '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram'
make[1]: Leaving directory '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram'
 
 ``` 

 </details> 
<details><summary>compile ✅</summary> 

 ``` 
 2000
0
mkdir -p vcs
python3 ../bin/rvfi_reference.py
cd vcs && vcs /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../pkg/types.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/cache.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/cache_arbiter.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/cacheline_adapter.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/cpu.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/execute.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/free_list.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/fu_add.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/fu_br.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/fu_div_rem.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/fu_mem.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/fu_mult.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/lru_array.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/memory_queue.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/phys_regfile.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/provided_cache.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/queue.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/rat.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/rename_dispatch.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/reservation_station.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/rob.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/rrat.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/stage1.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/stage2.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/test.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/valid_array.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/split_lsq.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hvl/common/dram_w_burst_frfcfs_controller.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hvl/common/mem_itf.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hvl/common/mon_itf.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hvl/common/monitor.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hvl/common/rvfimon.v /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hvl/vcs/top_tb.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../sram/output/mp_cache_data_array/mp_cache_data_array.v /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../sram/output/mp_cache_tag_array/mp_cache_tag_array.v /srv/software/Synopsys-2021_x86_64/icc/R-2020.09-SP4/dw/sim_ver/DW_mult_seq.v /srv/software/Synopsys-2021_x86_64/icc/R-2020.09-SP4/dw/sim_ver/DW_div_seq.v -licqueue -full64 -lca -sverilog -timescale=1ps/1ps -debug_acc+all -kdb -fsdb -suppress=LCA_FEATURES_ENABLED -msg_config=../vcs_warn.config -xprop=../xprop.config -xprop=flowctrl +incdir+/srv/software/Synopsys-2021_x86_64/icc/R-2020.09-SP4/dw/sim_ver +define+DW_SUPPRESS_WARN +incdir+/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hvl/vcs +incdir+/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hvl/common -l compile.log -top top_tb -o top_tb
                         Chronologic VCS (TM)
      Version R-2020.12-SP1-1_Full64 -- Mon Dec  2 19:19:46 2024

                    Copyright (c) 1991 - 2021 Synopsys, Inc.
   This software and the associated documentation are proprietary to Synopsys,
 Inc. This software may only be used in accordance with the terms and conditions
 of a written license agreement with Synopsys, Inc. All other use, reproduction,
            or distribution of this software is strictly prohibited.

Reading Config file '../xprop.config'
Parsing design file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../pkg/types.sv'
Parsing design file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/cache.sv'
Parsing design file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/cache_arbiter.sv'
Parsing design file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/cacheline_adapter.sv'
Parsing design file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/cpu.sv'
Parsing design file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/execute.sv'
Parsing design file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/free_list.sv'
Parsing design file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/fu_add.sv'
Parsing design file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/fu_br.sv'
Parsing design file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/fu_div_rem.sv'
Parsing design file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/fu_mem.sv'
Parsing design file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/fu_mult.sv'
Parsing design file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/lru_array.sv'
Parsing design file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/memory_queue.sv'
Parsing design file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/phys_regfile.sv'
Parsing design file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/provided_cache.sv'
Parsing design file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/queue.sv'
Parsing design file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/rat.sv'
Parsing design file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/rename_dispatch.sv'
Parsing design file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/reservation_station.sv'
Parsing design file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/rob.sv'
Parsing design file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/rrat.sv'
Parsing design file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/stage1.sv'
Parsing design file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/stage2.sv'
Parsing design file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/test.sv'
Parsing design file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/valid_array.sv'
Parsing design file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/split_lsq.sv'
Parsing design file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hvl/common/dram_w_burst_frfcfs_controller.sv'
Parsing design file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hvl/common/mem_itf.sv'
Parsing design file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hvl/common/mon_itf.sv'
Parsing design file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hvl/common/monitor.sv'
Parsing design file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hvl/common/rvfimon.v'
Parsing design file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hvl/vcs/top_tb.sv'
Parsing included file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hvl/common/rvfi_reference.svh'.
Back to file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hvl/vcs/top_tb.sv'.
Parsing design file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../sram/output/mp_cache_data_array/mp_cache_data_array.v'
Parsing design file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../sram/output/mp_cache_tag_array/mp_cache_tag_array.v'
Parsing design file '/srv/software/Synopsys-2021_x86_64/icc/R-2020.09-SP4/dw/sim_ver/DW_mult_seq.v'
Parsing design file '/srv/software/Synopsys-2021_x86_64/icc/R-2020.09-SP4/dw/sim_ver/DW_div_seq.v'
Parsing included file '/srv/software/Synopsys-2021_x86_64/icc/R-2020.09-SP4/dw/sim_ver/DW_div_function.inc'.
Back to file '/srv/software/Synopsys-2021_x86_64/icc/R-2020.09-SP4/dw/sim_ver/DW_div_seq.v'.
Top Level Modules:
       top_tb
TimeScale is 1 ps / 1 ps
Notice: Ports coerced to inout, use -notice for details
Starting vcs inline pass...
77 modules and 0 UDP read.
recompiling package rv32i_types
recompiling module cache
recompiling module cache_arbiter
recompiling module cacheline_adapter
recompiling module cpu
recompiling module execute
recompiling module free_list
recompiling module fu_br
recompiling module fu_div_rem
recompiling module fu_mem
recompiling module fu_mult
recompiling module phys_regfile
recompiling module queue
recompiling module rat
recompiling module rename_dispatch
recompiling module reservation_station
recompiling module rob
recompiling module rrat
recompiling module stage_1
recompiling module stage_2
recompiling module valid_array
recompiling module mem_itf_banked
recompiling module mon_itf
recompiling module riscv_formal_monitor_rv32imc
recompiling module riscv_formal_monitor_rv32imc_rob
recompiling module riscv_formal_monitor_rv32imc_isa_spec
recompiling module riscv_formal_monitor_rv32imc_insn_c_jr
recompiling module riscv_formal_monitor_rv32imc_insn_c_li
recompiling module riscv_formal_monitor_rv32imc_insn_c_lui
recompiling module riscv_formal_monitor_rv32imc_insn_c_lw
recompiling module riscv_formal_monitor_rv32imc_insn_c_lwsp
recompiling module riscv_formal_monitor_rv32imc_insn_c_mv
recompiling module riscv_formal_monitor_rv32imc_insn_c_or
recompiling module riscv_formal_monitor_rv32imc_insn_c_slli
recompiling module riscv_formal_monitor_rv32imc_insn_c_srai
recompiling module riscv_formal_monitor_rv32imc_insn_c_srli
recompiling module riscv_formal_monitor_rv32imc_insn_c_sub
recompiling module riscv_formal_monitor_rv32imc_insn_c_sw
recompiling module riscv_formal_monitor_rv32imc_insn_c_swsp
recompiling module riscv_formal_monitor_rv32imc_insn_c_xor
recompiling module riscv_formal_monitor_rv32imc_insn_divu
recompiling module riscv_formal_monitor_rv32imc_insn_jal
recompiling module riscv_formal_monitor_rv32imc_insn_jalr
recompiling module riscv_formal_monitor_rv32imc_insn_lb
recompiling module riscv_formal_monitor_rv32imc_insn_lbu
recompiling module riscv_formal_monitor_rv32imc_insn_lh
recompiling module riscv_formal_monitor_rv32imc_insn_lhu
recompiling module riscv_formal_monitor_rv32imc_insn_lui
recompiling module riscv_formal_monitor_rv32imc_insn_lw
recompiling module riscv_formal_monitor_rv32imc_insn_mul
50 of 77 modules done
recompiling module riscv_formal_monitor_rv32imc_insn_mulh
recompiling module riscv_formal_monitor_rv32imc_insn_mulhsu
recompiling module riscv_formal_monitor_rv32imc_insn_mulhu
recompiling module riscv_formal_monitor_rv32imc_insn_or
recompiling module riscv_formal_monitor_rv32imc_insn_ori
recompiling module riscv_formal_monitor_rv32imc_insn_remu
recompiling module riscv_formal_monitor_rv32imc_insn_sb
recompiling module riscv_formal_monitor_rv32imc_insn_sh
recompiling module riscv_formal_monitor_rv32imc_insn_sll
recompiling module riscv_formal_monitor_rv32imc_insn_slli
recompiling module riscv_formal_monitor_rv32imc_insn_slt
recompiling module riscv_formal_monitor_rv32imc_insn_slti
recompiling module riscv_formal_monitor_rv32imc_insn_sltiu
recompiling module riscv_formal_monitor_rv32imc_insn_sltu
recompiling module riscv_formal_monitor_rv32imc_insn_sra
recompiling module riscv_formal_monitor_rv32imc_insn_srai
recompiling module riscv_formal_monitor_rv32imc_insn_srl
recompiling module riscv_formal_monitor_rv32imc_insn_srli
recompiling module riscv_formal_monitor_rv32imc_insn_sub
recompiling module riscv_formal_monitor_rv32imc_insn_sw
recompiling module riscv_formal_monitor_rv32imc_insn_xor
recompiling module riscv_formal_monitor_rv32imc_insn_xori
recompiling module top_tb
recompiling module mp_cache_data_array
recompiling module mp_cache_tag_array
recompiling module DW_mult_seq
recompiling module DW_div_seq
All of 77 modules done
make[1]: Entering directory '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/vcs/csrc'
make[1]: Leaving directory '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/vcs/csrc'
make[1]: Entering directory '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/vcs/csrc'
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../top_tb ]; then chmod a-x ../top_tb; fi
g++  -o ../top_tb      -rdynamic  -Wl,-rpath='$ORIGIN'/top_tb.daidir -Wl,-rpath=./top_tb.daidir -Wl,-rpath=/srv/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib -L/srv/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib  -Wl,-rpath-link=./  /usr/lib64/libnuma.so.1   objs/amcQw_d.o   _97661_archive_1.so  SIM_l.o      rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o           -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /srv/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive        _vcs_pli_stub_.o   /srv/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib/vcs_save_restore_new.o /srv/software/Synopsys-2021_x86_64/verdi/R-2020.12-SP1-1/share/PLI/VCS/LINUX64/pli.a -ldl  -lc -lm -lpthread -ldl 
../top_tb up to date
make[1]: Leaving directory '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/vcs/csrc'
/srv/software/Synopsys-2021_x86_64/vcs-mx/O-2018.09-SP2-3/bin/vcs: line 31361: 100201 Segmentation fault      (core dumped) ${TOOL_HOME}/bin/cfs_ident_exec -f ${XML_INPUT_EXE} -o "${fsearchDir}/idents_tapi.xml" -o_SrcFile "${dirSrcFiles}/src_files_c" ${all_dyn_libs} > tapi_xml_writer.log
CPU time: 5.882 seconds to compile + 1.342 seconds to elab + .643 seconds to link
Verdi KDB elaboration done and the database successfully generated: 0 error(s), 0 warning(s)
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/cache_arbiter.sv:55 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/cache_arbiter.sv:136 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/cacheline_adapter.sv:31 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/cacheline_adapter.sv:52 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/cacheline_adapter.sv:96 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/cpu.sv:199 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/cpu.sv:221 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/execute.sv:81 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/execute.sv:103 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/execute.sv:115 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/execute.sv:262 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/free_list.sv:40 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/free_list.sv:76 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/free_list.sv:82 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/free_list.sv:94 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/fu_add.sv:35 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/fu_add.sv:49 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/fu_add.sv:68 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/fu_br.sv:36 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/fu_br.sv:56 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/fu_div_rem.sv:32 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/fu_div_rem.sv:83 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/fu_div_rem.sv:117 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/fu_mem.sv:27 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/fu_mult.sv:46 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/fu_mult.sv:76 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/fu_mult.sv:110 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/lru_array.sv:33 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/lru_array.sv:55 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/memory_queue.sv:76 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/memory_queue.sv:143 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/phys_regfile.sv:21 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/phys_regfile.sv:69 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/phys_regfile.sv:131 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/queue.sv:42 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/queue.sv:83 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/queue.sv:91 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/queue.sv:103 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/rat.sv:45 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/rat.sv:49 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/rat.sv:53 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/rat.sv:57 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/rat.sv:61 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/rat.sv:66 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/rat.sv:74 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/rat.sv:88 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/rat.sv:99 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/rename_dispatch.sv:52 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/rename_dispatch.sv:91 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/rename_dispatch.sv:103 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/reservation_station.sv:108 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/reservation_station.sv:193 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/reservation_station.sv:401 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/reservation_station.sv:607 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/reservation_station.sv:631 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/reservation_station.sv:654 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/reservation_station.sv:677 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/reservation_station.sv:700 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/reservation_station.sv:~741 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/reservation_station.sv:~745 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/reservation_station.sv:~749 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/reservation_station.sv:~753 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/reservation_station.sv:~757 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/reservation_station.sv:~761 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/reservation_station.sv:~765 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/reservation_station.sv:~769 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/reservation_station.sv:~773 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/reservation_station.sv:~777 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/rob.sv:116 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/rob.sv:269 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/rrat.sv:39 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/stage1.sv:54 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/stage2.sv:51 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/valid_array.sv:24 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/valid_array.sv:38 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../sram/output/mp_cache_data_array/mp_cache_data_array.v:41 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../sram/output/mp_cache_data_array/mp_cache_data_array.v:52 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../sram/output/mp_cache_tag_array/mp_cache_tag_array.v:37 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../sram/output/mp_cache_tag_array/mp_cache_tag_array.v:47 YES
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sim/../hdl/cache.sv:54 YES
==================================================
X P R O P   S T A T I S T I C S
instrumentable assignments:    1238
instrumented assignments:      1238
instrumentation success rate:  100%
[0;32mCompile Successful [0m
 
 ``` 

 </details> 
<details><summary>lint ✅</summary> 

 ``` 
 rm -rf spyglass-1 WORK *.log reports
mkdir -p reports
sg_shell -licqueue < lint.tcl |& tee reports/lint.log

                        SpyGlass Predictive Analyzer (R)
                              Synopsys TestMAX(TM)

              Version R-2020.12-SP1-1 for linux64 - Apr 27, 2021 

                    Copyright (c) 2001 - 2021 Synopsys, Inc.
   This software and the associated documentation are proprietary to Synopsys,
 Inc. This software may only be used in accordance with the terms and conditions
 of a written license agreement with Synopsys, Inc. All other use, reproduction,
            or distribution of this software is strictly prohibited.



To access quickstart manual, please use `man quickstart'


INFO:    It is recommended to set environment variable
         SNPSLMD_LICENSE_FILE for faster license checkout.
current_methodology: info: methodology is now `/srv/software/Synopsys-2021_x86_64/spyglass/R-2020.12-SP1-1/SPYGLASS_HOME/GuideWare/latest/block/rtl_handoff'
read_file: info: using default project `spyglass-1.prj'
current_goal: info: loading goal `Design_Read' with top `cpu' (in progress)
current_goal: info: finished loading goal `Design_Read' (ok)
current_goal: info: loading goal `lint/lint_turbo_rtl' with top `cpu' (in progress)
current_goal: info: finished loading goal `lint/lint_turbo_rtl' (ok)

INFO:    SpyGlass will run goal(s) 'lint/lint_turbo_rtl'.


 Auto-compiling gates libraries

        "/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db"
        "/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db"
    to
        "./spyglass-1/spyglass_cache/autogenerated_sglib/aggregate.sglib" ...done

 (Please refer to `./spyglass-1/spyglass_cache/autogenerated_sglib/lc/spyglass_lc_aggregate_reports/moresimple.rpt' for auto-compilation details)

 Using above compiled sglib for the current run ...

RULE-CHECKING IN MIXED MODE
Loading spyglass (SpyGlass_vR-2020.12-SP1-01) ... (picked from /srv/software/Synopsys-2021_x86_64/spyglass/R-2020.12-SP1-1/SPYGLASS_HOME/policies/spyglass)
Loading openmore (SpyGlass_vR-2020.12-SP1-01) ... (picked from /srv/software/Synopsys-2021_x86_64/spyglass/R-2020.12-SP1-1/SPYGLASS_HOME/policies/openmore)
Loading starc (SpyGlass_vR-2020.12-SP1-01) ... (picked from /srv/software/Synopsys-2021_x86_64/spyglass/R-2020.12-SP1-1/SPYGLASS_HOME/policies/starc)
Loading starc2005 (SpyGlass_vR-2020.12-SP1-01) ... (picked from /srv/software/Synopsys-2021_x86_64/spyglass/R-2020.12-SP1-1/SPYGLASS_HOME/policies/starc2005)
Loading erc (SpyGlass_vR-2020.12-SP1-01) ... (picked from /srv/software/Synopsys-2021_x86_64/spyglass/R-2020.12-SP1-1/SPYGLASS_HOME/policies/erc)
Loading simulation (SpyGlass_vR-2020.12-SP1-01) ... (picked from /srv/software/Synopsys-2021_x86_64/spyglass/R-2020.12-SP1-1/SPYGLASS_HOME/policies/simulation)
Loading lint (SpyGlass_vR-2020.12-SP1-01) ... (picked from /srv/software/Synopsys-2021_x86_64/spyglass/R-2020.12-SP1-1/SPYGLASS_HOME/policies/lint)
Loading latch (SpyGlass_vR-2020.12-SP1-01) ... (picked from /srv/software/Synopsys-2021_x86_64/spyglass/R-2020.12-SP1-1/SPYGLASS_HOME/policies/latch)
Loading morelint (SpyGlass_vR-2020.12-SP1-01) ... (picked from /srv/software/Synopsys-2021_x86_64/spyglass/R-2020.12-SP1-1/SPYGLASS_HOME/policies/morelint)
Loading timing (SpyGlass_vR-2020.12-SP1-01) ... (picked from /srv/software/Synopsys-2021_x86_64/spyglass/R-2020.12-SP1-1/SPYGLASS_HOME/policies/timing)
Loading auto-verify (SpyGlass_vR-2020.12-SP1-01) ... (picked from /srv/software/Synopsys-2021_x86_64/spyglass/R-2020.12-SP1-1/SPYGLASS_HOME/policies/auto-verify)
Loading starc2002 (SpyGlass_vR-2020.12-SP1-01) ... (picked from /srv/software/Synopsys-2021_x86_64/spyglass/R-2020.12-SP1-1/SPYGLASS_HOME/policies/starc2002)

WARNING [333]    Unable to open file /srv/software/Synopsys-2021_x86_64/spyglass/R-2020.12-SP1-1/SPYGLASS_HOME/auxi/policy_data/spyglass/sglib_version_summaryV2.txt in mode : 'r' (Reason: No such file or directory)
 Reading sgdc file "/srv/software/Synopsys-2021_x86_64/spyglass/R-2020.12-SP1-1/SPYGLASS_HOME/auxi/policy_data/auto-verify/verif.sgdc" ...
Performing unification checks on SGDC... done
Reading specified sglib files(s) ....
   Processing library: 'mp_cache_data_array_TT_1p0V_25C_lib' .... done
   Processing library: 'mp_cache_tag_array_TT_1p0V_25C_lib' .... done
Checking Rule AutoGenerateSglib (Rule 1 of total 325) .... done (Time = 0.00s, Memory = 0.0K)

INFO [76]    Using './WORK/64' as the Work Directory for 64bit precompiled dump.
Checking Rule PrecompileLibCheck01 (Rule 2 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule PrecompileLibCheck02 (Rule 3 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule PrecompileLibCheck03 (Rule 4 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule PrecompileLibCheck04 (Rule 5 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule ReportSglibVersionSummary (Rule 6 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule ReportIgnoredOverlappingRules (Rule 7 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule TurboModeStatus (Rule 8 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule AbstractInterface (Rule 9 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_assume_path01 (Rule 10 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_sdcschema02 (Rule 11 of total 325) .... done (Time = 0.00s, Memory = 32.0K)
Checking Rule SGDC_clock05 (Rule 12 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_clock09 (Rule 13 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_force_ta05 (Rule 14 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_require_path03 (Rule 15 of total 325) .... done (Time = 0.00s, Memory = 40.0K)
Checking Rule SGDC_require_value03 (Rule 16 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_voltagedomain05 (Rule 17 of total 325) .... done (Time = 0.00s, Memory = -32.0K)
Checking Rule SGDC_voltagedomain06 (Rule 18 of total 325) .... done (Time = 0.00s, Memory = 8.0K)
Checking Rule SGDC_voltagedomain07 (Rule 19 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_powerdomainoutputs02 (Rule 20 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_supply01 (Rule 21 of total 325) .... done (Time = 0.00s, Memory = 8.0K)
Checking Rule SGDC_waive01 (Rule 22 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_waive02 (Rule 23 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_waive03 (Rule 24 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_waive04 (Rule 25 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_waive05 (Rule 26 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_waive06 (Rule 27 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_waive07 (Rule 28 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_waive08 (Rule 29 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_waive09 (Rule 30 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_waive10 (Rule 31 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_waive11 (Rule 32 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_waive12 (Rule 33 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_waive13 (Rule 34 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_waive21 (Rule 35 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_waive22 (Rule 36 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_waive30 (Rule 37 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_waive32 (Rule 38 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_waive33 (Rule 39 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_waive36 (Rule 40 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_waive38 (Rule 41 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_fifo01 (Rule 42 of total 325) .... done (Time = 0.00s, Memory = 32.0K)
Checking Rule SGDC_libgroup01 (Rule 43 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_libgroup02 (Rule 44 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_libgroup04 (Rule 45 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_power_data01 (Rule 46 of total 325) .... done (Time = 0.00s, Memory = -32.0K)
Checking Rule SGDC_ungroup01 (Rule 47 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_abstract_port06 (Rule 48 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_abstract_port14 (Rule 49 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_abstract_port15 (Rule 50 of total 325) .... done (Time = 0.00s, Memory = 16.0K)
Checking Rule SGDC_abstract_port18 (Rule 51 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule sdc_init_rule (Rule 52 of total 325) .... done (Time = 0.00s, Memory = -32.0K)
Checking Rule CMD_ignorelibs01 (Rule 53 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule ReportRuleNotRun (Rule 54 of total 325) .... done (Time = 0.02s, Memory = 0.0K)
Checking Rule STARC05-2.3.1.2c (Rule 55 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W442a (Rule 56 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W442b (Rule 57 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W442c (Rule 58 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W442f (Rule 59 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule mixedsenselist (Rule 60 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule badimplicitSM1 (Rule 61 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule badimplicitSM2 (Rule 62 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule badimplicitSM4 (Rule 63 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule bothedges (Rule 64 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule BlockHeader (Rule 65 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W421 (Rule 66 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_license01 (Rule 67 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_setup_checks01 (Rule 68 of total 325) .... done (Time = 0.00s, Memory = 16.0K)
Checking Rule Av_sanity01 (Rule 69 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.1.6.5 (Rule 70 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule ReportStopSummary (Rule 71 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule ReportIgnoreSummary (Rule 72 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
 Analyzing source file "/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../pkg/types.sv" ....
 Analyzing source file "/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/cache.sv" ....
 Analyzing source file "/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/cache_arbiter.sv" ....
 Analyzing source file "/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/cacheline_adapter.sv" ....
 Analyzing source file "/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/cpu.sv" ....
 Analyzing source file "/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/execute.sv" ....
 Analyzing source file "/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/free_list.sv" ....
 Analyzing source file "/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/fu_add.sv" ....
 Analyzing source file "/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/fu_br.sv" ....
 Analyzing source file "/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/fu_div_rem.sv" ....
 Analyzing source file "/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/fu_mem.sv" ....
 Analyzing source file "/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/fu_mult.sv" ....
 Analyzing source file "/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/lru_array.sv" ....
 Analyzing source file "/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/memory_queue.sv" ....
 Analyzing source file "/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/phys_regfile.sv" ....
 Analyzing source file "/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/provided_cache.sv" ....
 Analyzing source file "/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/queue.sv" ....
 Analyzing source file "/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/rat.sv" ....
 Analyzing source file "/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/rename_dispatch.sv" ....
 Analyzing source file "/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/reservation_station.sv" ....
 Analyzing source file "/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/rob.sv" ....
 Analyzing source file "/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/rrat.sv" ....
 Analyzing source file "/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/stage1.sv" ....
 Analyzing source file "/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/stage2.sv" ....
 Analyzing source file "/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/test.sv" ....
 Analyzing source file "/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/valid_array.sv" ....
 Analyzing source file "/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/split_lsq.sv" ....
 Elaborating Top Verilog Design Unit 'cpu' ..... done
Checking Rule ElabSummary (Rule 73 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule ReportCheckDataSummary (Rule 74 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule IgnoredLibCells (Rule 75 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
 Reading waiver file "./spyglass-1/cpu/lint/lint_turbo_rtl/spyglass_spysch/constraint/spg_autogenerated_waivers.sgdc" ...
 Generating WAIVER file "./spyglass-1/cpu/lint/lint_turbo_rtl/spyglass_spysch/waiver/pragma2Waiver.swl" from pragmas in HDL source files ....
Checking Rule DetectTopDesignUnits (Rule 76 of total 325)
 Detected 1 top level design units:
     cpu
 .... done (Time = 0.00s, Memory = 0.0K)
Performing semantic checks on SGDC contents
Checking Rule SGDC_testmode03 (Rule 77 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule ReportObsoletePragmas (Rule 78 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule GenerateConfMap (Rule 79 of total 325) .... done (Time = 0.00s, Memory = -32.0K)
Checking Rule HdlLibDuCheck (Rule 80 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
Checking Rule RtlDesignInfo (Rule 81 of total 325) .... done (Time = 0.00s, Memory = 8.0K)
Checking Rule W339a (Rule 82 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
Checking Rule W416 (Rule 83 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule mixedsenselist (Rule 84 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W110a (Rule 85 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule preReq_ConsCase (Rule 86 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule CheckCelldefine (Rule 87 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_waive23 (Rule 88 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_waive26 (Rule 89 of total 325) .... done (Time = 0.00s, Memory = 24.0K)
Checking Rule SGDC_waive27 (Rule 90 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_waive29 (Rule 91 of total 325) .... done (Time = 0.00s, Memory = 8.0K)
Checking Rule STARC05-2.1.4.5 (Rule 92 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.3.1.5b (Rule 93 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.3.3.1 (Rule 94 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.3.3.1 (Rule 95 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.11.3.1 (Rule 96 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W317 (Rule 97 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W422 (Rule 98 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W426 (Rule 99 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W480 (Rule 100 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W481a (Rule 101 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
Checking Rule W481b (Rule 102 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W422 (Rule 103 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W292 (Rule 104 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W71 (Rule 105 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W287b (Rule 106 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W293 (Rule 107 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W398 (Rule 108 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W421 (Rule 109 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W424 (Rule 110 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W467 (Rule 111 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Prereqs_RegInputOutputs (Rule 112 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule PragmaComments-ML (Rule 113 of total 325) .... done (Time = 0.00s, Memory = 24.0K)
Checking Rule PragmaComments-ML (Rule 114 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule CheckDelayTimescale-ML (Rule 115 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
Checking Rule Prereqs_CheckTimeUnitandPrecision-ML (Rule 116 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit cpu
    Checking Rule Prereqs_InferLatch (Rule 117 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.5.3 (Rule 118 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.2.3.3 (Rule 119 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.3.1.6 (Rule 120 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.2.3 (Rule 121 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.3.2a (Rule 122 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.11.3.1 (Rule 123 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.3.1 (Rule 124 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4a (Rule 125 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4b (Rule 126 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule sim_race02 (Rule 127 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W110 (Rule 128 of total 325) .... done (Time = 0.00s, Memory = 264.0K)
    Checking Rule W122 (Rule 129 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496a (Rule 130 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496b (Rule 131 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W19 (Rule 132 of total 325) .... done (Time = 0.00s, Memory = 8.0K)
    Checking Rule W66 (Rule 133 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 134 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 135 of total 325) .... done (Time = 0.00s, Memory = 88.0K)
    Checking Rule W156 (Rule 136 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
    Checking Rule W215 (Rule 137 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W216 (Rule 138 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W218 (Rule 139 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W224 (Rule 140 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W263 (Rule 141 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W289 (Rule 142 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W337 (Rule 143 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W416 (Rule 144 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W352 (Rule 145 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W362 (Rule 146 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.01s, Memory = 32.0K)
    Checking Rule W486 (Rule 148 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W499 (Rule 149 of total 325) .... done (Time = 0.00s, Memory = 32.0K)
    Checking Rule W502 (Rule 150 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 151 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 152 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 153 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W156 (Rule 154 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W71 (Rule 155 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 156 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 157 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W287a (Rule 158 of total 325) .... done (Time = 0.01s, Memory = 264.0K)
    Checking Rule W293 (Rule 159 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W398 (Rule 160 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W424 (Rule 161 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W467 (Rule 162 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 163 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 164 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 165 of total 325) .... done (Time = 0.02s, Memory = 104.0K)
    Checking Rule W528 (Rule 166 of total 325) .... done (Time = 0.00s, Memory = 608.0K)
    Checking Rule Prereqs_Usage (Rule 167 of total 325) .... done (Time = 0.00s, Memory = -56.0K)
    Checking Rule Prereqs_ConstantInput-ML (Rule 168 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ReportPortInfo-ML (Rule 169 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 170 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 171 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoAssignX-ML (Rule 172 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ParamWidthMismatch-ML (Rule 173 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Postreqs_Usage_ML (Rule 174 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoXInCase-ML (Rule 175 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit cache
    Checking Rule Prereqs_InferLatch (Rule 117 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.5.3 (Rule 118 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.2.3.3 (Rule 119 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.3.1.6 (Rule 120 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.2.3 (Rule 121 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.3.2a (Rule 122 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.11.3.1 (Rule 123 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.3.1 (Rule 124 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4a (Rule 125 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4b (Rule 126 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule sim_race02 (Rule 127 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W110 (Rule 128 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 129 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496a (Rule 130 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496b (Rule 131 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W19 (Rule 132 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W66 (Rule 133 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 134 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 135 of total 325) .... done (Time = 0.00s, Memory = 16.0K)
    Checking Rule W156 (Rule 136 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W215 (Rule 137 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W216 (Rule 138 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W218 (Rule 139 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W224 (Rule 140 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W263 (Rule 141 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W289 (Rule 142 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W337 (Rule 143 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W416 (Rule 144 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W352 (Rule 145 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W362 (Rule 146 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W486 (Rule 148 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W499 (Rule 149 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W502 (Rule 150 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 151 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 152 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 153 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W156 (Rule 154 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W71 (Rule 155 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 156 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 157 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W287a (Rule 158 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W293 (Rule 159 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W398 (Rule 160 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W424 (Rule 161 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
    Checking Rule W467 (Rule 162 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 163 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 164 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 165 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 166 of total 325) .... done (Time = 0.00s, Memory = 608.0K)
    Checking Rule Prereqs_Usage (Rule 167 of total 325) .... done (Time = 0.00s, Memory = -16.0K)
    Checking Rule Prereqs_ConstantInput-ML (Rule 168 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ReportPortInfo-ML (Rule 169 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 170 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 171 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoAssignX-ML (Rule 172 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ParamWidthMismatch-ML (Rule 173 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Postreqs_Usage_ML (Rule 174 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoXInCase-ML (Rule 175 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit stage_1
    Checking Rule Prereqs_InferLatch (Rule 117 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.5.3 (Rule 118 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.2.3.3 (Rule 119 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.3.1.6 (Rule 120 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.2.3 (Rule 121 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.3.2a (Rule 122 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.11.3.1 (Rule 123 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.3.1 (Rule 124 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4a (Rule 125 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4b (Rule 126 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule sim_race02 (Rule 127 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W110 (Rule 128 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 129 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496a (Rule 130 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496b (Rule 131 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W19 (Rule 132 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W66 (Rule 133 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 134 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 135 of total 325) .... done (Time = 0.00s, Memory = 16.0K)
    Checking Rule W156 (Rule 136 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W215 (Rule 137 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W216 (Rule 138 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W218 (Rule 139 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W224 (Rule 140 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W263 (Rule 141 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W289 (Rule 142 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W337 (Rule 143 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W416 (Rule 144 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W352 (Rule 145 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W362 (Rule 146 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W486 (Rule 148 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W499 (Rule 149 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W502 (Rule 150 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 151 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 152 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 153 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W156 (Rule 154 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W71 (Rule 155 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 156 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 157 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W287a (Rule 158 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W293 (Rule 159 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W398 (Rule 160 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W424 (Rule 161 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W467 (Rule 162 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 163 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 164 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 165 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 166 of total 325) .... done (Time = 0.00s, Memory = 608.0K)
    Checking Rule Prereqs_Usage (Rule 167 of total 325) .... done (Time = 0.00s, Memory = -16.0K)
    Checking Rule Prereqs_ConstantInput-ML (Rule 168 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ReportPortInfo-ML (Rule 169 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 170 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 171 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoAssignX-ML (Rule 172 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ParamWidthMismatch-ML (Rule 173 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Postreqs_Usage_ML (Rule 174 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoXInCase-ML (Rule 175 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit stage_2
    Checking Rule Prereqs_InferLatch (Rule 117 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.5.3 (Rule 118 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.2.3.3 (Rule 119 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.3.1.6 (Rule 120 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.2.3 (Rule 121 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.3.2a (Rule 122 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.11.3.1 (Rule 123 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.3.1 (Rule 124 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4a (Rule 125 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4b (Rule 126 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule sim_race02 (Rule 127 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W110 (Rule 128 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 129 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496a (Rule 130 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496b (Rule 131 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W19 (Rule 132 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W66 (Rule 133 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 134 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 135 of total 325) .... done (Time = 0.00s, Memory = 16.0K)
    Checking Rule W156 (Rule 136 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W215 (Rule 137 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W216 (Rule 138 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W218 (Rule 139 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W224 (Rule 140 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W263 (Rule 141 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W289 (Rule 142 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W337 (Rule 143 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W416 (Rule 144 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W352 (Rule 145 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W362 (Rule 146 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W486 (Rule 148 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W499 (Rule 149 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W502 (Rule 150 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 151 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 152 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 153 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W156 (Rule 154 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W71 (Rule 155 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 156 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 157 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W287a (Rule 158 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W293 (Rule 159 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W398 (Rule 160 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W424 (Rule 161 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W467 (Rule 162 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 163 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 164 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 165 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 166 of total 325) .... done (Time = 0.00s, Memory = 608.0K)
    Checking Rule Prereqs_Usage (Rule 167 of total 325) .... done (Time = 0.00s, Memory = -16.0K)
    Checking Rule Prereqs_ConstantInput-ML (Rule 168 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ReportPortInfo-ML (Rule 169 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 170 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 171 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoAssignX-ML (Rule 172 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ParamWidthMismatch-ML (Rule 173 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Postreqs_Usage_ML (Rule 174 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoXInCase-ML (Rule 175 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit lru_array
    Checking Rule Prereqs_InferLatch (Rule 117 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.5.3 (Rule 118 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.2.3.3 (Rule 119 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.3.1.6 (Rule 120 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.2.3 (Rule 121 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.3.2a (Rule 122 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.11.3.1 (Rule 123 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.3.1 (Rule 124 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4a (Rule 125 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4b (Rule 126 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule sim_race02 (Rule 127 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W110 (Rule 128 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 129 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496a (Rule 130 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496b (Rule 131 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W19 (Rule 132 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W66 (Rule 133 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 134 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 135 of total 325) .... done (Time = 0.00s, Memory = 16.0K)
    Checking Rule W156 (Rule 136 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W215 (Rule 137 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W216 (Rule 138 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W218 (Rule 139 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W224 (Rule 140 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W263 (Rule 141 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W289 (Rule 142 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W337 (Rule 143 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W416 (Rule 144 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W352 (Rule 145 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W362 (Rule 146 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W486 (Rule 148 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W499 (Rule 149 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W502 (Rule 150 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 151 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 152 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 153 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W156 (Rule 154 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W71 (Rule 155 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 156 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 157 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W287a (Rule 158 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W293 (Rule 159 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W398 (Rule 160 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W424 (Rule 161 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W467 (Rule 162 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 163 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 164 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 165 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 166 of total 325) .... done (Time = 0.00s, Memory = 608.0K)
    Checking Rule Prereqs_Usage (Rule 167 of total 325) .... done (Time = 0.00s, Memory = -16.0K)
    Checking Rule Prereqs_ConstantInput-ML (Rule 168 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ReportPortInfo-ML (Rule 169 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 170 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 171 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoAssignX-ML (Rule 172 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ParamWidthMismatch-ML (Rule 173 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Postreqs_Usage_ML (Rule 174 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoXInCase-ML (Rule 175 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit valid_array
    Checking Rule Prereqs_InferLatch (Rule 117 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.5.3 (Rule 118 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.2.3.3 (Rule 119 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.3.1.6 (Rule 120 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.2.3 (Rule 121 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.3.2a (Rule 122 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.11.3.1 (Rule 123 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.3.1 (Rule 124 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4a (Rule 125 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4b (Rule 126 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule sim_race02 (Rule 127 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W110 (Rule 128 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 129 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496a (Rule 130 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496b (Rule 131 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W19 (Rule 132 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W66 (Rule 133 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 134 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 135 of total 325) .... done (Time = 0.00s, Memory = 16.0K)
    Checking Rule W156 (Rule 136 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W215 (Rule 137 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W216 (Rule 138 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W218 (Rule 139 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W224 (Rule 140 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W263 (Rule 141 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W289 (Rule 142 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W337 (Rule 143 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W416 (Rule 144 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W352 (Rule 145 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W362 (Rule 146 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W486 (Rule 148 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W499 (Rule 149 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W502 (Rule 150 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 151 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 152 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 153 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W156 (Rule 154 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W71 (Rule 155 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 156 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 157 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W287a (Rule 158 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W293 (Rule 159 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W398 (Rule 160 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W424 (Rule 161 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W467 (Rule 162 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 163 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 164 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 165 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 166 of total 325) .... done (Time = 0.00s, Memory = 608.0K)
    Checking Rule Prereqs_Usage (Rule 167 of total 325) .... done (Time = 0.00s, Memory = -16.0K)
    Checking Rule Prereqs_ConstantInput-ML (Rule 168 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ReportPortInfo-ML (Rule 169 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 170 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 171 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoAssignX-ML (Rule 172 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ParamWidthMismatch-ML (Rule 173 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Postreqs_Usage_ML (Rule 174 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoXInCase-ML (Rule 175 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit memory_queue
    Checking Rule Prereqs_InferLatch (Rule 117 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.5.3 (Rule 118 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.2.3.3 (Rule 119 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.3.1.6 (Rule 120 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.2.3 (Rule 121 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.3.2a (Rule 122 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.11.3.1 (Rule 123 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.3.1 (Rule 124 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4a (Rule 125 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4b (Rule 126 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule sim_race02 (Rule 127 of total 325) .... done (Time = 0.00s, Memory = 256.0K)
    Checking Rule W110 (Rule 128 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 129 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496a (Rule 130 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496b (Rule 131 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W19 (Rule 132 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W66 (Rule 133 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 134 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 135 of total 325) .... done (Time = 0.00s, Memory = 32.0K)
    Checking Rule W156 (Rule 136 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W215 (Rule 137 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W216 (Rule 138 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W218 (Rule 139 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W224 (Rule 140 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W263 (Rule 141 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W289 (Rule 142 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W337 (Rule 143 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W416 (Rule 144 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W352 (Rule 145 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W362 (Rule 146 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.01s, Memory = 88.0K)
    Checking Rule W486 (Rule 148 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W499 (Rule 149 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W502 (Rule 150 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 151 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 152 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 153 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W156 (Rule 154 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W71 (Rule 155 of total 325) .... done (Time = 0.00s, Memory = 32.0K)
    Checking Rule W240 (Rule 156 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 157 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W287a (Rule 158 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W293 (Rule 159 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W398 (Rule 160 of total 325) .... done (Time = 0.00s, Memory = 32.0K)
    Checking Rule W424 (Rule 161 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W467 (Rule 162 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 163 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 164 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 165 of total 325) .... done (Time = 0.01s, Memory = 8.0K)
    Checking Rule W528 (Rule 166 of total 325) .... done (Time = 0.00s, Memory = 608.0K)
    Checking Rule Prereqs_Usage (Rule 167 of total 325) .... done (Time = 0.00s, Memory = -32.0K)
    Checking Rule Prereqs_ConstantInput-ML (Rule 168 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ReportPortInfo-ML (Rule 169 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 170 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 171 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoAssignX-ML (Rule 172 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ParamWidthMismatch-ML (Rule 173 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Postreqs_Usage_ML (Rule 174 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoXInCase-ML (Rule 175 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit cache_arbiter
    Checking Rule Prereqs_InferLatch (Rule 117 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.5.3 (Rule 118 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.2.3.3 (Rule 119 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.3.1.6 (Rule 120 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.2.3 (Rule 121 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.3.2a (Rule 122 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.11.3.1 (Rule 123 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.3.1 (Rule 124 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4a (Rule 125 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4b (Rule 126 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule sim_race02 (Rule 127 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W110 (Rule 128 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 129 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496a (Rule 130 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496b (Rule 131 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W19 (Rule 132 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W66 (Rule 133 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 134 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 135 of total 325) .... done (Time = 0.00s, Memory = 16.0K)
    Checking Rule W156 (Rule 136 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W215 (Rule 137 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W216 (Rule 138 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W218 (Rule 139 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W224 (Rule 140 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W263 (Rule 141 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W289 (Rule 142 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W337 (Rule 143 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W416 (Rule 144 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W352 (Rule 145 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W362 (Rule 146 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W486 (Rule 148 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W499 (Rule 149 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W502 (Rule 150 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 151 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 152 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 153 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W156 (Rule 154 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W71 (Rule 155 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 156 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 157 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W287a (Rule 158 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W293 (Rule 159 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W398 (Rule 160 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W424 (Rule 161 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W467 (Rule 162 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 163 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 164 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 165 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 166 of total 325) .... done (Time = 0.00s, Memory = 608.0K)
    Checking Rule Prereqs_Usage (Rule 167 of total 325) .... done (Time = 0.00s, Memory = -16.0K)
    Checking Rule Prereqs_ConstantInput-ML (Rule 168 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ReportPortInfo-ML (Rule 169 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 170 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 171 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoAssignX-ML (Rule 172 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ParamWidthMismatch-ML (Rule 173 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Postreqs_Usage_ML (Rule 174 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoXInCase-ML (Rule 175 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit cacheline_adapter
    Checking Rule Prereqs_InferLatch (Rule 117 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.5.3 (Rule 118 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.2.3.3 (Rule 119 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.3.1.6 (Rule 120 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.2.3 (Rule 121 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.3.2a (Rule 122 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.11.3.1 (Rule 123 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.3.1 (Rule 124 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4a (Rule 125 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4b (Rule 126 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule sim_race02 (Rule 127 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W110 (Rule 128 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 129 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496a (Rule 130 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496b (Rule 131 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W19 (Rule 132 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W66 (Rule 133 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 134 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 135 of total 325) .... done (Time = 0.00s, Memory = 16.0K)
    Checking Rule W156 (Rule 136 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W215 (Rule 137 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W216 (Rule 138 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W218 (Rule 139 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W224 (Rule 140 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W263 (Rule 141 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W289 (Rule 142 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W337 (Rule 143 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W416 (Rule 144 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W352 (Rule 145 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W362 (Rule 146 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W486 (Rule 148 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W499 (Rule 149 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W502 (Rule 150 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 151 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 152 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 153 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W156 (Rule 154 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W71 (Rule 155 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 156 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 157 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W287a (Rule 158 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W293 (Rule 159 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W398 (Rule 160 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W424 (Rule 161 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W467 (Rule 162 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 163 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 164 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 165 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 166 of total 325) .... done (Time = 0.00s, Memory = 608.0K)
    Checking Rule Prereqs_Usage (Rule 167 of total 325) .... done (Time = 0.00s, Memory = -16.0K)
    Checking Rule Prereqs_ConstantInput-ML (Rule 168 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ReportPortInfo-ML (Rule 169 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 170 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 171 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoAssignX-ML (Rule 172 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ParamWidthMismatch-ML (Rule 173 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Postreqs_Usage_ML (Rule 174 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoXInCase-ML (Rule 175 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit queue
    Checking Rule Prereqs_InferLatch (Rule 117 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.5.3 (Rule 118 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.2.3.3 (Rule 119 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.3.1.6 (Rule 120 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.2.3 (Rule 121 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.3.2a (Rule 122 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.11.3.1 (Rule 123 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.3.1 (Rule 124 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4a (Rule 125 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4b (Rule 126 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule sim_race02 (Rule 127 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W110 (Rule 128 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 129 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496a (Rule 130 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496b (Rule 131 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W19 (Rule 132 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W66 (Rule 133 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 134 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 135 of total 325) .... done (Time = 0.00s, Memory = 16.0K)
    Checking Rule W156 (Rule 136 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W215 (Rule 137 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W216 (Rule 138 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W218 (Rule 139 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W224 (Rule 140 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W263 (Rule 141 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W289 (Rule 142 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W337 (Rule 143 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W416 (Rule 144 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W352 (Rule 145 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W362 (Rule 146 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W486 (Rule 148 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W499 (Rule 149 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W502 (Rule 150 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 151 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 152 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 153 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W156 (Rule 154 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W71 (Rule 155 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 156 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 157 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W287a (Rule 158 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W293 (Rule 159 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W398 (Rule 160 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W424 (Rule 161 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W467 (Rule 162 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 163 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 164 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 165 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 166 of total 325) .... done (Time = 0.00s, Memory = 608.0K)
    Checking Rule Prereqs_Usage (Rule 167 of total 325) .... done (Time = 0.00s, Memory = -16.0K)
    Checking Rule Prereqs_ConstantInput-ML (Rule 168 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ReportPortInfo-ML (Rule 169 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 170 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 171 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoAssignX-ML (Rule 172 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ParamWidthMismatch-ML (Rule 173 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Postreqs_Usage_ML (Rule 174 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoXInCase-ML (Rule 175 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit rename_dispatch
    Checking Rule Prereqs_InferLatch (Rule 117 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.5.3 (Rule 118 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.2.3.3 (Rule 119 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.3.1.6 (Rule 120 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.2.3 (Rule 121 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.3.2a (Rule 122 of total 325) .... done (Time = 0.00s, Memory = 8.0K)
    Checking Rule STARC05-2.11.3.1 (Rule 123 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.3.1 (Rule 124 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4a (Rule 125 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4b (Rule 126 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule sim_race02 (Rule 127 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W110 (Rule 128 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 129 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496a (Rule 130 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496b (Rule 131 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W19 (Rule 132 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W66 (Rule 133 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 134 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
    Checking Rule W123 (Rule 135 of total 325) .... done (Time = 0.01s, Memory = 16.0K)
    Checking Rule W156 (Rule 136 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W215 (Rule 137 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W216 (Rule 138 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W218 (Rule 139 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W224 (Rule 140 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W263 (Rule 141 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W289 (Rule 142 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W337 (Rule 143 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W416 (Rule 144 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W352 (Rule 145 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W362 (Rule 146 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W486 (Rule 148 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W499 (Rule 149 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W502 (Rule 150 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 151 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 152 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 153 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W156 (Rule 154 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W71 (Rule 155 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 156 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 157 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W287a (Rule 158 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W293 (Rule 159 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W398 (Rule 160 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W424 (Rule 161 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W467 (Rule 162 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 163 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 164 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 165 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 166 of total 325) .... done (Time = 0.00s, Memory = 608.0K)
    Checking Rule Prereqs_Usage (Rule 167 of total 325) .... done (Time = 0.00s, Memory = -16.0K)
    Checking Rule Prereqs_ConstantInput-ML (Rule 168 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ReportPortInfo-ML (Rule 169 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 170 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 171 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoAssignX-ML (Rule 172 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ParamWidthMismatch-ML (Rule 173 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Postreqs_Usage_ML (Rule 174 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoXInCase-ML (Rule 175 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit rat
    Checking Rule Prereqs_InferLatch (Rule 117 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.5.3 (Rule 118 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.2.3.3 (Rule 119 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
    Checking Rule STARC05-2.3.1.6 (Rule 120 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.2.3 (Rule 121 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.3.2a (Rule 122 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.11.3.1 (Rule 123 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.3.1 (Rule 124 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4a (Rule 125 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4b (Rule 126 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule sim_race02 (Rule 127 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W110 (Rule 128 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 129 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496a (Rule 130 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496b (Rule 131 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W19 (Rule 132 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W66 (Rule 133 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 134 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 135 of total 325) .... done (Time = 0.00s, Memory = 16.0K)
    Checking Rule W156 (Rule 136 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W215 (Rule 137 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W216 (Rule 138 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W218 (Rule 139 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W224 (Rule 140 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W263 (Rule 141 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W289 (Rule 142 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W337 (Rule 143 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W416 (Rule 144 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W352 (Rule 145 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W362 (Rule 146 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.02s, Memory = 8.0K)
    Checking Rule W486 (Rule 148 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W499 (Rule 149 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W502 (Rule 150 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 151 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 152 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 153 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W156 (Rule 154 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W71 (Rule 155 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 156 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 157 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W287a (Rule 158 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W293 (Rule 159 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W398 (Rule 160 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W424 (Rule 161 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W467 (Rule 162 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 163 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 164 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 165 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 166 of total 325) .... done (Time = 0.00s, Memory = 608.0K)
    Checking Rule Prereqs_Usage (Rule 167 of total 325) .... done (Time = 0.00s, Memory = -16.0K)
    Checking Rule Prereqs_ConstantInput-ML (Rule 168 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ReportPortInfo-ML (Rule 169 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 170 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 171 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoAssignX-ML (Rule 172 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ParamWidthMismatch-ML (Rule 173 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Postreqs_Usage_ML (Rule 174 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoXInCase-ML (Rule 175 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit rob
    Checking Rule Prereqs_InferLatch (Rule 117 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.5.3 (Rule 118 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.2.3.3 (Rule 119 of total 325) .... done (Time = 0.01s, Memory = 8.0K)
    Checking Rule STARC05-2.3.1.6 (Rule 120 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.2.3 (Rule 121 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.3.2a (Rule 122 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.11.3.1 (Rule 123 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.3.1 (Rule 124 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4a (Rule 125 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4b (Rule 126 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule sim_race02 (Rule 127 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W110 (Rule 128 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 129 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496a (Rule 130 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496b (Rule 131 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W19 (Rule 132 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W66 (Rule 133 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 134 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 135 of total 325) .... done (Time = 0.00s, Memory = 24.0K)
    Checking Rule W156 (Rule 136 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W215 (Rule 137 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
    Checking Rule W216 (Rule 138 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W218 (Rule 139 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W224 (Rule 140 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W263 (Rule 141 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W289 (Rule 142 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W337 (Rule 143 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W416 (Rule 144 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W352 (Rule 145 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W362 (Rule 146 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.03s, Memory = 440.0K)
    Checking Rule W486 (Rule 148 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W499 (Rule 149 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W502 (Rule 150 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 151 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 152 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 153 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W156 (Rule 154 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W71 (Rule 155 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 156 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 157 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W287a (Rule 158 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W293 (Rule 159 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W398 (Rule 160 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W424 (Rule 161 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W467 (Rule 162 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 163 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 164 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 165 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
    Checking Rule W528 (Rule 166 of total 325) .... done (Time = 0.00s, Memory = 608.0K)
    Checking Rule Prereqs_Usage (Rule 167 of total 325) .... done (Time = 0.00s, Memory = -24.0K)
    Checking Rule Prereqs_ConstantInput-ML (Rule 168 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ReportPortInfo-ML (Rule 169 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 170 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 171 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoAssignX-ML (Rule 172 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ParamWidthMismatch-ML (Rule 173 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Postreqs_Usage_ML (Rule 174 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoXInCase-ML (Rule 175 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit rrat
    Checking Rule Prereqs_InferLatch (Rule 117 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.5.3 (Rule 118 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.2.3.3 (Rule 119 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.3.1.6 (Rule 120 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.2.3 (Rule 121 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.3.2a (Rule 122 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.11.3.1 (Rule 123 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.3.1 (Rule 124 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4a (Rule 125 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4b (Rule 126 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule sim_race02 (Rule 127 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W110 (Rule 128 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 129 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496a (Rule 130 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496b (Rule 131 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W19 (Rule 132 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W66 (Rule 133 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 134 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 135 of total 325) .... done (Time = 0.00s, Memory = 16.0K)
    Checking Rule W156 (Rule 136 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W215 (Rule 137 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W216 (Rule 138 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W218 (Rule 139 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W224 (Rule 140 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W263 (Rule 141 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W289 (Rule 142 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W337 (Rule 143 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W416 (Rule 144 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W352 (Rule 145 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W362 (Rule 146 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.02s, Memory = 264.0K)
    Checking Rule W486 (Rule 148 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W499 (Rule 149 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W502 (Rule 150 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 151 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 152 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 153 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W156 (Rule 154 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W71 (Rule 155 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 156 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 157 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W287a (Rule 158 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W293 (Rule 159 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W398 (Rule 160 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W424 (Rule 161 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W467 (Rule 162 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 163 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 164 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 165 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 166 of total 325) .... done (Time = 0.00s, Memory = 608.0K)
    Checking Rule Prereqs_Usage (Rule 167 of total 325) .... done (Time = 0.00s, Memory = -16.0K)
    Checking Rule Prereqs_ConstantInput-ML (Rule 168 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ReportPortInfo-ML (Rule 169 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 170 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 171 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoAssignX-ML (Rule 172 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ParamWidthMismatch-ML (Rule 173 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Postreqs_Usage_ML (Rule 174 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoXInCase-ML (Rule 175 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit free_list
    Checking Rule Prereqs_InferLatch (Rule 117 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.5.3 (Rule 118 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.2.3.3 (Rule 119 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
    Checking Rule STARC05-2.3.1.6 (Rule 120 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.2.3 (Rule 121 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.3.2a (Rule 122 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.11.3.1 (Rule 123 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.3.1 (Rule 124 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4a (Rule 125 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4b (Rule 126 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule sim_race02 (Rule 127 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W110 (Rule 128 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 129 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496a (Rule 130 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496b (Rule 131 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W19 (Rule 132 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W66 (Rule 133 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 134 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 135 of total 325) .... done (Time = 0.00s, Memory = 16.0K)
    Checking Rule W156 (Rule 136 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W215 (Rule 137 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W216 (Rule 138 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W218 (Rule 139 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W224 (Rule 140 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W263 (Rule 141 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W289 (Rule 142 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W337 (Rule 143 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W416 (Rule 144 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W352 (Rule 145 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W362 (Rule 146 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W486 (Rule 148 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W499 (Rule 149 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W502 (Rule 150 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 151 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 152 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 153 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W156 (Rule 154 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W71 (Rule 155 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 156 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 157 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W287a (Rule 158 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W293 (Rule 159 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W398 (Rule 160 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W424 (Rule 161 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W467 (Rule 162 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 163 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 164 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 165 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 166 of total 325) .... done (Time = 0.00s, Memory = 608.0K)
    Checking Rule Prereqs_Usage (Rule 167 of total 325) .... done (Time = 0.00s, Memory = -16.0K)
    Checking Rule Prereqs_ConstantInput-ML (Rule 168 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ReportPortInfo-ML (Rule 169 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 170 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 171 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoAssignX-ML (Rule 172 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ParamWidthMismatch-ML (Rule 173 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Postreqs_Usage_ML (Rule 174 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoXInCase-ML (Rule 175 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit phys_regfile
    Checking Rule Prereqs_InferLatch (Rule 117 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.5.3 (Rule 118 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.2.3.3 (Rule 119 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.3.1.6 (Rule 120 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.2.3 (Rule 121 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.3.2a (Rule 122 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.11.3.1 (Rule 123 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.3.1 (Rule 124 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4a (Rule 125 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4b (Rule 126 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule sim_race02 (Rule 127 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W110 (Rule 128 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 129 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496a (Rule 130 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496b (Rule 131 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W19 (Rule 132 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W66 (Rule 133 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 134 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 135 of total 325) .... done (Time = 0.01s, Memory = 16.0K)
    Checking Rule W156 (Rule 136 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W215 (Rule 137 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W216 (Rule 138 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W218 (Rule 139 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W224 (Rule 140 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W263 (Rule 141 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W289 (Rule 142 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W337 (Rule 143 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W416 (Rule 144 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W352 (Rule 145 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W362 (Rule 146 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.00s, Memory = 8.0K)
    Checking Rule W486 (Rule 148 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W499 (Rule 149 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W502 (Rule 150 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 151 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 152 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 153 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W156 (Rule 154 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W71 (Rule 155 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 156 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 157 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W287a (Rule 158 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W293 (Rule 159 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W398 (Rule 160 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W424 (Rule 161 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W467 (Rule 162 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 163 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 164 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 165 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 166 of total 325) .... done (Time = 0.00s, Memory = 608.0K)
    Checking Rule Prereqs_Usage (Rule 167 of total 325) .... done (Time = 0.00s, Memory = -16.0K)
    Checking Rule Prereqs_ConstantInput-ML (Rule 168 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ReportPortInfo-ML (Rule 169 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 170 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 171 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoAssignX-ML (Rule 172 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ParamWidthMismatch-ML (Rule 173 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Postreqs_Usage_ML (Rule 174 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoXInCase-ML (Rule 175 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit execute
    Checking Rule Prereqs_InferLatch (Rule 117 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.5.3 (Rule 118 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.2.3.3 (Rule 119 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.3.1.6 (Rule 120 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.2.3 (Rule 121 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.3.2a (Rule 122 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.11.3.1 (Rule 123 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
    Checking Rule STARC05-2.1.3.1 (Rule 124 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4a (Rule 125 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4b (Rule 126 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule sim_race02 (Rule 127 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W110 (Rule 128 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 129 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496a (Rule 130 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496b (Rule 131 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W19 (Rule 132 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W66 (Rule 133 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 134 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 135 of total 325) .... done (Time = 0.00s, Memory = 16.0K)
    Checking Rule W156 (Rule 136 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W215 (Rule 137 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W216 (Rule 138 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W218 (Rule 139 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W224 (Rule 140 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W263 (Rule 141 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W289 (Rule 142 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W337 (Rule 143 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W416 (Rule 144 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W352 (Rule 145 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W362 (Rule 146 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.00s, Memory = 16.0K)
    Checking Rule W486 (Rule 148 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W499 (Rule 149 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W502 (Rule 150 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 151 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 152 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 153 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W156 (Rule 154 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W71 (Rule 155 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
    Checking Rule W240 (Rule 156 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 157 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W287a (Rule 158 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W293 (Rule 159 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W398 (Rule 160 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W424 (Rule 161 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W467 (Rule 162 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 163 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 164 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 165 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 166 of total 325) .... done (Time = 0.00s, Memory = 608.0K)
    Checking Rule Prereqs_Usage (Rule 167 of total 325) .... done (Time = 0.00s, Memory = -16.0K)
    Checking Rule Prereqs_ConstantInput-ML (Rule 168 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ReportPortInfo-ML (Rule 169 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 170 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 171 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoAssignX-ML (Rule 172 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ParamWidthMismatch-ML (Rule 173 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Postreqs_Usage_ML (Rule 174 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoXInCase-ML (Rule 175 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit fu_add
    Checking Rule Prereqs_InferLatch (Rule 117 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.5.3 (Rule 118 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.2.3.3 (Rule 119 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.3.1.6 (Rule 120 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.2.3 (Rule 121 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.3.2a (Rule 122 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.11.3.1 (Rule 123 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.3.1 (Rule 124 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4a (Rule 125 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4b (Rule 126 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule sim_race02 (Rule 127 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W110 (Rule 128 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 129 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496a (Rule 130 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496b (Rule 131 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W19 (Rule 132 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W66 (Rule 133 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 134 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 135 of total 325) .... done (Time = 0.00s, Memory = 16.0K)
    Checking Rule W156 (Rule 136 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W215 (Rule 137 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W216 (Rule 138 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W218 (Rule 139 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W224 (Rule 140 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W263 (Rule 141 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W289 (Rule 142 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W337 (Rule 143 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W416 (Rule 144 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W352 (Rule 145 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W362 (Rule 146 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W486 (Rule 148 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W499 (Rule 149 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W502 (Rule 150 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 151 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 152 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 153 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W156 (Rule 154 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W71 (Rule 155 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 156 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 157 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W287a (Rule 158 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W293 (Rule 159 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W398 (Rule 160 of total 325) .... done (Time = 0.00s, Memory = 40.0K)
    Checking Rule W424 (Rule 161 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W467 (Rule 162 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 163 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 164 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 165 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 166 of total 325) .... done (Time = 0.00s, Memory = 608.0K)
    Checking Rule Prereqs_Usage (Rule 167 of total 325) .... done (Time = 0.00s, Memory = -16.0K)
    Checking Rule Prereqs_ConstantInput-ML (Rule 168 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ReportPortInfo-ML (Rule 169 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 170 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 171 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoAssignX-ML (Rule 172 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ParamWidthMismatch-ML (Rule 173 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Postreqs_Usage_ML (Rule 174 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoXInCase-ML (Rule 175 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit fu_mult
    Checking Rule Prereqs_InferLatch (Rule 117 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.5.3 (Rule 118 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.2.3.3 (Rule 119 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.3.1.6 (Rule 120 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.2.3 (Rule 121 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.3.2a (Rule 122 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.11.3.1 (Rule 123 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.3.1 (Rule 124 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4a (Rule 125 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4b (Rule 126 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule sim_race02 (Rule 127 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W110 (Rule 128 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 129 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496a (Rule 130 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496b (Rule 131 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W19 (Rule 132 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W66 (Rule 133 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 134 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 135 of total 325) .... done (Time = 0.00s, Memory = 16.0K)
    Checking Rule W156 (Rule 136 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W215 (Rule 137 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W216 (Rule 138 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W218 (Rule 139 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W224 (Rule 140 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W263 (Rule 141 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W289 (Rule 142 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W337 (Rule 143 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W416 (Rule 144 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W352 (Rule 145 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W362 (Rule 146 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W486 (Rule 148 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W499 (Rule 149 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W502 (Rule 150 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 151 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 152 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 153 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W156 (Rule 154 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W71 (Rule 155 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 156 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 157 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W287a (Rule 158 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W293 (Rule 159 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W398 (Rule 160 of total 325) .... done (Time = 0.00s, Memory = 16.0K)
    Checking Rule W424 (Rule 161 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W467 (Rule 162 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 163 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 164 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 165 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 166 of total 325) .... done (Time = 0.00s, Memory = 608.0K)
    Checking Rule Prereqs_Usage (Rule 167 of total 325) .... done (Time = 0.00s, Memory = -16.0K)
    Checking Rule Prereqs_ConstantInput-ML (Rule 168 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ReportPortInfo-ML (Rule 169 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 170 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 171 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoAssignX-ML (Rule 172 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ParamWidthMismatch-ML (Rule 173 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Postreqs_Usage_ML (Rule 174 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoXInCase-ML (Rule 175 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit fu_div_rem
    Checking Rule Prereqs_InferLatch (Rule 117 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.5.3 (Rule 118 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.2.3.3 (Rule 119 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.3.1.6 (Rule 120 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.2.3 (Rule 121 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.3.2a (Rule 122 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.11.3.1 (Rule 123 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.3.1 (Rule 124 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4a (Rule 125 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4b (Rule 126 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule sim_race02 (Rule 127 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W110 (Rule 128 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 129 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496a (Rule 130 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496b (Rule 131 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W19 (Rule 132 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W66 (Rule 133 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 134 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 135 of total 325) .... done (Time = 0.00s, Memory = 16.0K)
    Checking Rule W156 (Rule 136 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W215 (Rule 137 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W216 (Rule 138 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W218 (Rule 139 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W224 (Rule 140 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W263 (Rule 141 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W289 (Rule 142 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W337 (Rule 143 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W416 (Rule 144 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W352 (Rule 145 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W362 (Rule 146 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W486 (Rule 148 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W499 (Rule 149 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W502 (Rule 150 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 151 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 152 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 153 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W156 (Rule 154 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W71 (Rule 155 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
    Checking Rule W240 (Rule 156 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 157 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W287a (Rule 158 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W293 (Rule 159 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W398 (Rule 160 of total 325) .... done (Time = 0.00s, Memory = 16.0K)
    Checking Rule W424 (Rule 161 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W467 (Rule 162 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 163 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 164 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 165 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 166 of total 325) .... done (Time = 0.00s, Memory = 608.0K)
    Checking Rule Prereqs_Usage (Rule 167 of total 325) .... done (Time = 0.00s, Memory = -16.0K)
    Checking Rule Prereqs_ConstantInput-ML (Rule 168 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ReportPortInfo-ML (Rule 169 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 170 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 171 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoAssignX-ML (Rule 172 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ParamWidthMismatch-ML (Rule 173 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Postreqs_Usage_ML (Rule 174 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoXInCase-ML (Rule 175 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit fu_br
    Checking Rule Prereqs_InferLatch (Rule 117 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.5.3 (Rule 118 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.2.3.3 (Rule 119 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.3.1.6 (Rule 120 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.2.3 (Rule 121 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.3.2a (Rule 122 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.11.3.1 (Rule 123 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.3.1 (Rule 124 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4a (Rule 125 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4b (Rule 126 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule sim_race02 (Rule 127 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W110 (Rule 128 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 129 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496a (Rule 130 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496b (Rule 131 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W19 (Rule 132 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W66 (Rule 133 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 134 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 135 of total 325) .... done (Time = 0.00s, Memory = 16.0K)
    Checking Rule W156 (Rule 136 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W215 (Rule 137 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W216 (Rule 138 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W218 (Rule 139 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W224 (Rule 140 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W263 (Rule 141 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W289 (Rule 142 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W337 (Rule 143 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W416 (Rule 144 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W352 (Rule 145 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W362 (Rule 146 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W486 (Rule 148 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W499 (Rule 149 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W502 (Rule 150 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 151 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 152 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 153 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W156 (Rule 154 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W71 (Rule 155 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 156 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 157 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W287a (Rule 158 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W293 (Rule 159 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W398 (Rule 160 of total 325) .... done (Time = 0.00s, Memory = 16.0K)
    Checking Rule W424 (Rule 161 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W467 (Rule 162 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 163 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 164 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 165 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 166 of total 325) .... done (Time = 0.00s, Memory = 608.0K)
    Checking Rule Prereqs_Usage (Rule 167 of total 325) .... done (Time = 0.00s, Memory = -16.0K)
    Checking Rule Prereqs_ConstantInput-ML (Rule 168 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ReportPortInfo-ML (Rule 169 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 170 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 171 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoAssignX-ML (Rule 172 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ParamWidthMismatch-ML (Rule 173 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Postreqs_Usage_ML (Rule 174 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoXInCase-ML (Rule 175 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit fu_mem
    Checking Rule Prereqs_InferLatch (Rule 117 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.5.3 (Rule 118 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.2.3.3 (Rule 119 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.3.1.6 (Rule 120 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.2.3 (Rule 121 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.3.2a (Rule 122 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.11.3.1 (Rule 123 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.3.1 (Rule 124 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4a (Rule 125 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4b (Rule 126 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule sim_race02 (Rule 127 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W110 (Rule 128 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 129 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496a (Rule 130 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496b (Rule 131 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W19 (Rule 132 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W66 (Rule 133 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 134 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 135 of total 325) .... done (Time = 0.00s, Memory = 16.0K)
    Checking Rule W156 (Rule 136 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W215 (Rule 137 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W216 (Rule 138 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W218 (Rule 139 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W224 (Rule 140 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W263 (Rule 141 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W289 (Rule 142 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W337 (Rule 143 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W416 (Rule 144 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W352 (Rule 145 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W362 (Rule 146 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W486 (Rule 148 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W499 (Rule 149 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W502 (Rule 150 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 151 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 152 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 153 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W156 (Rule 154 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W71 (Rule 155 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 156 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 157 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W287a (Rule 158 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W293 (Rule 159 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W398 (Rule 160 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W424 (Rule 161 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W467 (Rule 162 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 163 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 164 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 165 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 166 of total 325) .... done (Time = 0.00s, Memory = 608.0K)
    Checking Rule Prereqs_Usage (Rule 167 of total 325) .... done (Time = 0.00s, Memory = -16.0K)
    Checking Rule Prereqs_ConstantInput-ML (Rule 168 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ReportPortInfo-ML (Rule 169 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 170 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 171 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoAssignX-ML (Rule 172 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ParamWidthMismatch-ML (Rule 173 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Postreqs_Usage_ML (Rule 174 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoXInCase-ML (Rule 175 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit reservation_station
    Checking Rule Prereqs_InferLatch (Rule 117 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.5.3 (Rule 118 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.2.3.3 (Rule 119 of total 325) .... done (Time = 0.00s, Memory = 48.0K)
    Checking Rule STARC05-2.3.1.6 (Rule 120 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.2.3 (Rule 121 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.3.2a (Rule 122 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
    Checking Rule STARC05-2.11.3.1 (Rule 123 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.3.1 (Rule 124 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4a (Rule 125 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4b (Rule 126 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule sim_race02 (Rule 127 of total 325) .... done (Time = 0.00s, Memory = 8.0K)
    Checking Rule W110 (Rule 128 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 129 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496a (Rule 130 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496b (Rule 131 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W19 (Rule 132 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W66 (Rule 133 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 134 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 135 of total 325) .... done (Time = 0.02s, Memory = 64.0K)
    Checking Rule W156 (Rule 136 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W215 (Rule 137 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W216 (Rule 138 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W218 (Rule 139 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W224 (Rule 140 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W263 (Rule 141 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W289 (Rule 142 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W337 (Rule 143 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W416 (Rule 144 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W352 (Rule 145 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W362 (Rule 146 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.00s, Memory = 32.0K)
    Checking Rule W486 (Rule 148 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W499 (Rule 149 of total 325) .... done (Time = 0.00s, Memory = 8.0K)
    Checking Rule W502 (Rule 150 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 151 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 152 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 153 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W156 (Rule 154 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W71 (Rule 155 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 156 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 157 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W287a (Rule 158 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W293 (Rule 159 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W398 (Rule 160 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W424 (Rule 161 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W467 (Rule 162 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 163 of total 325) .... done (Time = 0.00s, Memory = 8.0K)
    Checking Rule W505 (Rule 164 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 165 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 166 of total 325) .... done (Time = 0.00s, Memory = 608.0K)
    Checking Rule Prereqs_Usage (Rule 167 of total 325) .... done (Time = 0.00s, Memory = -64.0K)
    Checking Rule Prereqs_ConstantInput-ML (Rule 168 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ReportPortInfo-ML (Rule 169 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 170 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 171 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoAssignX-ML (Rule 172 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ParamWidthMismatch-ML (Rule 173 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Postreqs_Usage_ML (Rule 174 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoXInCase-ML (Rule 175 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit cpu
    Checking Rule Av_multitop01 (Rule 176 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_multitop01 (Rule 177 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 178 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 179 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 180 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 181 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 182 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 183 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_casereq01 (Rule 184 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 185 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 186 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule AnalyzeABV (Rule 187 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veOperatorPreReq (Rule 188 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veShiftOperatorPreReq (Rule 189 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 190 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 191 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _chk_signed_unsigned_prereq (Rule 192 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width01_prereq (Rule 193 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width02_prereq (Rule 194 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width03_prereq (Rule 195 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width04_prereq (Rule 196 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _signunsign01_prereq (Rule 197 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width05_prereq (Rule 198 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr02_mismatch_prereq (Rule 199 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr03_mismatch_prereq (Rule 200 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _dontcare_mismatch_prereq (Rule 201 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_redundant_prereq (Rule 202 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_missing_prereq (Rule 203 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _formallint_preReq (Rule 204 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _avAddSynthNet (Rule 205 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit cache
    Checking Rule Av_multitop01 (Rule 176 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_multitop01 (Rule 177 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 178 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 179 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 180 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 181 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 182 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 183 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_casereq01 (Rule 184 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 185 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 186 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule AnalyzeABV (Rule 187 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veOperatorPreReq (Rule 188 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veShiftOperatorPreReq (Rule 189 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 190 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 191 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _chk_signed_unsigned_prereq (Rule 192 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width01_prereq (Rule 193 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width02_prereq (Rule 194 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width03_prereq (Rule 195 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width04_prereq (Rule 196 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _signunsign01_prereq (Rule 197 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width05_prereq (Rule 198 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr02_mismatch_prereq (Rule 199 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr03_mismatch_prereq (Rule 200 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _dontcare_mismatch_prereq (Rule 201 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_redundant_prereq (Rule 202 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_missing_prereq (Rule 203 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _formallint_preReq (Rule 204 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _avAddSynthNet (Rule 205 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit stage_1
    Checking Rule Av_multitop01 (Rule 176 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_multitop01 (Rule 177 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 178 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 179 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 180 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 181 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 182 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 183 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_casereq01 (Rule 184 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 185 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 186 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule AnalyzeABV (Rule 187 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veOperatorPreReq (Rule 188 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veShiftOperatorPreReq (Rule 189 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 190 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 191 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _chk_signed_unsigned_prereq (Rule 192 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width01_prereq (Rule 193 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width02_prereq (Rule 194 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width03_prereq (Rule 195 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width04_prereq (Rule 196 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _signunsign01_prereq (Rule 197 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width05_prereq (Rule 198 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr02_mismatch_prereq (Rule 199 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr03_mismatch_prereq (Rule 200 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _dontcare_mismatch_prereq (Rule 201 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_redundant_prereq (Rule 202 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_missing_prereq (Rule 203 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _formallint_preReq (Rule 204 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _avAddSynthNet (Rule 205 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit stage_2
    Checking Rule Av_multitop01 (Rule 176 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_multitop01 (Rule 177 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 178 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 179 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 180 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 181 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 182 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 183 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_casereq01 (Rule 184 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 185 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 186 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule AnalyzeABV (Rule 187 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veOperatorPreReq (Rule 188 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veShiftOperatorPreReq (Rule 189 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 190 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 191 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _chk_signed_unsigned_prereq (Rule 192 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width01_prereq (Rule 193 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width02_prereq (Rule 194 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width03_prereq (Rule 195 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width04_prereq (Rule 196 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _signunsign01_prereq (Rule 197 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width05_prereq (Rule 198 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr02_mismatch_prereq (Rule 199 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr03_mismatch_prereq (Rule 200 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _dontcare_mismatch_prereq (Rule 201 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_redundant_prereq (Rule 202 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_missing_prereq (Rule 203 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _formallint_preReq (Rule 204 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _avAddSynthNet (Rule 205 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit lru_array
    Checking Rule Av_multitop01 (Rule 176 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_multitop01 (Rule 177 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 178 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 179 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 180 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 181 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 182 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 183 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_casereq01 (Rule 184 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 185 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 186 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule AnalyzeABV (Rule 187 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veOperatorPreReq (Rule 188 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veShiftOperatorPreReq (Rule 189 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 190 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 191 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _chk_signed_unsigned_prereq (Rule 192 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width01_prereq (Rule 193 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width02_prereq (Rule 194 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width03_prereq (Rule 195 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width04_prereq (Rule 196 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _signunsign01_prereq (Rule 197 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width05_prereq (Rule 198 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr02_mismatch_prereq (Rule 199 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr03_mismatch_prereq (Rule 200 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _dontcare_mismatch_prereq (Rule 201 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_redundant_prereq (Rule 202 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_missing_prereq (Rule 203 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _formallint_preReq (Rule 204 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _avAddSynthNet (Rule 205 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit valid_array
    Checking Rule Av_multitop01 (Rule 176 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_multitop01 (Rule 177 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 178 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 179 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 180 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 181 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 182 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 183 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_casereq01 (Rule 184 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 185 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 186 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule AnalyzeABV (Rule 187 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veOperatorPreReq (Rule 188 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veShiftOperatorPreReq (Rule 189 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 190 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 191 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _chk_signed_unsigned_prereq (Rule 192 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width01_prereq (Rule 193 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width02_prereq (Rule 194 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width03_prereq (Rule 195 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width04_prereq (Rule 196 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _signunsign01_prereq (Rule 197 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width05_prereq (Rule 198 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr02_mismatch_prereq (Rule 199 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr03_mismatch_prereq (Rule 200 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _dontcare_mismatch_prereq (Rule 201 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_redundant_prereq (Rule 202 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_missing_prereq (Rule 203 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _formallint_preReq (Rule 204 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _avAddSynthNet (Rule 205 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit memory_queue
    Checking Rule Av_multitop01 (Rule 176 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_multitop01 (Rule 177 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 178 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 179 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 180 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 181 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 182 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 183 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_casereq01 (Rule 184 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 185 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 186 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule AnalyzeABV (Rule 187 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veOperatorPreReq (Rule 188 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veShiftOperatorPreReq (Rule 189 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 190 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 191 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _chk_signed_unsigned_prereq (Rule 192 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width01_prereq (Rule 193 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width02_prereq (Rule 194 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width03_prereq (Rule 195 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width04_prereq (Rule 196 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _signunsign01_prereq (Rule 197 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width05_prereq (Rule 198 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr02_mismatch_prereq (Rule 199 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr03_mismatch_prereq (Rule 200 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _dontcare_mismatch_prereq (Rule 201 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_redundant_prereq (Rule 202 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_missing_prereq (Rule 203 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _formallint_preReq (Rule 204 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _avAddSynthNet (Rule 205 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit cache_arbiter
    Checking Rule Av_multitop01 (Rule 176 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_multitop01 (Rule 177 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 178 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 179 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 180 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 181 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 182 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 183 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_casereq01 (Rule 184 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 185 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 186 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule AnalyzeABV (Rule 187 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veOperatorPreReq (Rule 188 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veShiftOperatorPreReq (Rule 189 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 190 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 191 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _chk_signed_unsigned_prereq (Rule 192 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width01_prereq (Rule 193 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width02_prereq (Rule 194 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width03_prereq (Rule 195 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width04_prereq (Rule 196 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _signunsign01_prereq (Rule 197 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width05_prereq (Rule 198 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr02_mismatch_prereq (Rule 199 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr03_mismatch_prereq (Rule 200 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _dontcare_mismatch_prereq (Rule 201 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_redundant_prereq (Rule 202 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_missing_prereq (Rule 203 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _formallint_preReq (Rule 204 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _avAddSynthNet (Rule 205 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit cacheline_adapter
    Checking Rule Av_multitop01 (Rule 176 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_multitop01 (Rule 177 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 178 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 179 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 180 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 181 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 182 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 183 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_casereq01 (Rule 184 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 185 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 186 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule AnalyzeABV (Rule 187 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veOperatorPreReq (Rule 188 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veShiftOperatorPreReq (Rule 189 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 190 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 191 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _chk_signed_unsigned_prereq (Rule 192 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width01_prereq (Rule 193 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
    Checking Rule _width02_prereq (Rule 194 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width03_prereq (Rule 195 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width04_prereq (Rule 196 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _signunsign01_prereq (Rule 197 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width05_prereq (Rule 198 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr02_mismatch_prereq (Rule 199 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr03_mismatch_prereq (Rule 200 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _dontcare_mismatch_prereq (Rule 201 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_redundant_prereq (Rule 202 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_missing_prereq (Rule 203 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _formallint_preReq (Rule 204 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _avAddSynthNet (Rule 205 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit queue
    Checking Rule Av_multitop01 (Rule 176 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_multitop01 (Rule 177 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 178 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 179 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 180 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 181 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 182 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 183 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_casereq01 (Rule 184 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 185 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 186 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule AnalyzeABV (Rule 187 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veOperatorPreReq (Rule 188 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veShiftOperatorPreReq (Rule 189 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 190 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 191 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _chk_signed_unsigned_prereq (Rule 192 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width01_prereq (Rule 193 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width02_prereq (Rule 194 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width03_prereq (Rule 195 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width04_prereq (Rule 196 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _signunsign01_prereq (Rule 197 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width05_prereq (Rule 198 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr02_mismatch_prereq (Rule 199 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr03_mismatch_prereq (Rule 200 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _dontcare_mismatch_prereq (Rule 201 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_redundant_prereq (Rule 202 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_missing_prereq (Rule 203 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _formallint_preReq (Rule 204 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _avAddSynthNet (Rule 205 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit rename_dispatch
    Checking Rule Av_multitop01 (Rule 176 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_multitop01 (Rule 177 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 178 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 179 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 180 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 181 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 182 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 183 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_casereq01 (Rule 184 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 185 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 186 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule AnalyzeABV (Rule 187 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veOperatorPreReq (Rule 188 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veShiftOperatorPreReq (Rule 189 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 190 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 191 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _chk_signed_unsigned_prereq (Rule 192 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width01_prereq (Rule 193 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width02_prereq (Rule 194 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width03_prereq (Rule 195 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width04_prereq (Rule 196 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _signunsign01_prereq (Rule 197 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width05_prereq (Rule 198 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr02_mismatch_prereq (Rule 199 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr03_mismatch_prereq (Rule 200 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _dontcare_mismatch_prereq (Rule 201 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_redundant_prereq (Rule 202 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_missing_prereq (Rule 203 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _formallint_preReq (Rule 204 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _avAddSynthNet (Rule 205 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit rat
    Checking Rule Av_multitop01 (Rule 176 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_multitop01 (Rule 177 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 178 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 179 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 180 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 181 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 182 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 183 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_casereq01 (Rule 184 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 185 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 186 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule AnalyzeABV (Rule 187 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veOperatorPreReq (Rule 188 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veShiftOperatorPreReq (Rule 189 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 190 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 191 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _chk_signed_unsigned_prereq (Rule 192 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width01_prereq (Rule 193 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width02_prereq (Rule 194 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width03_prereq (Rule 195 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width04_prereq (Rule 196 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _signunsign01_prereq (Rule 197 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width05_prereq (Rule 198 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr02_mismatch_prereq (Rule 199 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr03_mismatch_prereq (Rule 200 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _dontcare_mismatch_prereq (Rule 201 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_redundant_prereq (Rule 202 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_missing_prereq (Rule 203 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _formallint_preReq (Rule 204 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _avAddSynthNet (Rule 205 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit rob
    Checking Rule Av_multitop01 (Rule 176 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_multitop01 (Rule 177 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 178 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 179 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 180 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 181 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 182 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 183 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_casereq01 (Rule 184 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 185 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 186 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule AnalyzeABV (Rule 187 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veOperatorPreReq (Rule 188 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veShiftOperatorPreReq (Rule 189 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 190 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 191 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _chk_signed_unsigned_prereq (Rule 192 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width01_prereq (Rule 193 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width02_prereq (Rule 194 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width03_prereq (Rule 195 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width04_prereq (Rule 196 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _signunsign01_prereq (Rule 197 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width05_prereq (Rule 198 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr02_mismatch_prereq (Rule 199 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr03_mismatch_prereq (Rule 200 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _dontcare_mismatch_prereq (Rule 201 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_redundant_prereq (Rule 202 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_missing_prereq (Rule 203 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _formallint_preReq (Rule 204 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _avAddSynthNet (Rule 205 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit rrat
    Checking Rule Av_multitop01 (Rule 176 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_multitop01 (Rule 177 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 178 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 179 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 180 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 181 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 182 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 183 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_casereq01 (Rule 184 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 185 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 186 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule AnalyzeABV (Rule 187 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veOperatorPreReq (Rule 188 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veShiftOperatorPreReq (Rule 189 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 190 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 191 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _chk_signed_unsigned_prereq (Rule 192 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width01_prereq (Rule 193 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width02_prereq (Rule 194 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width03_prereq (Rule 195 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width04_prereq (Rule 196 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _signunsign01_prereq (Rule 197 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width05_prereq (Rule 198 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr02_mismatch_prereq (Rule 199 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr03_mismatch_prereq (Rule 200 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _dontcare_mismatch_prereq (Rule 201 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_redundant_prereq (Rule 202 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_missing_prereq (Rule 203 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _formallint_preReq (Rule 204 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _avAddSynthNet (Rule 205 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit free_list
    Checking Rule Av_multitop01 (Rule 176 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_multitop01 (Rule 177 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 178 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 179 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 180 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 181 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 182 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 183 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_casereq01 (Rule 184 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 185 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 186 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule AnalyzeABV (Rule 187 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veOperatorPreReq (Rule 188 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veShiftOperatorPreReq (Rule 189 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 190 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 191 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _chk_signed_unsigned_prereq (Rule 192 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width01_prereq (Rule 193 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width02_prereq (Rule 194 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width03_prereq (Rule 195 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width04_prereq (Rule 196 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _signunsign01_prereq (Rule 197 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width05_prereq (Rule 198 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr02_mismatch_prereq (Rule 199 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr03_mismatch_prereq (Rule 200 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _dontcare_mismatch_prereq (Rule 201 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_redundant_prereq (Rule 202 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_missing_prereq (Rule 203 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _formallint_preReq (Rule 204 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _avAddSynthNet (Rule 205 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit phys_regfile
    Checking Rule Av_multitop01 (Rule 176 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_multitop01 (Rule 177 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 178 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 179 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 180 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 181 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 182 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 183 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_casereq01 (Rule 184 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 185 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 186 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule AnalyzeABV (Rule 187 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veOperatorPreReq (Rule 188 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veShiftOperatorPreReq (Rule 189 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 190 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 191 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _chk_signed_unsigned_prereq (Rule 192 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width01_prereq (Rule 193 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width02_prereq (Rule 194 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width03_prereq (Rule 195 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
    Checking Rule _width04_prereq (Rule 196 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _signunsign01_prereq (Rule 197 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width05_prereq (Rule 198 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr02_mismatch_prereq (Rule 199 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr03_mismatch_prereq (Rule 200 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _dontcare_mismatch_prereq (Rule 201 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_redundant_prereq (Rule 202 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_missing_prereq (Rule 203 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _formallint_preReq (Rule 204 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _avAddSynthNet (Rule 205 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit execute
    Checking Rule Av_multitop01 (Rule 176 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_multitop01 (Rule 177 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 178 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 179 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 180 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 181 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 182 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 183 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_casereq01 (Rule 184 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 185 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 186 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule AnalyzeABV (Rule 187 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veOperatorPreReq (Rule 188 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veShiftOperatorPreReq (Rule 189 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 190 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 191 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _chk_signed_unsigned_prereq (Rule 192 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width01_prereq (Rule 193 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width02_prereq (Rule 194 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width03_prereq (Rule 195 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width04_prereq (Rule 196 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _signunsign01_prereq (Rule 197 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width05_prereq (Rule 198 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr02_mismatch_prereq (Rule 199 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr03_mismatch_prereq (Rule 200 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _dontcare_mismatch_prereq (Rule 201 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_redundant_prereq (Rule 202 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_missing_prereq (Rule 203 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _formallint_preReq (Rule 204 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _avAddSynthNet (Rule 205 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit fu_add
    Checking Rule Av_multitop01 (Rule 176 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_multitop01 (Rule 177 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 178 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 179 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 180 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 181 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 182 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 183 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_casereq01 (Rule 184 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 185 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 186 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule AnalyzeABV (Rule 187 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veOperatorPreReq (Rule 188 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veShiftOperatorPreReq (Rule 189 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 190 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 191 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _chk_signed_unsigned_prereq (Rule 192 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width01_prereq (Rule 193 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width02_prereq (Rule 194 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width03_prereq (Rule 195 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width04_prereq (Rule 196 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _signunsign01_prereq (Rule 197 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width05_prereq (Rule 198 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr02_mismatch_prereq (Rule 199 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr03_mismatch_prereq (Rule 200 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _dontcare_mismatch_prereq (Rule 201 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_redundant_prereq (Rule 202 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_missing_prereq (Rule 203 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _formallint_preReq (Rule 204 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _avAddSynthNet (Rule 205 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit fu_mult
    Checking Rule Av_multitop01 (Rule 176 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_multitop01 (Rule 177 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 178 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 179 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 180 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 181 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 182 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 183 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_casereq01 (Rule 184 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 185 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 186 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule AnalyzeABV (Rule 187 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veOperatorPreReq (Rule 188 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veShiftOperatorPreReq (Rule 189 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 190 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 191 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _chk_signed_unsigned_prereq (Rule 192 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width01_prereq (Rule 193 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width02_prereq (Rule 194 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width03_prereq (Rule 195 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width04_prereq (Rule 196 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _signunsign01_prereq (Rule 197 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width05_prereq (Rule 198 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr02_mismatch_prereq (Rule 199 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr03_mismatch_prereq (Rule 200 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _dontcare_mismatch_prereq (Rule 201 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_redundant_prereq (Rule 202 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_missing_prereq (Rule 203 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _formallint_preReq (Rule 204 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _avAddSynthNet (Rule 205 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit fu_div_rem
    Checking Rule Av_multitop01 (Rule 176 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_multitop01 (Rule 177 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 178 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 179 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 180 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 181 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 182 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 183 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_casereq01 (Rule 184 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 185 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 186 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule AnalyzeABV (Rule 187 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veOperatorPreReq (Rule 188 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veShiftOperatorPreReq (Rule 189 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 190 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 191 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _chk_signed_unsigned_prereq (Rule 192 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width01_prereq (Rule 193 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width02_prereq (Rule 194 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width03_prereq (Rule 195 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width04_prereq (Rule 196 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _signunsign01_prereq (Rule 197 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width05_prereq (Rule 198 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr02_mismatch_prereq (Rule 199 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr03_mismatch_prereq (Rule 200 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _dontcare_mismatch_prereq (Rule 201 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_redundant_prereq (Rule 202 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_missing_prereq (Rule 203 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _formallint_preReq (Rule 204 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _avAddSynthNet (Rule 205 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit fu_br
    Checking Rule Av_multitop01 (Rule 176 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_multitop01 (Rule 177 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 178 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 179 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 180 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 181 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 182 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 183 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_casereq01 (Rule 184 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 185 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 186 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule AnalyzeABV (Rule 187 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veOperatorPreReq (Rule 188 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veShiftOperatorPreReq (Rule 189 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 190 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 191 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _chk_signed_unsigned_prereq (Rule 192 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width01_prereq (Rule 193 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
    Checking Rule _width02_prereq (Rule 194 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width03_prereq (Rule 195 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width04_prereq (Rule 196 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _signunsign01_prereq (Rule 197 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width05_prereq (Rule 198 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr02_mismatch_prereq (Rule 199 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr03_mismatch_prereq (Rule 200 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _dontcare_mismatch_prereq (Rule 201 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_redundant_prereq (Rule 202 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_missing_prereq (Rule 203 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _formallint_preReq (Rule 204 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _avAddSynthNet (Rule 205 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit fu_mem
    Checking Rule Av_multitop01 (Rule 176 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_multitop01 (Rule 177 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 178 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 179 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 180 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 181 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 182 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 183 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_casereq01 (Rule 184 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 185 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 186 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule AnalyzeABV (Rule 187 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veOperatorPreReq (Rule 188 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veShiftOperatorPreReq (Rule 189 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 190 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 191 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _chk_signed_unsigned_prereq (Rule 192 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width01_prereq (Rule 193 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width02_prereq (Rule 194 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width03_prereq (Rule 195 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width04_prereq (Rule 196 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _signunsign01_prereq (Rule 197 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width05_prereq (Rule 198 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr02_mismatch_prereq (Rule 199 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr03_mismatch_prereq (Rule 200 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _dontcare_mismatch_prereq (Rule 201 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_redundant_prereq (Rule 202 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_missing_prereq (Rule 203 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _formallint_preReq (Rule 204 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _avAddSynthNet (Rule 205 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit reservation_station
    Checking Rule Av_multitop01 (Rule 176 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_multitop01 (Rule 177 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 178 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule InitState (Rule 179 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 180 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_fsmreq01 (Rule 181 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 182 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_rstreq01 (Rule 183 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_casereq01 (Rule 184 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 185 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_deadreq01 (Rule 186 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule AnalyzeABV (Rule 187 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veOperatorPreReq (Rule 188 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule veShiftOperatorPreReq (Rule 189 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 190 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Av_dcreq01 (Rule 191 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _chk_signed_unsigned_prereq (Rule 192 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width01_prereq (Rule 193 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width02_prereq (Rule 194 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width03_prereq (Rule 195 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width04_prereq (Rule 196 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _signunsign01_prereq (Rule 197 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width05_prereq (Rule 198 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr02_mismatch_prereq (Rule 199 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _width_expr03_mismatch_prereq (Rule 200 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _dontcare_mismatch_prereq (Rule 201 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_redundant_prereq (Rule 202 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _case_default_missing_prereq (Rule 203 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _formallint_preReq (Rule 204 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule _avAddSynthNet (Rule 205 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/cache.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/cache_arbiter.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/cacheline_adapter.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/cpu.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/execute.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/free_list.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/fu_add.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/fu_br.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/fu_div_rem.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/fu_mem.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/fu_mult.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/lru_array.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/memory_queue.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/phys_regfile.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/queue.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/rat.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/rename_dispatch.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/reservation_station.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/rob.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/rrat.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/stage1.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/stage2.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/valid_array.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../pkg/types.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_waive24 (Rule 207 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_waive25 (Rule 208 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_waive31 (Rule 209 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_waive35 (Rule 210 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
 Synthesizing Library Cells specified through SgLib  ......
 Reading port Interface for .lib cell: mp_cache_data_array 
 Reading port Interface for .lib cell: mp_cache_tag_array 
 Synthesis of Library Cells specified through SgLib completed 
 Synthesizing module: reservation_station (elaborated name: reservation_station) ... (Module 1 of total 23)  done 
 Synthesizing module: fu_mem (elaborated name: fu_mem) ... (Module 2 of total 23)  done 
 Synthesizing module: fu_br (elaborated name: fu_br) ... (Module 3 of total 23)  done 
 Synthesizing module: fu_div_rem (elaborated name: fu_div_rem) ... (Module 4 of total 23)  done 
 Synthesizing module: fu_mult (elaborated name: fu_mult) ... (Module 5 of total 23)  done 
 Synthesizing module: fu_add (elaborated name: fu_add) ... (Module 6 of total 23)  done 
 Synthesizing module: execute (elaborated name: execute) ... (Module 7 of total 23)  done 
 Synthesizing module: phys_regfile (elaborated name: phys_regfile) ... (Module 8 of total 23)  done 
 Synthesizing module: free_list (elaborated name: free_list) ... (Module 9 of total 23)  done 
 Synthesizing module: rrat (elaborated name: rrat) ... (Module 10 of total 23)  done 
 Synthesizing module: rob (elaborated name: rob) ... (Module 11 of total 23)  done 
 Synthesizing module: rat (elaborated name: rat) ... (Module 12 of total 23)  done 
 Synthesizing module: rename_dispatch (elaborated name: rename_dispatch) ... (Module 13 of total 23)  done 
 Synthesizing module: queue (elaborated name: queue) ... (Module 14 of total 23)  done 
 Synthesizing module: cacheline_adapter (elaborated name: cacheline_adapter) ... (Module 15 of total 23)  done 
 Synthesizing module: cache_arbiter (elaborated name: cache_arbiter) ... (Module 16 of total 23)  done 
 Synthesizing module: memory_queue (elaborated name: memory_queue) ... (Module 17 of total 23)  done 
 Synthesizing module: valid_array (elaborated name: valid_array) ... (Module 18 of total 23)  done 
 Synthesizing module: lru_array (elaborated name: lru_array) ... (Module 19 of total 23)  done 
 Synthesizing module: stage_2 (elaborated name: stage_2) ... (Module 20 of total 23)  done 
 Synthesizing module: stage_1 (elaborated name: stage_1) ... (Module 21 of total 23)  done 
 Synthesizing module: cache (elaborated name: cache) ... (Module 22 of total 23)  done 
 Synthesizing module: cpu (elaborated name: cpu) ... (Module 23 of total 23)  done 
 Synthesis completed.
Checking Rule InferBlackBox (Rule 211 of total 325) .... done (Time = 0.11s, Memory = 0.0K)
Checking Rule checkCMD_mthresh (Rule 212 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_waive37 (Rule 213 of total 325) .... done (Time = 0.00s, Memory = -12288.0K)
Checking Rule ReportSglibSummary (Rule 214 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Prereq_IntClock for module reservation_station (Rule 215 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W336 for module reservation_station (Rule 216 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W414 for module reservation_station (Rule 217 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W450L for module reservation_station (Rule 218 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule HangingNetPreReq-ML for module reservation_station (Rule 219 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule RegInputOutput-ML for module reservation_station (Rule 220 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_svasetup01 for module reservation_station (Rule 221 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_casereq02 for module reservation_station (Rule 222 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_deadfilter01 for module reservation_station (Rule 223 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_dcreq02 for module reservation_station (Rule 224 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_staticnetnreq01 for module reservation_station (Rule 225 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.7 for module reservation_station (Rule 226 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.9 for module reservation_station (Rule 227 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Prereq_IntClock for module fu_mem (Rule 215 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W336 for module fu_mem (Rule 216 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W414 for module fu_mem (Rule 217 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W450L for module fu_mem (Rule 218 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule HangingNetPreReq-ML for module fu_mem (Rule 219 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule RegInputOutput-ML for module fu_mem (Rule 220 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_svasetup01 for module fu_mem (Rule 221 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_casereq02 for module fu_mem (Rule 222 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_deadfilter01 for module fu_mem (Rule 223 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_dcreq02 for module fu_mem (Rule 224 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_staticnetnreq01 for module fu_mem (Rule 225 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.7 for module fu_mem (Rule 226 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.9 for module fu_mem (Rule 227 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Prereq_IntClock for module fu_br (Rule 215 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W336 for module fu_br (Rule 216 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W414 for module fu_br (Rule 217 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W450L for module fu_br (Rule 218 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule HangingNetPreReq-ML for module fu_br (Rule 219 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule RegInputOutput-ML for module fu_br (Rule 220 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_svasetup01 for module fu_br (Rule 221 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_casereq02 for module fu_br (Rule 222 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_deadfilter01 for module fu_br (Rule 223 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_dcreq02 for module fu_br (Rule 224 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_staticnetnreq01 for module fu_br (Rule 225 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.7 for module fu_br (Rule 226 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.9 for module fu_br (Rule 227 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Prereq_IntClock for module fu_div_rem (Rule 215 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W336 for module fu_div_rem (Rule 216 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W414 for module fu_div_rem (Rule 217 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W450L for module fu_div_rem (Rule 218 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule HangingNetPreReq-ML for module fu_div_rem (Rule 219 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule RegInputOutput-ML for module fu_div_rem (Rule 220 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_svasetup01 for module fu_div_rem (Rule 221 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_casereq02 for module fu_div_rem (Rule 222 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_deadfilter01 for module fu_div_rem (Rule 223 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_dcreq02 for module fu_div_rem (Rule 224 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_staticnetnreq01 for module fu_div_rem (Rule 225 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.7 for module fu_div_rem (Rule 226 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.9 for module fu_div_rem (Rule 227 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Prereq_IntClock for module fu_mult (Rule 215 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W336 for module fu_mult (Rule 216 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W414 for module fu_mult (Rule 217 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W450L for module fu_mult (Rule 218 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule HangingNetPreReq-ML for module fu_mult (Rule 219 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule RegInputOutput-ML for module fu_mult (Rule 220 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_svasetup01 for module fu_mult (Rule 221 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_casereq02 for module fu_mult (Rule 222 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_deadfilter01 for module fu_mult (Rule 223 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_dcreq02 for module fu_mult (Rule 224 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_staticnetnreq01 for module fu_mult (Rule 225 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.7 for module fu_mult (Rule 226 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.9 for module fu_mult (Rule 227 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Prereq_IntClock for module fu_add (Rule 215 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W336 for module fu_add (Rule 216 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W414 for module fu_add (Rule 217 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W450L for module fu_add (Rule 218 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule HangingNetPreReq-ML for module fu_add (Rule 219 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule RegInputOutput-ML for module fu_add (Rule 220 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_svasetup01 for module fu_add (Rule 221 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_casereq02 for module fu_add (Rule 222 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_deadfilter01 for module fu_add (Rule 223 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_dcreq02 for module fu_add (Rule 224 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_staticnetnreq01 for module fu_add (Rule 225 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.7 for module fu_add (Rule 226 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.9 for module fu_add (Rule 227 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Prereq_IntClock for module execute (Rule 215 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W336 for module execute (Rule 216 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W414 for module execute (Rule 217 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W450L for module execute (Rule 218 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule HangingNetPreReq-ML for module execute (Rule 219 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule RegInputOutput-ML for module execute (Rule 220 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_svasetup01 for module execute (Rule 221 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_casereq02 for module execute (Rule 222 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_deadfilter01 for module execute (Rule 223 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_dcreq02 for module execute (Rule 224 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_staticnetnreq01 for module execute (Rule 225 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.7 for module execute (Rule 226 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.9 for module execute (Rule 227 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Prereq_IntClock for module phys_regfile (Rule 215 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W336 for module phys_regfile (Rule 216 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W414 for module phys_regfile (Rule 217 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W450L for module phys_regfile (Rule 218 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule HangingNetPreReq-ML for module phys_regfile (Rule 219 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule RegInputOutput-ML for module phys_regfile (Rule 220 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_svasetup01 for module phys_regfile (Rule 221 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_casereq02 for module phys_regfile (Rule 222 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_deadfilter01 for module phys_regfile (Rule 223 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_dcreq02 for module phys_regfile (Rule 224 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_staticnetnreq01 for module phys_regfile (Rule 225 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.7 for module phys_regfile (Rule 226 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.9 for module phys_regfile (Rule 227 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Prereq_IntClock for module free_list (Rule 215 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W336 for module free_list (Rule 216 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W414 for module free_list (Rule 217 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W450L for module free_list (Rule 218 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule HangingNetPreReq-ML for module free_list (Rule 219 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule RegInputOutput-ML for module free_list (Rule 220 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_svasetup01 for module free_list (Rule 221 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_casereq02 for module free_list (Rule 222 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_deadfilter01 for module free_list (Rule 223 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_dcreq02 for module free_list (Rule 224 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_staticnetnreq01 for module free_list (Rule 225 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.7 for module free_list (Rule 226 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.9 for module free_list (Rule 227 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Prereq_IntClock for module rrat (Rule 215 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W336 for module rrat (Rule 216 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W414 for module rrat (Rule 217 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W450L for module rrat (Rule 218 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule HangingNetPreReq-ML for module rrat (Rule 219 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule RegInputOutput-ML for module rrat (Rule 220 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_svasetup01 for module rrat (Rule 221 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_casereq02 for module rrat (Rule 222 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_deadfilter01 for module rrat (Rule 223 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_dcreq02 for module rrat (Rule 224 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_staticnetnreq01 for module rrat (Rule 225 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.7 for module rrat (Rule 226 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.9 for module rrat (Rule 227 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Prereq_IntClock for module rob (Rule 215 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W336 for module rob (Rule 216 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W414 for module rob (Rule 217 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W450L for module rob (Rule 218 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule HangingNetPreReq-ML for module rob (Rule 219 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule RegInputOutput-ML for module rob (Rule 220 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_svasetup01 for module rob (Rule 221 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_casereq02 for module rob (Rule 222 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_deadfilter01 for module rob (Rule 223 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_dcreq02 for module rob (Rule 224 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_staticnetnreq01 for module rob (Rule 225 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.7 for module rob (Rule 226 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.9 for module rob (Rule 227 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Prereq_IntClock for module rat (Rule 215 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W336 for module rat (Rule 216 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W414 for module rat (Rule 217 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W450L for module rat (Rule 218 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule HangingNetPreReq-ML for module rat (Rule 219 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule RegInputOutput-ML for module rat (Rule 220 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_svasetup01 for module rat (Rule 221 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_casereq02 for module rat (Rule 222 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_deadfilter01 for module rat (Rule 223 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_dcreq02 for module rat (Rule 224 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_staticnetnreq01 for module rat (Rule 225 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.7 for module rat (Rule 226 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.9 for module rat (Rule 227 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Prereq_IntClock for module rename_dispatch (Rule 215 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W336 for module rename_dispatch (Rule 216 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W414 for module rename_dispatch (Rule 217 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W450L for module rename_dispatch (Rule 218 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule HangingNetPreReq-ML for module rename_dispatch (Rule 219 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule RegInputOutput-ML for module rename_dispatch (Rule 220 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_svasetup01 for module rename_dispatch (Rule 221 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_casereq02 for module rename_dispatch (Rule 222 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_deadfilter01 for module rename_dispatch (Rule 223 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_dcreq02 for module rename_dispatch (Rule 224 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_staticnetnreq01 for module rename_dispatch (Rule 225 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.7 for module rename_dispatch (Rule 226 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.9 for module rename_dispatch (Rule 227 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Prereq_IntClock for module queue (Rule 215 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W336 for module queue (Rule 216 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W414 for module queue (Rule 217 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W450L for module queue (Rule 218 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule HangingNetPreReq-ML for module queue (Rule 219 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule RegInputOutput-ML for module queue (Rule 220 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_svasetup01 for module queue (Rule 221 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_casereq02 for module queue (Rule 222 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_deadfilter01 for module queue (Rule 223 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_dcreq02 for module queue (Rule 224 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_staticnetnreq01 for module queue (Rule 225 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.7 for module queue (Rule 226 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.9 for module queue (Rule 227 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Prereq_IntClock for module cacheline_adapter (Rule 215 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W336 for module cacheline_adapter (Rule 216 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W414 for module cacheline_adapter (Rule 217 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W450L for module cacheline_adapter (Rule 218 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule HangingNetPreReq-ML for module cacheline_adapter (Rule 219 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule RegInputOutput-ML for module cacheline_adapter (Rule 220 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_svasetup01 for module cacheline_adapter (Rule 221 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_casereq02 for module cacheline_adapter (Rule 222 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_deadfilter01 for module cacheline_adapter (Rule 223 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_dcreq02 for module cacheline_adapter (Rule 224 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_staticnetnreq01 for module cacheline_adapter (Rule 225 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.7 for module cacheline_adapter (Rule 226 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.9 for module cacheline_adapter (Rule 227 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Prereq_IntClock for module cache_arbiter (Rule 215 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W336 for module cache_arbiter (Rule 216 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W414 for module cache_arbiter (Rule 217 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W450L for module cache_arbiter (Rule 218 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule HangingNetPreReq-ML for module cache_arbiter (Rule 219 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule RegInputOutput-ML for module cache_arbiter (Rule 220 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_svasetup01 for module cache_arbiter (Rule 221 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_casereq02 for module cache_arbiter (Rule 222 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_deadfilter01 for module cache_arbiter (Rule 223 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_dcreq02 for module cache_arbiter (Rule 224 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_staticnetnreq01 for module cache_arbiter (Rule 225 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.7 for module cache_arbiter (Rule 226 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.9 for module cache_arbiter (Rule 227 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Prereq_IntClock for module memory_queue (Rule 215 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W336 for module memory_queue (Rule 216 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W414 for module memory_queue (Rule 217 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W450L for module memory_queue (Rule 218 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule HangingNetPreReq-ML for module memory_queue (Rule 219 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule RegInputOutput-ML for module memory_queue (Rule 220 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_svasetup01 for module memory_queue (Rule 221 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_casereq02 for module memory_queue (Rule 222 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_deadfilter01 for module memory_queue (Rule 223 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_dcreq02 for module memory_queue (Rule 224 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_staticnetnreq01 for module memory_queue (Rule 225 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.7 for module memory_queue (Rule 226 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.9 for module memory_queue (Rule 227 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Prereq_IntClock for module valid_array (Rule 215 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W336 for module valid_array (Rule 216 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W414 for module valid_array (Rule 217 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W450L for module valid_array (Rule 218 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule HangingNetPreReq-ML for module valid_array (Rule 219 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule RegInputOutput-ML for module valid_array (Rule 220 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_svasetup01 for module valid_array (Rule 221 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_casereq02 for module valid_array (Rule 222 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_deadfilter01 for module valid_array (Rule 223 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_dcreq02 for module valid_array (Rule 224 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_staticnetnreq01 for module valid_array (Rule 225 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.7 for module valid_array (Rule 226 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.9 for module valid_array (Rule 227 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Prereq_IntClock for module lru_array (Rule 215 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W336 for module lru_array (Rule 216 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W414 for module lru_array (Rule 217 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W450L for module lru_array (Rule 218 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule HangingNetPreReq-ML for module lru_array (Rule 219 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule RegInputOutput-ML for module lru_array (Rule 220 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_svasetup01 for module lru_array (Rule 221 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_casereq02 for module lru_array (Rule 222 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_deadfilter01 for module lru_array (Rule 223 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_dcreq02 for module lru_array (Rule 224 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_staticnetnreq01 for module lru_array (Rule 225 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.7 for module lru_array (Rule 226 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.9 for module lru_array (Rule 227 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Prereq_IntClock for module stage_2 (Rule 215 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W336 for module stage_2 (Rule 216 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W414 for module stage_2 (Rule 217 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W450L for module stage_2 (Rule 218 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule HangingNetPreReq-ML for module stage_2 (Rule 219 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule RegInputOutput-ML for module stage_2 (Rule 220 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_svasetup01 for module stage_2 (Rule 221 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_casereq02 for module stage_2 (Rule 222 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_deadfilter01 for module stage_2 (Rule 223 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_dcreq02 for module stage_2 (Rule 224 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_staticnetnreq01 for module stage_2 (Rule 225 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.7 for module stage_2 (Rule 226 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.9 for module stage_2 (Rule 227 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Prereq_IntClock for module stage_1 (Rule 215 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W336 for module stage_1 (Rule 216 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W414 for module stage_1 (Rule 217 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W450L for module stage_1 (Rule 218 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule HangingNetPreReq-ML for module stage_1 (Rule 219 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule RegInputOutput-ML for module stage_1 (Rule 220 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_svasetup01 for module stage_1 (Rule 221 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_casereq02 for module stage_1 (Rule 222 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_deadfilter01 for module stage_1 (Rule 223 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_dcreq02 for module stage_1 (Rule 224 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_staticnetnreq01 for module stage_1 (Rule 225 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.7 for module stage_1 (Rule 226 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.9 for module stage_1 (Rule 227 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Prereq_IntClock for module cache (Rule 215 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W336 for module cache (Rule 216 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W414 for module cache (Rule 217 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W450L for module cache (Rule 218 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule HangingNetPreReq-ML for module cache (Rule 219 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule RegInputOutput-ML for module cache (Rule 220 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_svasetup01 for module cache (Rule 221 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_casereq02 for module cache (Rule 222 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_deadfilter01 for module cache (Rule 223 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_dcreq02 for module cache (Rule 224 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_staticnetnreq01 for module cache (Rule 225 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.7 for module cache (Rule 226 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.9 for module cache (Rule 227 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Prereq_IntClock for module cpu (Rule 215 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W336 for module cpu (Rule 216 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W414 for module cpu (Rule 217 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W450L for module cpu (Rule 218 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule HangingNetPreReq-ML for module cpu (Rule 219 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule RegInputOutput-ML for module cpu (Rule 220 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_svasetup01 for module cpu (Rule 221 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_casereq02 for module cpu (Rule 222 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_deadfilter01 for module cpu (Rule 223 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_dcreq02 for module cpu (Rule 224 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_staticnetnreq01 for module cpu (Rule 225 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.7 for module cpu (Rule 226 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.5.1.9 for module cpu (Rule 227 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Performing semantic checks on SGDC contents
Checking Rule SGDC_testmode03 (Rule 77 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule checkSGDC_01 (Rule 228 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule checkSGDC_03 (Rule 229 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule checkSGDC_08 (Rule 230 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_memorywritepin04 (Rule 231 of total 325) .... done (Time = 0.00s, Memory = -32.0K)
Checking Rule SGDC_reset02 (Rule 232 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_reset03 (Rule 233 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_libgroup03 (Rule 234 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_ungroup02 (Rule 235 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule _abstractPortSGDC (Rule 236 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_abstract_port03 (Rule 237 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_abstract_port04 (Rule 238 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_abstract_port05 (Rule 239 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_abstract_port07 (Rule 240 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_abstract_port08 (Rule 241 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_abstract_port10 (Rule 242 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_abstract_port11 (Rule 243 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_abstract_port12 (Rule 244 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_abstract_port13 (Rule 245 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_complexity_req02 (Rule 246 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule ReportUngroup (Rule 247 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule LINT_portReten (Rule 248 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_abstract_port21 (Rule 249 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule InferLatch (Rule 250 of total 325) .... done (Time = 0.10s, Memory = 32.0K)
Checking Rule UndrivenInTerm-ML (Rule 251 of total 325) .... done (Time = 1.85s, Memory = -32.0K)
Checking Rule Av_casereq03 (Rule 252 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_fsm_setup01 (Rule 253 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_PortRetention (Rule 254 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_assume_path05 (Rule 255 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
 Flattening cpu (.lib instances separately flattened) ....
    15% completed (50000 instances created)
    31% completed (100000 instances created)
    47% completed (150000 instances created)
    63% completed (200000 instances created)
    79% completed (250000 instances created)
    95% completed (300000 instances created)
 Flattening completed
Checking Rule SGDC_set_case_analysis_LC (Rule 256 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_IpblockTaggedNet (Rule 257 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule BufClock (Rule 258 of total 325) .... done (Time = 0.70s, Memory = 3912.0K)
Checking Rule CombLoop (Rule 259 of total 325) .... done (Time = 0.40s, Memory = 904.0K)
Checking Rule STARC05-2.5.1.2 (Rule 260 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
Checking Rule STARC05-1.3.1.3 (Rule 261 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-1.4.3.4 (Rule 262 of total 325) .... done (Time = 0.03s, Memory = 8.0K)
Checking Rule FlopClockConstant (Rule 263 of total 325) .... done (Time = 0.05s, Memory = 24.0K)
Checking Rule FlopSRConst (Rule 264 of total 325) .... done (Time = 0.03s, Memory = 0.0K)
Checking Rule FlopEConst (Rule 265 of total 325) .... done (Time = 0.05s, Memory = 8.0K)
Checking Rule checkPinConnectedToSupply (Rule 266 of total 325) .... done (Time = 0.08s, Memory = 0.0K)
Checking Rule W392 (Rule 267 of total 325) .... done (Time = 0.02s, Memory = 2000.0K)
Checking Rule W415 (Rule 268 of total 325) .... done (Time = 0.23s, Memory = 0.0K)
Checking Rule LatchFeedback (Rule 269 of total 325) .... done (Time = 0.38s, Memory = 0.0K)
Checking Rule Av_initseq01 (Rule 270 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_init01 (Rule 271 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_av_meta_design_hier01 (Rule 272 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_initstate01 (Rule 273 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_sanity02 (Rule 274 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_sanity06 (Rule 275 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule _formal_anlysis_filter_prereq (Rule 276 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_fsmreq02 (Rule 277 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule _fsm03_prereq (Rule 278 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule _fsm_contr01 (Rule 279 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_report01 (Rule 280 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule _advLintReport01 (Rule 281 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.4.1.5 (Rule 282 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
Checking Rule STARC05-1.2.1.2 (Rule 283 of total 325) .... done (Time = 0.11s, Memory = 1288.0K)
Checking Rule AnalyzeBBox (Rule 284 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule ReportCheckDataSummary (Rule 74 of total 325) .... done (Time = 0.00s, Memory = 0.0K)

Generating data for Console...

SpyGlass Rule Checking Complete.

Generating moresimple report from './spyglass-1/cpu/lint/lint_turbo_rtl/spyglass.vdb' to './spyglass-1/cpu/lint/lint_turbo_rtl/spyglass_reports/moresimple.rpt' ....

Generating runsummary report from './spyglass-1/cpu/lint/lint_turbo_rtl/spyglass.vdb' ....

Generating moresimple_turbo report from './spyglass-1/cpu/lint/lint_turbo_rtl/spyglass.vdb' to './spyglass-1/cpu/lint/lint_turbo_rtl/spyglass_reports/moresimple_turbo.rpt' ....

Generating no_msg_reporting_rules report from './spyglass-1/cpu/lint/lint_turbo_rtl/spyglass.vdb' to './spyglass-1/cpu/lint/lint_turbo_rtl/spyglass_reports/no_msg_reporting_rules.rpt' ....

Generating ADV-LINT report from './spyglass-1/cpu/lint/lint_turbo_rtl/spyglass.vdb' to './spyglass-1/cpu/lint/lint_turbo_rtl/spyglass_reports/ADV-LINT.rpt' ....

Generating auto_verify report from './spyglass-1/cpu/lint/lint_turbo_rtl/spyglass.vdb' to './spyglass-1/cpu/lint/lint_turbo_rtl/spyglass_reports/auto_verify.rpt' ....

Generating W415_Report report from './spyglass-1/cpu/lint/lint_turbo_rtl/spyglass.vdb' to './spyglass-1/cpu/lint/lint_turbo_rtl/spyglass_reports/lint/W415_Report.rpt' ....

Generating waiver report from './spyglass-1/cpu/lint/lint_turbo_rtl/spyglass.vdb' to './spyglass-1/cpu/lint/lint_turbo_rtl/spyglass_reports/waiver.rpt' ....

Policy specific data (reports) are present in the directory './spyglass-1/cpu/lint/lint_turbo_rtl/spyglass_reports'.

SpyGlass critical reports for the current run are present in directory './spyglass-1/consolidated_reports/cpu_lint_lint_turbo_rtl/'.

---------------------------------------------------------------------------------------------
Results Summary:
---------------------------------------------------------------------------------------------
   Goal Run           :      lint/lint_turbo_rtl
   Command-line read  :      0 error,      0 warning,      0 information message 
   Design Read        :      0 error,      0 warning,      5 information messages
      Found 1 top module:
         cpu   (file: /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/cpu.sv)

   Blackbox Resolution:      0 error,      0 warning,      0 information message 
   SGDC Checks        :      0 error,      0 warning,      0 information message 
   Policy starc2005   :      0 error,      0 warning,      0 information message 
   Policy lint        :      0 error,      0 warning,      0 information message 
   Policy morelint    :      0 error,      0 warning,      0 information message 
   Policy erc         :      0 error,      0 warning,      0 information message 
   -------------------------------------------------------------------------------------
   Total              :      0 error,      0 warning,      5 information messages

  Total Number of Generated Primary Messages          :       167 (2 errors, 159 warnings, 6 Infos, 0 Data)
  Total Number of Generated Secondary Messages        :        27 (0 error, 0 warning, 0 Info, 27 Data)
  Number of Waived Primary Messages                   :       162 (2 errors, 159 warnings, 1 Info, 0 Data)
  Number of Waived Secondary Messages                 :        27 (0 error, 0 warning, 0 Info, 27 Data)
  Number of Reported Primary Messages                 :         5 (0 error, 0 warning, 5 Infos, 0 Data)

---------------------------------------------------------------------------------------------


run_goal: info: updating spyglass.log with goal summary
---------------------------------------------------------------------------------------------------
Results Summary:
---------------------------------------------------------------------------------------------------
   Goal Run           :      lint/lint_turbo_rtl
   Top Module         :      cpu
---------------------------------------------------------------------------------------------------
   Reports Directory: 
   /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/spyglass-1/consolidated_reports/cpu_lint_lint_turbo_rtl/ 

   SpyGlass LogFile: 
    /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/spyglass-1/cpu/lint/lint_turbo_rtl/spyglass.log 

   Standard Reports: 
     waiver.rpt          moresimple.rpt          no_msg_reporting_rules.rpt       

   HTML report:
    /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/spyglass-1/html_reports/goals_summary.html
  

   Technology Reports:  
     auto_verify.rpt          ADV-LINT.rpt          moresimple_turbo.rpt        
   
---------------------------------------------------------------------------------------------------
   Goal Violation Summary:
       Waived   Messages:                      2 Errors,    159 Warnings,      1 Infos
       Reported Messages:         0 Fatals,    0 Errors,      0 Warnings,      5 Infos
---------------------------------------------------------------------------------------------------
   
---------------------------------------------------------------------------------------------------
 
run_goal: info: spyglass.log successfully updated with goal summary
run_goal: info: setting design top `cpu' as current_design
run_goal: warning: save/restore disabled for the currently selected goal, design query data is not saved
mv spyglass-1/consolidated_reports/*_lint_lint_turbo_rtl/*.rpt reports/
mv reports/moresimple_turbo.rpt reports/lint.rpt
rm -rf spyglass-1 WORK *.log

################################################################################
#
# This file has been generated by SpyGlass:
#     Report Name      : moresimple_turbo
#     Report Created by: root
#     Report Created on: Mon Dec  2 19:20:10 2024
#     Working Directory: /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint
#     SpyGlass Version : SpyGlass_vR-2020.12-SP1-1
#     Policy Name      : SpyGlass(SpyGlass_vR-2020.12-SP1-01)
#                        auto-verify(SpyGlass_vR-2020.12-SP1-01)
#                        erc(SpyGlass_vR-2020.12-SP1-01)
#                        latch(SpyGlass_vR-2020.12-SP1-01)
#                        lint(SpyGlass_vR-2020.12-SP1-01)
#                        morelint(SpyGlass_vR-2020.12-SP1-01)
#                        openmore(SpyGlass_vR-2020.12-SP1-01)
#                        simulation(SpyGlass_vR-2020.12-SP1-01)
#                        starc(SpyGlass_vR-2020.12-SP1-01)
#                        starc2005(SpyGlass_vR-2020.12-SP1-01)
#
#     Total Number of Generated Primary Messages   :        167
#     Total Number of Generated Secondary Messages :         27
#     Number of Waived Primary Messages            :        162
#     Number of Waived Secondary Messages          :         27
#     Number of Reported Primary Messages          :          5
#     Number of Reported Secondary Messages        :          0
#     Number of Overlimit Messages                 :          0
#
#
################################################################################

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
MORESIMPLE_TURBO REPORT:


############### BuiltIn -> RuleGroup=Design Read ###############
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ID       ParentID   Rule                    Alias                   Severity    File                                                                                               Line    Wt    Message
========================================================================================================================
[3]      N.A        DetectTopDesignUnits    DetectTopDesignUnits    Info        /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/lint/../hdl/cpu.sv                               1       2     Module cpu is a top level design unit
[0]      N.A        AutoGenerateSglib       AutoGenerateSglib       Info        ./spyglass-1/spyglass_cache/autogenerated_sglib/lc/spyglass_lc_aggregate_reports/moresimple.rpt    0       2     Sglib './spyglass-1/spyglass_cache/autogenerated_sglib/aggregate.sglib' has been auto-generated successfully
[2]      N.A        ElabSummary             ElabSummary             Info        ./spyglass-1/cpu/lint/lint_turbo_rtl/spyglass_reports/SpyGlass/elab_summary.rpt                    0       2     Please refer file './spyglass-1/cpu/lint/lint_turbo_rtl/spyglass_reports/SpyGlass/elab_summary.rpt' for elab summary report
[B2]     N.A        InferBlackBox           inferblackbox           Info        N.A.                                                                                               0       10    Interfaces for blackbox modules have been inferred. Please refer to AnalyzeBBox violations for more details
[1]      N.A        TurboModeStatus         TurboModeStatus         Info        N.A.                                                                                               0       10    Turbo-Mode is enabled in the current run as turbo_struct license feature successfully checked out
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
[0;32mLint Passed [0m
 
 ``` 

 </details> 
<details><summary>synth ❌</summary> 

 ``` 
 2000
0
compile_ultra -gate_clock -retime
compile_ultra -incremental -gate_clock -retime
2
rm -f  *.log
rm -f  default.svf
rm -rf work
rm -rf reports
rm -rf outputs
make outputs/synth.ddc
make[1]: Entering directory '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth'
mkdir -p reports outputs
export ECE411_CLOCK_PERIOD_PS=2000 ;\
export ECE411_MIN_POWER=0 ;\
export ECE411_COMPILE_CMD="compile_ultra -gate_clock -retime" ;\
export ECE411_COMPILE_CMD_INC="compile_ultra -incremental -gate_clock -retime" ;\
export ECE411_COMPILE_ITER="2" ;\
export ECE411_DC_CORES=3 ;\
dc_shell -f synthesis.tcl |& tee reports/synthesis.log
/srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/bin/dc_shell: /srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/bin/snps_platform: /bin/csh: bad interpreter: No such file or directory
Information: License queuing is enabled. (DCSH-18)

                           Design Compiler Graphical 
                                 DC Ultra (TM)
                                  DFTMAX (TM)
                              Power Compiler (TM)
                                 DesignWare (R)
                                 DC Expert (TM)
                               Design Vision (TM)
                               HDL Compiler (TM)
                               VHDL Compiler (TM)
                                  DFT Compiler
                               Design Compiler(R)

               Version R-2020.09-SP4 for linux64 - Mar 02, 2021 

                    Copyright (c) 1988 - 2021 Synopsys, Inc.
   This software and the associated documentation are proprietary to Synopsys,
 Inc. This software may only be used in accordance with the terms and conditions
 of a written license agreement with Synopsys, Inc. All other use, reproduction,
            or distribution of this software is strictly prohibited.
Initializing...
source dc_warn.tcl
if {[getenv ECE411_MIN_POWER] eq "1"} {
   set power_enable_minpower true
}
set hdlin_ff_always_sync_set_reset true
true
set hdlin_ff_always_async_set_reset true
true
set hdlin_infer_multibit default_all
default_all
set hdlin_check_no_latch true
true
set hdlin_while_loop_iterations 2000000000
2000000000
set_host_options -max_cores [getenv ECE411_DC_CORES]
1
set_app_var report_default_significant_digits 6
6
set design_toplevel [getenv DESIGN_TOP]
cpu
define_design_lib WORK -path ./work
1
set alib_library_analysis_path [getenv STD_CELL_ALIB]
/srv/ece411ag/freepdk-45nm/alib
set symbol_library [list generic.sdb]
generic.sdb
set synthetic_library [list dw_foundation.sldb]
dw_foundation.sldb
set target_library [getenv STD_CELL_LIB]
/srv/ece411ag/freepdk-45nm/stdcells.db
set sram_library [getenv SRAM_LIB]
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db
if {$sram_library eq ""} {
   set link_library [list "*" $target_library $synthetic_library]
} else {
   set link_library [list "*" $target_library $synthetic_library $sram_library]
}
* /srv/ece411ag/freepdk-45nm/stdcells.db dw_foundation.sldb {/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db}
get_license DC-Ultra-Features
1
get_license DC-Ultra-Opt
1
set pkg_src [getenv PKG_SRCS]
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../pkg/types.sv
if {$pkg_src ne ""} {
   analyze -library WORK -format sverilog $pkg_src
}
Running PRESTO HDLC
Compiling source file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../pkg/types.sv
Presto compilation completed successfully.
Loading db file '/srv/ece411ag/freepdk-45nm/stdcells.db'
Loading db file '/srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/libraries/syn/dw_foundation.sldb'
1
set modules [split [getenv HDL_SRCS] " "]
/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/cache.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/cache_arbiter.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/cacheline_adapter.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/cpu.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/execute.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/free_list.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/fu_add.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/fu_br.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/fu_div_rem.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/fu_mem.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/fu_mult.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/lru_array.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/memory_queue.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/phys_regfile.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/provided_cache.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/queue.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/rat.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/rename_dispatch.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/reservation_station.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/rob.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/rrat.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/stage1.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/stage2.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/test.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/valid_array.sv /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/split_lsq.sv
foreach module $modules {
   analyze -library WORK -format sverilog "${module}"
}
Running PRESTO HDLC
Compiling source file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/cache.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/cache_arbiter.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/cacheline_adapter.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/cpu.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/execute.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/free_list.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/fu_add.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/fu_br.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/fu_div_rem.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/fu_mem.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/fu_mult.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/lru_array.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/memory_queue.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/phys_regfile.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/provided_cache.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/queue.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/rat.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/rename_dispatch.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/reservation_station.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/rob.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/rrat.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/stage1.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/stage2.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/test.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/valid_array.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/split_lsq.sv
Presto compilation completed successfully.
elaborate $design_toplevel
Loading db file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db'
Loading db file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db'
Loading db file '/srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/libraries/syn/gtech.db'
Loading db file '/srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/libraries/syn/standard.sldb'
  Loading link library 'NangateOpenCellLibrary'
  Loading link library 'mp_cache_data_array_TT_1p0V_25C_lib'
  Loading link library 'mp_cache_tag_array_TT_1p0V_25C_lib'
  Loading link library 'gtech'
Running PRESTO HDLC

Inferred memory devices in process
	in routine cpu line 199 in file
		'/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/cpu.sv'.
========================================================================================
|        Register Name         |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
========================================================================================
| global_branch_signal_reg_reg | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
|            pc_reg            | Flip-flop |  20   |  Y  | Y  | N  | N  | Y  | N  | N  |
|            pc_reg            | Flip-flop |  12   |  Y  | Y  | N  | N  | N  | Y  | N  |
|     initial_flag_reg_reg     | Flip-flop |   1   |  N  | N  | N  | N  | N  | Y  | N  |
|          order_reg           | Flip-flop |  64   |  Y  | Y  | N  | N  | Y  | N  | N  |
========================================================================================
Presto compilation completed successfully. (cpu)
Elaborated 1 design.
Current design is now 'cpu'.
Information: Building the design 'cache'. (HDL-193)

Inferred memory devices in process
	in routine cache line 54 in file
		'/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/cache.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
| dfp_write_read_reg  | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
|    stage_reg_reg    | Flip-flop |  104  |  Y  | Y  | N  | N  | Y  | N  | N  |
|  dfp_resp_reg_reg   | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
| write_done_reg_reg  | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
| dfp_switch_reg_reg  | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
===============================================================================
Presto compilation completed successfully. (cache)
Information: Building the design 'memory_queue'. (HDL-193)

Statistics for case statements in always block at line 118 in file
	'/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/memory_queue.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|           166            |    user/user     |
|           185            |    user/user     |
|           193            |    user/user     |
|           200            |    user/user     |
===============================================

Inferred memory devices in process
	in routine memory_queue line 76 in file
		'/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/memory_queue.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|    tail_reg_reg     | Flip-flop |   6   |  Y  | Y  | N  | N  | N  | Y  | N  |
|    head_reg_reg     | Flip-flop |   6   |  Y  | Y  | N  | N  | N  | Y  | N  |
|       mem_reg       | Flip-flop | 8384  |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================
Statistics for MUX_OPs
======================================================
| block name/line  | Inputs | Outputs | # sel inputs |
======================================================
| memory_queue/181 |   32   |    1    |      5       |
| memory_queue/181 |   32   |    1    |      5       |
| memory_queue/149 |   32   |   261   |      5       |
| memory_queue/166 |   32   |    3    |      5       |
| memory_queue/168 |   32   |    2    |      5       |
| memory_queue/168 |   32   |    2    |      5       |
| memory_queue/169 |   32   |    2    |      5       |
| memory_queue/170 |   32   |    1    |      5       |
| memory_queue/170 |   32   |    1    |      5       |
| memory_queue/171 |   32   |    1    |      5       |
| memory_queue/182 |   32   |   32    |      5       |
| memory_queue/184 |   32   |    7    |      5       |
| memory_queue/184 |   32   |    5    |      5       |
| memory_queue/185 |   32   |    3    |      5       |
| memory_queue/192 |   32   |    5    |      5       |
| memory_queue/193 |   32   |    3    |      5       |
| memory_queue/200 |   32   |    3    |      5       |
| memory_queue/201 |   32   |    8    |      5       |
| memory_queue/202 |   32   |   16    |      5       |
| memory_queue/203 |   32   |   32    |      5       |
| memory_queue/233 |   32   |   262   |      5       |
======================================================
Presto compilation completed successfully. (memory_queue)
Information: Building the design 'cache_arbiter'. (HDL-193)

Statistics for case statements in always block at line 112 in file
	'/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/cache_arbiter.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|           136            |     no/auto      |
===============================================

Inferred memory devices in process
	in routine cache_arbiter line 55 in file
		'/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/cache_arbiter.sv'.
=================================================================================
|     Register Name     |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
=================================================================================
|   missed_rw_reg_reg   | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
|       state_reg       | Flip-flop |  32   |  Y  | Y  | N  | N  | Y  | N  | N  |
|  d_dfp_read_reg_reg   | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
|  d_dfp_read_reg2_reg  | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
|  d_dfp_write_reg_reg  | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
| d_dfp_write_reg2_reg  | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
|  i_dfp_read_reg_reg   | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
|  i_dfp_read_reg2_reg  | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
|  i_dfp_addr_reg_reg   | Flip-flop |  20   |  Y  | Y  | N  | N  | Y  | N  | N  |
|  i_dfp_addr_reg_reg   | Flip-flop |  12   |  Y  | Y  | N  | N  | N  | Y  | N  |
|  d_dfp_addr_reg_reg   | Flip-flop |  32   |  Y  | Y  | N  | N  | Y  | N  | N  |
|  full_burst_reg_reg   | Flip-flop |  256  |  Y  | Y  | N  | N  | Y  | N  | N  |
|   missed_i_reg_reg    | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
|   missed_d_reg_reg    | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
| missed_i_addr_reg_reg | Flip-flop |  32   |  Y  | Y  | N  | N  | Y  | N  | N  |
| missed_d_addr_reg_reg | Flip-flop |  32   |  Y  | Y  | N  | N  | Y  | N  | N  |
=================================================================================
Presto compilation completed successfully. (cache_arbiter)
Information: Building the design 'cacheline_adapter'. (HDL-193)

Statistics for case statements in always block at line 45 in file
	'/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/cacheline_adapter.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            52            |    auto/auto     |
===============================================

Inferred memory devices in process
	in routine cacheline_adapter line 31 in file
		'/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/cacheline_adapter.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|  mem_wdata_reg_reg  | Flip-flop |  192  |  Y  | Y  | N  | N  | Y  | N  | N  |
|  burst_num_reg_reg  | Flip-flop |   2   |  Y  | Y  | N  | N  | Y  | N  | N  |
| cache_wdata_reg_reg | Flip-flop |  256  |  Y  | Y  | N  | N  | Y  | N  | N  |
|      state_reg      | Flip-flop |  32   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================
Presto compilation completed successfully. (cacheline_adapter)
Information: Building the design 'queue' instantiated from design 'cpu' with
	the parameters "DATA_WIDTH=32,QUEUE_DEPTH=32". (HDL-193)

Inferred memory devices in process
	in routine queue_DATA_WIDTH32_QUEUE_DEPTH32 line 42 in file
		'/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/queue.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|       mem_reg       | Flip-flop | 1056  |  Y  | Y  | N  | N  | Y  | N  | N  |
|    tail_reg_reg     | Flip-flop |   6   |  Y  | Y  | N  | N  | N  | Y  | N  |
|    head_reg_reg     | Flip-flop |   6   |  Y  | Y  | N  | N  | N  | Y  | N  |
===============================================================================
Statistics for MUX_OPs
==========================================================================
|           block name/line            | Inputs | Outputs | # sel inputs |
==========================================================================
| queue_DATA_WIDTH32_QUEUE_DEPTH32/77  |   32   |   32    |      5       |
| queue_DATA_WIDTH32_QUEUE_DEPTH32/94  |   32   |   32    |      5       |
| queue_DATA_WIDTH32_QUEUE_DEPTH32/99  |   32   |   33    |      5       |
| queue_DATA_WIDTH32_QUEUE_DEPTH32/108 |   32   |   33    |      5       |
==========================================================================
Presto compilation completed successfully. (queue_DATA_WIDTH32_QUEUE_DEPTH32)
Information: Building the design 'rename_dispatch'. (HDL-193)

Inferred memory devices in process
	in routine rename_dispatch line 52 in file
		'/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/rename_dispatch.sv'.
======================================================================================
|       Register Name        |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
======================================================================================
|  is_iqueue_empty_reg_reg   | Flip-flop |   1   |  N  | N  | N  | N  | N  | Y  | N  |
|      rob_full_reg_reg      | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
| is_free_list_empty_reg_reg | Flip-flop |   1   |  N  | N  | N  | N  | N  | Y  | N  |
======================================================================================
Presto compilation completed successfully. (rename_dispatch)
Information: Building the design 'rat'. (HDL-193)

Inferred memory devices in process
	in routine rat line 99 in file
		'/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/rat.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|       rat_reg       | Flip-flop |  112  |  Y  | Y  | N  | N  | Y  | N  | N  |
|       rat_reg       | Flip-flop |  80   |  Y  | Y  | N  | N  | N  | Y  | N  |
|      valid_reg      | Flip-flop |   1   |  N  | Y  | N  | N  | Y  | N  | N  |
|      valid_reg      | Flip-flop |  31   |  Y  | Y  | N  | N  | Y  | Y  | N  |
===============================================================================
Statistics for MUX_OPs
======================================================
| block name/line  | Inputs | Outputs | # sel inputs |
======================================================
|      rat/45      |   32   |    6    |      5       |
|      rat/49      |   32   |    6    |      5       |
|      rat/53      |   32   |    6    |      5       |
|      rat/57      |   32   |    6    |      5       |
|      rat/61      |   32   |    6    |      5       |
|      rat/67      |   32   |    6    |      5       |
|      rat/68      |   32   |    1    |      5       |
|      rat/80      |   32   |    6    |      5       |
|      rat/81      |   32   |    6    |      5       |
|      rat/82      |   32   |    1    |      5       |
|      rat/83      |   32   |    1    |      5       |
======================================================
Presto compilation completed successfully. (rat)
Information: Building the design 'rob'. (HDL-193)

Inferred memory devices in process
	in routine rob line 116 in file
		'/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/rob.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|       mem_reg       | Flip-flop | 13376 |  Y  | Y  | N  | N  | Y  | N  | N  |
|    tail_reg_reg     | Flip-flop |   6   |  Y  | Y  | N  | N  | N  | Y  | N  |
|    head_reg_reg     | Flip-flop |   6   |  Y  | Y  | N  | N  | N  | Y  | N  |
===============================================================================
Statistics for MUX_OPs
======================================================
| block name/line  | Inputs | Outputs | # sel inputs |
======================================================
|     rob/203      |   32   |   32    |      5       |
|     rob/272      |   32   |    1    |      5       |
|     rob/272      |   32   |    1    |      5       |
|     rob/277      |   32   |   352   |      5       |
|     rob/308      |   32   |   418   |      5       |
======================================================
Presto compilation completed successfully. (rob)
Information: Building the design 'rrat'. (HDL-193)

Inferred memory devices in process
	in routine rrat line 39 in file
		'/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/rrat.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      rrat_reg       | Flip-flop |  112  |  Y  | Y  | N  | N  | Y  | N  | N  |
|      rrat_reg       | Flip-flop |  80   |  Y  | Y  | N  | N  | N  | Y  | N  |
===============================================================================
Statistics for MUX_OPs
======================================================
| block name/line  | Inputs | Outputs | # sel inputs |
======================================================
|     rrat/30      |   32   |    6    |      5       |
======================================================
Presto compilation completed successfully. (rrat)
Information: Building the design 'free_list'. (HDL-193)

Inferred memory devices in process
	in routine free_list line 40 in file
		'/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/free_list.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|       mem_reg       | Flip-flop |  112  |  Y  | Y  | N  | N  | Y  | N  | N  |
|       mem_reg       | Flip-flop |  112  |  Y  | Y  | N  | N  | N  | Y  | N  |
|    tail_reg_reg     | Flip-flop |   1   |  N  | Y  | N  | N  | Y  | N  | N  |
|    tail_reg_reg     | Flip-flop |   5   |  Y  | Y  | N  | N  | N  | Y  | N  |
|    head_reg_reg     | Flip-flop |   6   |  Y  | Y  | N  | N  | N  | Y  | N  |
===============================================================================
Statistics for MUX_OPs
======================================================
| block name/line  | Inputs | Outputs | # sel inputs |
======================================================
|   free_list/85   |   32   |    6    |      5       |
|   free_list/90   |   32   |    7    |      5       |
======================================================
Presto compilation completed successfully. (free_list)
Information: Building the design 'phys_regfile'. (HDL-193)

Inferred memory devices in process
	in routine phys_regfile line 21 in file
		'/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/phys_regfile.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      data_reg       | Flip-flop | 2048  |  Y  | Y  | N  | N  | N  | N  | N  |
===============================================================================

Inferred memory devices in process
	in routine phys_regfile line 69 in file
		'/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/phys_regfile.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|    rs1_divs_reg     | Flip-flop |  78   |  Y  | Y  | N  | N  | Y  | N  | N  |
|    rs1_mul_1_reg    | Flip-flop |   6   |  Y  | Y  | N  | N  | Y  | N  | N  |
|    rs1_mul_2_reg    | Flip-flop |   6   |  Y  | Y  | N  | N  | Y  | N  | N  |
|    rs1_mul_3_reg    | Flip-flop |   6   |  Y  | Y  | N  | N  | Y  | N  | N  |
|    rs1_mul_4_reg    | Flip-flop |   6   |  Y  | Y  | N  | N  | Y  | N  | N  |
|    rs2_mul_1_reg    | Flip-flop |   6   |  Y  | Y  | N  | N  | Y  | N  | N  |
|    rs2_mul_2_reg    | Flip-flop |   6   |  Y  | Y  | N  | N  | Y  | N  | N  |
|    rs2_mul_3_reg    | Flip-flop |   6   |  Y  | Y  | N  | N  | Y  | N  | N  |
|    rs2_mul_4_reg    | Flip-flop |   6   |  Y  | Y  | N  | N  | Y  | N  | N  |
|    rs2_divs_reg     | Flip-flop |  78   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================
Statistics for MUX_OPs
======================================================
| block name/line  | Inputs | Outputs | # sel inputs |
======================================================
| phys_regfile/150 |   64   |   32    |      6       |
| phys_regfile/151 |   64   |   32    |      6       |
| phys_regfile/153 |   64   |   32    |      6       |
| phys_regfile/154 |   64   |   32    |      6       |
| phys_regfile/156 |   64   |   32    |      6       |
| phys_regfile/157 |   64   |   32    |      6       |
| phys_regfile/159 |   64   |   32    |      6       |
| phys_regfile/160 |   64   |   32    |      6       |
| phys_regfile/162 |   64   |   32    |      6       |
| phys_regfile/163 |   64   |   32    |      6       |
======================================================
Presto compilation completed successfully. (phys_regfile)
Information: Building the design 'execute'. (HDL-193)

Inferred memory devices in process
	in routine execute line 81 in file
		'/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/execute.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|   rd_mul_reg_reg    | Flip-flop |   5   |  Y  | Y  | N  | N  | Y  | N  | N  |
|   rob_mul_reg_reg   | Flip-flop |   5   |  Y  | Y  | N  | N  | Y  | N  | N  |
|   pd_mul_reg_reg    | Flip-flop |   6   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================

Inferred memory devices in process
	in routine execute line 103 in file
		'/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/execute.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|   rd_div_reg_reg    | Flip-flop |   5   |  Y  | Y  | N  | N  | Y  | N  | N  |
|   rob_div_reg_reg   | Flip-flop |   5   |  Y  | Y  | N  | N  | Y  | N  | N  |
|   pd_div_reg_reg    | Flip-flop |   6   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================

Inferred memory devices in process
	in routine execute line 115 in file
		'/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/execute.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      divs_reg       | Flip-flop |  13   |  Y  | Y  | N  | N  | Y  | N  | N  |
|      mul_1_reg      | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
|      mul_2_reg      | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
|      mul_3_reg      | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
|      mul_4_reg      | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
===============================================================================
Presto compilation completed successfully. (execute)
Information: Building the design 'reservation_station'. (HDL-193)

Inferred memory devices in process
	in routine reservation_station line 108 in file
		'/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/reservation_station.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
| regf_we_div_reg_reg | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
| regf_we_mul_reg_reg | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
===============================================================================

Inferred memory devices in process
	in routine reservation_station line 192 in file
		'/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/reservation_station.sv'.
============================================================================================
|          Register Name           |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
============================================================================================
|      cdb_ps_id_add_reg_reg       | Flip-flop |   6   |  Y  | Y  | N  | N  | N  | N  | N  |
|    cdb_ps_id_multiply_reg_reg    | Flip-flop |   6   |  Y  | Y  | N  | N  | N  | N  | N  |
|     cdb_ps_id_divide_reg_reg     | Flip-flop |   6   |  Y  | Y  | N  | N  | N  | N  | N  |
|     cdb_ps_id_branch_reg_reg     | Flip-flop |   6   |  Y  | Y  | N  | N  | N  | N  | N  |
|      cdb_ps_id_mem_reg_reg       | Flip-flop |   6   |  Y  | Y  | N  | N  | N  | N  | N  |
|   mem_reservation_station_reg    | Flip-flop | 1168  |  Y  | Y  | N  | N  | Y  | N  | N  |
|   add_reservation_station_reg    | Flip-flop | 1148  |  Y  | Y  | N  | N  | Y  | N  | N  |
| multiply_reservation_station_reg | Flip-flop |  574  |  Y  | Y  | N  | N  | Y  | N  | N  |
|  divide_reservation_station_reg  | Flip-flop |  574  |  Y  | Y  | N  | N  | Y  | N  | N  |
|  branch_reservation_station_reg  | Flip-flop | 1148  |  Y  | Y  | N  | N  | Y  | N  | N  |
============================================================================================
Presto compilation completed successfully. (reservation_station)
Information: Building the design 'stage_1'. (HDL-193)
Presto compilation completed successfully. (stage_1)
Information: Building the design 'stage_2'. (HDL-193)
Statistics for MUX_OPs
======================================================
| block name/line  | Inputs | Outputs | # sel inputs |
======================================================
|   stage_2/114    |   4    |    2    |      2       |
|   stage_2/116    |   4    |   23    |      2       |
|   stage_2/118    |   4    |   256   |      2       |
======================================================
Presto compilation completed successfully. (stage_2)
Information: Building the design 'valid_array'. (HDL-193)

Inferred memory devices in process
	in routine valid_array line 24 in file
		'/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/valid_array.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|    din0_reg_reg     | Flip-flop |   1   |  N  | N  | N  | N  | N  | N  | N  |
|    web0_reg_reg     | Flip-flop |   1   |  N  | N  | N  | N  | N  | Y  | N  |
|    addr0_reg_reg    | Flip-flop |   4   |  Y  | Y  | N  | N  | N  | N  | N  |
===============================================================================

Inferred memory devices in process
	in routine valid_array line 38 in file
		'/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/valid_array.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
| internal_array_reg  | Flip-flop |  16   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================
Statistics for MUX_OPs
======================================================
| block name/line  | Inputs | Outputs | # sel inputs |
======================================================
|  valid_array/51  |   16   |    1    |      4       |
======================================================
Presto compilation completed successfully. (valid_array)
Information: Building the design 'lru_array'. (HDL-193)

Inferred memory devices in process
	in routine lru_array line 33 in file
		'/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/lru_array.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|    din1_reg_reg     | Flip-flop |   3   |  Y  | Y  | N  | N  | N  | N  | N  |
|    web0_reg_reg     | Flip-flop |   1   |  N  | N  | N  | N  | N  | Y  | N  |
|    addr0_reg_reg    | Flip-flop |   4   |  Y  | Y  | N  | N  | N  | N  | N  |
|    din0_reg_reg     | Flip-flop |   3   |  Y  | Y  | N  | N  | N  | N  | N  |
|    web1_reg_reg     | Flip-flop |   1   |  N  | N  | N  | N  | N  | Y  | N  |
|    addr1_reg_reg    | Flip-flop |   4   |  Y  | Y  | N  | N  | N  | N  | N  |
===============================================================================

Inferred memory devices in process
	in routine lru_array line 55 in file
		'/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/lru_array.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
| internal_array_reg  | Flip-flop |  48   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================
Statistics for MUX_OPs
======================================================
| block name/line  | Inputs | Outputs | # sel inputs |
======================================================
|   lru_array/71   |   16   |    3    |      4       |
|   lru_array/72   |   16   |    3    |      4       |
======================================================
Presto compilation completed successfully. (lru_array)
Information: Building the design 'fu_add'. (HDL-193)

Statistics for case statements in always block at line 34 in file
	'/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/fu_add.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            35            |    user/user     |
===============================================

Statistics for case statements in always block at line 48 in file
	'/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/fu_add.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            49            |    user/user     |
===============================================

Statistics for case statements in always block at line 60 in file
	'/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/fu_add.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            71            |    user/user     |
|            75            |    user/user     |
|           101            |    user/user     |
===============================================
Presto compilation completed successfully. (fu_add)
Information: Building the design 'fu_mult'. (HDL-193)

Statistics for case statements in always block at line 62 in file
	'/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/fu_mult.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            76            |    user/user     |
|           110            |    user/user     |
===============================================

Inferred memory devices in process
	in routine fu_mult line 46 in file
		'/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/fu_mult.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      flush_reg      | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
|  complete_prev_reg  | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
| decode_info_reg_reg | Flip-flop |   3   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================
Presto compilation completed successfully. (fu_mult)
Information: Building the design 'fu_div_rem'. (HDL-193)

Statistics for case statements in always block at line 69 in file
	'/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/fu_div_rem.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            83            |    user/user     |
|           117            |    user/user     |
===============================================

Inferred memory devices in process
	in routine fu_div_rem line 32 in file
		'/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/fu_div_rem.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      flush_reg      | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
|  complete_prev_reg  | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
| decode_info_reg_reg | Flip-flop |   3   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================
Presto compilation completed successfully. (fu_div_rem)
Information: Building the design 'fu_br'. (HDL-193)

Statistics for case statements in always block at line 35 in file
	'/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/fu_br.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            36            |    user/user     |
===============================================

Statistics for case statements in always block at line 47 in file
	'/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/../hdl/fu_br.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            59            |    user/user     |
===============================================
Presto compilation completed successfully. (fu_br)
Information: Building the design 'fu_mem'. (HDL-193)
Presto compilation completed successfully. (fu_mem)
1
current_design $design_toplevel
Current design is 'cpu'.
{cpu}
change_names -rules verilog -hierarchy
1
check_design
 
****************************************
check_design summary:
Version:     R-2020.09-SP4
Date:        Mon Dec  2 19:21:09 2024
****************************************

                   Name                                            Total
--------------------------------------------------------------------------------
No issues found.
--------------------------------------------------------------------------------

1
set_wire_load_model -name "5K_hvratio_1_1"
1
set_wire_load_mode enclosed
1
source constraints.sdc
1
link

  Linking design 'cpu'
  Using the following designs and libraries:
  --------------------------------------------------------------------------
  * (23 designs)              /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/cpu.db, etc
  NangateOpenCellLibrary (library)
                              /srv/ece411ag/freepdk-45nm/stdcells.db
  dw_foundation.sldb (library)
                              /srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/libraries/syn/dw_foundation.sldb
  mp_cache_data_array_TT_1p0V_25C_lib (library)
                              /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db
  mp_cache_tag_array_TT_1p0V_25C_lib (library)
                              /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db

1
eval [getenv ECE411_COMPILE_CMD]
Information: Performing power optimization. (PWR-850)
Alib files are up-to-date.
Information: Running optimization using a maximum of 3 cores. (OPT-1500)
Information: Evaluating DesignWare library utilization. (UISN-27)

============================================================================
| DesignWare Building Block Library  |         Version         | Available |
============================================================================
| Basic DW Building Blocks           | R-2020.09-DWBB_202009.4 |     *     |
| Licensed DW Building Blocks        | R-2020.09-DWBB_202009.4 |     *     |
============================================================================

Information: Sequential output inversion is enabled.  SVF file must be used for formal verification. (OPT-1208)
Information: Retiming is enabled. SVF file must be used for formal verification. (OPT-1210)


Information: Uniquified 2 instances of design 'cache'. (OPT-1056)
Information: Uniquified 2 instances of design 'queue_DATA_WIDTH32_QUEUE_DEPTH32'. (OPT-1056)
Information: Uniquified 2 instances of design 'stage_1'. (OPT-1056)
Information: Uniquified 2 instances of design 'stage_2'. (OPT-1056)
Information: Uniquified 8 instances of design 'valid_array'. (OPT-1056)
Information: Uniquified 2 instances of design 'lru_array'. (OPT-1056)
  Simplifying Design 'cpu'
Information: Performing clock-gating with positive edge logic: 'integrated' and negative edge logic: 'or'. (PWR-1047)
Information: propagating constant for register pc_reg_31_
Information: propagating constant for register pc_reg_30_
Information: propagating constant for register pc_reg_29_
Information: propagating constant for register pc_reg_28_
Information: propagating constant for register pc_reg_27_
Information: propagating constant for register pc_reg_26_
Information: propagating constant for register pc_reg_25_
Information: propagating constant for register pc_reg_24_
Information: propagating constant for register pc_reg_23_
Information: propagating constant for register pc_reg_22_
Information: propagating constant for register pc_reg_21_
Information: propagating constant for register pc_reg_20_
Information: propagating constant for register pc_reg_19_
Information: propagating constant for register pc_reg_18_
Information: propagating constant for register pc_reg_17_
Information: propagating constant for register pc_reg_16_
Information: propagating constant for register pc_reg_15_
Information: propagating constant for register pc_reg_14_
Information: propagating constant for register pc_reg_13_
Information: propagating constant for register pc_reg_12_
Information: propagating constant for register pc_reg_11_
Information: propagating constant for register pc_reg_10_
Information: propagating constant for register pc_reg_9_
Information: propagating constant for register pc_reg_8_
Information: propagating constant for register pc_reg_7_
Information: propagating constant for register pc_reg_6_
Information: propagating constant for register pc_reg_5_
Information: propagating constant for register pc_reg_4_
Information: propagating constant for register pc_reg_3_
Information: propagating constant for register pc_reg_2_
Information: propagating constant for register pc_reg_1_
Information: propagating constant for register pc_reg_0_
Information: propagating constant for register rob_i/tail_reg_reg_5_
Information: propagating constant for register rob_i/head_reg_reg_5_
Information: propagating constant for register memory_queue_i/tail_reg_reg_5_
Information: propagating constant for register memory_queue_i/head_reg_reg_5_
Information: propagating constant for register cache_d/lru_array/din1_reg_reg_2_
Information: propagating constant for register cache_d/lru_array/din1_reg_reg_1_
Information: propagating constant for register cache_d/lru_array/din1_reg_reg_0_
Information: propagating constant for register cache_d/lru_array/addr0_reg_reg_3_
Information: propagating constant for register cache_d/lru_array/addr0_reg_reg_2_
Information: propagating constant for register cache_d/lru_array/addr0_reg_reg_1_
Information: propagating constant for register cache_d/lru_array/addr0_reg_reg_0_
Information: propagating constant for register cache_d/lru_array/din0_reg_reg_2_
Information: propagating constant for register cache_d/lru_array/din0_reg_reg_1_
Information: propagating constant for register cache_d/lru_array/din0_reg_reg_0_
Information: propagating constant for register cache_d/lru_array/addr1_reg_reg_3_
Information: propagating constant for register cache_d/lru_array/addr1_reg_reg_2_
Information: propagating constant for register cache_d/lru_array/addr1_reg_reg_1_
Information: propagating constant for register cache_d/lru_array/addr1_reg_reg_0_
Information: propagating constant for register cache_d/arrays_3__valid_array/din0_reg_reg_0_
Information: propagating constant for register cache_d/arrays_3__valid_array/web0_reg_reg
Information: propagating constant for register cache_d/arrays_3__valid_array/addr0_reg_reg_3_
Information: propagating constant for register cache_d/arrays_3__valid_array/addr0_reg_reg_2_
Information: propagating constant for register cache_d/arrays_3__valid_array/addr0_reg_reg_1_
Information: propagating constant for register cache_d/arrays_3__valid_array/addr0_reg_reg_0_
Information: propagating constant for register cache_i/arrays_3__valid_array/din0_reg_reg_0_
Information: propagating constant for register cache_i/arrays_3__valid_array/web0_reg_reg
Information: propagating constant for register cache_i/arrays_3__valid_array/addr0_reg_reg_3_
Information: propagating constant for register cache_i/arrays_3__valid_array/addr0_reg_reg_2_
Information: propagating constant for register cache_i/arrays_3__valid_array/addr0_reg_reg_1_
Information: propagating constant for register cache_i/arrays_3__valid_array/addr0_reg_reg_0_

Loaded alib file '/srv/ece411ag/freepdk-45nm/alib/alib-52/stdcells.db.alib'
  Building model 'DW01_NAND2'
Information: Ungrouping 19 of 534 hierarchies before Pass 1 (OPT-775)
Information: State dependent leakage is now switched from on to off.

  Beginning Pass 1 Mapping
  ------------------------
...................
  Processing 'rob'
Information: Added key list 'DesignWare' to design 'rob'. (DDB-72)
 Implement Synthetic for 'rob'.
  Processing 'memory_queue'
Information: Added key list 'DesignWare' to design 'memory_queue'. (DDB-72)
 Implement Synthetic for 'memory_queue'.
  Processing 'reservation_station'
Information: Added key list 'DesignWare' to design 'reservation_station'. (DDB-72)
  Processing 'phys_regfile'
Information: Added key list 'DesignWare' to design 'phys_regfile'. (DDB-72)
  Processing 'stage_1_0'
  Processing 'stage_1_1'
  Processing 'cpu'
Information: Added key list 'DesignWare' to design 'cpu'. (DDB-72)
 Implement Synthetic for 'cpu'.
  Processing 'queue_DATA_WIDTH32_QUEUE_DEPTH32_1'
Information: Added key list 'DesignWare' to design 'queue_DATA_WIDTH32_QUEUE_DEPTH32_1'. (DDB-72)
 Implement Synthetic for 'queue_DATA_WIDTH32_QUEUE_DEPTH32_1'.
  Processing 'queue_DATA_WIDTH32_QUEUE_DEPTH32_0'
Information: Added key list 'DesignWare' to design 'queue_DATA_WIDTH32_QUEUE_DEPTH32_0'. (DDB-72)
 Implement Synthetic for 'queue_DATA_WIDTH32_QUEUE_DEPTH32_0'.
  Processing 'cache_arbiter'
  Processing 'stage_2_0'
Information: Added key list 'DesignWare' to design 'stage_2_0'. (DDB-72)
  Processing 'cache_0'
Information: Added key list 'DesignWare' to design 'cache_0'. (DDB-72)
  Processing 'cache_1'
Information: Added key list 'DesignWare' to design 'cache_1'. (DDB-72)
  Processing 'execute'
Information: Added key list 'DesignWare' to design 'execute'. (DDB-72)
 Implement Synthetic for 'execute'.
Information: Performing clock-gating on design execute_DW_div_seq_J14_0. (PWR-730)
  Processing 'execute_DW_div_seq_J14_0'
  Processing 'execute_DW01_absval_J14_0'
Information: Performing clock-gating on design execute_DW_cntr_scnto_J14_0. (PWR-730)
  Processing 'execute_DW_cntr_scnto_J14_0'
Information: Performing clock-gating on design execute_DW_mult_seq_J14_0. (PWR-730)
  Processing 'execute_DW_mult_seq_J14_0'
Information: Performing clock-gating on design execute_DW_cntr_scnto_J14_1. (PWR-730)
  Processing 'execute_DW_cntr_scnto_J14_1'
  Processing 'rat'
Information: Added key list 'DesignWare' to design 'rat'. (DDB-72)
  Processing 'stage_2_1'
Information: Added key list 'DesignWare' to design 'stage_2_1'. (DDB-72)
  Processing 'SNPS_CLOCK_GATE_HIGH_free_list_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_rrat_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_cacheline_adapter_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_reservation_station_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_fu_div_rem'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_fu_mult'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_execute_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_phys_regfile_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_rob_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_rat_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_cache_arbiter_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_memory_queue_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_valid_array_0_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_lru_array_0_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_valid_array_4_0'
  Mapping integrated clock gating circuitry

  Updating timing information
Information: Updating design information... (UID-85)
Information: Performing clock-gating on design phys_regfile. (PWR-730)
Information: Performing clock-gating on design cache_1. (PWR-730)
Information: Performing clock-gating on design cache_0. (PWR-730)
Information: Performing clock-gating on design cpu. (PWR-730)
Information: Performing clock-gating on design rat. (PWR-730)
Information: Performing clock-gating on design reservation_station. (PWR-730)
Information: Performing clock-gating on design execute. (PWR-730)
Information: Performing clock-gating on design execute_DW_div_seq_J14_0. (PWR-730)
Information: Performing clock-gating on design memory_queue. (PWR-730)
Information: Performing clock-gating on design rob. (PWR-730)
Information: Performing clock-gating on design cache_arbiter. (PWR-730)
Information: Performing clock-gating on design queue_DATA_WIDTH32_QUEUE_DEPTH32_1. (PWR-730)
Information: Performing clock-gating on design queue_DATA_WIDTH32_QUEUE_DEPTH32_0. (PWR-730)
Information: Converting capacitance units for library 'mp_cache_data_array_TT_1p0V_25C_lib' since those in library 'NangateOpenCellLibrary' differ. (TIM-106)
Information: Converting capacitance units for library 'mp_cache_tag_array_TT_1p0V_25C_lib' since those in library 'NangateOpenCellLibrary' differ. (TIM-106)
Information: Complementing port 'regf_we_mem' in design 'rat'.
	 The new name of the port is 'regf_we_mem_BAR'. (OPT-319)
Information: Complementing port 'mem_cdb_valid' in design 'rob'.
	 The new name of the port is 'mem_cdb_valid_BAR'. (OPT-319)
Information: Complementing port 'regf_we_mem' in design 'phys_regfile'.
	 The new name of the port is 'regf_we_mem_BAR'. (OPT-319)
Information: Complementing port 'regf_we_mem' in design 'reservation_station'.
	 The new name of the port is 'regf_we_mem_BAR'. (OPT-319)
Information: Complementing port 'cdb_mem[233]' in design 'memory_queue'.
	 The new name of the port is 'cdb_mem[233]_BAR'. (OPT-319)
Information: Complementing port 'rob_out[415]' in design 'rob'.
	 The new name of the port is 'rob_out[415]_BAR'. (OPT-319)
Information: Complementing port 'rob_out[414]' in design 'rob'.
	 The new name of the port is 'rob_out[414]_BAR'. (OPT-319)
Information: Complementing port 'rob_out[413]' in design 'rob'.
	 The new name of the port is 'rob_out[413]_BAR'. (OPT-319)
Information: Complementing port 'rob_out[412]' in design 'rob'.
	 The new name of the port is 'rob_out[412]_BAR'. (OPT-319)
Information: Complementing port 'rob_out[411]' in design 'rob'.
	 The new name of the port is 'rob_out[411]_BAR'. (OPT-319)
Information: Complementing port 'rob_out[410]' in design 'rob'.
	 The new name of the port is 'rob_out[410]_BAR'. (OPT-319)
Information: Complementing port 'rob_out[237]' in design 'rob'.
	 The new name of the port is 'rob_out[237]_BAR'. (OPT-319)
Information: Complementing port 'rob_out[236]' in design 'rob'.
	 The new name of the port is 'rob_out[236]_BAR'. (OPT-319)
Information: Complementing port 'rob_out[235]' in design 'rob'.
	 The new name of the port is 'rob_out[235]_BAR'. (OPT-319)
Information: Complementing port 'rob_out[234]' in design 'rob'.
	 The new name of the port is 'rob_out[234]_BAR'. (OPT-319)
Information: Complementing port 'rob_out[233]' in design 'rob'.
	 The new name of the port is 'rob_out[233]_BAR'. (OPT-319)
Information: Complementing port 'dequeue_valid' in design 'rob'.
	 The new name of the port is 'dequeue_valid_BAR'. (OPT-319)
Information: Complementing port 'dequeue_in' in design 'queue_DATA_WIDTH32_QUEUE_DEPTH32_1'.
	 The new name of the port is 'dequeue_in_BAR'. (OPT-319)
Information: Complementing port 'dequeue_in' in design 'queue_DATA_WIDTH32_QUEUE_DEPTH32_0'.
	 The new name of the port is 'dequeue_in_BAR'. (OPT-319)
Information: Complementing port 'regf_we_dispatch' in design 'rat'.
	 The new name of the port is 'regf_we_dispatch_BAR'. (OPT-319)
Information: Complementing port 'enqueue_valid' in design 'rob'.
	 The new name of the port is 'enqueue_valid_BAR'. (OPT-319)
Information: Complementing port 'regf_we' in design 'rob'.
	 The new name of the port is 'regf_we_BAR'. (OPT-319)
Information: Complementing port 'dispatch_valid' in design 'reservation_station'.
	 The new name of the port is 'dispatch_valid_BAR'. (OPT-319)
Information: Complementing port 'tag_in[95]' in design 'stage_1_1'.
	 The new name of the port is 'tag_in[95]_BAR'. (OPT-319)
Information: Complementing port 'tag_in[71]' in design 'stage_1_1'.
	 The new name of the port is 'tag_in[71]_BAR'. (OPT-319)
Information: Complementing port 'tag_in[47]' in design 'stage_1_1'.
	 The new name of the port is 'tag_in[47]_BAR'. (OPT-319)
Information: Complementing port 'tag_in[23]' in design 'stage_1_1'.
	 The new name of the port is 'tag_in[23]_BAR'. (OPT-319)
Information: Complementing port 'dirty_halt' in design 'stage_1_1'.
	 The new name of the port is 'dirty_halt_BAR'. (OPT-319)
Information: Complementing port 'dirty_halt' in design 'stage_2_1'.
	 The new name of the port is 'dirty_halt_BAR'. (OPT-319)

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:04:55  406138.1  15988.63 161363232.0 15084394.5                           6548222.5000      0.00  
    0:04:55  406138.1  15988.63 161363232.0 15084394.5                           6548222.5000      0.00  
Information: Complementing port 'tag_in[95]' in design 'stage_1_0'.
	 The new name of the port is 'tag_in[95]_BAR'. (OPT-319)
Information: Complementing port 'tag_in[71]' in design 'stage_1_0'.
	 The new name of the port is 'tag_in[71]_BAR'. (OPT-319)
Information: Complementing port 'tag_in[47]' in design 'stage_1_0'.
	 The new name of the port is 'tag_in[47]_BAR'. (OPT-319)
Information: Complementing port 'tag_in[23]' in design 'stage_1_0'.
	 The new name of the port is 'tag_in[23]_BAR'. (OPT-319)
Information: Complementing port 'dirty_halt' in design 'stage_1_0'.
	 The new name of the port is 'dirty_halt_BAR'. (OPT-319)
Information: Complementing port 'dirty_halt' in design 'stage_2_0'.
	 The new name of the port is 'dirty_halt_BAR'. (OPT-319)
Information: In design 'cpu', the register 'cache_i/arrays_1__valid_array/addr0_reg_reg_1_' is removed because it is merged to 'cache_i/arrays_0__valid_array/addr0_reg_reg_1_'. (OPT-1215)
Information: In design 'cpu', the register 'cache_i/arrays_2__valid_array/addr0_reg_reg_1_' is removed because it is merged to 'cache_i/arrays_0__valid_array/addr0_reg_reg_1_'. (OPT-1215)
Information: In design 'cpu', the register 'cache_i/arrays_3__valid_array/addr0_reg_reg_1_' is removed because it is merged to 'cache_i/arrays_0__valid_array/addr0_reg_reg_1_'. (OPT-1215)
Information: In design 'cpu', the register 'cache_i/arrays_1__valid_array/addr0_reg_reg_2_' is removed because it is merged to 'cache_i/arrays_0__valid_array/addr0_reg_reg_2_'. (OPT-1215)
Information: In design 'cpu', the register 'cache_i/arrays_2__valid_array/addr0_reg_reg_2_' is removed because it is merged to 'cache_i/arrays_0__valid_array/addr0_reg_reg_2_'. (OPT-1215)
Information: In design 'cpu', the register 'cache_i/arrays_3__valid_array/addr0_reg_reg_2_' is removed because it is merged to 'cache_i/arrays_0__valid_array/addr0_reg_reg_2_'. (OPT-1215)
Information: In design 'cpu', the register 'cache_i/arrays_1__valid_array/addr0_reg_reg_0_' is removed because it is merged to 'cache_i/arrays_0__valid_array/addr0_reg_reg_0_'. (OPT-1215)
Information: In design 'cpu', the register 'cache_i/arrays_2__valid_array/addr0_reg_reg_0_' is removed because it is merged to 'cache_i/arrays_0__valid_array/addr0_reg_reg_0_'. (OPT-1215)
Information: In design 'cpu', the register 'cache_i/arrays_3__valid_array/addr0_reg_reg_0_' is removed because it is merged to 'cache_i/arrays_0__valid_array/addr0_reg_reg_0_'. (OPT-1215)
Information: In design 'cpu', the register 'cache_i/arrays_1__valid_array/addr0_reg_reg_3_' is removed because it is merged to 'cache_i/arrays_0__valid_array/addr0_reg_reg_3_'. (OPT-1215)
Information: In design 'cpu', the register 'cache_i/arrays_2__valid_array/addr0_reg_reg_3_' is removed because it is merged to 'cache_i/arrays_0__valid_array/addr0_reg_reg_3_'. (OPT-1215)
Information: In design 'cpu', the register 'cache_i/arrays_3__valid_array/addr0_reg_reg_3_' is removed because it is merged to 'cache_i/arrays_0__valid_array/addr0_reg_reg_3_'. (OPT-1215)

  Beginning Mapping Optimizations  (Ultra High effort)
  -------------------------------
Information: Updating design information... (UID-85)
Information: Ungrouping hierarchy cache_i 'cache_1' #insts = 634. (OPT-777)
Information: Ungrouping hierarchy cache_d 'cache_0' #insts = 689. (OPT-777)
Information: Ungrouping hierarchy arbiter 'cache_arbiter' #insts = 1358. (OPT-777)
Information: Ungrouping hierarchy rat_i 'rat' #insts = 2488. (OPT-777)
Information: Ungrouping hierarchy cache_i/stage_1_i 'stage_1_1' #insts = 1541. (OPT-777)
Information: Ungrouping hierarchy cache_d/stage_1_i 'stage_1_0' #insts = 1876. (OPT-777)
  Building model 'DW01_NAND2'
  Building model 'DW_and_tree_width5'
  Building model 'DW_cntr_scnto_width5_count_to12_rst_mode0_dcod_mode0'
Information: Performing clock-gating on design execute_DW_div_seq_0. (PWR-730)
    0:06:32  388183.6      1.69    3942.0 6853182.1                           6128231.0000      0.00  
  Structuring 'execute_DW_div_seq_0'
  Mapping 'execute_DW_div_seq_0'
Information: Performing clock-gating on design DW_cntr_scnto_width5_count_to12_rst_mode0_dcod_mode0. (PWR-730)
  Structuring 'DW_cntr_scnto_width5_count_to12_rst_mode0_dcod_mode0'
  Mapping 'DW_cntr_scnto_width5_count_to12_rst_mode0_dcod_mode0'
  Building model 'DW_cntr_scnto_width5_count_to12_rst_mode0_dcod_mode0'
Information: Performing clock-gating on design execute_DW_div_seq_1. (PWR-730)
  Structuring 'execute_DW_div_seq_1'
  Mapping 'execute_DW_div_seq_1'
Information: Performing clock-gating on design DW_cntr_scnto_width5_count_to12_rst_mode0_dcod_mode0. (PWR-730)
  Structuring 'DW_cntr_scnto_width5_count_to12_rst_mode0_dcod_mode0'
  Mapping 'DW_cntr_scnto_width5_count_to12_rst_mode0_dcod_mode0'
  Mapping Optimization (Phase 1)

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:09:20  475494.4      6.99   66745.8   12418.6                           14623927.0000      0.00  
    0:09:26  470456.4      7.02   66908.1   13711.2                           14412959.0000      0.00  

  Beginning Constant Register Removal
  -----------------------------------
    0:09:33  479368.4      7.39   68300.6   13615.3                           14883989.0000      0.00  
    0:09:38  476661.6      7.43   68871.5   14249.1                           14772286.0000      0.00  

  Beginning Global Optimizations
  ------------------------------
  Numerical Synthesis (Phase 1)
  Numerical Synthesis (Phase 2)
  Global Optimization (Phase 1)
  Global Optimization (Phase 2)
  Global Optimization (Phase 3)
  Global Optimization (Phase 4)
  Global Optimization (Phase 5)
  Global Optimization (Phase 6)
  Global Optimization (Phase 7)
  Global Optimization (Phase 8)
  Global Optimization (Phase 9)
  Global Optimization (Phase 10)
  Global Optimization (Phase 11)
  Global Optimization (Phase 12)
  Global Optimization (Phase 13)
  Global Optimization (Phase 14)
  Global Optimization (Phase 15)
  Global Optimization (Phase 16)
  Global Optimization (Phase 17)
  Global Optimization (Phase 18)
  Global Optimization (Phase 19)
  Global Optimization (Phase 20)
  Global Optimization (Phase 21)
  Global Optimization (Phase 22)
  Global Optimization (Phase 23)
  Global Optimization (Phase 24)
  Global Optimization (Phase 25)
  Global Optimization (Phase 26)
  Global Optimization (Phase 27)
  Global Optimization (Phase 28)
  Global Optimization (Phase 29)
  Global Optimization (Phase 30)
  Global Optimization (Phase 31)
  Global Optimization (Phase 32)
  Selecting critical implementations
  Mapping 'execute_DW01_add_0'
  Mapping 'execute_DW01_add_1'
  Mapping 'execute_DW01_add_2'
  Mapping 'execute_DW01_add_3'
  Mapping 'execute_DP_OP_153J14_126_7210_0'
  Mapping 'execute_DP_OP_145J14_122_209_0'
  Mapping 'execute_DW01_add_4'
  Mapping 'execute_DW01_add_5'
  Mapping 'execute_DW01_add_6'
  Mapping 'execute_DW01_add_7'
  Mapping 'execute_DW01_add_8'
  Mapping 'execute_DW01_add_9'
  Mapping 'execute_DW_cmp_0'
  Mapping 'execute_DW_cmp_1'
  Mapping 'execute_DP_OP_153J14_126_7210_1'

  Beginning Isolate Ports
  -----------------------

  Beginning Delay Optimization
  ----------------------------
    0:10:32  271986.3      2.37   14774.0    9968.0                           4361753.5000      0.00  
    0:10:52  272044.0      0.65    2532.9    9775.6                           4372812.5000      0.00  
    0:10:52  272044.0      0.65    2532.9    9775.6                           4372812.5000      0.00  
    0:10:56  272040.3      0.66    2540.7    9938.5                           4373929.0000      0.00  
    0:11:08  271227.9      0.71    2543.7   10060.1                           4355817.0000      0.00  
    0:11:14  270893.9      0.70    2477.1    9946.7                           4346525.5000      0.00  

  Beginning WLM Backend Optimization
  --------------------------------------
    0:11:30  270376.7      0.70    2374.3    9928.6                           4309599.5000      0.00  
    0:11:34  269762.8      0.70    2247.8    9845.4                           4273386.0000      0.00  
    0:11:38  269042.0      0.65    2084.0    9816.9                           4234403.5000      0.00  
    0:11:41  267948.4      0.65    2042.1    9715.5                           4192375.2500      0.00  
    0:11:51  266827.0      0.65    2128.1    9715.5                           4148396.5000      0.00  
    0:11:54  265727.1      0.65    2124.2    9711.5                           4107070.7500      0.00  
    0:11:57  264979.1      0.65    2118.7    9673.8                           4079196.0000      0.00  
    0:12:00  264368.1      0.65    2113.2    9649.8                           4055020.2500      0.00  
    0:12:05  264162.7      0.60    1725.6    9624.9                           4044489.0000      0.00  
    0:12:05  264162.7      0.60    1725.6    9624.9                           4044489.0000      0.00  
    0:12:13  260602.6      0.60    1581.1    9345.3                           3798304.7500      0.00  
    0:12:14  260602.6      0.60    1581.1    9345.3                           3798304.7500      0.00  
    0:12:19  261024.7      0.48    1250.2    9380.6                           3813617.2500      0.00  
    0:12:19  261024.7      0.48    1250.2    9380.6                           3813617.2500      0.00  
    0:12:19  261024.5      0.48    1245.2    9380.6                           3813681.5000      0.00  
    0:12:19  261024.5      0.48    1245.2    9380.6                           3813681.5000      0.00  
    0:12:19  261026.8      0.48    1245.2    9380.6                           3813761.7500      0.00  
    0:12:20  261026.8      0.48    1245.2    9380.6                           3813761.7500      0.00  
    0:12:27  261097.9      0.41     999.2    9377.1                           3816640.0000      0.00  
    0:12:27  261097.9      0.41     999.2    9377.1                           3816640.0000      0.00  
    0:12:27  261118.9      0.41     999.6    9377.1                           3817392.5000      0.00  
    0:12:27  261118.9      0.41     999.6    9377.1                           3817392.5000      0.00  
    0:12:30  261155.1      0.39     973.5    9377.1                           3820290.2500      0.00  
    0:12:30  261155.1      0.39     973.5    9377.1                           3820290.2500      0.00  
    0:12:31  261155.1      0.39     973.5    9377.1                           3820290.2500      0.00  
    0:12:31  261155.1      0.39     973.5    9377.1                           3820290.2500      0.00  
    0:12:31  261155.1      0.39     973.5    9377.1                           3820290.2500      0.00  
    0:12:31  261155.1      0.39     973.5    9377.1                           3820290.2500      0.00  
    0:12:31  261155.1      0.39     973.5    9377.1                           3820290.2500      0.00  


  Beginning Design Rule Fixing  (max_transition)  (max_fanout)  (max_capacitance)
  ----------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:12:31  261155.1      0.39     973.5    9377.1                           3820290.2500      0.00  
  Global Optimization (Phase 33)
  Global Optimization (Phase 34)
  Global Optimization (Phase 35)
    0:12:35  261299.2      0.39     959.8    7586.6 rob_i/mem_reg_18__pc_branch__26_/SE 3824686.0000      0.00  
    0:12:39  261250.3      0.36     909.4    7585.8 rat_i/valid_reg_14_/D     3821641.2500      0.00  
    0:12:41  261226.3      0.35     889.6    7585.8 rob_i/mem_reg_0__pc_branch__27_/SE 3819781.2500      0.00  
    0:12:43  261239.1      0.34     878.9    7585.8 reservation_stations_i/branch_reservation_station_reg_2__ps1_v_/SE 3820005.2500      0.00  
    0:12:45  261233.5      0.33     867.3    7585.8 rat_i/valid_reg_14_/D     3819555.2500      0.00  
    0:12:47  261201.3      0.32     855.2    7585.8 rob_i/mem_reg_0__pc_branch__21_/SE 3817482.2500      0.00  
    0:12:50  261184.6      0.31     818.4    7585.8 rob_i/mem_reg_22__pc_branch__28_/SE 3816119.0000      0.00  
    0:12:52  261166.2      0.30     804.3    7585.8 reservation_stations_i/branch_reservation_station_reg_3__ps2_v_/SE 3815083.7500      0.00  
    0:12:56  261151.1      0.29     773.8    7585.8 rob_i/mem_reg_1__pc_branch__31_/SE 3814034.2500      0.00  
    0:12:58  261180.3      0.29     753.1    7585.8 reservation_stations_i/branch_reservation_station_reg_3__ps2_v_/SE 3815052.0000      0.00  
    0:13:00  261201.1      0.29     749.0    7585.8 rob_i/mem_reg_24__pc_branch__31_/SE 3815804.5000      0.00  
    0:13:01  261279.5      0.28     748.1    6947.7 rob_i/mem_reg_24__pc_branch__31_/SE 3816786.2500      0.00  
    0:13:02  261290.5      0.28     747.4    6947.7                           3817260.2500      0.00  
    0:13:03  261314.4      0.29     751.2    6947.7                           3818154.2500      0.00  


  Beginning Leakage Power Optimization  (max_leakage_power 0)
  ------------------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:13:03  261314.4      0.29     751.2    6947.7                           3818154.2500      0.00  
  Global Optimization (Phase 36)
  Global Optimization (Phase 37)
  Global Optimization (Phase 38)
  Global Optimization (Phase 39)
  Global Optimization (Phase 40)
  Global Optimization (Phase 41)
  Global Optimization (Phase 42)
  Global Optimization (Phase 43)
  Global Optimization (Phase 44)
  Global Optimization (Phase 45)
  Global Optimization (Phase 46)
  Global Optimization (Phase 47)
  Global Optimization (Phase 48)
  Global Optimization (Phase 49)
  Global Optimization (Phase 50)
  Global Optimization (Phase 51)
Information: Complementing port 'rob_out[413]_BAR' in design 'rob'.
	 The new name of the port is 'rob_out[413]'. (OPT-319)
Information: Complementing port 'rob_out[412]_BAR' in design 'rob'.
	 The new name of the port is 'rob_out[412]'. (OPT-319)
Information: Complementing port 'read_halt' in design 'stage_2_0'.
	 The new name of the port is 'read_halt_BAR'. (OPT-319)
    0:14:00  263378.0      0.25     591.7    6492.3 rob_i/mem_reg_30__pc_branch__14_/SE 3802336.0000      0.00  
    0:14:02  263387.6      0.24     564.3    6492.3 rob_i/mem_reg_14__pc_branch__14_/SE 3802649.0000      0.00  
    0:14:03  263377.2      0.23     555.8    6492.3                           3801875.5000      0.00  
    0:14:04  263388.7      0.23     552.9    6492.3                           3802377.7500      0.00  
    0:14:04  263388.7      0.23     552.9    6492.3                           3802377.7500      0.00  
    0:14:11  262466.2      0.23     532.7    6489.4                           3748957.5000      0.00  
    0:14:11  262466.2      0.23     532.7    6489.4                           3748957.5000      0.00  
    0:14:12  262504.7      0.23     533.0    6489.4                           3750550.7500      0.00  
    0:14:12  262504.7      0.23     533.0    6489.4                           3750550.7500      0.00  
    0:14:12  262504.7      0.23     533.0    6489.4                           3750550.7500      0.00  
    0:14:12  262504.7      0.23     533.0    6489.4                           3750550.7500      0.00  
    0:14:13  262504.7      0.23     533.0    6489.4                           3750550.7500      0.00  
    0:14:13  262504.7      0.23     533.0    6489.4                           3750550.7500      0.00  
    0:14:17  262578.7      0.22     525.3    6489.6                           3754149.2500      0.00  
    0:14:17  262578.7      0.22     525.3    6489.6                           3754149.2500      0.00  
    0:14:17  262578.7      0.22     525.3    6489.6                           3754149.2500      0.00  
    0:14:17  262578.7      0.22     525.3    6489.6                           3754149.2500      0.00  
    0:14:18  262578.7      0.22     525.3    6489.6                           3754149.2500      0.00  
    0:14:18  262578.7      0.22     525.3    6489.6                           3754149.2500      0.00  
    0:14:18  262578.7      0.22     525.3    6489.6                           3754149.2500      0.00  
    0:14:18  262578.7      0.22     525.3    6489.6                           3754149.2500      0.00  
    0:14:18  262578.7      0.22     525.3    6489.6                           3754149.2500      0.00  
    0:14:18  262578.7      0.22     525.3    6489.6                           3754149.2500      0.00  
    0:14:18  262578.7      0.22     525.3    6489.6                           3754149.2500      0.00  

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:14:27  262573.1      0.22     525.3    6489.6                           3754055.2500      0.00  
    0:14:37  260276.2      0.25     782.1    6503.2                           3639413.5000      0.00  
    0:14:40  260317.4      0.23     769.1    6503.2                           3641436.2500      0.00  
    0:14:42  260315.0      0.23     769.2    6503.2                           3641400.0000      0.00  
    0:14:44  260314.5      0.23     769.2    6503.2                           3641406.0000      0.00  
    0:14:45  260310.8      0.23     769.2    6503.2                           3641362.0000      0.00  
    0:14:45  260310.8      0.23     769.2    6503.2                           3641362.0000      0.00  
    0:14:52  260454.7      0.23     742.2    6503.2                           3648916.2500      0.00  
    0:14:57  260368.0      0.23     716.1    6503.2                           3645867.7500      0.00  
    0:15:02  260274.3      0.23     714.7    6503.2                           3643322.5000      0.00  
    0:15:07  260398.0      0.23     710.0    6125.0 cache_d/data_out[643]     3644958.7500      0.00  
    0:15:09  260675.7      0.22     697.1    5661.6 rob_i/mem_reg_28__pc_branch__24_/SE 3652795.7500      0.00  
    0:15:11  260701.8      0.22     679.6    5661.6 rob_i/mem_reg_28__pc_branch__24_/SE 3654111.5000      0.00  
    0:15:12  260727.6      0.21     659.0    5661.6 rob_i/mem_reg_28__pc_branch__24_/SE 3655068.2500      0.00  
    0:15:13  260767.5      0.21     659.0    5470.2                           3655628.7500      0.00  
    0:15:16  260838.5      0.19     564.0    5485.2                           3659061.0000      0.00  
    0:15:16  260838.5      0.19     564.0    5485.2                           3659061.0000      0.00  
    0:15:16  260838.5      0.19     564.0    5485.2                           3659061.0000      0.00  
    0:15:16  260838.5      0.19     564.0    5485.2                           3659061.0000      0.00  
    0:15:16  260838.5      0.19     564.0    5485.2                           3659061.0000      0.00  
    0:15:16  260838.5      0.19     564.0    5485.2                           3659061.0000      0.00  
    0:15:16  260838.5      0.19     564.0    5485.2                           3659061.0000      0.00  
    0:15:16  260838.5      0.19     564.0    5485.2                           3659061.0000      0.00  
    0:15:19  260856.3      0.19     520.0    5485.2                           3660316.5000      0.00  
    0:15:19  260856.3      0.19     520.0    5485.2                           3660316.5000      0.00  
    0:15:19  260859.0      0.19     520.5    5485.2                           3660485.5000      0.00  
    0:15:27  260682.4      0.19     511.1    5493.4                           3651961.2500      0.00  
Loading db file '/srv/ece411ag/freepdk-45nm/stdcells.db'
Loading db file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db'
Loading db file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db'


Note: Symbol # after min delay cost means estimated hold TNS across all active scenarios 


  Optimization Complete
  ---------------------
Information: State dependent leakage is now switched from off to on.
Information: Propagating switching activity (low effort zero delay simulation). (PWR-6)
1
for {set i 0} {$i < [getenv ECE411_COMPILE_ITER]} {incr i} {
    eval [getenv ECE411_COMPILE_CMD_INC]
}
Information: Starting from 2013.12 release, constant propagation is enabled even when boundary optimization is disabled. (OPT-1318)
Information: Performing power optimization. (PWR-850)
Alib files are up-to-date.
Information: Running optimization using a maximum of 3 cores. (OPT-1500)
Information: Retiming is enabled. SVF file must be used for formal verification. (OPT-1210)



Information: State dependent leakage is now switched from on to off.

  Beginning Pass 1 Mapping  (Incremental)
  ------------------------

  Updating timing information
Information: Updating design information... (UID-85)
Information: Performing clock-gating on design cpu. (PWR-730)
Information: Performing clock-gating on design phys_regfile. (PWR-730)
Information: Performing clock-gating on design reservation_station. (PWR-730)
Information: Performing clock-gating on design execute. (PWR-730)
Information: Performing clock-gating on design memory_queue. (PWR-730)
Information: Performing clock-gating on design rob. (PWR-730)
Information: Performing clock-gating on design queue_DATA_WIDTH32_QUEUE_DEPTH32_1. (PWR-730)
Information: Performing clock-gating on design queue_DATA_WIDTH32_QUEUE_DEPTH32_0. (PWR-730)

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:00:18  260692.0      0.19     511.1    5497.1                           3652109.7500      0.00  
    0:00:20  260800.0      0.19     450.9    5502.4                           3659908.5000      0.00  
    0:00:21  260797.3      0.19     450.9    5502.4                           3659830.7500      0.00  
    0:00:22  260796.2      0.19     450.9    5502.4                           3659787.7500      0.00  
    0:00:25  260788.8      0.19     450.6    5502.4                           3659513.5000      0.00  
    0:00:34  260970.2      0.19     451.2    5508.7                           3678997.5000      0.00  
Information: Complementing port 'read_halt_BAR' in design 'stage_2_0'.
	 The new name of the port is 'read_halt'. (OPT-319)

  Beginning Mapping Optimizations  (Ultra High effort)  (Incremental)
  -------------------------------

  Beginning Incremental Implementation Selection
  ----------------------------------------------
    0:01:14  263382.0      0.15     395.3    5528.3                           3721939.5000      0.00  

  Beginning Delay Optimization Phase
  ----------------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:14  263382.0      0.15     395.3    5528.3                           3721939.5000      0.00  
    0:01:20  267643.6      0.91    1331.8    5519.2                           3952888.2500      0.00  
    0:01:27  265958.0      0.90    1449.1    5503.1                           3866990.2500      0.00  
    0:01:27  265958.0      0.90    1449.1    5503.1                           3866990.2500      0.00  
    0:01:27  265954.0      0.70    1412.4    5503.1                           3866699.5000      0.00  
    0:01:27  265954.0      0.70    1412.4    5503.1                           3866699.5000      0.00  
    0:01:32  265760.6      0.14     477.7    5494.6                           3855508.2500      0.00  

  Beginning Delay Optimization
  ----------------------------
    0:01:32  265760.6      0.14     477.7    5494.6                           3855508.2500      0.00  
    0:01:32  265760.6      0.14     477.7    5494.6                           3855508.2500      0.00  
    0:01:32  265760.6      0.14     477.7    5494.6                           3855508.2500      0.00  
    0:01:32  265760.6      0.14     477.7    5494.6                           3855508.2500      0.00  
    0:01:32  265760.6      0.14     477.7    5494.6                           3855508.2500      0.00  
    0:01:35  265793.6      0.14     478.6    5524.7                           3855754.7500      0.00  


  Beginning Design Rule Fixing  (max_transition)  (max_fanout)  (max_capacitance)
  ----------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:37  265793.6      0.14     478.6    5524.7                           3855754.7500      0.00  
    0:01:42  266024.5      0.14     454.2    5031.9 rob_i/R_689/D             3860559.5000      0.00  
    0:01:45  266012.8      0.14     444.9    5113.0 rob_i/mem_reg_28__pc_branch__12_/SE 3859064.5000      0.00  
    0:01:46  266091.0      0.14     447.1    4659.2 cache_d/stage_2_i/rst     3860133.7500      0.00  
    0:01:51  266125.0      0.14     500.0    4652.2 R_2401/D                  3860900.5000      0.00  
    0:01:52  266165.4      0.14     500.0    4464.9                           3861482.7500      0.00  
    0:02:00  265752.3      0.14     489.4    4467.4                           3837786.5000      0.00  
    0:02:00  265752.3      0.14     489.4    4467.4                           3837786.5000      0.00  
    0:02:01  265752.3      0.14     489.3    4467.4                           3837824.2500      0.00  
    0:02:01  265752.3      0.14     489.3    4467.4                           3837824.2500      0.00  
    0:02:02  265785.3      0.13     436.9    4469.4                           3839129.2500      0.00  
    0:02:02  265785.3      0.13     436.9    4469.4                           3839129.2500      0.00  
    0:02:03  265791.2      0.13     431.5    4469.4                           3839472.2500      0.00  
    0:02:03  265791.2      0.13     431.5    4469.4                           3839472.2500      0.00  
    0:02:03  265791.2      0.13     431.5    4469.4                           3839472.2500      0.00  
    0:02:07  265821.2      0.12     368.1    4469.4                           3840295.7500      0.00  
    0:02:10  265838.5      0.12     342.3    4469.4                           3840782.0000      0.00  
    0:02:13  265848.6      0.12     301.8    4469.4                           3840588.2500      0.00  
    0:02:18  265874.7      0.12     281.6    4469.4                           3842005.0000      0.00  
    0:02:25  265667.2      0.12     235.1    4468.7                           3830767.0000      0.00  
    0:02:25  265667.2      0.12     235.1    4468.7                           3830767.0000      0.00  
    0:02:25  265667.5      0.12     235.1    4468.7                           3830792.2500      0.00  
    0:02:25  265667.5      0.12     235.1    4468.7                           3830792.2500      0.00  
    0:02:27  265679.5      0.11     231.1    4468.7                           3831411.7500      0.00  
    0:02:27  265679.5      0.11     231.1    4468.7                           3831411.7500      0.00  
    0:02:28  265679.5      0.11     231.1    4468.7                           3831411.7500      0.00  
    0:02:28  265679.5      0.11     231.1    4468.7                           3831411.7500      0.00  
    0:02:28  265679.5      0.11     231.1    4468.7                           3831411.7500      0.00  
    0:02:29  265679.5      0.11     231.1    4468.7                           3831411.7500      0.00  

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:02:30  265679.5      0.11     231.1    4468.7                           3831411.7500      0.00  
    0:02:35  265461.3      0.11     230.3    4468.7                           3819272.7500      0.00  
    0:02:37  265053.6      0.11     218.3    4468.7                           3803482.5000      0.00  
    0:02:45  263036.5      0.11     178.7    4468.7                           3711455.0000      0.00  
    0:02:48  262874.2      0.11     188.8    4468.7                           3706724.0000      0.00  
    0:02:55  262836.7      0.11     176.9    4356.3 cache_d/data_out[210]     3701541.0000      0.00  
    0:02:57  263012.8      0.11     175.0    4047.6 rob_i/mem_reg_9__pc_branch__12_/SE 3705932.5000      0.00  
    0:02:59  263049.5      0.11     174.6    3882.9 cache_i/stage_2_i/data_out[911] 3706426.0000      0.00  
    0:03:03  263082.5      0.12     208.4    3858.4 free_list_i/mem_reg_27__5_/SE 3707484.7500      0.00  
    0:03:05  263129.3      0.11     213.7    3673.0                           3708314.5000      0.00  
    0:03:11  262750.3      0.13     373.5    3680.7                           3692831.0000      0.00  
    0:03:14  262771.3      0.11     362.4    3680.7                           3693629.2500      0.00  
    0:03:16  262768.9      0.11     362.4    3680.7                           3693568.2500      0.00  
    0:03:18  262763.0      0.11     362.4    3680.7                           3693406.2500      0.00  
    0:03:19  262763.0      0.11     362.4    3680.7                           3693406.2500      0.00  
    0:03:19  262763.0      0.11     362.4    3680.7                           3693406.2500      0.00  
    0:03:21  262810.9      0.11     283.4    3684.7                           3696111.5000      0.00  
    0:03:21  262810.9      0.11     283.4    3684.7                           3696111.5000      0.00  
    0:03:22  262810.9      0.11     283.4    3684.7                           3696111.5000      0.00  
    0:03:22  262810.9      0.11     283.4    3684.7                           3696111.5000      0.00  
    0:03:22  262810.9      0.11     283.4    3684.7                           3696111.5000      0.00  
    0:03:22  262810.9      0.11     283.4    3684.7                           3696111.5000      0.00  
    0:03:25  262793.6      0.11     277.6    3684.7                           3695331.5000      0.00  
    0:03:27  262792.8      0.11     274.5    3684.7                           3695228.0000      0.00  
    0:03:29  262790.2      0.11     273.4    3684.7                           3695084.5000      0.00  
    0:03:31  262785.1      0.11     267.9    3684.7                           3694868.7500      0.00  
    0:03:35  262784.6      0.11     266.4    3684.7                           3694931.2500      0.00  
    0:03:36  262784.6      0.11     266.4    3684.7                           3694931.2500      0.00  
    0:03:36  262784.6      0.11     266.4    3684.7                           3694931.2500      0.00  
    0:03:36  262785.6      0.11     265.5    3684.7                           3694973.2500      0.00  
    0:03:47  262647.1      0.11     263.8    3684.7                           3688306.0000      0.00  
Loading db file '/srv/ece411ag/freepdk-45nm/stdcells.db'
Loading db file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db'
Loading db file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db'


Note: Symbol # after min delay cost means estimated hold TNS across all active scenarios 


  Optimization Complete
  ---------------------
Information: State dependent leakage is now switched from off to on.
Information: Propagating switching activity (low effort zero delay simulation). (PWR-6)
Information: Starting from 2013.12 release, constant propagation is enabled even when boundary optimization is disabled. (OPT-1318)
Information: Performing power optimization. (PWR-850)
Alib files are up-to-date.
Information: Running optimization using a maximum of 3 cores. (OPT-1500)
Information: Retiming is enabled. SVF file must be used for formal verification. (OPT-1210)



Information: State dependent leakage is now switched from on to off.

  Beginning Pass 1 Mapping  (Incremental)
  ------------------------

  Updating timing information
Information: Updating design information... (UID-85)
Information: Performing clock-gating on design phys_regfile. (PWR-730)
Information: Performing clock-gating on design cpu. (PWR-730)
Information: Performing clock-gating on design reservation_station. (PWR-730)
Information: Performing clock-gating on design execute. (PWR-730)
Information: Performing clock-gating on design memory_queue. (PWR-730)
Information: Performing clock-gating on design queue_DATA_WIDTH32_QUEUE_DEPTH32_1. (PWR-730)
Information: Performing clock-gating on design queue_DATA_WIDTH32_QUEUE_DEPTH32_0. (PWR-730)
Information: Performing clock-gating on design rob. (PWR-730)

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:00:18  262647.1      0.11     263.5    3684.7                           3688306.0000      0.00  
    0:00:21  262847.9      0.11     202.1    3697.5                           3701702.0000      0.00  
    0:00:22  262845.0      0.11     201.8    3697.5                           3701655.5000      0.00  
    0:00:25  262842.6      0.11     201.8    3697.5                           3701583.5000      0.00  
    0:00:31  262844.4      0.11     202.3    3697.5                           3701691.0000      0.00  
Information: Complementing port 'read_halt' in design 'stage_2_0'.
	 The new name of the port is 'read_halt_BAR'. (OPT-319)
Information: Complementing port 'data_valid' in design 'memory_queue'.
	 The new name of the port is 'data_valid_BAR'. (OPT-319)
Information: Complementing port 'ufp_resp' in design 'stage_2_0'.
	 The new name of the port is 'ufp_resp_BAR'. (OPT-319)
Information: Complementing port 'rst' in design 'queue_DATA_WIDTH32_QUEUE_DEPTH32_1'.
	 The new name of the port is 'rst_BAR'. (OPT-319)

  Beginning Mapping Optimizations  (Ultra High effort)  (Incremental)
  -------------------------------

  Beginning Incremental Implementation Selection
  ----------------------------------------------
    0:00:50  262939.7      0.09     198.0    3697.5                           3705315.0000      0.00  

  Beginning Delay Optimization Phase
  ----------------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:00:50  262939.7      0.09     198.0    3697.5                           3705315.0000      0.00  
    0:00:56  264690.5      0.13     309.0    3697.5                           3798322.7500      0.00  
    0:01:03  264119.9      0.13     317.7    3692.7                           3768284.2500      0.00  
    0:01:03  264119.9      0.13     317.7    3692.7                           3768284.2500      0.00  
    0:01:03  264123.9      0.12     258.5    3692.7                           3768488.2500      0.00  
    0:01:03  264123.9      0.12     258.5    3692.7                           3768488.2500      0.00  
    0:01:05  264130.5      0.09     239.2    3693.7                           3768708.5000      0.00  

  Beginning Delay Optimization
  ----------------------------
    0:01:05  264130.5      0.09     239.2    3693.7                           3768708.5000      0.00  
    0:01:05  264130.5      0.09     239.2    3693.7                           3768708.5000      0.00  
    0:01:06  264130.5      0.09     239.2    3693.7                           3768708.5000      0.00  
    0:01:06  264130.5      0.09     239.2    3693.7                           3768708.5000      0.00  
    0:01:06  264130.5      0.09     239.2    3693.7                           3768708.5000      0.00  
    0:01:09  263998.6      0.09     239.7    3693.7                           3759838.5000      0.00  


  Beginning Design Rule Fixing  (max_transition)  (max_fanout)  (max_capacitance)
  ----------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:11  263998.6      0.09     239.7    3693.7                           3759838.5000      0.00  
    0:01:14  264248.1      0.09     162.4    3312.0 rob_i/R_4158/D            3766353.5000      0.00  
    0:01:16  264254.0      0.09     155.9    3335.5 rob_i/R_4158/D            3766640.7500      0.00  
    0:01:18  264299.2      0.08     153.6    3130.8 rob_i/mem_reg_5__pc_branch__14_/SE 3767265.5000      0.00  
    0:01:21  264314.6      0.08     145.9    3130.8 rob_i/mem_reg_29__pc_branch__4_/SE 3767694.0000      0.00  
    0:01:23  264356.1      0.08     143.5    3016.2 cache_d/stage_2_i/data_out[239] 3768566.0000      0.00  
    0:01:27  264403.2      0.10     251.0    2941.0 R_2401/D                  3770041.5000      0.00  
    0:01:29  264439.9      0.08     174.8    2941.0 R_2401/D                  3771018.5000      0.00  
    0:01:32  264458.0      0.08     179.1    2937.3 cache_d/stage_2_i/data_out[675] 3771304.7500      0.00  
    0:01:32  264497.1      0.08     179.1    2756.1                           3771854.2500      0.00  
    0:01:40  264109.0      0.08     155.1    2758.0                           3749496.7500      0.00  
    0:01:40  264109.0      0.08     155.1    2758.0                           3749496.7500      0.00  
    0:01:40  264109.0      0.08     155.1    2758.0                           3749496.7500      0.00  
    0:01:40  264109.0      0.08     155.1    2758.0                           3749496.7500      0.00  
    0:01:43  264165.1      0.07     127.5    2758.0                           3751456.7500      0.00  
    0:01:43  264165.1      0.07     127.5    2758.0                           3751456.7500      0.00  
    0:01:43  264166.2      0.07     127.5    2758.0                           3751554.0000      0.00  
    0:01:43  264166.2      0.07     127.5    2758.0                           3751554.0000      0.00  
    0:01:43  264166.2      0.07     127.5    2758.0                           3751554.0000      0.00  
    0:01:46  264179.5      0.06     123.1    2758.0                           3751837.7500      0.00  
    0:01:48  264191.2      0.06     117.3    2758.0                           3751908.5000      0.00  
    0:01:50  264224.7      0.06     103.5    2758.0                           3753524.7500      0.00  
    0:01:51  264255.3      0.06      92.6    2758.0                           3755120.0000      0.00  
    0:01:54  264305.6      0.06      75.8    2758.0                           3758043.0000      0.00  
    0:02:00  264142.2      0.06      74.6    2760.3                           3749241.5000      0.00  
    0:02:01  264142.2      0.06      74.6    2760.3                           3749241.5000      0.00  
    0:02:01  264143.3      0.06      74.6    2760.3                           3749297.5000      0.00  
    0:02:01  264143.3      0.06      74.6    2760.3                           3749297.5000      0.00  
    0:02:02  264160.1      0.06      74.3    2760.3                           3750301.7500      0.00  
    0:02:02  264160.1      0.06      74.3    2760.3                           3750301.7500      0.00  
    0:02:02  264160.1      0.06      74.3    2760.3                           3750301.7500      0.00  
    0:02:03  264160.1      0.06      74.3    2760.3                           3750301.7500      0.00  
    0:02:03  264160.1      0.06      74.3    2760.3                           3750301.7500      0.00  
    0:02:04  264160.1      0.06      74.3    2760.3                           3750301.7500      0.00  

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:02:04  264160.1      0.06      74.3    2760.3                           3750301.7500      0.00  
    0:02:10  264053.7      0.06      76.2    2760.3                           3744526.2500      0.00  
    0:02:12  263917.5      0.06      75.1    2759.7                           3740894.7500      0.00  
    0:02:19  263398.0      0.06      59.3    2757.8                           3720118.2500      0.00  
    0:02:21  263357.3      0.06      61.0    2757.8                           3718800.0000      0.00  
    0:02:27  263440.5      0.06      57.3    2390.6 rob_i/R_2859/D            3716113.7500      0.00  
    0:02:29  263479.9      0.06      56.8    2210.1 rob_i/R_5197/D            3716623.5000      0.00  
    0:02:30  263519.8      0.06      56.8    2029.5                           3717184.2500      0.00  
    0:02:35  263128.5      0.08     149.3    2034.8                           3699367.5000      0.00  
    0:02:39  263156.2      0.06     126.2    2034.8                           3700119.2500      0.00  
    0:02:41  263154.8      0.06     126.2    2034.8                           3700076.2500      0.00  
    0:02:42  263148.5      0.06     126.0    2034.8                           3699975.7500      0.00  
    0:02:43  263144.5      0.06     126.0    2034.8                           3699844.5000      0.00  
    0:02:43  263144.5      0.06     126.0    2034.8                           3699844.5000      0.00  
    0:02:46  263194.5      0.06     105.5    2036.1                           3702640.5000      0.00  
    0:02:46  263194.5      0.06     105.5    2036.1                           3702640.5000      0.00  
    0:02:47  263194.5      0.06     105.5    2036.1                           3702640.5000      0.00  
    0:02:47  263194.5      0.06     105.5    2036.1                           3702640.5000      0.00  
    0:02:47  263194.5      0.06     105.5    2036.1                           3702640.5000      0.00  
    0:02:47  263194.5      0.06     105.5    2036.1                           3702640.5000      0.00  
    0:02:49  263190.5      0.06     104.3    2036.1                           3702336.0000      0.00  
    0:02:50  263189.4      0.06     103.9    2036.1                           3702266.0000      0.00  
    0:02:52  263186.8      0.06     103.0    2036.1                           3702162.7500      0.00  
    0:02:55  263186.0      0.06     101.7    2036.1                           3702128.7500      0.00  
    0:02:55  263186.0      0.06     101.7    2036.1                           3702128.7500      0.00  
    0:02:56  263186.0      0.06     101.7    2036.1                           3702128.7500      0.00  
    0:02:56  263186.0      0.06     101.7    2036.1                           3702128.7500      0.00  
    0:03:06  263067.6      0.06     100.7    2038.7                           3695543.5000      0.00  
Loading db file '/srv/ece411ag/freepdk-45nm/stdcells.db'
Loading db file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db'
Loading db file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db'


Note: Symbol # after min delay cost means estimated hold TNS across all active scenarios 


  Optimization Complete
  ---------------------
Information: State dependent leakage is now switched from off to on.
Information: Propagating switching activity (low effort zero delay simulation). (PWR-6)
current_design $design_toplevel
Current design is 'cpu'.
{cpu}
report_area -hier > reports/area.rpt
report_timing -delay max > reports/timing.rpt
check_design
 
****************************************
check_design summary:
Version:     R-2020.09-SP4
Date:        Mon Dec  2 19:44:09 2024
****************************************

                   Name                                            Total
--------------------------------------------------------------------------------
No issues found.
--------------------------------------------------------------------------------

1
write_file -format ddc -hierarchy -output outputs/synth.ddc
Writing ddc file 'outputs/synth.ddc'.
1
write_file -format verilog -hierarchy -output [format "outputs/%s.gate.v" $design_toplevel]
Writing verilog file '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth/outputs/cpu.gate.v'.
1
exit

Memory usage for this session 935 Mbytes.
Memory usage for this session including child processes 1824 Mbytes.
CPU usage for this session 2487 seconds ( 0.69 hours ).
Elapsed time for this session 1417 seconds ( 0.39 hours ).

Thank you...
rm -f  *.log
rm -f  default.svf
rm -rf work
make[1]: Leaving directory '/srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/synth'
 
****************************************
Report : timing
        -path full
        -delay max
        -max_paths 1
Design : cpu
Version: R-2020.09-SP4
Date   : Mon Dec  2 19:44:09 2024
****************************************

 # A fanout number of 1000 was used for high fanout net computations.

Operating Conditions: typical   Library: NangateOpenCellLibrary
Wire Load Model Mode: enclosed

  Startpoint: reservation_stations_i/branch_reservation_station_reg_1__busy_
              (rising edge-triggered flip-flop clocked by my_clk)
  Endpoint: rob_i/R_2171
            (rising edge-triggered flip-flop clocked by my_clk)
  Path Group: my_clk
  Path Type: max

  Des/Clust/Port     Wire Load Model       Library
  ------------------------------------------------
  reservation_station
                     5K_hvratio_1_1        NangateOpenCellLibrary
  cpu                5K_hvratio_1_1        NangateOpenCellLibrary
  phys_regfile       5K_hvratio_1_1        NangateOpenCellLibrary
  execute            5K_hvratio_1_1        NangateOpenCellLibrary
  rob                5K_hvratio_1_1        NangateOpenCellLibrary

  Point                                                   Incr       Path
  --------------------------------------------------------------------------
  clock my_clk (rise edge)                            0.000000   0.000000
  clock network delay (ideal)                         0.000000   0.000000
  reservation_stations_i/branch_reservation_station_reg_1__busy_/CK (SDFF_X1)
                                                      0.000000   0.000000 r
  reservation_stations_i/branch_reservation_station_reg_1__busy_/QN (SDFF_X1)
                                                      0.093714   0.093714 r
  reservation_stations_i/U882/ZN (AND3_X1)            0.052681   0.146395 r
  reservation_stations_i/U644/ZN (NOR2_X1)            0.021635   0.168030 f
  reservation_stations_i/U571/ZN (NAND2_X1)           0.033920   0.201950 r
  reservation_stations_i/U30/ZN (INV_X1)              0.038105   0.240055 f
  reservation_stations_i/U1042/ZN (NAND2_X1)          0.036700   0.276755 r
  reservation_stations_i/U528/ZN (NAND4_X2)           0.058591   0.335347 f
  reservation_stations_i/branch_ps1[2] (reservation_station)
                                                      0.000000   0.335347 f
  phys_regfile_i/rs1_br[2] (phys_regfile)             0.000000   0.335347 f
  phys_regfile_i/U3458/ZN (OR2_X1)                    0.073496   0.408842 f
  phys_regfile_i/U3511/ZN (INV_X1)                    0.027935   0.436778 r
  phys_regfile_i/U4943/ZN (AND2_X2)                   0.055741   0.492519 r
  phys_regfile_i/U1445/ZN (AND2_X2)                   0.058619   0.551138 r
  phys_regfile_i/U132/Z (CLKBUF_X3)                   0.059591   0.610729 r
  phys_regfile_i/U5530/ZN (AOI22_X1)                  0.041330   0.652059 f
  phys_regfile_i/U4079/ZN (AND4_X1)                   0.043893   0.695952 f
  phys_regfile_i/U3534/ZN (AND4_X1)                   0.043475   0.739427 f
  phys_regfile_i/U3467/ZN (AOI21_X1)                  0.049477   0.788905 r
  phys_regfile_i/rs1_v_br[1] (phys_regfile)           0.000000   0.788905 r
  execute_i/rs1_v_br[1] (execute)                     0.000000   0.788905 r
  execute_i/U2415/ZN (INV_X1)                         0.024525   0.813429 f
  execute_i/U2902/ZN (OAI21_X1)                       0.044352   0.857782 r
  execute_i/U2903/ZN (OAI22_X1)                       0.036415   0.894196 f
  execute_i/U1882/ZN (OAI221_X1)                      0.046427   0.940623 r
  execute_i/U2907/ZN (NAND2_X1)                       0.029745   0.970368 f
  execute_i/U2908/ZN (OAI22_X1)                       0.051164   1.021532 r
  execute_i/U2910/ZN (OAI21_X1)                       0.031283   1.052814 f
  execute_i/U2201/ZN (NAND3_X1)                       0.029589   1.082403 r
  execute_i/U2920/ZN (NAND3_X1)                       0.034134   1.116537 f
  execute_i/U3044/ZN (OAI221_X1)                      0.061336   1.177873 r
  execute_i/U2186/ZN (NAND2_X1)                       0.030227   1.208100 f
  execute_i/U2210/ZN (NAND3_X1)                       0.036839   1.244939 r
  execute_i/U1939/ZN (OAI211_X1)                      0.043192   1.288131 f
  execute_i/U170/ZN (AND2_X2)                         0.046944   1.335074 f
  execute_i/U3131/Z (BUF_X2)                          0.056381   1.391455 f
  execute_i/U3104/ZN (OAI21_X1)                       0.046553   1.438008 r
  execute_i/U3106/ZN (NAND2_X1)                       0.030366   1.468374 f
  execute_i/U2289/ZN (OAI21_X1)                       0.041558   1.509932 r
  execute_i/U3107/ZN (INV_X1)                         0.022097   1.532029 f
  execute_i/U3108/ZN (OAI21_X1)                       0.033728   1.565758 r
  execute_i/U3129/ZN (AOI21_X1)                       0.034967   1.600724 f
  execute_i/U3168/ZN (OAI21_X1)                       0.052462   1.653186 r
  execute_i/U3237/ZN (NAND2_X1)                       0.038494   1.691679 f
  execute_i/U6360/ZN (AND2_X2)                        0.052142   1.743821 f
  execute_i/U4129/ZN (OAI21_X1)                       0.053846   1.797668 r
  execute_i/U4130/ZN (XNOR2_X1)                       0.058285   1.855953 r
  execute_i/U6371/ZN (AND2_X2)                        0.049786   1.905739 r
  execute_i/cdb_br[191] (execute)                     0.000000   1.905739 r
  rob_i/branch_pc_branch[23] (rob)                    0.000000   1.905739 r
  rob_i/U724/ZN (INV_X1)                              0.032648   1.938387 f
  rob_i/U4863/Z (MUX2_X1)                             0.068440   2.006827 f
  rob_i/R_2171/D (DFF_X1)                             0.008556   2.015383 f
  data arrival time                                              2.015383

  clock my_clk (rise edge)                            2.000000   2.000000
  clock network delay (ideal)                         0.000000   2.000000
  rob_i/R_2171/CK (DFF_X1)                            0.000000   2.000000 r
  library setup time                                  -0.040825  1.959175
  data required time                                             1.959175
  --------------------------------------------------------------------------
  data required time                                             1.959175
  data arrival time                                              -2.015383
  --------------------------------------------------------------------------
  slack (VIOLATED)                                               -0.056208


1
 
****************************************
Report : area
Design : cpu
Version: R-2020.09-SP4
Date   : Mon Dec  2 19:44:04 2024
****************************************

Information: Updating design information... (UID-85)
Library(s) Used:

    NangateOpenCellLibrary (File: /srv/ece411ag/freepdk-45nm/stdcells.db)
    mp_cache_data_array_TT_1p0V_25C_lib (File: /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db)
    mp_cache_tag_array_TT_1p0V_25C_lib (File: /srv/tmp/e67b94bd-74f8-4b22-a3ba-437defecdcb8/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db)

Number of ports:                        12697
Number of nets:                        121007
Number of cells:                       109487
Number of combinational cells:          93076
Number of sequential cells:             14423
Number of macros/black boxes:              16
Number of buf/inv:                       9534
Number of references:                     224

Combinational area:             102810.330750
Buf/Inv area:                     6560.091973
Noncombinational area:           80416.587619
Macro/Black Box area:            79840.682617
Net Interconnect area:      undefined  (Wire load has zero net area)

Total cell area:                263067.600986
Total area:                 undefined

Hierarchical area distribution
------------------------------

                                  Global cell area                Local cell area
                                  --------------------  ----------------------------------- 
Hierarchical cell                 Absolute     Percent  Combi-       Noncombi-   Black-
                                  Total        Total    national     national    boxes       Design
--------------------------------  -----------  -------  -----------  ----------  ----------  ----------------------------------------------------------
cpu                               263067.6010    100.0   11927.1741  12042.8840  79840.6826  cpu
arbiter/clk_gate_d_dfp_read_reg_reg
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cache_arbiter_3
arbiter/clk_gate_full_burst_reg_reg_255_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cache_arbiter_2
arbiter/clk_gate_missed_i_addr_reg_reg_31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cache_arbiter_1
arbiter/clk_gate_missed_rw_reg_reg
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cache_arbiter_0
arbiter/clk_gate_state_reg_31_         3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cache_arbiter_4
cache_adapter_i/clk_gate_cache_wdata_reg_reg_127_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cacheline_adapter_3
cache_adapter_i/clk_gate_cache_wdata_reg_reg_191_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cacheline_adapter_2
cache_adapter_i/clk_gate_cache_wdata_reg_reg_63_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cacheline_adapter_4
cache_adapter_i/clk_gate_mem_wdata_reg_reg_255_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cacheline_adapter_0
cache_d/arrays_0__valid_array/clk_gate_internal_array_reg_0__0_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_valid_array_0_3
cache_d/arrays_1__valid_array/clk_gate_internal_array_reg_0__0_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_valid_array_0_2
cache_d/arrays_2__valid_array/clk_gate_internal_array_reg_0__0_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_valid_array_0_1
cache_d/arrays_3__valid_array/clk_gate_internal_array_reg_0__0_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_valid_array_0_0
cache_d/lru_array/clk_gate_internal_array_reg_0__2_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_0
cache_d/lru_array/clk_gate_internal_array_reg_10__2_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_10
cache_d/lru_array/clk_gate_internal_array_reg_11__2_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_11
cache_d/lru_array/clk_gate_internal_array_reg_12__2_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_12
cache_d/lru_array/clk_gate_internal_array_reg_13__2_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_13
cache_d/lru_array/clk_gate_internal_array_reg_14__2_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_14
cache_d/lru_array/clk_gate_internal_array_reg_15__2_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_15
cache_d/lru_array/clk_gate_internal_array_reg_1__2_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_1
cache_d/lru_array/clk_gate_internal_array_reg_2__2_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_2
cache_d/lru_array/clk_gate_internal_array_reg_3__2_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_3
cache_d/lru_array/clk_gate_internal_array_reg_4__2_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_4
cache_d/lru_array/clk_gate_internal_array_reg_5__2_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_5
cache_d/lru_array/clk_gate_internal_array_reg_6__2_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_6
cache_d/lru_array/clk_gate_internal_array_reg_7__2_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_7
cache_d/lru_array/clk_gate_internal_array_reg_8__2_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_8
cache_d/lru_array/clk_gate_internal_array_reg_9__2_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_9
cache_d/stage_2_i                   2765.6020      1.1    2765.6020      0.0000      0.0000  stage_2_0
cache_i/arrays_0__valid_array/clk_gate_internal_array_reg_0__0_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_valid_array_4_3
cache_i/arrays_1__valid_array/clk_gate_internal_array_reg_0__0_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_valid_array_4_2
cache_i/arrays_2__valid_array/clk_gate_internal_array_reg_0__0_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_valid_array_4_1
cache_i/arrays_3__valid_array/clk_gate_internal_array_reg_0__0_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_valid_array_4_0
cache_i/lru_array/clk_gate_internal_array_reg_0__2_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_16
cache_i/lru_array/clk_gate_internal_array_reg_10__2_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_26
cache_i/lru_array/clk_gate_internal_array_reg_11__2_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_27
cache_i/lru_array/clk_gate_internal_array_reg_12__2_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_28
cache_i/lru_array/clk_gate_internal_array_reg_13__2_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_29
cache_i/lru_array/clk_gate_internal_array_reg_14__2_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_30
cache_i/lru_array/clk_gate_internal_array_reg_15__2_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_31
cache_i/lru_array/clk_gate_internal_array_reg_1__2_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_17
cache_i/lru_array/clk_gate_internal_array_reg_2__2_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_18
cache_i/lru_array/clk_gate_internal_array_reg_3__2_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_19
cache_i/lru_array/clk_gate_internal_array_reg_4__2_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_20
cache_i/lru_array/clk_gate_internal_array_reg_5__2_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_21
cache_i/lru_array/clk_gate_internal_array_reg_6__2_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_22
cache_i/lru_array/clk_gate_internal_array_reg_7__2_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_23
cache_i/lru_array/clk_gate_internal_array_reg_8__2_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_24
cache_i/lru_array/clk_gate_internal_array_reg_9__2_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_25
cache_i/stage_2_i                   2395.0640      0.9    2395.0640      0.0000      0.0000  stage_2_1
clk_gate_cache_d/stage_reg_reg_rmask__3_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cpu_0_1
clk_gate_cache_i/stage_reg_reg_set_no__0_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cpu_0_0
clk_gate_pc_reg_31_                    3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cpu_0
execute_i                           9511.8940      3.6    7570.0940   1909.8800      0.0000  execute
execute_i/clk_gate_rd_div_reg_reg_4_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_execute_1
execute_i/clk_gate_rd_mul_reg_reg_4_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_execute_0
execute_i/fu_div_i/U1/clk_gate_b_reg_reg
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_execute_DW_div_seq_J14_0_0
execute_i/fu_div_i/U1/clk_gate_shf_reg_reg[0]
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_execute_DW_div_seq_J14_0_1
execute_i/fu_div_i/clk_gate_decode_info_reg_reg_funct3__2_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_fu_div_rem
execute_i/fu_mul_i/U1/clk_gate_b_reg_reg
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_execute_DW_mult_seq_J14_0_1
execute_i/fu_mul_i/U1/clk_gate_mac_reg_reg
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_execute_DW_mult_seq_J14_0_0
execute_i/fu_mul_i/clk_gate_decode_info_reg_reg_funct3__2_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_fu_mult
free_list_i/clk_gate_head_reg_reg_5_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_33
free_list_i/clk_gate_mem_reg_0__6_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_0
free_list_i/clk_gate_mem_reg_10__6_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_10
free_list_i/clk_gate_mem_reg_11__6_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_11
free_list_i/clk_gate_mem_reg_12__6_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_12
free_list_i/clk_gate_mem_reg_13__6_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_13
free_list_i/clk_gate_mem_reg_14__6_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_14
free_list_i/clk_gate_mem_reg_15__6_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_15
free_list_i/clk_gate_mem_reg_16__6_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_16
free_list_i/clk_gate_mem_reg_17__6_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_17
free_list_i/clk_gate_mem_reg_18__6_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_18
free_list_i/clk_gate_mem_reg_19__6_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_19
free_list_i/clk_gate_mem_reg_1__6_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_1
free_list_i/clk_gate_mem_reg_20__6_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_20
free_list_i/clk_gate_mem_reg_21__6_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_21
free_list_i/clk_gate_mem_reg_22__6_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_22
free_list_i/clk_gate_mem_reg_23__6_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_23
free_list_i/clk_gate_mem_reg_24__6_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_24
free_list_i/clk_gate_mem_reg_25__6_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_25
free_list_i/clk_gate_mem_reg_26__6_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_26
free_list_i/clk_gate_mem_reg_27__6_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_27
free_list_i/clk_gate_mem_reg_28__6_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_28
free_list_i/clk_gate_mem_reg_29__6_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_29
free_list_i/clk_gate_mem_reg_2__6_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_2
free_list_i/clk_gate_mem_reg_30__6_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_30
free_list_i/clk_gate_mem_reg_31__6_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_31
free_list_i/clk_gate_mem_reg_3__6_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_3
free_list_i/clk_gate_mem_reg_4__6_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_4
free_list_i/clk_gate_mem_reg_5__6_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_5
free_list_i/clk_gate_mem_reg_6__6_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_6
free_list_i/clk_gate_mem_reg_7__6_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_7
free_list_i/clk_gate_mem_reg_8__6_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_8
free_list_i/clk_gate_mem_reg_9__6_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_9
free_list_i/clk_gate_tail_reg_reg_5_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_32
memory_queue_i                     34760.6142     13.2   16020.9141  18476.3601      0.0000  memory_queue
memory_queue_i/clk_gate_head_reg_reg_4_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_97
memory_queue_i/clk_gate_mem_reg_0__addr_ready_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_95
memory_queue_i/clk_gate_mem_reg_0__valid_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_96
memory_queue_i/clk_gate_mem_reg_10__addr_ready_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_65
memory_queue_i/clk_gate_mem_reg_10__valid_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_66
memory_queue_i/clk_gate_mem_reg_11__addr_ready_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_62
memory_queue_i/clk_gate_mem_reg_11__valid_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_63
memory_queue_i/clk_gate_mem_reg_12__addr_ready_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_59
memory_queue_i/clk_gate_mem_reg_12__valid_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_60
memory_queue_i/clk_gate_mem_reg_13__addr_ready_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_56
memory_queue_i/clk_gate_mem_reg_13__valid_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_57
memory_queue_i/clk_gate_mem_reg_14__addr_ready_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_53
memory_queue_i/clk_gate_mem_reg_14__valid_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_54
memory_queue_i/clk_gate_mem_reg_15__addr_ready_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_50
memory_queue_i/clk_gate_mem_reg_15__valid_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_51
memory_queue_i/clk_gate_mem_reg_16__addr_ready_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_47
memory_queue_i/clk_gate_mem_reg_16__valid_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_48
memory_queue_i/clk_gate_mem_reg_17__addr_ready_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_44
memory_queue_i/clk_gate_mem_reg_17__valid_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_45
memory_queue_i/clk_gate_mem_reg_18__addr_ready_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_41
memory_queue_i/clk_gate_mem_reg_18__valid_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_42
memory_queue_i/clk_gate_mem_reg_19__addr_ready_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_38
memory_queue_i/clk_gate_mem_reg_19__valid_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_39
memory_queue_i/clk_gate_mem_reg_1__addr_ready_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_92
memory_queue_i/clk_gate_mem_reg_1__valid_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_93
memory_queue_i/clk_gate_mem_reg_20__addr_ready_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_35
memory_queue_i/clk_gate_mem_reg_20__valid_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_36
memory_queue_i/clk_gate_mem_reg_21__addr_ready_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_32
memory_queue_i/clk_gate_mem_reg_21__valid_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_33
memory_queue_i/clk_gate_mem_reg_22__addr_ready_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_29
memory_queue_i/clk_gate_mem_reg_22__valid_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_30
memory_queue_i/clk_gate_mem_reg_23__addr_ready_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_26
memory_queue_i/clk_gate_mem_reg_23__valid_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_27
memory_queue_i/clk_gate_mem_reg_24__addr_ready_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_23
memory_queue_i/clk_gate_mem_reg_24__valid_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_24
memory_queue_i/clk_gate_mem_reg_25__addr_ready_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_20
memory_queue_i/clk_gate_mem_reg_25__valid_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_21
memory_queue_i/clk_gate_mem_reg_26__addr_ready_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_17
memory_queue_i/clk_gate_mem_reg_26__valid_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_18
memory_queue_i/clk_gate_mem_reg_27__addr_ready_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_14
memory_queue_i/clk_gate_mem_reg_27__valid_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_15
memory_queue_i/clk_gate_mem_reg_28__addr_ready_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_11
memory_queue_i/clk_gate_mem_reg_28__valid_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_12
memory_queue_i/clk_gate_mem_reg_29__addr_ready_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_8
memory_queue_i/clk_gate_mem_reg_29__valid_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_9
memory_queue_i/clk_gate_mem_reg_2__addr_ready_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_89
memory_queue_i/clk_gate_mem_reg_2__valid_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_90
memory_queue_i/clk_gate_mem_reg_30__addr_ready_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_5
memory_queue_i/clk_gate_mem_reg_30__valid_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_6
memory_queue_i/clk_gate_mem_reg_31__addr_ready_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_2
memory_queue_i/clk_gate_mem_reg_31__valid_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_3
memory_queue_i/clk_gate_mem_reg_3__addr_ready_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_86
memory_queue_i/clk_gate_mem_reg_3__valid_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_87
memory_queue_i/clk_gate_mem_reg_4__addr_ready_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_83
memory_queue_i/clk_gate_mem_reg_4__valid_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_84
memory_queue_i/clk_gate_mem_reg_5__addr_ready_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_80
memory_queue_i/clk_gate_mem_reg_5__valid_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_81
memory_queue_i/clk_gate_mem_reg_6__addr_ready_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_77
memory_queue_i/clk_gate_mem_reg_6__valid_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_78
memory_queue_i/clk_gate_mem_reg_7__addr_ready_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_74
memory_queue_i/clk_gate_mem_reg_7__valid_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_75
memory_queue_i/clk_gate_mem_reg_8__addr_ready_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_71
memory_queue_i/clk_gate_mem_reg_8__valid_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_72
memory_queue_i/clk_gate_mem_reg_9__addr_ready_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_68
memory_queue_i/clk_gate_mem_reg_9__valid_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_69
memory_queue_i/clk_gate_tail_reg_reg_4_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_0
phys_regfile_i                     49685.3419     18.9   36739.6543  12694.3176      0.0000  phys_regfile
phys_regfile_i/clk_gate_data_reg_10__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_54
phys_regfile_i/clk_gate_data_reg_11__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_53
phys_regfile_i/clk_gate_data_reg_12__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_52
phys_regfile_i/clk_gate_data_reg_13__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_51
phys_regfile_i/clk_gate_data_reg_14__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_50
phys_regfile_i/clk_gate_data_reg_15__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_49
phys_regfile_i/clk_gate_data_reg_16__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_48
phys_regfile_i/clk_gate_data_reg_17__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_47
phys_regfile_i/clk_gate_data_reg_18__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_46
phys_regfile_i/clk_gate_data_reg_19__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_45
phys_regfile_i/clk_gate_data_reg_1__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_63
phys_regfile_i/clk_gate_data_reg_20__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_44
phys_regfile_i/clk_gate_data_reg_21__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_43
phys_regfile_i/clk_gate_data_reg_22__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_42
phys_regfile_i/clk_gate_data_reg_23__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_41
phys_regfile_i/clk_gate_data_reg_24__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_40
phys_regfile_i/clk_gate_data_reg_25__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_39
phys_regfile_i/clk_gate_data_reg_26__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_38
phys_regfile_i/clk_gate_data_reg_27__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_37
phys_regfile_i/clk_gate_data_reg_28__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_36
phys_regfile_i/clk_gate_data_reg_29__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_35
phys_regfile_i/clk_gate_data_reg_2__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_62
phys_regfile_i/clk_gate_data_reg_30__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_34
phys_regfile_i/clk_gate_data_reg_31__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_33
phys_regfile_i/clk_gate_data_reg_32__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_32
phys_regfile_i/clk_gate_data_reg_33__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_31
phys_regfile_i/clk_gate_data_reg_34__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_30
phys_regfile_i/clk_gate_data_reg_35__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_29
phys_regfile_i/clk_gate_data_reg_36__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_28
phys_regfile_i/clk_gate_data_reg_37__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_27
phys_regfile_i/clk_gate_data_reg_38__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_26
phys_regfile_i/clk_gate_data_reg_39__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_25
phys_regfile_i/clk_gate_data_reg_3__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_61
phys_regfile_i/clk_gate_data_reg_40__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_24
phys_regfile_i/clk_gate_data_reg_41__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_23
phys_regfile_i/clk_gate_data_reg_42__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_22
phys_regfile_i/clk_gate_data_reg_43__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_21
phys_regfile_i/clk_gate_data_reg_44__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_20
phys_regfile_i/clk_gate_data_reg_45__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_19
phys_regfile_i/clk_gate_data_reg_46__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_18
phys_regfile_i/clk_gate_data_reg_47__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_17
phys_regfile_i/clk_gate_data_reg_48__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_16
phys_regfile_i/clk_gate_data_reg_49__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_15
phys_regfile_i/clk_gate_data_reg_4__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_60
phys_regfile_i/clk_gate_data_reg_50__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_14
phys_regfile_i/clk_gate_data_reg_51__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_13
phys_regfile_i/clk_gate_data_reg_52__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_12
phys_regfile_i/clk_gate_data_reg_53__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_11
phys_regfile_i/clk_gate_data_reg_54__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_10
phys_regfile_i/clk_gate_data_reg_55__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_9
phys_regfile_i/clk_gate_data_reg_56__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_8
phys_regfile_i/clk_gate_data_reg_57__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_7
phys_regfile_i/clk_gate_data_reg_58__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_6
phys_regfile_i/clk_gate_data_reg_59__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_5
phys_regfile_i/clk_gate_data_reg_5__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_59
phys_regfile_i/clk_gate_data_reg_60__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_4
phys_regfile_i/clk_gate_data_reg_61__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_3
phys_regfile_i/clk_gate_data_reg_62__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_2
phys_regfile_i/clk_gate_data_reg_63__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_1
phys_regfile_i/clk_gate_data_reg_6__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_58
phys_regfile_i/clk_gate_data_reg_7__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_57
phys_regfile_i/clk_gate_data_reg_8__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_56
phys_regfile_i/clk_gate_data_reg_9__31_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_55
queue_i                            11241.9582      4.3    4748.3661   6357.9320      0.0000  queue_DATA_WIDTH32_QUEUE_DEPTH32_1
queue_i/clk_gate_head_reg_reg_5_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_1
queue_i/clk_gate_mem_reg_0__32_        3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_0
queue_i/clk_gate_mem_reg_10__32_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_24
queue_i/clk_gate_mem_reg_11__32_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_23
queue_i/clk_gate_mem_reg_12__32_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_22
queue_i/clk_gate_mem_reg_13__32_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_21
queue_i/clk_gate_mem_reg_14__32_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_20
queue_i/clk_gate_mem_reg_15__32_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_19
queue_i/clk_gate_mem_reg_16__32_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_18
queue_i/clk_gate_mem_reg_17__32_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_17
queue_i/clk_gate_mem_reg_18__32_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_16
queue_i/clk_gate_mem_reg_19__32_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_15
queue_i/clk_gate_mem_reg_1__32_        3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_33
queue_i/clk_gate_mem_reg_20__32_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_14
queue_i/clk_gate_mem_reg_21__32_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_13
queue_i/clk_gate_mem_reg_22__32_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_12
queue_i/clk_gate_mem_reg_23__32_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_11
queue_i/clk_gate_mem_reg_24__32_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_10
queue_i/clk_gate_mem_reg_25__32_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_9
queue_i/clk_gate_mem_reg_26__32_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_8
queue_i/clk_gate_mem_reg_27__32_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_7
queue_i/clk_gate_mem_reg_28__32_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_6
queue_i/clk_gate_mem_reg_29__32_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_5
queue_i/clk_gate_mem_reg_2__32_        3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_32
queue_i/clk_gate_mem_reg_30__32_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_4
queue_i/clk_gate_mem_reg_31__32_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_3
queue_i/clk_gate_mem_reg_3__32_        3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_31
queue_i/clk_gate_mem_reg_4__32_        3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_30
queue_i/clk_gate_mem_reg_5__32_        3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_29
queue_i/clk_gate_mem_reg_6__32_        3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_28
queue_i/clk_gate_mem_reg_7__32_        3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_27
queue_i/clk_gate_mem_reg_8__32_        3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_26
queue_i/clk_gate_mem_reg_9__32_        3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_25
queue_i/clk_gate_tail_reg_reg_5_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_2
queue_pc                           11110.2882      4.2    4636.3801   6338.2480      0.0000  queue_DATA_WIDTH32_QUEUE_DEPTH32_0
queue_pc/clk_gate_head_reg_reg_5_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_1
queue_pc/clk_gate_mem_reg_0__32_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_0
queue_pc/clk_gate_mem_reg_10__32_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_24
queue_pc/clk_gate_mem_reg_11__32_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_23
queue_pc/clk_gate_mem_reg_12__32_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_22
queue_pc/clk_gate_mem_reg_13__32_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_21
queue_pc/clk_gate_mem_reg_14__32_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_20
queue_pc/clk_gate_mem_reg_15__32_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_19
queue_pc/clk_gate_mem_reg_16__32_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_18
queue_pc/clk_gate_mem_reg_17__32_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_17
queue_pc/clk_gate_mem_reg_18__32_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_16
queue_pc/clk_gate_mem_reg_19__32_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_15
queue_pc/clk_gate_mem_reg_1__32_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_33
queue_pc/clk_gate_mem_reg_20__32_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_14
queue_pc/clk_gate_mem_reg_21__32_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_13
queue_pc/clk_gate_mem_reg_22__32_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_12
queue_pc/clk_gate_mem_reg_23__32_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_11
queue_pc/clk_gate_mem_reg_24__32_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_10
queue_pc/clk_gate_mem_reg_25__32_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_9
queue_pc/clk_gate_mem_reg_26__32_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_8
queue_pc/clk_gate_mem_reg_27__32_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_7
queue_pc/clk_gate_mem_reg_28__32_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_6
queue_pc/clk_gate_mem_reg_29__32_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_5
queue_pc/clk_gate_mem_reg_2__32_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_32
queue_pc/clk_gate_mem_reg_30__32_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_4
queue_pc/clk_gate_mem_reg_31__32_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_3
queue_pc/clk_gate_mem_reg_3__32_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_31
queue_pc/clk_gate_mem_reg_4__32_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_30
queue_pc/clk_gate_mem_reg_5__32_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_29
queue_pc/clk_gate_mem_reg_6__32_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_28
queue_pc/clk_gate_mem_reg_7__32_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_27
queue_pc/clk_gate_mem_reg_8__32_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_26
queue_pc/clk_gate_mem_reg_9__32_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_25
queue_pc/clk_gate_tail_reg_reg_5_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_2
rat_i/clk_gate_rat_reg_0__5_           3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_0
rat_i/clk_gate_rat_reg_10__5_          3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_22
rat_i/clk_gate_rat_reg_11__5_          3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_21
rat_i/clk_gate_rat_reg_12__5_          3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_20
rat_i/clk_gate_rat_reg_13__5_          3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_19
rat_i/clk_gate_rat_reg_14__5_          3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_18
rat_i/clk_gate_rat_reg_15__5_          3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_17
rat_i/clk_gate_rat_reg_16__5_          3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_16
rat_i/clk_gate_rat_reg_17__5_          3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_15
rat_i/clk_gate_rat_reg_18__5_          3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_14
rat_i/clk_gate_rat_reg_19__5_          3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_13
rat_i/clk_gate_rat_reg_1__5_           3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_31
rat_i/clk_gate_rat_reg_20__5_          3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_12
rat_i/clk_gate_rat_reg_21__5_          3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_11
rat_i/clk_gate_rat_reg_22__5_          3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_10
rat_i/clk_gate_rat_reg_23__5_          3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_9
rat_i/clk_gate_rat_reg_24__5_          3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_8
rat_i/clk_gate_rat_reg_25__5_          3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_7
rat_i/clk_gate_rat_reg_26__5_          3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_6
rat_i/clk_gate_rat_reg_27__5_          3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_5
rat_i/clk_gate_rat_reg_28__5_          3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_4
rat_i/clk_gate_rat_reg_29__5_          3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_3
rat_i/clk_gate_rat_reg_2__5_           3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_30
rat_i/clk_gate_rat_reg_30__5_          3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_2
rat_i/clk_gate_rat_reg_31__5_          3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_1
rat_i/clk_gate_rat_reg_3__5_           3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_29
rat_i/clk_gate_rat_reg_4__5_           3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_28
rat_i/clk_gate_rat_reg_5__5_           3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_27
rat_i/clk_gate_rat_reg_6__5_           3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_26
rat_i/clk_gate_rat_reg_7__5_           3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_25
rat_i/clk_gate_rat_reg_8__5_           3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_24
rat_i/clk_gate_rat_reg_9__5_           3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_23
reservation_stations_i             18670.5400      7.1    8432.7320  10158.0080      0.0000  reservation_station
reservation_stations_i/clk_gate_add_reservation_station_reg_0__busy_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_16
reservation_stations_i/clk_gate_add_reservation_station_reg_1__busy_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_15
reservation_stations_i/clk_gate_add_reservation_station_reg_2__busy_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_14
reservation_stations_i/clk_gate_add_reservation_station_reg_3__busy_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_13
reservation_stations_i/clk_gate_branch_reservation_station_reg_0__busy_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_8
reservation_stations_i/clk_gate_branch_reservation_station_reg_1__busy_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_7
reservation_stations_i/clk_gate_branch_reservation_station_reg_2__busy_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_6
reservation_stations_i/clk_gate_branch_reservation_station_reg_3__busy_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_5
reservation_stations_i/clk_gate_divide_reservation_station_reg_0__busy_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_10
reservation_stations_i/clk_gate_divide_reservation_station_reg_1__busy_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_9
reservation_stations_i/clk_gate_mem_reservation_station_reg_0__busy_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_0
reservation_stations_i/clk_gate_mem_reservation_station_reg_0__ps1_v_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_3
reservation_stations_i/clk_gate_mem_reservation_station_reg_1__busy_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_19
reservation_stations_i/clk_gate_mem_reservation_station_reg_1__ps1_v_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_4
reservation_stations_i/clk_gate_mem_reservation_station_reg_2__busy_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_18
reservation_stations_i/clk_gate_mem_reservation_station_reg_2__ps1_v_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_1
reservation_stations_i/clk_gate_mem_reservation_station_reg_3__busy_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_17
reservation_stations_i/clk_gate_mem_reservation_station_reg_3__ps1_v_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_2
reservation_stations_i/clk_gate_multiply_reservation_station_reg_0__busy_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_12
reservation_stations_i/clk_gate_multiply_reservation_station_reg_1__busy_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_11
rob_i                              18521.0478      7.0    7574.3500  10683.3578      0.0000  rob
rob_i/clk_gate_head_reg_reg_4_         3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_1
rob_i/clk_gate_mem_reg_0__commit_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_97
rob_i/clk_gate_mem_reg_0__valid_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_0
rob_i/clk_gate_mem_reg_10__commit_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_67
rob_i/clk_gate_mem_reg_10__valid_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_68
rob_i/clk_gate_mem_reg_11__commit_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_64
rob_i/clk_gate_mem_reg_11__valid_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_65
rob_i/clk_gate_mem_reg_12__commit_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_61
rob_i/clk_gate_mem_reg_12__valid_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_62
rob_i/clk_gate_mem_reg_13__commit_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_58
rob_i/clk_gate_mem_reg_13__valid_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_59
rob_i/clk_gate_mem_reg_14__commit_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_55
rob_i/clk_gate_mem_reg_14__valid_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_56
rob_i/clk_gate_mem_reg_15__commit_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_52
rob_i/clk_gate_mem_reg_15__valid_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_53
rob_i/clk_gate_mem_reg_16__commit_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_49
rob_i/clk_gate_mem_reg_16__valid_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_50
rob_i/clk_gate_mem_reg_17__commit_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_46
rob_i/clk_gate_mem_reg_17__valid_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_47
rob_i/clk_gate_mem_reg_18__commit_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_43
rob_i/clk_gate_mem_reg_18__valid_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_44
rob_i/clk_gate_mem_reg_19__commit_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_40
rob_i/clk_gate_mem_reg_19__valid_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_41
rob_i/clk_gate_mem_reg_1__commit_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_94
rob_i/clk_gate_mem_reg_1__valid_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_95
rob_i/clk_gate_mem_reg_20__commit_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_37
rob_i/clk_gate_mem_reg_20__valid_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_38
rob_i/clk_gate_mem_reg_21__commit_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_34
rob_i/clk_gate_mem_reg_21__valid_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_35
rob_i/clk_gate_mem_reg_22__commit_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_31
rob_i/clk_gate_mem_reg_22__valid_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_32
rob_i/clk_gate_mem_reg_23__commit_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_28
rob_i/clk_gate_mem_reg_23__valid_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_29
rob_i/clk_gate_mem_reg_24__commit_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_25
rob_i/clk_gate_mem_reg_24__valid_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_26
rob_i/clk_gate_mem_reg_25__commit_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_22
rob_i/clk_gate_mem_reg_25__valid_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_23
rob_i/clk_gate_mem_reg_26__commit_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_19
rob_i/clk_gate_mem_reg_26__valid_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_20
rob_i/clk_gate_mem_reg_27__commit_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_16
rob_i/clk_gate_mem_reg_27__valid_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_17
rob_i/clk_gate_mem_reg_28__commit_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_13
rob_i/clk_gate_mem_reg_28__valid_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_14
rob_i/clk_gate_mem_reg_29__commit_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_10
rob_i/clk_gate_mem_reg_29__valid_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_11
rob_i/clk_gate_mem_reg_2__commit_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_91
rob_i/clk_gate_mem_reg_2__valid_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_92
rob_i/clk_gate_mem_reg_30__commit_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_7
rob_i/clk_gate_mem_reg_30__valid_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_8
rob_i/clk_gate_mem_reg_31__commit_
                                       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_4
rob_i/clk_gate_mem_reg_31__valid_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_5
rob_i/clk_gate_mem_reg_3__commit_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_88
rob_i/clk_gate_mem_reg_3__valid_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_89
rob_i/clk_gate_mem_reg_4__commit_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_85
rob_i/clk_gate_mem_reg_4__valid_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_86
rob_i/clk_gate_mem_reg_5__commit_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_82
rob_i/clk_gate_mem_reg_5__valid_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_83
rob_i/clk_gate_mem_reg_6__commit_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_79
rob_i/clk_gate_mem_reg_6__valid_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_80
rob_i/clk_gate_mem_reg_7__commit_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_76
rob_i/clk_gate_mem_reg_7__valid_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_77
rob_i/clk_gate_mem_reg_8__commit_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_73
rob_i/clk_gate_mem_reg_8__valid_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_74
rob_i/clk_gate_mem_reg_9__commit_      3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_70
rob_i/clk_gate_mem_reg_9__valid_       3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_71
rob_i/clk_gate_tail_reg_reg_4_         3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_2
rrat_i/clk_gate_rrat_reg_10__5_        3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_9
rrat_i/clk_gate_rrat_reg_11__5_        3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_10
rrat_i/clk_gate_rrat_reg_12__5_        3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_11
rrat_i/clk_gate_rrat_reg_13__5_        3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_12
rrat_i/clk_gate_rrat_reg_14__5_        3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_13
rrat_i/clk_gate_rrat_reg_15__5_        3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_14
rrat_i/clk_gate_rrat_reg_16__5_        3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_15
rrat_i/clk_gate_rrat_reg_17__5_        3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_16
rrat_i/clk_gate_rrat_reg_18__5_        3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_17
rrat_i/clk_gate_rrat_reg_19__5_        3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_18
rrat_i/clk_gate_rrat_reg_1__5_         3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_0
rrat_i/clk_gate_rrat_reg_20__5_        3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_19
rrat_i/clk_gate_rrat_reg_21__5_        3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_20
rrat_i/clk_gate_rrat_reg_22__5_        3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_21
rrat_i/clk_gate_rrat_reg_23__5_        3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_22
rrat_i/clk_gate_rrat_reg_24__5_        3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_23
rrat_i/clk_gate_rrat_reg_25__5_        3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_24
rrat_i/clk_gate_rrat_reg_26__5_        3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_25
rrat_i/clk_gate_rrat_reg_27__5_        3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_26
rrat_i/clk_gate_rrat_reg_28__5_        3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_27
rrat_i/clk_gate_rrat_reg_29__5_        3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_28
rrat_i/clk_gate_rrat_reg_2__5_         3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_1
rrat_i/clk_gate_rrat_reg_30__5_        3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_29
rrat_i/clk_gate_rrat_reg_31__5_        3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_30
rrat_i/clk_gate_rrat_reg_3__5_         3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_2
rrat_i/clk_gate_rrat_reg_4__5_         3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_3
rrat_i/clk_gate_rrat_reg_5__5_         3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_4
rrat_i/clk_gate_rrat_reg_6__5_         3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_5
rrat_i/clk_gate_rrat_reg_7__5_         3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_6
rrat_i/clk_gate_rrat_reg_8__5_         3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_7
rrat_i/clk_gate_rrat_reg_9__5_         3.9900      0.0       0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_8
--------------------------------  -----------  -------  -----------  ----------  ----------  ----------------------------------------------------------
Total                                                   102810.3308  80416.5876  79840.6826

1
263067
-0.056208
[0;31mTiming Not Met [0m
 
 ``` 

 </details> 