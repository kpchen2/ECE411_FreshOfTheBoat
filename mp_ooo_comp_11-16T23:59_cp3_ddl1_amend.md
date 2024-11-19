# AG Report mp_ooo_comp 2024-11-16T23:59:59-06:00 cp3_ddl1_amend
Report generated at 2024-11-19T02:20:52-06:00, using commit ``6e283febe7942b560c39e144ea546e71e2d107c6``

Autograder Run ID: 891e0478-dd1f-4c9f-a023-92fc5115368e

Autograder Job ID: 00678c18-ed36-4486-a18f-d8c795ea9242

|Tests|Result|IPC|Delay (μs)|Power (mW)|PD<sup>3</sup>A<sup>½</sup>|
|---|---|--:|--:|--:|--:|
|SRAM|✅|
|compile|✅|
|lint|✅|
|synth|✅|
Area (µm<sup>2</sup>)|```327114```|
f<sub>max</sub> (MHz)|```100.00```|
|coremark_im|❌|
|aes_sha|❌|
|compression|❌|
|fft|❌|
|mergesort|❌|

### Logs
<details><summary>SRAM ✅</summary> 

 ``` 
 make clean
make[1]: Entering directory '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram'
rm -rf output
mkdir output
touch output/.gitkeep
make[1]: Leaving directory '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram'
python3 sram.py
sync
make 
make[1]: Entering directory '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram'
make clean
make[2]: Entering directory '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram'
rm -rf output
mkdir output
touch output/.gitkeep
make[2]: Leaving directory '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram'
python3 sram.py
sync
make mp_cache_tag_array mp_cache_data_array
make[2]: Entering directory '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram'
source /srv/ece411ag/OpenRAM/miniconda/bin/activate ;\
python3 /srv/ece411ag/OpenRAM/compiler/../sram_compiler.py /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.py
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
** Start: 11/19/2024 02:20:56
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
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.lvs
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.sp
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.v
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.lib
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.py
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.html
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.log
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.lef
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.gds
** Submodules: 0.9 seconds
** Placement: 0.0 seconds
** Routing: 0.0 seconds
** Verification: 0.0 seconds
** SRAM creation: 0.9 seconds
SP: Writing to /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.sp
** Spice writing: 0.0 seconds
DELAY: Writing stimulus...
** DELAY: 0.1 seconds
GDS: Writing to /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.gds
** GDS: 0.4 seconds
LEF: Writing to /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.lef
** LEF: 0.0 seconds
LVS: Writing to /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.lvs.sp
** LVS writing: 0.0 seconds
LIB: Characterizing... 
** Characterization: 0.1 seconds
Config: Writing to /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.py
** Config: 0.0 seconds
Datasheet: Writing to /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.html
** Datasheet: 0.0 seconds
Verilog: Writing to /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.v
** Verilog: 0.0 seconds
Extended Config: Writing to /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_extended.py
** Extended Config: 0.0 seconds
** End: 1.7 seconds
sed -i -E 's/falling_edge/rising_edge/g' /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C.lib
source /srv/ece411ag/OpenRAM/miniconda/bin/activate ;\
python3 /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/area.py /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.gds > /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.area.txt
cat ./output/mp_cache_tag_array/mp_cache_tag_array.area.txt | xargs -I {} sed -i -E 's/area : .*/area : {}/g' output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C.lib
cd /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_tag_array ;\
lc_shell -x 'read_lib /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C.lib; write_lib mp_cache_tag_array_TT_1p0V_25C_lib; exit' ;\
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
Reading '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C.lib' ...
Warning: Line 1, The 'internal_power_calculation' attribute in char_config group is required for NLPM library. 
	No default can be applied to this attribute. (LBDB-366)
Information: Line 74, Cell 'mp_cache_tag_array', The cell 'mp_cache_tag_array' contiains memory/memory_read/memory_write groups which are deprecated, use the is_memory_cell attribute instead. (LIBG-280)
Technology library 'mp_cache_tag_array_TT_1p0V_25C_lib' read successfully
Wrote the 'mp_cache_tag_array_TT_1p0V_25C_lib' library to 'mp_cache_tag_array_TT_1p0V_25C_lib.db' successfully
Maximum memory usage for this session: 83.45 MB
CPU usage for this session:      2 seconds (  0.00 hours)
Elapsed time for this session:      2 seconds (  0.00 hours)
Thank you for using Library Compiler.

Thank you...
source /srv/ece411ag/OpenRAM/miniconda/bin/activate ;\
python3 /srv/ece411ag/OpenRAM/compiler/../sram_compiler.py /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_data_array/mp_cache_data_array.py
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
** Start: 11/19/2024 02:21:02
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
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_data_array/mp_cache_data_array.lvs
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_data_array/mp_cache_data_array.sp
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_data_array/mp_cache_data_array.v
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_data_array/mp_cache_data_array.lib
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_data_array/mp_cache_data_array.py
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_data_array/mp_cache_data_array.html
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_data_array/mp_cache_data_array.log
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_data_array/mp_cache_data_array.lef
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_data_array/mp_cache_data_array.gds
** Submodules: 15.0 seconds
** Placement: 1.2 seconds
** Routing: 0.0 seconds
** Verification: 0.0 seconds
** SRAM creation: 16.2 seconds
SP: Writing to /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_data_array/mp_cache_data_array.sp
** Spice writing: 0.5 seconds
DELAY: Writing stimulus...
** DELAY: 0.7 seconds
GDS: Writing to /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_data_array/mp_cache_data_array.gds
** GDS: 2.8 seconds
LEF: Writing to /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_data_array/mp_cache_data_array.lef
** LEF: 0.0 seconds
LVS: Writing to /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_data_array/mp_cache_data_array.lvs.sp
** LVS writing: 0.1 seconds
LIB: Characterizing... 
** Characterization: 0.9 seconds
Config: Writing to /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_data_array/mp_cache_data_array.py
** Config: 0.0 seconds
Datasheet: Writing to /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_data_array/mp_cache_data_array.html
** Datasheet: 0.0 seconds
Verilog: Writing to /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_data_array/mp_cache_data_array.v
** Verilog: 0.0 seconds
Extended Config: Writing to /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_data_array/mp_cache_data_array_extended.py
** Extended Config: 0.0 seconds
** End: 21.4 seconds
sed -i -E 's/falling_edge/rising_edge/g' /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C.lib
source /srv/ece411ag/OpenRAM/miniconda/bin/activate ;\
python3 /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/area.py /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_data_array/mp_cache_data_array.gds > /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_data_array/mp_cache_data_array.area.txt
cat ./output/mp_cache_data_array/mp_cache_data_array.area.txt | xargs -I {} sed -i -E 's/area : .*/area : {}/g' output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C.lib
cd /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_data_array ;\
lc_shell -x 'read_lib /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C.lib; write_lib mp_cache_data_array_TT_1p0V_25C_lib; exit' ;\
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
Reading '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C.lib' ...
Warning: Line 1, The 'internal_power_calculation' attribute in char_config group is required for NLPM library. 
	No default can be applied to this attribute. (LBDB-366)
Information: Line 82, Cell 'mp_cache_data_array', The cell 'mp_cache_data_array' contiains memory/memory_read/memory_write groups which are deprecated, use the is_memory_cell attribute instead. (LIBG-280)
Technology library 'mp_cache_data_array_TT_1p0V_25C_lib' read successfully
Wrote the 'mp_cache_data_array_TT_1p0V_25C_lib' library to 'mp_cache_data_array_TT_1p0V_25C_lib.db' successfully
Maximum memory usage for this session: 87.27 MB
CPU usage for this session:      2 seconds (  0.00 hours)
Elapsed time for this session:      2 seconds (  0.00 hours)
Thank you for using Library Compiler.

Thank you...
make[2]: Leaving directory '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram'
make[1]: Leaving directory '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram'
 
 ``` 

 </details> 
<details><summary>compile ✅</summary> 

 ``` 
 10000
0
mkdir -p vcs
python3 ../bin/rvfi_reference.py
cd vcs && vcs /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../pkg/types.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/test.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/memory_queue.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/fu_mem.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/fu_br.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/cache_arbiter.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/valid_array.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/stage2.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/stage1.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/rrat.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/rob.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/reservation_station.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/rename_dispatch.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/rat.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/queue.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/provided_cache.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/phys_regfile.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/lru_array.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/fu_mult.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/fu_div_rem.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/fu_add.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/free_list.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/execute.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/cpu.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/cacheline_adapter.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/cache.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hvl/common/dram_w_burst_frfcfs_controller.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hvl/common/rvfimon.v /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hvl/common/mon_itf.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hvl/common/mem_itf.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hvl/common/monitor.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hvl/vcs/top_tb.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../sram/output/mp_cache_data_array/mp_cache_data_array.v /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../sram/output/mp_cache_tag_array/mp_cache_tag_array.v /srv/software/Synopsys-2021_x86_64/icc/R-2020.09-SP4/dw/sim_ver/DW_mult_seq.v /srv/software/Synopsys-2021_x86_64/icc/R-2020.09-SP4/dw/sim_ver/DW_div_seq.v -full64 -lca -sverilog -timescale=1ps/1ps -debug_acc+all -kdb -fsdb -suppress=LCA_FEATURES_ENABLED -msg_config=../vcs_warn.config -xprop=../xprop.config -xprop=flowctrl +incdir+/srv/software/Synopsys-2021_x86_64/icc/R-2020.09-SP4/dw/sim_ver +define+DW_SUPPRESS_WARN +incdir+/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hvl/vcs +incdir+/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hvl/common -l compile.log -top top_tb -o top_tb
                         Chronologic VCS (TM)
      Version R-2020.12-SP1-1_Full64 -- Tue Nov 19 02:21:31 2024

                    Copyright (c) 1991 - 2021 Synopsys, Inc.
   This software and the associated documentation are proprietary to Synopsys,
 Inc. This software may only be used in accordance with the terms and conditions
 of a written license agreement with Synopsys, Inc. All other use, reproduction,
            or distribution of this software is strictly prohibited.

Reading Config file '../xprop.config'
Parsing design file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../pkg/types.sv'
Parsing design file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/test.sv'
Parsing design file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/memory_queue.sv'
Parsing design file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/fu_mem.sv'
Parsing design file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/fu_br.sv'
Parsing design file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/cache_arbiter.sv'
Parsing design file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/valid_array.sv'
Parsing design file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/stage2.sv'
Parsing design file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/stage1.sv'
Parsing design file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/rrat.sv'
Parsing design file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/rob.sv'
Parsing design file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/reservation_station.sv'
Parsing design file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/rename_dispatch.sv'
Parsing design file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/rat.sv'
Parsing design file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/queue.sv'
Parsing design file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/provided_cache.sv'
Parsing design file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/phys_regfile.sv'
Parsing design file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/lru_array.sv'
Parsing design file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/fu_mult.sv'
Parsing design file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/fu_div_rem.sv'
Parsing design file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/fu_add.sv'
Parsing design file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/free_list.sv'
Parsing design file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/execute.sv'
Parsing design file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/cpu.sv'
Parsing design file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/cacheline_adapter.sv'
Parsing design file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/cache.sv'
Parsing design file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hvl/common/dram_w_burst_frfcfs_controller.sv'
Parsing design file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hvl/common/rvfimon.v'
Parsing design file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hvl/common/mon_itf.sv'
Parsing design file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hvl/common/mem_itf.sv'
Parsing design file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hvl/common/monitor.sv'
Parsing design file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hvl/vcs/top_tb.sv'
Parsing included file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hvl/common/rvfi_reference.svh'.
Back to file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hvl/vcs/top_tb.sv'.
Parsing design file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../sram/output/mp_cache_data_array/mp_cache_data_array.v'
Parsing design file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../sram/output/mp_cache_tag_array/mp_cache_tag_array.v'
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
recompiling module fu_mem
recompiling module fu_br
recompiling module cache_arbiter
recompiling module valid_array
recompiling module stage_2
recompiling module stage_1
recompiling module rrat
recompiling module rob
recompiling module reservation_station
recompiling module rename_dispatch
recompiling module rat
recompiling module queue
recompiling module phys_regfile
recompiling module fu_mult
recompiling module fu_div_rem
recompiling module free_list
recompiling module execute
recompiling module cpu
recompiling module cacheline_adapter
recompiling module cache
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
recompiling module riscv_formal_monitor_rv32imc_insn_mulh
recompiling module riscv_formal_monitor_rv32imc_insn_mulhsu
50 of 77 modules done
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
recompiling module mon_itf
recompiling module mem_itf_banked
recompiling module top_tb
recompiling module mp_cache_data_array
recompiling module mp_cache_tag_array
recompiling module DW_mult_seq
recompiling module DW_div_seq
All of 77 modules done
make[1]: Entering directory '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/vcs/csrc'
make[1]: Leaving directory '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/vcs/csrc'
/srv/software/Synopsys-2021_x86_64/vcs-mx/O-2018.09-SP2-3/bin/vcs: line 31361: 161731 Segmentation fault      (core dumped) ${TOOL_HOME}/bin/cfs_ident_exec -f ${XML_INPUT_EXE} -o "${fsearchDir}/idents_tapi.xml" -o_SrcFile "${dirSrcFiles}/src_files_c" ${all_dyn_libs} > tapi_xml_writer.log
make[1]: Entering directory '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/vcs/csrc'
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../top_tb ]; then chmod a-x ../top_tb; fi
g++  -o ../top_tb      -rdynamic  -Wl,-rpath='$ORIGIN'/top_tb.daidir -Wl,-rpath=./top_tb.daidir -Wl,-rpath=/srv/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib -L/srv/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib  -Wl,-rpath-link=./  /usr/lib64/libnuma.so.1   objs/amcQw_d.o   _161572_archive_1.so  SIM_l.o      rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o           -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /srv/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive        _vcs_pli_stub_.o   /srv/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib/vcs_save_restore_new.o /srv/software/Synopsys-2021_x86_64/verdi/R-2020.12-SP1-1/share/PLI/VCS/LINUX64/pli.a -ldl  -lc -lm -lpthread -ldl 
../top_tb up to date
make[1]: Leaving directory '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/vcs/csrc'
CPU time: 4.054 seconds to compile + .573 seconds to elab + .349 seconds to link
Verdi KDB elaboration done and the database successfully generated: 0 error(s), 0 warning(s)
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/memory_queue.sv:76 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/memory_queue.sv:143 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/fu_mem.sv:27 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/fu_br.sv:36 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/fu_br.sv:56 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/cache_arbiter.sv:55 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/cache_arbiter.sv:136 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/valid_array.sv:24 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/valid_array.sv:38 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/stage2.sv:51 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/stage1.sv:54 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/rrat.sv:41 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/rob.sv:116 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/rob.sv:269 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/reservation_station.sv:108 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/reservation_station.sv:193 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/reservation_station.sv:401 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/reservation_station.sv:607 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/reservation_station.sv:631 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/reservation_station.sv:654 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/reservation_station.sv:677 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/reservation_station.sv:700 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/reservation_station.sv:~741 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/reservation_station.sv:~745 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/reservation_station.sv:~749 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/reservation_station.sv:~753 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/reservation_station.sv:~757 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/reservation_station.sv:~761 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/reservation_station.sv:~765 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/reservation_station.sv:~769 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/reservation_station.sv:~773 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/reservation_station.sv:~777 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/rename_dispatch.sv:54 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/rename_dispatch.sv:93 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/rename_dispatch.sv:105 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/rat.sv:47 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/rat.sv:51 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/rat.sv:55 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/rat.sv:59 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/rat.sv:63 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/rat.sv:68 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/rat.sv:76 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/rat.sv:90 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/rat.sv:101 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/queue.sv:42 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/queue.sv:83 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/queue.sv:91 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/queue.sv:103 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/phys_regfile.sv:21 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/phys_regfile.sv:64 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/lru_array.sv:33 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/lru_array.sv:55 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/fu_mult.sv:44 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/fu_mult.sv:67 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/fu_mult.sv:101 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/fu_div_rem.sv:30 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/fu_div_rem.sv:67 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/fu_div_rem.sv:101 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/fu_div_rem.sv:131 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/fu_add.sv:35 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/fu_add.sv:49 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/fu_add.sv:68 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/free_list.sv:47 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/free_list.sv:95 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/free_list.sv:101 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/free_list.sv:113 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/free_list.sv:127 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/execute.sv:80 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/execute.sv:102 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/execute.sv:114 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/execute.sv:269 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/cpu.sv:199 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/cpu.sv:221 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/cacheline_adapter.sv:31 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/cacheline_adapter.sv:52 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/cacheline_adapter.sv:96 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../sram/output/mp_cache_data_array/mp_cache_data_array.v:41 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../sram/output/mp_cache_data_array/mp_cache_data_array.v:52 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../sram/output/mp_cache_tag_array/mp_cache_tag_array.v:37 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../sram/output/mp_cache_tag_array/mp_cache_tag_array.v:47 YES
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sim/../hdl/cache.sv:54 YES
==================================================
X P R O P   S T A T I S T I C S
instrumentable assignments:    1297
instrumented assignments:      1297
instrumentation success rate:  100%
[0;32mCompile Successful [0m
 
 ``` 

 </details> 
<details><summary>lint ✅</summary> 

 ``` 
 rm -rf spyglass-1 WORK *.log reports
mkdir -p reports
sg_shell < lint.tcl |& tee reports/lint.log

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

        "/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db"
        "/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db"
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
Checking Rule SGDC_voltagedomain05 (Rule 17 of total 325) .... done (Time = 0.00s, Memory = 32.0K)
Checking Rule SGDC_voltagedomain06 (Rule 18 of total 325) .... done (Time = 0.00s, Memory = 8.0K)
Checking Rule SGDC_voltagedomain07 (Rule 19 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_powerdomainoutputs02 (Rule 20 of total 325) .... done (Time = 0.00s, Memory = 8.0K)
Checking Rule SGDC_supply01 (Rule 21 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
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
Checking Rule SGDC_fifo01 (Rule 42 of total 325) .... done (Time = 0.00s, Memory = -32.0K)
Checking Rule SGDC_libgroup01 (Rule 43 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_libgroup02 (Rule 44 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_libgroup04 (Rule 45 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_power_data01 (Rule 46 of total 325) .... done (Time = 0.00s, Memory = 32.0K)
Checking Rule SGDC_ungroup01 (Rule 47 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_abstract_port06 (Rule 48 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_abstract_port14 (Rule 49 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_abstract_port15 (Rule 50 of total 325) .... done (Time = 0.00s, Memory = 16.0K)
Checking Rule SGDC_abstract_port18 (Rule 51 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule sdc_init_rule (Rule 52 of total 325) .... done (Time = 0.00s, Memory = -32.0K)
Checking Rule CMD_ignorelibs01 (Rule 53 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule ReportRuleNotRun (Rule 54 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
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
 Analyzing source file "/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../pkg/types.sv" ....
 Analyzing source file "/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/test.sv" ....
 Analyzing source file "/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/memory_queue.sv" ....
 Analyzing source file "/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/fu_mem.sv" ....
 Analyzing source file "/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/fu_br.sv" ....
 Analyzing source file "/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/cache_arbiter.sv" ....
 Analyzing source file "/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/valid_array.sv" ....
 Analyzing source file "/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/stage2.sv" ....
 Analyzing source file "/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/stage1.sv" ....
 Analyzing source file "/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/rrat.sv" ....
 Analyzing source file "/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/rob.sv" ....
 Analyzing source file "/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/reservation_station.sv" ....
 Analyzing source file "/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/rename_dispatch.sv" ....
 Analyzing source file "/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/rat.sv" ....
 Analyzing source file "/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/queue.sv" ....
 Analyzing source file "/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/provided_cache.sv" ....
 Analyzing source file "/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/phys_regfile.sv" ....
 Analyzing source file "/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/lru_array.sv" ....
 Analyzing source file "/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/fu_mult.sv" ....
 Analyzing source file "/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/fu_div_rem.sv" ....
 Analyzing source file "/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/fu_add.sv" ....
 Analyzing source file "/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/free_list.sv" ....
 Analyzing source file "/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/execute.sv" ....
 Analyzing source file "/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/cpu.sv" ....
 Analyzing source file "/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/cacheline_adapter.sv" ....
 Analyzing source file "/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/cache.sv" ....
 Elaborating Top Verilog Design Unit 'cpu' ..... done
Checking Rule ElabSummary (Rule 73 of total 325) .... done (Time = 0.00s, Memory = 256.0K)
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
Checking Rule GenerateConfMap (Rule 79 of total 325) .... done (Time = 0.00s, Memory = 32.0K)
Checking Rule HdlLibDuCheck (Rule 80 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule RtlDesignInfo (Rule 81 of total 325) .... done (Time = 0.00s, Memory = 8.0K)
Checking Rule W339a (Rule 82 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W416 (Rule 83 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule mixedsenselist (Rule 84 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W110a (Rule 85 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule preReq_ConsCase (Rule 86 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule CheckCelldefine (Rule 87 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_waive23 (Rule 88 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_waive26 (Rule 89 of total 325) .... done (Time = 0.00s, Memory = 8.0K)
Checking Rule SGDC_waive27 (Rule 90 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_waive29 (Rule 91 of total 325) .... done (Time = 0.00s, Memory = 8.0K)
Checking Rule STARC05-2.1.4.5 (Rule 92 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.3.1.5b (Rule 93 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.3.3.1 (Rule 94 of total 325) .... done (Time = 0.00s, Memory = 8.0K)
Checking Rule STARC05-2.3.3.1 (Rule 95 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.11.3.1 (Rule 96 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W317 (Rule 97 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W422 (Rule 98 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W426 (Rule 99 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W480 (Rule 100 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W481a (Rule 101 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
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
Checking Rule PragmaComments-ML (Rule 113 of total 325) .... done (Time = 0.00s, Memory = 8.0K)
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
    Checking Rule W110 (Rule 128 of total 325) .... done (Time = 0.01s, Memory = 256.0K)
    Checking Rule W122 (Rule 129 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496a (Rule 130 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496b (Rule 131 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W19 (Rule 132 of total 325) .... done (Time = 0.00s, Memory = 8.0K)
    Checking Rule W66 (Rule 133 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 134 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 135 of total 325) .... done (Time = 0.00s, Memory = 72.0K)
    Checking Rule W156 (Rule 136 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W215 (Rule 137 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W216 (Rule 138 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W218 (Rule 139 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W224 (Rule 140 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W263 (Rule 141 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W289 (Rule 142 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
    Checking Rule W337 (Rule 143 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W416 (Rule 144 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W352 (Rule 145 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W362 (Rule 146 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.00s, Memory = 32.0K)
    Checking Rule W486 (Rule 148 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W499 (Rule 149 of total 325) .... done (Time = 0.00s, Memory = 40.0K)
    Checking Rule W502 (Rule 150 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 151 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 152 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 153 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W156 (Rule 154 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W71 (Rule 155 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 156 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 157 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W287a (Rule 158 of total 325) .... done (Time = 0.00s, Memory = 264.0K)
    Checking Rule W293 (Rule 159 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W398 (Rule 160 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W424 (Rule 161 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W467 (Rule 162 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 163 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 164 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 165 of total 325) .... done (Time = 0.01s, Memory = 104.0K)
    Checking Rule W528 (Rule 166 of total 325) .... done (Time = 0.00s, Memory = 608.0K)
    Checking Rule Prereqs_Usage (Rule 167 of total 325) .... done (Time = 0.00s, Memory = -48.0K)
    Checking Rule Prereqs_ConstantInput-ML (Rule 168 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ReportPortInfo-ML (Rule 169 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 170 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 171 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoAssignX-ML (Rule 172 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ParamWidthMismatch-ML (Rule 173 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
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
    Checking Rule W122 (Rule 129 of total 325) .... done (Time = 0.00s, Memory = 8.0K)
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
    Checking Rule W499 (Rule 149 of total 325) .... done (Time = 0.00s, Memory = 16.0K)
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
    Checking Rule W398 (Rule 160 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
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
    Checking Rule NoAssignX-ML (Rule 172 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
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
    Checking Rule STARC05-2.1.5.3 (Rule 118 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
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
    Checking Rule sim_race02 (Rule 127 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W110 (Rule 128 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 129 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496a (Rule 130 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496b (Rule 131 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W19 (Rule 132 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W66 (Rule 133 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 134 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 135 of total 325) .... done (Time = 0.01s, Memory = 32.0K)
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
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.00s, Memory = 88.0K)
    Checking Rule W486 (Rule 148 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W499 (Rule 149 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W502 (Rule 150 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 151 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 152 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 153 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W156 (Rule 154 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W71 (Rule 155 of total 325) .... done (Time = 0.00s, Memory = 40.0K)
    Checking Rule W240 (Rule 156 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 157 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W287a (Rule 158 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W293 (Rule 159 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W398 (Rule 160 of total 325) .... done (Time = 0.00s, Memory = 32.0K)
    Checking Rule W424 (Rule 161 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W467 (Rule 162 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 163 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 164 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 165 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
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
    Checking Rule W289 (Rule 142 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
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
    Checking Rule W362 (Rule 146 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
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
Checking ELABDU Rules for designUnit rat
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
Checking ELABDU Rules for designUnit rob
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
    Checking Rule W123 (Rule 135 of total 325) .... done (Time = 0.01s, Memory = 24.0K)
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
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.03s, Memory = 984.0K)
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
Checking ELABDU Rules for designUnit free_list
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
    Checking Rule W528 (Rule 165 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
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
    Checking Rule STARC05-2.10.1.4b (Rule 126 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
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
    Checking Rule STARC05-2.10.3.2a (Rule 122 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.11.3.1 (Rule 123 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.3.1 (Rule 124 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4a (Rule 125 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4b (Rule 126 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule sim_race02 (Rule 127 of total 325) .... done (Time = 0.00s, Memory = 264.0K)
    Checking Rule W110 (Rule 128 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 129 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496a (Rule 130 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496b (Rule 131 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W19 (Rule 132 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W66 (Rule 133 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 134 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 135 of total 325) .... done (Time = 0.01s, Memory = 48.0K)
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
    Checking Rule W362 (Rule 146 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.00s, Memory = 24.0K)
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
    Checking Rule W505 (Rule 163 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 164 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 165 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 166 of total 325) .... done (Time = 0.00s, Memory = 608.0K)
    Checking Rule Prereqs_Usage (Rule 167 of total 325) .... done (Time = 0.00s, Memory = -56.0K)
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
Checking Lexical Rules for file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/memory_queue.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/fu_mem.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/fu_br.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/cache_arbiter.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/valid_array.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/stage2.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/stage1.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/rrat.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/rob.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/reservation_station.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/rename_dispatch.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/rat.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/queue.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/phys_regfile.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/lru_array.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/fu_mult.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/fu_div_rem.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/fu_add.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/free_list.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/execute.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/cpu.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/cacheline_adapter.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/cache.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../pkg/types.sv
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
Checking Rule InferBlackBox (Rule 211 of total 325) .... done (Time = 0.21s, Memory = 0.0K)
Checking Rule checkCMD_mthresh (Rule 212 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_waive37 (Rule 213 of total 325) .... done (Time = 0.00s, Memory = -4096.0K)
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
Checking Rule InferLatch (Rule 250 of total 325) .... done (Time = 0.14s, Memory = 32.0K)
Checking Rule UndrivenInTerm-ML (Rule 251 of total 325) .... done (Time = 2.80s, Memory = 0.0K)
Checking Rule Av_casereq03 (Rule 252 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_fsm_setup01 (Rule 253 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_PortRetention (Rule 254 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_assume_path05 (Rule 255 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
 Flattening cpu (.lib instances separately flattened) ....
    9% completed (50000 instances created)
    18% completed (100000 instances created)
    27% completed (150000 instances created)
    36% completed (200000 instances created)
    45% completed (250000 instances created)
    55% completed (300000 instances created)
    64% completed (350000 instances created)
    73% completed (400000 instances created)
    82% completed (450000 instances created)
    91% completed (500000 instances created)
 Flattening completed
Checking Rule SGDC_set_case_analysis_LC (Rule 256 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_IpblockTaggedNet (Rule 257 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule BufClock (Rule 258 of total 325) .... done (Time = 1.33s, Memory = 5648.0K)
Checking Rule CombLoop (Rule 259 of total 325) .... done (Time = 0.72s, Memory = 904.0K)
Checking Rule STARC05-2.5.1.2 (Rule 260 of total 325) .... done (Time = 0.02s, Memory = 0.0K)
Checking Rule STARC05-1.3.1.3 (Rule 261 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
Checking Rule STARC05-1.4.3.4 (Rule 262 of total 325) .... done (Time = 0.06s, Memory = 8.0K)
Checking Rule FlopClockConstant (Rule 263 of total 325) .... done (Time = 0.10s, Memory = 24.0K)
Checking Rule FlopSRConst (Rule 264 of total 325) .... done (Time = 0.06s, Memory = 0.0K)
Checking Rule FlopEConst (Rule 265 of total 325) .... done (Time = 0.09s, Memory = 0.0K)
Checking Rule checkPinConnectedToSupply (Rule 266 of total 325) .... done (Time = 0.15s, Memory = 0.0K)
Checking Rule W392 (Rule 267 of total 325) .... done (Time = 0.04s, Memory = 3520.0K)
Checking Rule W415 (Rule 268 of total 325) .... done (Time = 0.38s, Memory = 0.0K)
Checking Rule LatchFeedback (Rule 269 of total 325) .... done (Time = 0.70s, Memory = 8.0K)
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
Checking Rule STARC05-1.2.1.2 (Rule 283 of total 325) .... done (Time = 0.21s, Memory = 2216.0K)
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
         cpu   (file: /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/cpu.sv)

   Blackbox Resolution:      0 error,      0 warning,      0 information message 
   SGDC Checks        :      0 error,      0 warning,      0 information message 
   Policy starc2005   :      0 error,      0 warning,      0 information message 
   Policy lint        :      0 error,      0 warning,      0 information message 
   Policy morelint    :      0 error,      0 warning,      0 information message 
   Policy erc         :      0 error,      0 warning,      0 information message 
   -------------------------------------------------------------------------------------
   Total              :      0 error,      0 warning,      5 information messages

  Total Number of Generated Primary Messages          :       177 (2 errors, 169 warnings, 6 Infos, 0 Data)
  Total Number of Generated Secondary Messages        :        27 (0 error, 0 warning, 0 Info, 27 Data)
  Number of Waived Primary Messages                   :       172 (2 errors, 169 warnings, 1 Info, 0 Data)
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
   /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/spyglass-1/consolidated_reports/cpu_lint_lint_turbo_rtl/ 

   SpyGlass LogFile: 
    /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/spyglass-1/cpu/lint/lint_turbo_rtl/spyglass.log 

   Standard Reports: 
     waiver.rpt          moresimple.rpt          no_msg_reporting_rules.rpt       

   HTML report:
    /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/spyglass-1/html_reports/goals_summary.html
  

   Technology Reports:  
     moresimple_turbo.rpt          ADV-LINT.rpt          auto_verify.rpt        
   
---------------------------------------------------------------------------------------------------
   Goal Violation Summary:
       Waived   Messages:                      2 Errors,    169 Warnings,      1 Infos
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
#     Report Created on: Tue Nov 19 02:21:45 2024
#     Working Directory: /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint
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
#     Total Number of Generated Primary Messages   :        177
#     Total Number of Generated Secondary Messages :         27
#     Number of Waived Primary Messages            :        172
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
[3]      N.A        DetectTopDesignUnits    DetectTopDesignUnits    Info        /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/lint/../hdl/cpu.sv                               1       2     Module cpu is a top level design unit
[0]      N.A        AutoGenerateSglib       AutoGenerateSglib       Info        ./spyglass-1/spyglass_cache/autogenerated_sglib/lc/spyglass_lc_aggregate_reports/moresimple.rpt    0       2     Sglib './spyglass-1/spyglass_cache/autogenerated_sglib/aggregate.sglib' has been auto-generated successfully
[2]      N.A        ElabSummary             ElabSummary             Info        ./spyglass-1/cpu/lint/lint_turbo_rtl/spyglass_reports/SpyGlass/elab_summary.rpt                    0       2     Please refer file './spyglass-1/cpu/lint/lint_turbo_rtl/spyglass_reports/SpyGlass/elab_summary.rpt' for elab summary report
[BC]     N.A        InferBlackBox           inferblackbox           Info        N.A.                                                                                               0       10    Interfaces for blackbox modules have been inferred. Please refer to AnalyzeBBox violations for more details
[1]      N.A        TurboModeStatus         TurboModeStatus         Info        N.A.                                                                                               0       10    Turbo-Mode is enabled in the current run as turbo_struct license feature successfully checked out
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
[0;32mLint Passed [0m
 
 ``` 

 </details> 
<details><summary>synth ✅</summary> 

 ``` 
 10000
0
compile_ultra -gate_clock -retime
compile_ultra -incremental -gate_clock -retime
0
rm -f  *.log
rm -f  default.svf
rm -rf work
rm -rf reports
rm -rf outputs
make outputs/synth.ddc
make[1]: Entering directory '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth'
mkdir -p reports outputs
export ECE411_CLOCK_PERIOD_PS=10000 ;\
export ECE411_MIN_POWER=0 ;\
export ECE411_COMPILE_CMD="compile_ultra -gate_clock -retime" ;\
export ECE411_COMPILE_CMD_INC="compile_ultra -incremental -gate_clock -retime" ;\
export ECE411_COMPILE_ITER="0" ;\
export ECE411_DC_CORES=2 ;\
dc_shell -f synthesis.tcl |& tee reports/synthesis.log
/srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/bin/dc_shell: /srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/bin/snps_platform: /bin/csh: bad interpreter: No such file or directory

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
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db
if {$sram_library eq ""} {
   set link_library [list "*" $target_library $synthetic_library]
} else {
   set link_library [list "*" $target_library $synthetic_library $sram_library]
}
* /srv/ece411ag/freepdk-45nm/stdcells.db dw_foundation.sldb {/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db}
get_license DC-Ultra-Features
1
get_license DC-Ultra-Opt
1
set pkg_src [getenv PKG_SRCS]
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../pkg/types.sv
if {$pkg_src ne ""} {
   analyze -library WORK -format sverilog $pkg_src
}
Running PRESTO HDLC
Compiling source file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../pkg/types.sv
Presto compilation completed successfully.
Loading db file '/srv/ece411ag/freepdk-45nm/stdcells.db'
Loading db file '/srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/libraries/syn/dw_foundation.sldb'
1
set modules [split [getenv HDL_SRCS] " "]
/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/test.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/memory_queue.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/fu_mem.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/fu_br.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/cache_arbiter.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/valid_array.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/stage2.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/stage1.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/rrat.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/rob.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/reservation_station.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/rename_dispatch.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/rat.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/queue.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/provided_cache.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/phys_regfile.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/lru_array.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/fu_mult.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/fu_div_rem.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/fu_add.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/free_list.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/execute.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/cpu.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/cacheline_adapter.sv /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/cache.sv
foreach module $modules {
   analyze -library WORK -format sverilog "${module}"
}
Running PRESTO HDLC
Compiling source file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/test.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/memory_queue.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/fu_mem.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/fu_br.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/cache_arbiter.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/valid_array.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/stage2.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/stage1.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/rrat.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/rob.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/reservation_station.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/rename_dispatch.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/rat.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/queue.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/provided_cache.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/phys_regfile.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/lru_array.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/fu_mult.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/fu_div_rem.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/fu_add.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/free_list.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/execute.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/cpu.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/cacheline_adapter.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/cache.sv
Presto compilation completed successfully.
elaborate $design_toplevel
Loading db file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db'
Loading db file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db'
Loading db file '/srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/libraries/syn/gtech.db'
Loading db file '/srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/libraries/syn/standard.sldb'
  Loading link library 'NangateOpenCellLibrary'
  Loading link library 'mp_cache_data_array_TT_1p0V_25C_lib'
  Loading link library 'mp_cache_tag_array_TT_1p0V_25C_lib'
  Loading link library 'gtech'
Running PRESTO HDLC

Inferred memory devices in process
	in routine cpu line 199 in file
		'/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/cpu.sv'.
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
		'/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/cache.sv'.
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
	'/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/memory_queue.sv'
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
		'/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/memory_queue.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|    tail_reg_reg     | Flip-flop |   7   |  Y  | Y  | N  | N  | N  | Y  | N  |
|    head_reg_reg     | Flip-flop |   7   |  Y  | Y  | N  | N  | N  | Y  | N  |
|       mem_reg       | Flip-flop | 16832 |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================
Statistics for MUX_OPs
======================================================
| block name/line  | Inputs | Outputs | # sel inputs |
======================================================
| memory_queue/181 |   64   |    1    |      6       |
| memory_queue/181 |   64   |    1    |      6       |
| memory_queue/149 |   64   |   262   |      6       |
| memory_queue/166 |   64   |    3    |      6       |
| memory_queue/168 |   64   |    2    |      6       |
| memory_queue/168 |   64   |    2    |      6       |
| memory_queue/169 |   64   |    2    |      6       |
| memory_queue/170 |   64   |    1    |      6       |
| memory_queue/170 |   64   |    1    |      6       |
| memory_queue/171 |   64   |    1    |      6       |
| memory_queue/182 |   64   |   32    |      6       |
| memory_queue/184 |   64   |    7    |      6       |
| memory_queue/184 |   64   |    6    |      6       |
| memory_queue/185 |   64   |    3    |      6       |
| memory_queue/192 |   64   |    6    |      6       |
| memory_queue/193 |   64   |    3    |      6       |
| memory_queue/200 |   64   |    3    |      6       |
| memory_queue/201 |   64   |    8    |      6       |
| memory_queue/202 |   64   |   16    |      6       |
| memory_queue/203 |   64   |   32    |      6       |
| memory_queue/233 |   64   |   263   |      6       |
======================================================
Presto compilation completed successfully. (memory_queue)
Information: Building the design 'cache_arbiter'. (HDL-193)

Statistics for case statements in always block at line 112 in file
	'/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/cache_arbiter.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|           136            |     no/auto      |
===============================================

Inferred memory devices in process
	in routine cache_arbiter line 55 in file
		'/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/cache_arbiter.sv'.
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
	'/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/cacheline_adapter.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            52            |    auto/auto     |
===============================================

Inferred memory devices in process
	in routine cacheline_adapter line 31 in file
		'/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/cacheline_adapter.sv'.
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
	the parameters "DATA_WIDTH=32,QUEUE_DEPTH=64". (HDL-193)

Inferred memory devices in process
	in routine queue_DATA_WIDTH32_QUEUE_DEPTH64 line 42 in file
		'/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/queue.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|       mem_reg       | Flip-flop | 2112  |  Y  | Y  | N  | N  | Y  | N  | N  |
|    tail_reg_reg     | Flip-flop |   7   |  Y  | Y  | N  | N  | N  | Y  | N  |
|    head_reg_reg     | Flip-flop |   7   |  Y  | Y  | N  | N  | N  | Y  | N  |
===============================================================================
Statistics for MUX_OPs
==========================================================================
|           block name/line            | Inputs | Outputs | # sel inputs |
==========================================================================
| queue_DATA_WIDTH32_QUEUE_DEPTH64/77  |   64   |   32    |      6       |
| queue_DATA_WIDTH32_QUEUE_DEPTH64/94  |   64   |   32    |      6       |
| queue_DATA_WIDTH32_QUEUE_DEPTH64/99  |   64   |   33    |      6       |
| queue_DATA_WIDTH32_QUEUE_DEPTH64/108 |   64   |   33    |      6       |
==========================================================================
Presto compilation completed successfully. (queue_DATA_WIDTH32_QUEUE_DEPTH64)
Information: Building the design 'rename_dispatch'. (HDL-193)

Inferred memory devices in process
	in routine rename_dispatch line 54 in file
		'/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/rename_dispatch.sv'.
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
	in routine rat line 101 in file
		'/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/rat.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      valid_reg      | Flip-flop |  31   |  Y  | Y  | N  | N  | N  | Y  | N  |
|      valid_reg      | Flip-flop |   1   |  N  | Y  | N  | N  | N  | Y  | N  |
|       rat_reg       | Flip-flop |  112  |  Y  | Y  | N  | N  | Y  | N  | N  |
|       rat_reg       | Flip-flop |  80   |  Y  | Y  | N  | N  | N  | Y  | N  |
===============================================================================
Statistics for MUX_OPs
======================================================
| block name/line  | Inputs | Outputs | # sel inputs |
======================================================
|      rat/47      |   32   |    6    |      5       |
|      rat/51      |   32   |    6    |      5       |
|      rat/55      |   32   |    6    |      5       |
|      rat/59      |   32   |    6    |      5       |
|      rat/63      |   32   |    6    |      5       |
|      rat/69      |   32   |    6    |      5       |
|      rat/70      |   32   |    1    |      5       |
|      rat/82      |   32   |    6    |      5       |
|      rat/83      |   32   |    6    |      5       |
|      rat/84      |   32   |    1    |      5       |
|      rat/85      |   32   |    1    |      5       |
======================================================
Presto compilation completed successfully. (rat)
Information: Building the design 'rob'. (HDL-193)

Inferred memory devices in process
	in routine rob line 116 in file
		'/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/rob.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|       mem_reg       | Flip-flop | 26752 |  Y  | Y  | N  | N  | Y  | N  | N  |
|    tail_reg_reg     | Flip-flop |   7   |  Y  | Y  | N  | N  | N  | Y  | N  |
|    head_reg_reg     | Flip-flop |   7   |  Y  | Y  | N  | N  | N  | Y  | N  |
===============================================================================
Statistics for MUX_OPs
======================================================
| block name/line  | Inputs | Outputs | # sel inputs |
======================================================
|     rob/203      |   64   |   32    |      6       |
|     rob/272      |   64   |    1    |      6       |
|     rob/272      |   64   |    1    |      6       |
|     rob/277      |   64   |   352   |      6       |
|     rob/308      |   64   |   418   |      6       |
======================================================
Presto compilation completed successfully. (rob)
Information: Building the design 'rrat'. (HDL-193)

Inferred memory devices in process
	in routine rrat line 41 in file
		'/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/rrat.sv'.
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
|     rrat/32      |   32   |    6    |      5       |
======================================================
Presto compilation completed successfully. (rrat)
Information: Building the design 'free_list'. (HDL-193)

Inferred memory devices in process
	in routine free_list line 47 in file
		'/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/free_list.sv'.
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
|  free_list/104   |   32   |    6    |      5       |
|  free_list/109   |   32   |    7    |      5       |
======================================================
Presto compilation completed successfully. (free_list)
Information: Building the design 'phys_regfile'. (HDL-193)

Inferred memory devices in process
	in routine phys_regfile line 21 in file
		'/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/phys_regfile.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      data_reg       | Flip-flop | 2048  |  Y  | Y  | N  | N  | N  | N  | N  |
===============================================================================

Inferred memory devices in process
	in routine phys_regfile line 64 in file
		'/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/phys_regfile.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|    rs2_div_4_reg    | Flip-flop |   6   |  Y  | Y  | N  | N  | N  | N  | N  |
|    rs1_mul_1_reg    | Flip-flop |   6   |  Y  | Y  | N  | N  | Y  | N  | N  |
|    rs1_mul_2_reg    | Flip-flop |   6   |  Y  | Y  | N  | N  | Y  | N  | N  |
|    rs1_mul_3_reg    | Flip-flop |   6   |  Y  | Y  | N  | N  | Y  | N  | N  |
|    rs1_mul_4_reg    | Flip-flop |   6   |  Y  | Y  | N  | N  | Y  | N  | N  |
|    rs2_mul_1_reg    | Flip-flop |   6   |  Y  | Y  | N  | N  | Y  | N  | N  |
|    rs2_mul_2_reg    | Flip-flop |   6   |  Y  | Y  | N  | N  | Y  | N  | N  |
|    rs2_mul_3_reg    | Flip-flop |   6   |  Y  | Y  | N  | N  | Y  | N  | N  |
|    rs1_div_1_reg    | Flip-flop |   6   |  Y  | Y  | N  | N  | Y  | N  | N  |
|    rs1_div_2_reg    | Flip-flop |   6   |  Y  | Y  | N  | N  | Y  | N  | N  |
|    rs1_div_3_reg    | Flip-flop |   6   |  Y  | Y  | N  | N  | Y  | N  | N  |
|    rs1_div_4_reg    | Flip-flop |   6   |  Y  | Y  | N  | N  | Y  | N  | N  |
|    rs2_div_1_reg    | Flip-flop |   6   |  Y  | Y  | N  | N  | Y  | N  | N  |
|    rs2_div_2_reg    | Flip-flop |   6   |  Y  | Y  | N  | N  | Y  | N  | N  |
|    rs2_div_3_reg    | Flip-flop |   6   |  Y  | Y  | N  | N  | Y  | N  | N  |
|    rs2_mul_4_reg    | Flip-flop |   6   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================
Statistics for MUX_OPs
======================================================
| block name/line  | Inputs | Outputs | # sel inputs |
======================================================
| phys_regfile/113 |   64   |   32    |      6       |
| phys_regfile/114 |   64   |   32    |      6       |
| phys_regfile/116 |   64   |   32    |      6       |
| phys_regfile/117 |   64   |   32    |      6       |
| phys_regfile/119 |   64   |   32    |      6       |
| phys_regfile/120 |   64   |   32    |      6       |
| phys_regfile/122 |   64   |   32    |      6       |
| phys_regfile/123 |   64   |   32    |      6       |
| phys_regfile/125 |   64   |   32    |      6       |
| phys_regfile/126 |   64   |   32    |      6       |
======================================================
Presto compilation completed successfully. (phys_regfile)
Information: Building the design 'execute'. (HDL-193)

Inferred memory devices in process
	in routine execute line 80 in file
		'/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/execute.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|   rd_mul_reg_reg    | Flip-flop |   5   |  Y  | Y  | N  | N  | Y  | N  | N  |
|   rob_mul_reg_reg   | Flip-flop |   6   |  Y  | Y  | N  | N  | Y  | N  | N  |
|   pd_mul_reg_reg    | Flip-flop |   6   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================

Inferred memory devices in process
	in routine execute line 102 in file
		'/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/execute.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|   rd_div_reg_reg    | Flip-flop |   5   |  Y  | Y  | N  | N  | Y  | N  | N  |
|   rob_div_reg_reg   | Flip-flop |   6   |  Y  | Y  | N  | N  | Y  | N  | N  |
|   pd_div_reg_reg    | Flip-flop |   6   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================

Inferred memory devices in process
	in routine execute line 114 in file
		'/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/execute.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      div_4_reg      | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
|      mul_1_reg      | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
|      mul_2_reg      | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
|      mul_3_reg      | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
|      mul_4_reg      | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
|      div_1_reg      | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
|      div_2_reg      | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
|      div_3_reg      | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
===============================================================================
Presto compilation completed successfully. (execute)
Information: Building the design 'reservation_station'. (HDL-193)

Inferred memory devices in process
	in routine reservation_station line 108 in file
		'/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/reservation_station.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
| regf_we_div_reg_reg | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
| regf_we_mul_reg_reg | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
===============================================================================

Inferred memory devices in process
	in routine reservation_station line 192 in file
		'/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/reservation_station.sv'.
============================================================================================
|          Register Name           |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
============================================================================================
|      cdb_ps_id_add_reg_reg       | Flip-flop |   6   |  Y  | Y  | N  | N  | N  | N  | N  |
|    cdb_ps_id_multiply_reg_reg    | Flip-flop |   6   |  Y  | Y  | N  | N  | N  | N  | N  |
|     cdb_ps_id_divide_reg_reg     | Flip-flop |   6   |  Y  | Y  | N  | N  | N  | N  | N  |
|     cdb_ps_id_branch_reg_reg     | Flip-flop |   6   |  Y  | Y  | N  | N  | N  | N  | N  |
|      cdb_ps_id_mem_reg_reg       | Flip-flop |   6   |  Y  | Y  | N  | N  | N  | N  | N  |
|   mem_reservation_station_reg    | Flip-flop | 1176  |  Y  | Y  | N  | N  | Y  | N  | N  |
|   add_reservation_station_reg    | Flip-flop | 1152  |  Y  | Y  | N  | N  | Y  | N  | N  |
| multiply_reservation_station_reg | Flip-flop | 1152  |  Y  | Y  | N  | N  | Y  | N  | N  |
|  divide_reservation_station_reg  | Flip-flop | 1152  |  Y  | Y  | N  | N  | Y  | N  | N  |
|  branch_reservation_station_reg  | Flip-flop | 1152  |  Y  | Y  | N  | N  | Y  | N  | N  |
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
		'/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/valid_array.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|    din0_reg_reg     | Flip-flop |   1   |  N  | N  | N  | N  | N  | N  | N  |
|    web0_reg_reg     | Flip-flop |   1   |  N  | N  | N  | N  | N  | Y  | N  |
|    addr0_reg_reg    | Flip-flop |   4   |  Y  | Y  | N  | N  | N  | N  | N  |
===============================================================================

Inferred memory devices in process
	in routine valid_array line 38 in file
		'/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/valid_array.sv'.
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
		'/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/lru_array.sv'.
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
		'/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/lru_array.sv'.
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
	'/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/fu_add.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            35            |    user/user     |
===============================================

Statistics for case statements in always block at line 48 in file
	'/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/fu_add.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            49            |    user/user     |
===============================================

Statistics for case statements in always block at line 60 in file
	'/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/fu_add.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            71            |    user/user     |
|            75            |    user/user     |
|           101            |    user/user     |
===============================================
Presto compilation completed successfully. (fu_add)
Information: Building the design 'fu_mult'. (HDL-193)

Statistics for case statements in always block at line 57 in file
	'/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/fu_mult.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            67            |    user/user     |
|           101            |    user/user     |
===============================================

Inferred memory devices in process
	in routine fu_mult line 44 in file
		'/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/fu_mult.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
| decode_info_reg_reg | Flip-flop |   3   |  Y  | Y  | N  | N  | Y  | N  | N  |
|  complete_prev_reg  | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
===============================================================================
Presto compilation completed successfully. (fu_mult)
Information: Building the design 'fu_div_rem'. (HDL-193)

Statistics for case statements in always block at line 57 in file
	'/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/fu_div_rem.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            67            |    user/user     |
|           101            |    user/user     |
===============================================

Inferred memory devices in process
	in routine fu_div_rem line 30 in file
		'/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/fu_div_rem.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
| decode_info_reg_reg | Flip-flop |   3   |  Y  | Y  | N  | N  | Y  | N  | N  |
|  complete_prev_reg  | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
===============================================================================
Presto compilation completed successfully. (fu_div_rem)
Information: Building the design 'fu_br'. (HDL-193)

Statistics for case statements in always block at line 35 in file
	'/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/fu_br.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            36            |    user/user     |
===============================================

Statistics for case statements in always block at line 47 in file
	'/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/../hdl/fu_br.sv'
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
Date:        Tue Nov 19 02:23:36 2024
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
  * (23 designs)              /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/cpu.db, etc
  NangateOpenCellLibrary (library)
                              /srv/ece411ag/freepdk-45nm/stdcells.db
  dw_foundation.sldb (library)
                              /srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/libraries/syn/dw_foundation.sldb
  mp_cache_data_array_TT_1p0V_25C_lib (library)
                              /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db
  mp_cache_tag_array_TT_1p0V_25C_lib (library)
                              /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db

1
eval [getenv ECE411_COMPILE_CMD]
Information: Performing power optimization. (PWR-850)
Alib files are up-to-date.
Information: Running optimization using a maximum of 2 cores. (OPT-1500)
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
Information: Uniquified 2 instances of design 'queue_DATA_WIDTH32_QUEUE_DEPTH64'. (OPT-1056)
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
Information: propagating constant for register rob_i/tail_reg_reg_6_
Information: propagating constant for register rob_i/head_reg_reg_6_
Information: propagating constant for register memory_queue_i/tail_reg_reg_6_
Information: propagating constant for register memory_queue_i/head_reg_reg_6_
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
Information: Ungrouping 18 of 795 hierarchies before Pass 1 (OPT-775)
Information: State dependent leakage is now switched from on to off.

  Beginning Pass 1 Mapping
  ------------------------
............................................................
..........................
  Processing 'rob'
Information: Added key list 'DesignWare' to design 'rob'. (DDB-72)
 Implement Synthetic for 'rob'.
  Processing 'memory_queue'
Information: Added key list 'DesignWare' to design 'memory_queue'. (DDB-72)
 Implement Synthetic for 'memory_queue'.
  Processing 'reservation_station'
Information: Added key list 'DesignWare' to design 'reservation_station'. (DDB-72)
  Processing 'free_list'
Information: Added key list 'DesignWare' to design 'free_list'. (DDB-72)
 Implement Synthetic for 'free_list'.
  Processing 'phys_regfile'
Information: Added key list 'DesignWare' to design 'phys_regfile'. (DDB-72)
  Processing 'queue_DATA_WIDTH32_QUEUE_DEPTH64_1'
Information: Added key list 'DesignWare' to design 'queue_DATA_WIDTH32_QUEUE_DEPTH64_1'. (DDB-72)
 Implement Synthetic for 'queue_DATA_WIDTH32_QUEUE_DEPTH64_1'.
  Processing 'queue_DATA_WIDTH32_QUEUE_DEPTH64_0'
Information: Added key list 'DesignWare' to design 'queue_DATA_WIDTH32_QUEUE_DEPTH64_0'. (DDB-72)
 Implement Synthetic for 'queue_DATA_WIDTH32_QUEUE_DEPTH64_0'.
  Processing 'stage_1_0'
  Processing 'stage_1_1'
  Processing 'cpu'
Information: Added key list 'DesignWare' to design 'cpu'. (DDB-72)
 Implement Synthetic for 'cpu'.
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
Information: Performing clock-gating on design execute_DW_div_seq_J15_0. (PWR-730)
  Processing 'execute_DW_div_seq_J15_0'
  Processing 'execute_DW01_absval_J15_0'
Information: Performing clock-gating on design execute_DW_cntr_scnto_J15_0. (PWR-730)
  Processing 'execute_DW_cntr_scnto_J15_0'
Information: Performing clock-gating on design execute_DW_mult_seq_J15_0. (PWR-730)
  Processing 'execute_DW_mult_seq_J15_0'
Information: Performing clock-gating on design execute_DW_cntr_scnto_J15_1. (PWR-730)
  Processing 'execute_DW_cntr_scnto_J15_1'
  Processing 'rat'
Information: Added key list 'DesignWare' to design 'rat'. (DDB-72)
  Processing 'stage_2_1'
Information: Added key list 'DesignWare' to design 'stage_2_1'. (DDB-72)
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
  Processing 'SNPS_CLOCK_GATE_HIGH_free_list_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_rob_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_rat_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_0'
  Mapping integrated clock gating circuitry
  Processing 'SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_0'
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
Information: Performing clock-gating on design cache_1. (PWR-730)
Information: Performing clock-gating on design cache_0. (PWR-730)
Information: Performing clock-gating on design cpu. (PWR-730)
Information: Performing clock-gating on design phys_regfile. (PWR-730)
Information: Performing clock-gating on design reservation_station. (PWR-730)
Information: Performing clock-gating on design rat. (PWR-730)
Information: Performing clock-gating on design execute. (PWR-730)
Information: Performing clock-gating on design execute_DW_div_seq_J15_0. (PWR-730)
Information: Performing clock-gating on design memory_queue. (PWR-730)
Information: Performing clock-gating on design rob. (PWR-730)
Information: Performing clock-gating on design cache_arbiter. (PWR-730)
Information: Performing clock-gating on design queue_DATA_WIDTH32_QUEUE_DEPTH64_1. (PWR-730)
Information: Performing clock-gating on design queue_DATA_WIDTH32_QUEUE_DEPTH64_0. (PWR-730)
Information: Performing clock-gating on design free_list. (PWR-730)
Information: Converting capacitance units for library 'mp_cache_data_array_TT_1p0V_25C_lib' since those in library 'NangateOpenCellLibrary' differ. (TIM-106)
Information: Converting capacitance units for library 'mp_cache_tag_array_TT_1p0V_25C_lib' since those in library 'NangateOpenCellLibrary' differ. (TIM-106)
Information: Complementing port 'bmem_ready' in design 'cache_arbiter'.
	 The new name of the port is 'bmem_ready_BAR'. (OPT-319)
Information: Complementing port 'regf_we_add' in design 'rat'.
	 The new name of the port is 'regf_we_add_BAR'. (OPT-319)
Information: Complementing port 'add_cdb_valid' in design 'rob'.
	 The new name of the port is 'add_cdb_valid_BAR'. (OPT-319)
Information: Complementing port 'regf_we_add' in design 'phys_regfile'.
	 The new name of the port is 'regf_we_add_BAR'. (OPT-319)
Information: Complementing port 'regf_we_add' in design 'reservation_station'.
	 The new name of the port is 'regf_we_add_BAR'. (OPT-319)
Information: Complementing port 'cdb_add[233]' in design 'execute'.
	 The new name of the port is 'cdb_add[233]_BAR'. (OPT-319)
Information: Complementing port 'dequeue_in' in design 'queue_DATA_WIDTH32_QUEUE_DEPTH64_1'.
	 The new name of the port is 'dequeue_in_BAR'. (OPT-319)
Information: Complementing port 'dequeue_in' in design 'queue_DATA_WIDTH32_QUEUE_DEPTH64_0'.
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
    0:17:08  677651.2  23455.83 391956064.0 26022008.4                           11920694.0000      0.00  
    0:17:08  677651.2  23455.83 391956064.0 26022008.4                           11920694.0000      0.00  
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
Information: In design 'cpu', the register 'cache_i/arrays_1__valid_array/addr0_reg_reg_0_' is removed because it is merged to 'cache_i/arrays_0__valid_array/addr0_reg_reg_0_'. (OPT-1215)
Information: In design 'cpu', the register 'cache_i/arrays_2__valid_array/addr0_reg_reg_0_' is removed because it is merged to 'cache_i/arrays_0__valid_array/addr0_reg_reg_0_'. (OPT-1215)
Information: In design 'cpu', the register 'cache_i/arrays_3__valid_array/addr0_reg_reg_0_' is removed because it is merged to 'cache_i/arrays_0__valid_array/addr0_reg_reg_0_'. (OPT-1215)
Information: In design 'cpu', the register 'cache_i/arrays_1__valid_array/addr0_reg_reg_1_' is removed because it is merged to 'cache_i/arrays_0__valid_array/addr0_reg_reg_1_'. (OPT-1215)
Information: In design 'cpu', the register 'cache_i/arrays_2__valid_array/addr0_reg_reg_1_' is removed because it is merged to 'cache_i/arrays_0__valid_array/addr0_reg_reg_1_'. (OPT-1215)
Information: In design 'cpu', the register 'cache_i/arrays_3__valid_array/addr0_reg_reg_1_' is removed because it is merged to 'cache_i/arrays_0__valid_array/addr0_reg_reg_1_'. (OPT-1215)
Information: In design 'cpu', the register 'cache_i/arrays_1__valid_array/addr0_reg_reg_2_' is removed because it is merged to 'cache_i/arrays_0__valid_array/addr0_reg_reg_2_'. (OPT-1215)
Information: In design 'cpu', the register 'cache_i/arrays_2__valid_array/addr0_reg_reg_2_' is removed because it is merged to 'cache_i/arrays_0__valid_array/addr0_reg_reg_2_'. (OPT-1215)
Information: In design 'cpu', the register 'cache_i/arrays_3__valid_array/addr0_reg_reg_2_' is removed because it is merged to 'cache_i/arrays_0__valid_array/addr0_reg_reg_2_'. (OPT-1215)
Information: In design 'cpu', the register 'cache_i/arrays_1__valid_array/addr0_reg_reg_3_' is removed because it is merged to 'cache_i/arrays_0__valid_array/addr0_reg_reg_3_'. (OPT-1215)
Information: In design 'cpu', the register 'cache_i/arrays_2__valid_array/addr0_reg_reg_3_' is removed because it is merged to 'cache_i/arrays_0__valid_array/addr0_reg_reg_3_'. (OPT-1215)
Information: In design 'cpu', the register 'cache_i/arrays_3__valid_array/addr0_reg_reg_3_' is removed because it is merged to 'cache_i/arrays_0__valid_array/addr0_reg_reg_3_'. (OPT-1215)

  Beginning Mapping Optimizations  (Ultra High effort)
  -------------------------------
Information: Updating design information... (UID-85)
Information: Ungrouping hierarchy cache_i 'cache_1' #insts = 634. (OPT-777)
Information: Ungrouping hierarchy cache_d 'cache_0' #insts = 689. (OPT-777)
Information: Ungrouping hierarchy arbiter 'cache_arbiter' #insts = 1357. (OPT-777)
Information: Ungrouping hierarchy rat_i 'rat' #insts = 2385. (OPT-777)
Information: Ungrouping hierarchy cache_i/stage_1_i 'stage_1_1' #insts = 1541. (OPT-777)
Information: Ungrouping hierarchy cache_d/stage_1_i 'stage_1_0' #insts = 1876. (OPT-777)
  Building model 'DW01_NAND2'
  Building model 'DW_and_tree_width3'
  Building model 'DW_cntr_scnto_width3_count_to3_rst_mode0_dcod_mode0'
Information: Performing clock-gating on design execute_DW_div_seq_0. (PWR-730)
    0:24:07  630067.0      0.00       0.0 7301693.9                           10917425.0000      0.00  
  Structuring 'execute_DW_div_seq_0'
  Mapping 'execute_DW_div_seq_0'
Information: Performing clock-gating on design DW_cntr_scnto_width3_count_to3_rst_mode0_dcod_mode0. (PWR-730)
  Structuring 'DW_cntr_scnto_width3_count_to3_rst_mode0_dcod_mode0'
  Mapping 'DW_cntr_scnto_width3_count_to3_rst_mode0_dcod_mode0'
  Building model 'DW_cntr_scnto_width3_count_to3_rst_mode0_dcod_mode0'
Information: Performing clock-gating on design execute_DW_div_seq_1. (PWR-730)
  Structuring 'execute_DW_div_seq_1'
  Mapping 'execute_DW_div_seq_1'
Information: Performing clock-gating on design DW_cntr_scnto_width3_count_to3_rst_mode0_dcod_mode0. (PWR-730)
  Structuring 'DW_cntr_scnto_width3_count_to3_rst_mode0_dcod_mode0'
  Mapping 'DW_cntr_scnto_width3_count_to3_rst_mode0_dcod_mode0'
  Mapping Optimization (Phase 1)

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:27:39  659722.8     23.82   24538.0   19723.2                           22299180.0000      0.00  
    0:27:54  652650.9     23.84   26271.3   33546.8                           22000886.0000      0.00  

  Beginning Constant Register Removal
  -----------------------------------
    0:28:06  656992.3     23.94   28086.9   30289.6                           22230166.0000      0.00  
    0:28:20  645482.8     23.94   29280.8   42445.1                           21786008.0000      0.00  

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
  Global Optimization (Phase 33)
  Selecting critical implementations
  Mapping 'execute_DW01_add_39'
  Mapping 'execute_DW01_add_40'
  Mapping 'execute_DW01_add_41'
  Mapping 'execute_DW01_add_42'
  Mapping 'execute_DW01_add_43'
  Mapping 'execute_DW01_add_44'
  Mapping 'execute_DW01_add_45'
  Mapping 'execute_DW01_add_46'
  Mapping 'execute_DW01_add_47'
  Mapping 'execute_DW01_add_48'
  Mapping 'execute_DW01_add_49'
  Mapping 'execute_DW01_add_50'
  Mapping 'execute_DW01_add_51'
  Mapping 'execute_DW01_add_52'
  Mapping 'execute_DW01_add_53'
  Mapping 'execute_DW01_add_54'
  Mapping 'execute_DW01_add_55'
  Mapping 'execute_DW01_add_56'
  Mapping 'free_list_DW01_inc_0'
  Mapping 'free_list_DW01_inc_1'
  Mapping 'free_list_DW01_inc_2'
  Mapping 'free_list_DW01_inc_3'
  Mapping 'free_list_DW01_inc_4'
  Mapping 'free_list_DW01_inc_5'
  Mapping 'free_list_DW01_inc_6'
  Mapping 'free_list_DW01_inc_7'
  Mapping 'free_list_DW01_inc_8'
  Mapping 'free_list_DW01_inc_9'
  Mapping 'free_list_DW01_inc_10'
  Mapping 'free_list_DW01_inc_11'
  Mapping 'free_list_DW01_inc_12'
  Mapping 'free_list_DW01_inc_13'
  Mapping 'free_list_DW01_inc_14'
  Mapping 'free_list_DW01_inc_15'
  Mapping 'free_list_DW01_inc_16'
  Mapping 'free_list_DW01_inc_17'
  Mapping 'free_list_DW01_inc_18'
  Mapping 'free_list_DW01_inc_19'
  Mapping 'free_list_DW01_inc_20'
  Mapping 'free_list_DW01_inc_21'
  Mapping 'free_list_DW01_inc_22'
  Mapping 'free_list_DW01_inc_23'
  Mapping 'free_list_DW01_inc_24'
  Mapping 'free_list_DW01_inc_25'
  Mapping 'free_list_DW01_inc_26'
  Mapping 'free_list_DW01_inc_27'
  Mapping 'free_list_DW01_inc_28'
  Mapping 'free_list_DW01_inc_29'
  Mapping 'free_list_DW01_inc_30'
  Mapping 'free_list_DW01_inc_31'
  Mapping 'free_list_DW01_inc_32'
  Mapping 'free_list_DW01_inc_33'
  Mapping 'free_list_DW01_inc_34'
  Mapping 'free_list_DW01_inc_35'
  Mapping 'free_list_DW01_inc_36'
  Mapping 'free_list_DW01_inc_37'
  Mapping 'free_list_DW01_inc_38'
  Mapping 'free_list_DW01_inc_39'
  Mapping 'free_list_DW01_inc_40'
  Mapping 'free_list_DW01_inc_41'
  Mapping 'free_list_DW01_inc_42'
  Mapping 'free_list_DW01_inc_43'
  Mapping 'free_list_DW01_inc_44'
  Mapping 'free_list_DW01_inc_45'
  Mapping 'free_list_DW01_inc_46'
  Mapping 'free_list_DW01_inc_47'
  Mapping 'free_list_DW01_inc_48'
  Mapping 'free_list_DW01_inc_49'
  Mapping 'free_list_DW01_inc_50'
  Mapping 'free_list_DW01_inc_51'
  Mapping 'free_list_DW01_inc_52'
  Mapping 'free_list_DW01_inc_53'
  Mapping 'free_list_DW01_inc_54'
  Mapping 'free_list_DW01_inc_55'
  Mapping 'free_list_DW01_inc_56'
  Mapping 'free_list_DW01_inc_57'
  Mapping 'free_list_DW01_inc_58'
  Mapping 'free_list_DW01_inc_59'
  Mapping 'free_list_DW01_inc_60'
  Mapping 'free_list_DW01_inc_61'
  Mapping 'free_list_DW01_inc_62'
  Mapping 'free_list_DW01_inc_63'
  Mapping 'free_list_DW01_inc_64'
  Mapping 'free_list_DW01_inc_65'
  Mapping 'free_list_DW01_inc_66'
  Mapping 'free_list_DW01_inc_67'
  Mapping 'free_list_DW01_inc_68'
  Mapping 'free_list_DW01_inc_69'
  Mapping 'free_list_DW01_inc_70'
  Mapping 'free_list_DW01_inc_71'
  Mapping 'free_list_DW01_inc_72'
  Mapping 'free_list_DW01_inc_73'
  Mapping 'free_list_DW01_inc_74'
  Mapping 'free_list_DW01_inc_75'
  Mapping 'free_list_DW01_inc_76'
  Mapping 'free_list_DW01_inc_77'
  Mapping 'free_list_DW01_inc_78'
  Mapping 'free_list_DW01_inc_79'
  Mapping 'free_list_DW01_inc_80'
  Mapping 'free_list_DW01_inc_81'
  Mapping 'free_list_DW01_inc_82'
  Mapping 'free_list_DW01_inc_83'
  Mapping 'free_list_DW01_inc_84'
  Mapping 'free_list_DW01_inc_85'
  Mapping 'free_list_DW01_inc_86'
  Mapping 'free_list_DW01_inc_87'
  Mapping 'free_list_DW01_inc_88'
  Mapping 'free_list_DW01_inc_89'
  Mapping 'free_list_DW01_inc_90'
  Mapping 'free_list_DW01_inc_91'
  Mapping 'free_list_DW01_inc_92'
  Mapping 'free_list_DW01_inc_93'
  Mapping 'free_list_DW01_inc_94'
  Mapping 'free_list_DW01_inc_95'
  Mapping 'free_list_DW01_inc_96'
  Mapping 'free_list_DW01_inc_97'
  Mapping 'free_list_DW01_inc_98'
  Mapping 'free_list_DW01_inc_99'
  Mapping 'free_list_DW01_inc_100'
  Mapping 'free_list_DW01_inc_101'
  Mapping 'free_list_DW01_inc_102'
  Mapping 'free_list_DW01_inc_103'
  Mapping 'free_list_DW01_inc_104'
  Mapping 'free_list_DW01_inc_105'
  Mapping 'free_list_DW01_inc_106'
  Mapping 'free_list_DW01_inc_107'
  Mapping 'free_list_DW01_inc_108'
  Mapping 'free_list_DW01_inc_109'
  Mapping 'free_list_DW01_inc_110'
  Mapping 'free_list_DW01_inc_111'
  Mapping 'free_list_DW01_inc_112'
  Mapping 'free_list_DW01_inc_113'
  Mapping 'free_list_DW01_inc_114'
  Mapping 'free_list_DW01_inc_115'
  Mapping 'free_list_DW01_inc_116'
  Mapping 'free_list_DW01_inc_117'
  Mapping 'free_list_DW01_inc_118'
  Mapping 'free_list_DW01_inc_119'
  Mapping 'free_list_DW01_inc_120'
  Mapping 'free_list_DW01_inc_121'
  Mapping 'free_list_DW01_inc_122'
  Mapping 'free_list_DW01_inc_123'
  Mapping 'free_list_DW01_inc_124'
  Mapping 'free_list_DW01_inc_125'
  Mapping 'free_list_DW01_inc_126'
  Mapping 'free_list_DW01_inc_127'

  Beginning Isolate Ports
  -----------------------

  Beginning Delay Optimization
  ----------------------------
    0:30:09  339141.2      6.22    1437.9   19537.3                           5400061.5000      0.00  
    0:30:59  340756.1      2.53     620.3   19621.5                           5485848.0000      0.00  
    0:30:59  340756.1      2.53     620.3   19621.5                           5485848.0000      0.00  
    0:31:02  340838.3      2.52     622.8   19680.7                           5488492.5000      0.00  
    0:31:34  336360.7      2.43     585.7   19205.8                           5365302.0000      0.00  
    0:31:47  334077.6      2.43     576.8   19651.2                           5313207.5000      0.00  

  Beginning WLM Backend Optimization
  --------------------------------------
    0:32:41  331847.0      2.35     476.8   18961.2                           5232921.0000      0.00  
    0:32:51  331088.1      2.29     466.7   18283.5                           5203215.5000      0.00  
    0:33:00  330315.9      2.29     466.6   17829.1                           5175647.5000      0.00  
    0:33:21  329424.5      2.29     465.7   17650.7                           5139227.5000      0.00  
    0:33:27  328853.1      2.28     466.7   17536.9                           5117278.5000      0.00  
    0:33:32  328440.3      2.28     466.4   17425.9                           5101722.0000      0.00  
    0:33:42  327376.3      1.71     412.9   16328.4                           5064968.5000      0.00  
    0:33:45  327111.6      1.71     398.5   16033.7                           5055789.0000      0.00  
    0:33:45  327111.6      1.71     398.5   16033.7                           5055789.0000      0.00  
    0:34:08  325403.1      1.71     395.2   15434.7                           4945304.0000      0.00  
    0:34:09  325403.1      1.71     395.2   15434.7                           4945304.0000      0.00  
    0:34:51  326916.9      0.91     207.5   15503.0                           4996524.0000      0.00  
    0:34:51  326916.9      0.91     207.5   15503.0                           4996524.0000      0.00  
    0:34:51  326906.0      0.89     201.0   15475.9                           4996259.5000      0.00  
    0:34:51  326906.0      0.89     201.0   15475.9                           4996259.5000      0.00  
    0:35:07  327141.7      0.83     178.1   15444.0                           5004123.5000      0.00  
    0:35:07  327141.7      0.83     178.1   15444.0                           5004123.5000      0.00  
    0:35:28  327202.3      0.25      48.1   15489.2                           5007685.0000      0.00  
    0:35:28  327202.3      0.25      48.1   15489.2                           5007685.0000      0.00  
    0:35:32  327264.3      0.24      41.0   15451.5                           5009843.0000      0.00  
    0:35:32  327264.3      0.24      41.0   15451.5                           5009843.0000      0.00  
    0:35:41  327259.0      0.19      31.0   15457.9                           5009662.0000      0.00  
    0:35:41  327259.0      0.19      31.0   15457.9                           5009662.0000      0.00  
    0:35:49  327285.9      0.18      29.0   15457.6                           5010677.0000      0.00  
    0:35:49  327285.9      0.18      29.0   15457.6                           5010677.0000      0.00  
    0:35:53  327289.8      0.15      24.3   15532.4                           5010898.0000      0.00  
    0:35:53  327289.8      0.15      24.3   15532.4                           5010898.0000      0.00  
    0:35:55  327294.6      0.15      23.8   15532.4                           5011069.0000      0.00  


  Beginning Design Rule Fixing  (max_transition)  (max_fanout)  (max_capacitance)
  ----------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:35:55  327294.6      0.15      23.8   15532.4                           5011069.0000      0.00  
  Global Optimization (Phase 34)
  Global Optimization (Phase 35)
  Global Optimization (Phase 36)
    0:36:01  327494.9      0.15      22.9    7537.1 cache_d/tag_out[53]       5016154.0000      0.00  
    0:36:06  327761.2      0.11      17.0    7074.0 free_list_i/mem_reg_29__5_/SE 5023603.5000      0.00  
    0:36:11  327742.6      0.08       9.5    7074.0 free_list_i/mem_reg_5__4_/SE 5021843.0000      0.00  
    0:36:14  327741.2      0.06       6.4    7074.0 free_list_i/mem_reg_5__4_/SE 5021434.5000      0.00  
    0:36:17  327742.3      0.05       4.4    7074.0 free_list_i/mem_reg_4__4_/SE 5021138.0000      0.00  
    0:36:19  327760.7      0.04       4.2    6948.0 cache_i/stage_2_i/tag_out[64] 5021442.5000      0.00  
    0:36:21  327793.6      0.04       3.1    6749.8 free_list_i/mem_reg_5__4_/SE 5021881.0000      0.00  
    0:36:24  327783.3      0.01       0.5    6749.8 free_list_i/mem_reg_8__5_/SE 5020904.0000      0.00  
    0:36:25  327831.7      0.01       0.3    6546.3 free_list_i/mem_reg_8__5_/SE 5021881.5000      0.00  
    0:36:27  327825.8      0.00       0.0    6546.3                           5021539.0000      0.00  
    0:36:27  327825.8      0.00       0.0    6546.3                           5021539.0000      0.00  


  Beginning Leakage Power Optimization  (max_leakage_power 0)
  ------------------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:36:27  327825.8      0.00       0.0    6546.3                           5021539.0000      0.00  
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
  Global Optimization (Phase 52)
Information: Complementing port 'global_branch_signal' in design 'rob'.
	 The new name of the port is 'global_branch_signal_BAR'. (OPT-319)
Information: Complementing port 'global_branch_addr[3]' in design 'rob'.
	 The new name of the port is 'global_branch_addr[3]_BAR'. (OPT-319)
    0:37:13  324744.8      0.16      25.3    6163.3 free_list_i/mem_reg_7__4_/SE 4902450.0000      0.00  
    0:37:36  327619.7      0.05       1.7    6331.6 free_list_i/mem_reg_13__1_/SE 4953297.5000      0.00  
    0:37:38  327631.4      0.02       0.2    6331.6 free_list_i/mem_reg_13__1_/SE 4953551.0000      0.00  
    0:37:38  327632.2      0.02       0.2    6331.6                           4953572.5000      0.00  
    0:37:43  327697.4      0.00       0.0    6331.6                           4955972.0000      0.00  
    0:37:43  327697.4      0.00       0.0    6331.6                           4955972.0000      0.00  
    0:37:51  327593.6      0.00       0.0    6335.7                           4950669.0000      0.00  
    0:37:51  327593.6      0.00       0.0    6335.7                           4950669.0000      0.00  
    0:37:51  327593.6      0.00       0.0    6335.7                           4950669.0000      0.00  
    0:37:51  327593.6      0.00       0.0    6335.7                           4950669.0000      0.00  
    0:37:51  327593.6      0.00       0.0    6335.7                           4950669.0000      0.00  
    0:37:51  327593.6      0.00       0.0    6335.7                           4950669.0000      0.00  
    0:37:51  327593.6      0.00       0.0    6335.7                           4950669.0000      0.00  
    0:37:51  327593.6      0.00       0.0    6335.7                           4950669.0000      0.00  
    0:37:51  327593.6      0.00       0.0    6335.7                           4950669.0000      0.00  
    0:37:51  327593.6      0.00       0.0    6335.7                           4950669.0000      0.00  
    0:37:51  327593.6      0.00       0.0    6335.7                           4950669.0000      0.00  
    0:37:51  327593.6      0.00       0.0    6335.7                           4950669.0000      0.00  
    0:37:51  327593.6      0.00       0.0    6335.7                           4950669.0000      0.00  
    0:37:51  327593.6      0.00       0.0    6335.7                           4950669.0000      0.00  
    0:37:51  327593.6      0.00       0.0    6335.7                           4950669.0000      0.00  
    0:37:51  327593.6      0.00       0.0    6335.7                           4950669.0000      0.00  
    0:37:51  327593.6      0.00       0.0    6335.7                           4950669.0000      0.00  
    0:37:51  327593.6      0.00       0.0    6335.7                           4950669.0000      0.00  
    0:37:51  327593.6      0.00       0.0    6335.7                           4950669.0000      0.00  

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:38:01  327593.6      0.00       0.0    6335.7                           4950669.0000      0.00  
    0:38:13  326685.8      0.01       0.1    6379.5                           4939171.0000      0.00  
    0:38:14  326689.0      0.00       0.0    6379.5                           4939229.5000      0.00  
    0:38:14  326689.0      0.00       0.0    6379.5                           4939229.5000      0.00  
    0:38:22  326689.0      0.00       0.0    6379.5                           4937285.5000      0.00  
    0:38:27  326669.0      0.00       0.0    6379.5                           4936784.0000      0.00  
    0:38:43  326661.3      0.00       0.0    6379.5                           4936582.5000      0.00  
    0:38:48  326639.2      0.00       0.0    6379.5                           4935997.0000      0.00  
    0:38:53  327008.4      0.00       0.0    5522.7 cache_d/data_array_wmask[14] 4944573.0000      0.00  
    0:38:55  327205.3      0.00       0.0    5099.5                           4950293.0000      0.00  
    0:38:55  327205.3      0.00       0.0    5099.5                           4950293.0000      0.00  
    0:38:55  327205.3      0.00       0.0    5099.5                           4950293.0000      0.00  
    0:38:55  327205.3      0.00       0.0    5099.5                           4950293.0000      0.00  
    0:38:55  327205.3      0.00       0.0    5099.5                           4950293.0000      0.00  
    0:38:55  327205.3      0.00       0.0    5099.5                           4950293.0000      0.00  
    0:39:06  327114.8      0.00       0.0    5113.9                           4950207.0000      0.00  
Loading db file '/srv/ece411ag/freepdk-45nm/stdcells.db'
Loading db file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db'
Loading db file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db'


Note: Symbol # after min delay cost means estimated hold TNS across all active scenarios 


  Optimization Complete
  ---------------------
Information: State dependent leakage is now switched from off to on.
Information: Propagating switching activity (low effort zero delay simulation). (PWR-6)
1
for {set i 0} {$i < [getenv ECE411_COMPILE_ITER]} {incr i} {
    eval [getenv ECE411_COMPILE_CMD_INC]
}
current_design $design_toplevel
Current design is 'cpu'.
{cpu}
report_area -hier > reports/area.rpt
report_timing -delay max > reports/timing.rpt
check_design
 
****************************************
check_design summary:
Version:     R-2020.09-SP4
Date:        Tue Nov 19 03:03:18 2024
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
Writing verilog file '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth/outputs/cpu.gate.v'.
1
exit

Memory usage for this session 1721 Mbytes.
Memory usage for this session including child processes 3503 Mbytes.
CPU usage for this session 3503 seconds ( 0.97 hours ).
Elapsed time for this session 2457 seconds ( 0.68 hours ).

Thank you...
rm -f  *.log
rm -f  default.svf
rm -rf work
make[1]: Leaving directory '/srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/synth'
 
****************************************
Report : timing
        -path full
        -delay max
        -max_paths 1
Design : cpu
Version: R-2020.09-SP4
Date   : Tue Nov 19 03:03:17 2024
****************************************

 # A fanout number of 1000 was used for high fanout net computations.

Operating Conditions: typical   Library: NangateOpenCellLibrary
Wire Load Model Mode: enclosed

  Startpoint: rob_i/head_reg_reg_0_
              (rising edge-triggered flip-flop clocked by my_clk)
  Endpoint: free_list_i/mem_reg_10__1_
            (rising edge-triggered flip-flop clocked by my_clk)
  Path Group: my_clk
  Path Type: max

  Des/Clust/Port     Wire Load Model       Library
  ------------------------------------------------
  rob                5K_hvratio_1_1        NangateOpenCellLibrary
  cpu                5K_hvratio_1_1        NangateOpenCellLibrary
  free_list          5K_hvratio_1_1        NangateOpenCellLibrary

  Point                                                   Incr       Path
  --------------------------------------------------------------------------
  clock my_clk (rise edge)                            0.000000   0.000000
  clock network delay (ideal)                         0.000000   0.000000
  rob_i/head_reg_reg_0_/CK (SDFF_X1)                  0.000000   0.000000 r
  rob_i/head_reg_reg_0_/Q (SDFF_X1)                   0.066344   0.066344 f
  rob_i/U435/ZN (NOR2_X1)                             0.051460   0.117805 r
  rob_i/U436/ZN (NAND2_X1)                            0.033189   0.150994 f
  rob_i/U437/ZN (NOR2_X1)                             0.041214   0.192208 r
  rob_i/U265/Z (BUF_X1)                               0.049423   0.241630 r
  rob_i/U293/ZN (INV_X1)                              0.038703   0.280333 f
  rob_i/U273/ZN (NAND2_X1)                            0.033805   0.314138 r
  rob_i/U294/ZN (NAND2_X1)                            0.036625   0.350762 f
  rob_i/U15/Z (BUF_X1)                                0.055276   0.406039 f
  rob_i/U145/ZN (NAND2_X1)                            0.041761   0.447799 r
  rob_i/U24/Z (BUF_X1)                                0.061901   0.509701 r
  rob_i/U318/ZN (NOR2_X1)                             0.045782   0.555483 f
  rob_i/U664/ZN (AOI22_X1)                            0.061374   0.616857 r
  rob_i/U668/ZN (NAND4_X1)                            0.040323   0.657180 f
  rob_i/U674/ZN (NOR4_X1)                             0.090762   0.747942 r
  rob_i/U291/ZN (NAND2_X1)                            0.031261   0.779204 f
  rob_i/U290/ZN (AND2_X2)                             0.056229   0.835432 f
  rob_i/rob_out[237] (rob)                            0.000000   0.835432 f
  U4403/ZN (NAND2_X1)                                 0.041590   0.877022 r
  U4407/ZN (NOR2_X1)                                  0.028985   0.906007 f
  U4408/Z (BUF_X2)                                    0.044884   0.950891 f
  U4525/ZN (AOI22_X1)                                 0.057890   1.008781 r
  U4527/ZN (NAND4_X1)                                 0.040447   1.049228 f
  U4528/ZN (AOI22_X1)                                 0.062451   1.111679 r
  U4529/ZN (OAI21_X1)                                 0.035109   1.146788 f
  U4530/ZN (AOI21_X1)                                 0.063637   1.210425 r
  U4532/ZN (OAI21_X1)                                 0.036173   1.246597 f
  U4533/ZN (INV_X1)                                   0.053239   1.299837 r
  U3660/ZN (INV_X2)                                   0.052934   1.352771 f
  U4535/ZN (OAI22_X1)                                 0.073204   1.425975 r
  U4536/ZN (INV_X2)                                   0.050631   1.476606 f
  free_list_i/rrat[116] (free_list)                   0.000000   1.476606 f
  free_list_i/U3292/ZN (NOR2_X2)                      0.100644   1.577251 r
  free_list_i/U4184/ZN (AOI22_X1)                     0.051369   1.628619 f
  free_list_i/U4186/ZN (NAND4_X1)                     0.039091   1.667710 r
  free_list_i/U4187/ZN (NOR3_X1)                      0.023526   1.691236 f
  free_list_i/U290/ZN (AND4_X1)                       0.043194   1.734430 f
  free_list_i/U2795/Z (XOR2_X1)                       0.079549   1.813980 f
  free_list_i/U2822/ZN (XNOR2_X1)                     0.061338   1.875318 f
  free_list_i/U3329/ZN (XNOR2_X1)                     0.067513   1.942831 f
  free_list_i/U2032/ZN (OR2_X1)                       0.058149   2.000980 f
  free_list_i/U4243/ZN (NAND2_X1)                     0.035283   2.036263 r
  free_list_i/U4244/ZN (XNOR2_X1)                     0.074378   2.110642 r
  free_list_i/U4298/ZN (XNOR2_X1)                     0.078434   2.189076 r
  free_list_i/U4320/ZN (XNOR2_X1)                     0.079833   2.268909 r
  free_list_i/U4321/ZN (XNOR2_X1)                     0.076066   2.344975 r
  free_list_i/U2511/ZN (XNOR2_X1)                     0.074610   2.419585 r
  free_list_i/U2410/ZN (XNOR2_X1)                     0.082390   2.501975 r
  free_list_i/U2513/ZN (XNOR2_X1)                     0.080759   2.582733 r
  free_list_i/U2068/ZN (XNOR2_X1)                     0.074114   2.656847 r
  free_list_i/U2409/ZN (XNOR2_X1)                     0.072303   2.729150 r
  free_list_i/U2065/ZN (XNOR2_X1)                     0.089757   2.818907 r
  free_list_i/U1875/ZN (XNOR2_X1)                     0.090716   2.909624 r
  free_list_i/U1030/ZN (XNOR2_X1)                     0.077502   2.987125 f
  free_list_i/U284/ZN (XNOR2_X1)                      0.154977   3.142102 r
  free_list_i/U1905/ZN (XNOR2_X1)                     0.094302   3.236404 f
  free_list_i/U1744/ZN (XNOR2_X1)                     0.142163   3.378567 r
  free_list_i/U1627/ZN (XNOR2_X1)                     0.087265   3.465833 r
  free_list_i/U283/Z (BUF_X1)                         0.066787   3.532620 r
  free_list_i/U1628/ZN (AND2_X1)                      0.054287   3.586907 r
  free_list_i/U2211/ZN (XNOR2_X1)                     0.080927   3.667835 r
  free_list_i/U2213/Z (MUX2_X1)                       0.086315   3.754149 f
  free_list_i/U10/Z (CLKBUF_X1)                       0.075411   3.829560 f
  free_list_i/U4722/Z (MUX2_X2)                       0.090392   3.919952 f
  free_list_i/U2349/ZN (XNOR2_X1)                     0.068937   3.988889 r
  free_list_i/U2368/ZN (AND2_X1)                      0.048838   4.037727 r
  free_list_i/U2366/ZN (OAI211_X1)                    0.028994   4.066721 f
  free_list_i/U629/Z (MUX2_X1)                        0.073939   4.140660 f
  free_list_i/U2567/ZN (XNOR2_X1)                     0.056995   4.197655 f
  free_list_i/U4843/Z (MUX2_X2)                       0.071864   4.269519 f
  free_list_i/U4869/ZN (XNOR2_X1)                     0.058340   4.327859 f
  free_list_i/U2544/ZN (OAI21_X1)                     0.065290   4.393149 r
  free_list_i/U2743/Z (BUF_X2)                        0.053875   4.447025 r
  free_list_i/U4870/ZN (AND2_X2)                      0.058680   4.505704 r
  free_list_i/U2640/ZN (AND2_X1)                      0.044418   4.550122 r
  free_list_i/U2620/ZN (NAND2_X1)                     0.024656   4.574779 f
  free_list_i/U2641/ZN (NAND3_X1)                     0.036891   4.611670 r
  free_list_i/U2622/ZN (OAI21_X1)                     0.036606   4.648276 f
  free_list_i/U2621/ZN (XNOR2_X1)                     0.057517   4.705793 f
  free_list_i/U542/ZN (AOI22_X1)                      0.075803   4.781597 r
  free_list_i/U3152/ZN (XNOR2_X1)                     0.068387   4.849984 r
  free_list_i/U2599/ZN (OAI21_X1)                     0.035836   4.885819 f
  free_list_i/U3222/ZN (XNOR2_X1)                     0.062086   4.947906 f
  free_list_i/U3221/Z (MUX2_X2)                       0.070623   5.018528 f
  free_list_i/U2508/ZN (XNOR2_X1)                     0.057986   5.076514 f
  free_list_i/U2715/Z (MUX2_X2)                       0.073588   5.150103 f
  free_list_i/U2714/ZN (NAND2_X1)                     0.040556   5.190659 r
  free_list_i/U2713/ZN (XNOR2_X1)                     0.061745   5.252404 r
  free_list_i/U2791/ZN (NAND2_X1)                     0.025723   5.278127 f
  free_list_i/U813/ZN (AND2_X1)                       0.041801   5.319928 f
  free_list_i/U836/Z (BUF_X1)                         0.045462   5.365389 f
  free_list_i/U1944/ZN (OR2_X1)                       0.068037   5.433426 f
  free_list_i/U2635/ZN (XNOR2_X1)                     0.059200   5.492627 f
  free_list_i/U2634/Z (MUX2_X2)                       0.072790   5.565416 f
  free_list_i/U3021/ZN (XNOR2_X1)                     0.064036   5.629453 f
  free_list_i/U2638/ZN (OAI21_X2)                     0.068116   5.697569 r
  free_list_i/U2341/ZN (XNOR2_X1)                     0.071937   5.769506 r
  free_list_i/U2593/ZN (XNOR2_X1)                     0.036807   5.806313 f
  free_list_i/U2342/Z (MUX2_X2)                       0.070381   5.876694 f
  free_list_i/U5422/Z (XOR2_X1)                       0.070788   5.947482 f
  free_list_i/U2294/Z (MUX2_X2)                       0.070217   6.017699 f
  free_list_i/U1718/ZN (INV_X1)                       0.035800   6.053499 r
  free_list_i/U24/ZN (XNOR2_X1)                       0.080425   6.133924 r
  free_list_i/U2278/ZN (XNOR2_X1)                     0.052335   6.186258 f
  free_list_i/U235/ZN (OAI21_X1)                      0.080623   6.266881 r
  free_list_i/U2922/ZN (INV_X1)                       0.034273   6.301154 f
  free_list_i/U2251/ZN (NAND2_X1)                     0.033172   6.334326 r
  free_list_i/U2216/ZN (AND2_X2)                      0.051823   6.386149 r
  free_list_i/U2328/ZN (XNOR2_X1)                     0.070300   6.456449 r
  free_list_i/U2779/ZN (OAI21_X2)                     0.045208   6.501656 f
  free_list_i/U2931/Z (XOR2_X1)                       0.083603   6.585259 f
  free_list_i/U2485/ZN (OAI21_X2)                     0.065717   6.650976 r
  free_list_i/U1879/ZN (AND2_X1)                      0.054649   6.705626 r
  free_list_i/U2557/ZN (XNOR2_X1)                     0.057909   6.763535 r
  free_list_i/U2432/Z (MUX2_X2)                       0.056568   6.820102 r
  free_list_i/U5593/Z (XOR2_X1)                       0.070829   6.890931 r
  free_list_i/U3048/ZN (NAND2_X1)                     0.029884   6.920815 f
  free_list_i/U1816/ZN (AND2_X1)                      0.044042   6.964857 f
  free_list_i/U2344/ZN (NOR2_X1)                      0.054239   7.019096 r
  free_list_i/U3077/ZN (XNOR2_X1)                     0.064365   7.083461 r
  free_list_i/U2940/Z (MUX2_X2)                       0.056435   7.139896 r
  free_list_i/U2316/Z (XOR2_X1)                       0.070943   7.210840 r
  free_list_i/U2315/ZN (NAND2_X1)                     0.028351   7.239191 f
  free_list_i/U2618/ZN (AND2_X2)                      0.044898   7.284089 f
  free_list_i/U3303/ZN (XNOR2_X1)                     0.061915   7.346004 f
  free_list_i/U3301/ZN (OAI21_X2)                     0.071404   7.417408 r
  free_list_i/U2762/ZN (XNOR2_X1)                     0.072458   7.489866 r
  free_list_i/U2760/ZN (OAI21_X2)                     0.050225   7.540092 f
  free_list_i/U2838/ZN (XNOR2_X1)                     0.071495   7.611587 f
  free_list_i/U20/ZN (OAI21_X1)                       0.077589   7.689176 r
  free_list_i/U2520/Z (XOR2_X1)                       0.077977   7.767153 r
  free_list_i/U2355/Z (MUX2_X2)                       0.057323   7.824475 r
  free_list_i/U3006/Z (XOR2_X1)                       0.071661   7.896136 r
  free_list_i/U3361/Z (MUX2_X2)                       0.059912   7.956048 r
  free_list_i/U2660/Z (XOR2_X1)                       0.082375   8.038423 r
  free_list_i/U2659/ZN (NAND2_X1)                     0.031372   8.069795 f
  free_list_i/U2233/ZN (NAND2_X1)                     0.035001   8.104795 r
  free_list_i/U189/ZN (AND2_X1)                       0.049387   8.154182 r
  free_list_i/U185/ZN (AND2_X1)                       0.047790   8.201972 r
  free_list_i/U702/ZN (AND2_X1)                       0.048269   8.250241 r
  free_list_i/U63/ZN (AND2_X1)                        0.049934   8.300176 r
  free_list_i/U181/ZN (AND2_X1)                       0.052617   8.352793 r
  free_list_i/U1975/ZN (AND2_X1)                      0.046858   8.399651 r
  free_list_i/U3137/Z (XOR2_X1)                       0.063082   8.462732 r
  free_list_i/U3267/Z (MUX2_X2)                       0.054335   8.517067 r
  free_list_i/U2061/ZN (INV_X1)                       0.027725   8.544792 f
  free_list_i/U3121/ZN (XNOR2_X1)                     0.053829   8.598621 f
  free_list_i/U2464/Z (MUX2_X2)                       0.074220   8.672841 f
  free_list_i/U2270/ZN (XNOR2_X1)                     0.061622   8.734463 f
  free_list_i/U1803/ZN (OAI21_X1)                     0.062073   8.796535 r
  free_list_i/U481/ZN (AND2_X1)                       0.055664   8.852200 r
  free_list_i/U2899/ZN (XNOR2_X1)                     0.057594   8.909794 r
  free_list_i/U6146/Z (MUX2_X2)                       0.060962   8.970756 r
  free_list_i/U2833/ZN (INV_X1)                       0.028522   8.999278 f
  free_list_i/U2832/ZN (XNOR2_X1)                     0.052986   9.052264 f
  free_list_i/U1972/Z (MUX2_X1)                       0.066324   9.118588 f
  free_list_i/U2218/ZN (AND2_X1)                      0.042677   9.161265 f
  free_list_i/U2263/ZN (AND2_X1)                      0.040657   9.201922 f
  free_list_i/U2742/Z (XOR2_X1)                       0.067693   9.269615 f
  free_list_i/U503/Z (MUX2_X2)                        0.074759   9.344374 f
  free_list_i/U493/Z (XOR2_X1)                        0.080262   9.424636 f
  free_list_i/U3269/ZN (NAND2_X1)                     0.025883   9.450519 r
  free_list_i/U721/ZN (AND2_X1)                       0.043401   9.493919 r
  free_list_i/U140/ZN (AND3_X1)                       0.053853   9.547772 r
  free_list_i/U3114/ZN (AND4_X2)                      0.082874   9.630647 r
  free_list_i/U2452/ZN (NAND3_X2)                     0.080131   9.710777 f
  free_list_i/U735/ZN (OR2_X1)                        0.083620   9.794397 f
  free_list_i/U3068/ZN (NAND2_X1)                     0.033184   9.827581 r
  free_list_i/U3069/ZN (OAI21_X1)                     0.028027   9.855608 f
  free_list_i/U1479/ZN (OAI211_X1)                    0.040681   9.896289 r
  free_list_i/mem_reg_10__1_/SE (SDFF_X1)             0.013717   9.910006 r
  data arrival time                                              9.910006

  clock my_clk (rise edge)                            10.000000  10.000000
  clock network delay (ideal)                         0.000000   10.000000
  free_list_i/mem_reg_10__1_/CK (SDFF_X1)             0.000000   10.000000 r
  library setup time                                  -0.089216  9.910784
  data required time                                             9.910784
  --------------------------------------------------------------------------
  data required time                                             9.910784
  data arrival time                                              -9.910006
  --------------------------------------------------------------------------
  slack (MET)                                                    0.000778


1
 
****************************************
Report : area
Design : cpu
Version: R-2020.09-SP4
Date   : Tue Nov 19 03:03:10 2024
****************************************

Information: Updating design information... (UID-85)
Library(s) Used:

    NangateOpenCellLibrary (File: /srv/ece411ag/freepdk-45nm/stdcells.db)
    mp_cache_data_array_TT_1p0V_25C_lib (File: /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db)
    mp_cache_tag_array_TT_1p0V_25C_lib (File: /srv/tmp/00678c18-ed36-4486-a18f-d8c795ea9242/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db)

Number of ports:                        13725
Number of nets:                        137898
Number of cells:                       126599
Number of combinational cells:         104066
Number of sequential cells:             20612
Number of macros/black boxes:              16
Number of buf/inv:                      11040
Number of references:                     175

Combinational area:             127330.478363
Buf/Inv area:                     7411.823982
Noncombinational area:          119943.656085
Macro/Black Box area:            79840.682617
Net Interconnect area:      undefined  (Wire load has zero net area)

Total cell area:                327114.817066
Total area:                 undefined

Hierarchical area distribution
------------------------------

                                  Global cell area                Local cell area
                                  --------------------  ------------------------------------ 
Hierarchical cell                 Absolute     Percent  Combi-       Noncombi-    Black-
                                  Total        Total    national     national     boxes       Design
--------------------------------  -----------  -------  -----------  -----------  ----------  ----------------------------------------------------------
cpu                               327114.8171    100.0    9754.4861   10441.5640  79840.6826  cpu
arbiter/clk_gate_d_dfp_read_reg_reg
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cache_arbiter_3
arbiter/clk_gate_full_burst_reg_reg_255_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cache_arbiter_2
arbiter/clk_gate_missed_i_addr_reg_reg_31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cache_arbiter_1
arbiter/clk_gate_missed_rw_reg_reg
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cache_arbiter_0
arbiter/clk_gate_state_reg_31_         3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cache_arbiter_4
cache_adapter_i/clk_gate_cache_wdata_reg_reg_127_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cacheline_adapter_3
cache_adapter_i/clk_gate_cache_wdata_reg_reg_191_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cacheline_adapter_2
cache_adapter_i/clk_gate_cache_wdata_reg_reg_255_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cacheline_adapter_1
cache_adapter_i/clk_gate_cache_wdata_reg_reg_63_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cacheline_adapter_4
cache_adapter_i/clk_gate_mem_wdata_reg_reg_255_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cacheline_adapter_0
cache_d/arrays_0__valid_array/clk_gate_internal_array_reg_0__0_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_valid_array_0_3
cache_d/arrays_1__valid_array/clk_gate_internal_array_reg_0__0_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_valid_array_0_2
cache_d/arrays_2__valid_array/clk_gate_internal_array_reg_0__0_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_valid_array_0_1
cache_d/arrays_3__valid_array/clk_gate_internal_array_reg_0__0_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_valid_array_0_0
cache_d/lru_array/clk_gate_internal_array_reg_0__2_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_0
cache_d/lru_array/clk_gate_internal_array_reg_10__2_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_10
cache_d/lru_array/clk_gate_internal_array_reg_11__2_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_11
cache_d/lru_array/clk_gate_internal_array_reg_12__2_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_12
cache_d/lru_array/clk_gate_internal_array_reg_13__2_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_13
cache_d/lru_array/clk_gate_internal_array_reg_14__2_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_14
cache_d/lru_array/clk_gate_internal_array_reg_15__2_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_15
cache_d/lru_array/clk_gate_internal_array_reg_1__2_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_1
cache_d/lru_array/clk_gate_internal_array_reg_2__2_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_2
cache_d/lru_array/clk_gate_internal_array_reg_3__2_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_3
cache_d/lru_array/clk_gate_internal_array_reg_4__2_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_4
cache_d/lru_array/clk_gate_internal_array_reg_5__2_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_5
cache_d/lru_array/clk_gate_internal_array_reg_6__2_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_6
cache_d/lru_array/clk_gate_internal_array_reg_7__2_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_7
cache_d/lru_array/clk_gate_internal_array_reg_8__2_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_8
cache_d/lru_array/clk_gate_internal_array_reg_9__2_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_9
cache_d/stage_2_i                   2385.7540      0.7    2385.7540       0.0000      0.0000  stage_2_0
cache_i/arrays_0__valid_array/clk_gate_internal_array_reg_0__0_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_valid_array_4_3
cache_i/arrays_1__valid_array/clk_gate_internal_array_reg_0__0_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_valid_array_4_2
cache_i/arrays_2__valid_array/clk_gate_internal_array_reg_0__0_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_valid_array_4_1
cache_i/arrays_3__valid_array/clk_gate_internal_array_reg_0__0_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_valid_array_4_0
cache_i/lru_array/clk_gate_internal_array_reg_0__2_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_16
cache_i/lru_array/clk_gate_internal_array_reg_10__2_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_26
cache_i/lru_array/clk_gate_internal_array_reg_11__2_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_27
cache_i/lru_array/clk_gate_internal_array_reg_12__2_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_28
cache_i/lru_array/clk_gate_internal_array_reg_13__2_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_29
cache_i/lru_array/clk_gate_internal_array_reg_14__2_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_30
cache_i/lru_array/clk_gate_internal_array_reg_15__2_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_31
cache_i/lru_array/clk_gate_internal_array_reg_1__2_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_17
cache_i/lru_array/clk_gate_internal_array_reg_2__2_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_18
cache_i/lru_array/clk_gate_internal_array_reg_3__2_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_19
cache_i/lru_array/clk_gate_internal_array_reg_4__2_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_20
cache_i/lru_array/clk_gate_internal_array_reg_5__2_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_21
cache_i/lru_array/clk_gate_internal_array_reg_6__2_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_22
cache_i/lru_array/clk_gate_internal_array_reg_7__2_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_23
cache_i/lru_array/clk_gate_internal_array_reg_8__2_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_24
cache_i/lru_array/clk_gate_internal_array_reg_9__2_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_25
cache_i/stage_2_i                   2359.4200      0.7    2359.4200       0.0000      0.0000  stage_2_1
clk_gate_pc_reg_31_                    3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cpu_0
execute_i                          10917.1720      3.3    9141.6220    1743.6300      0.0000  execute
execute_i/clk_gate_rd_div_reg_reg_4_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_execute_1
execute_i/clk_gate_rd_mul_reg_reg_4_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_execute_0
execute_i/fu_div_i/U1/clk_gate_b_reg_reg
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_execute_DW_div_seq_J15_0_0
execute_i/fu_div_i/U1/clk_gate_part_rem_reg_reg
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_execute_DW_div_seq_J15_0_1
execute_i/fu_div_i/clk_gate_decode_info_reg_reg_funct3__2_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_fu_div_rem
execute_i/fu_mul_i/U1/clk_gate_b_reg_reg
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_execute_DW_mult_seq_J15_0_1
execute_i/fu_mul_i/U1/clk_gate_mac_reg_reg
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_execute_DW_mult_seq_J15_0_0
execute_i/fu_mul_i/clk_gate_decode_info_reg_reg_funct3__2_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_fu_mult
free_list_i                        16118.2699      4.9   12180.4061    3802.2039      0.0000  free_list
free_list_i/clk_gate_head_reg_reg_5_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_1
free_list_i/clk_gate_mem_reg_0__6_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_0
free_list_i/clk_gate_mem_reg_10__6_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_24
free_list_i/clk_gate_mem_reg_11__6_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_23
free_list_i/clk_gate_mem_reg_12__6_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_22
free_list_i/clk_gate_mem_reg_13__6_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_21
free_list_i/clk_gate_mem_reg_14__6_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_20
free_list_i/clk_gate_mem_reg_15__6_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_19
free_list_i/clk_gate_mem_reg_16__6_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_18
free_list_i/clk_gate_mem_reg_17__6_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_17
free_list_i/clk_gate_mem_reg_18__6_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_16
free_list_i/clk_gate_mem_reg_19__6_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_15
free_list_i/clk_gate_mem_reg_1__6_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_33
free_list_i/clk_gate_mem_reg_20__6_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_14
free_list_i/clk_gate_mem_reg_21__6_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_13
free_list_i/clk_gate_mem_reg_22__6_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_12
free_list_i/clk_gate_mem_reg_23__6_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_11
free_list_i/clk_gate_mem_reg_24__6_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_10
free_list_i/clk_gate_mem_reg_25__6_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_9
free_list_i/clk_gate_mem_reg_26__6_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_8
free_list_i/clk_gate_mem_reg_27__6_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_7
free_list_i/clk_gate_mem_reg_28__6_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_6
free_list_i/clk_gate_mem_reg_29__6_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_5
free_list_i/clk_gate_mem_reg_2__6_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_32
free_list_i/clk_gate_mem_reg_30__6_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_4
free_list_i/clk_gate_mem_reg_31__6_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_3
free_list_i/clk_gate_mem_reg_3__6_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_31
free_list_i/clk_gate_mem_reg_4__6_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_30
free_list_i/clk_gate_mem_reg_5__6_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_29
free_list_i/clk_gate_mem_reg_6__6_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_28
free_list_i/clk_gate_mem_reg_7__6_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_27
free_list_i/clk_gate_mem_reg_8__6_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_26
free_list_i/clk_gate_mem_reg_9__6_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_25
free_list_i/clk_gate_tail_reg_reg_5_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_2
memory_queue_i                     64984.8648     19.9   27183.0726   37283.0922      0.0000  memory_queue
memory_queue_i/clk_gate_head_reg_reg_5_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_193
memory_queue_i/clk_gate_mem_reg_0__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_191
memory_queue_i/clk_gate_mem_reg_0__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_192
memory_queue_i/clk_gate_mem_reg_10__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_161
memory_queue_i/clk_gate_mem_reg_10__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_162
memory_queue_i/clk_gate_mem_reg_11__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_158
memory_queue_i/clk_gate_mem_reg_11__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_159
memory_queue_i/clk_gate_mem_reg_12__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_155
memory_queue_i/clk_gate_mem_reg_12__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_156
memory_queue_i/clk_gate_mem_reg_13__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_152
memory_queue_i/clk_gate_mem_reg_13__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_153
memory_queue_i/clk_gate_mem_reg_14__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_149
memory_queue_i/clk_gate_mem_reg_14__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_150
memory_queue_i/clk_gate_mem_reg_15__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_146
memory_queue_i/clk_gate_mem_reg_15__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_147
memory_queue_i/clk_gate_mem_reg_16__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_143
memory_queue_i/clk_gate_mem_reg_16__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_144
memory_queue_i/clk_gate_mem_reg_17__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_140
memory_queue_i/clk_gate_mem_reg_17__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_141
memory_queue_i/clk_gate_mem_reg_18__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_137
memory_queue_i/clk_gate_mem_reg_18__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_138
memory_queue_i/clk_gate_mem_reg_19__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_134
memory_queue_i/clk_gate_mem_reg_19__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_135
memory_queue_i/clk_gate_mem_reg_1__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_188
memory_queue_i/clk_gate_mem_reg_1__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_189
memory_queue_i/clk_gate_mem_reg_20__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_131
memory_queue_i/clk_gate_mem_reg_20__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_132
memory_queue_i/clk_gate_mem_reg_21__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_128
memory_queue_i/clk_gate_mem_reg_21__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_129
memory_queue_i/clk_gate_mem_reg_22__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_125
memory_queue_i/clk_gate_mem_reg_22__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_126
memory_queue_i/clk_gate_mem_reg_23__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_122
memory_queue_i/clk_gate_mem_reg_23__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_123
memory_queue_i/clk_gate_mem_reg_24__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_119
memory_queue_i/clk_gate_mem_reg_24__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_120
memory_queue_i/clk_gate_mem_reg_25__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_116
memory_queue_i/clk_gate_mem_reg_25__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_117
memory_queue_i/clk_gate_mem_reg_26__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_113
memory_queue_i/clk_gate_mem_reg_26__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_114
memory_queue_i/clk_gate_mem_reg_27__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_110
memory_queue_i/clk_gate_mem_reg_27__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_111
memory_queue_i/clk_gate_mem_reg_28__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_107
memory_queue_i/clk_gate_mem_reg_28__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_108
memory_queue_i/clk_gate_mem_reg_29__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_104
memory_queue_i/clk_gate_mem_reg_29__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_105
memory_queue_i/clk_gate_mem_reg_2__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_185
memory_queue_i/clk_gate_mem_reg_2__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_186
memory_queue_i/clk_gate_mem_reg_30__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_101
memory_queue_i/clk_gate_mem_reg_30__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_102
memory_queue_i/clk_gate_mem_reg_31__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_98
memory_queue_i/clk_gate_mem_reg_31__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_99
memory_queue_i/clk_gate_mem_reg_32__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_95
memory_queue_i/clk_gate_mem_reg_32__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_96
memory_queue_i/clk_gate_mem_reg_33__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_92
memory_queue_i/clk_gate_mem_reg_33__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_93
memory_queue_i/clk_gate_mem_reg_34__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_89
memory_queue_i/clk_gate_mem_reg_34__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_90
memory_queue_i/clk_gate_mem_reg_35__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_86
memory_queue_i/clk_gate_mem_reg_35__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_87
memory_queue_i/clk_gate_mem_reg_36__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_83
memory_queue_i/clk_gate_mem_reg_36__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_84
memory_queue_i/clk_gate_mem_reg_37__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_80
memory_queue_i/clk_gate_mem_reg_37__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_81
memory_queue_i/clk_gate_mem_reg_38__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_77
memory_queue_i/clk_gate_mem_reg_38__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_78
memory_queue_i/clk_gate_mem_reg_39__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_74
memory_queue_i/clk_gate_mem_reg_39__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_75
memory_queue_i/clk_gate_mem_reg_3__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_182
memory_queue_i/clk_gate_mem_reg_3__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_183
memory_queue_i/clk_gate_mem_reg_40__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_71
memory_queue_i/clk_gate_mem_reg_40__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_72
memory_queue_i/clk_gate_mem_reg_41__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_68
memory_queue_i/clk_gate_mem_reg_41__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_69
memory_queue_i/clk_gate_mem_reg_42__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_65
memory_queue_i/clk_gate_mem_reg_42__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_66
memory_queue_i/clk_gate_mem_reg_43__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_62
memory_queue_i/clk_gate_mem_reg_43__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_63
memory_queue_i/clk_gate_mem_reg_44__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_59
memory_queue_i/clk_gate_mem_reg_44__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_60
memory_queue_i/clk_gate_mem_reg_45__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_56
memory_queue_i/clk_gate_mem_reg_45__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_57
memory_queue_i/clk_gate_mem_reg_46__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_53
memory_queue_i/clk_gate_mem_reg_46__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_54
memory_queue_i/clk_gate_mem_reg_47__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_50
memory_queue_i/clk_gate_mem_reg_47__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_51
memory_queue_i/clk_gate_mem_reg_48__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_47
memory_queue_i/clk_gate_mem_reg_48__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_48
memory_queue_i/clk_gate_mem_reg_49__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_44
memory_queue_i/clk_gate_mem_reg_49__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_45
memory_queue_i/clk_gate_mem_reg_4__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_179
memory_queue_i/clk_gate_mem_reg_4__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_180
memory_queue_i/clk_gate_mem_reg_50__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_41
memory_queue_i/clk_gate_mem_reg_50__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_42
memory_queue_i/clk_gate_mem_reg_51__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_38
memory_queue_i/clk_gate_mem_reg_51__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_39
memory_queue_i/clk_gate_mem_reg_52__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_35
memory_queue_i/clk_gate_mem_reg_52__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_36
memory_queue_i/clk_gate_mem_reg_53__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_32
memory_queue_i/clk_gate_mem_reg_53__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_33
memory_queue_i/clk_gate_mem_reg_54__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_29
memory_queue_i/clk_gate_mem_reg_54__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_30
memory_queue_i/clk_gate_mem_reg_55__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_26
memory_queue_i/clk_gate_mem_reg_55__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_27
memory_queue_i/clk_gate_mem_reg_56__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_23
memory_queue_i/clk_gate_mem_reg_56__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_24
memory_queue_i/clk_gate_mem_reg_57__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_20
memory_queue_i/clk_gate_mem_reg_57__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_21
memory_queue_i/clk_gate_mem_reg_58__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_17
memory_queue_i/clk_gate_mem_reg_58__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_18
memory_queue_i/clk_gate_mem_reg_59__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_14
memory_queue_i/clk_gate_mem_reg_59__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_15
memory_queue_i/clk_gate_mem_reg_5__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_176
memory_queue_i/clk_gate_mem_reg_5__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_177
memory_queue_i/clk_gate_mem_reg_60__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_11
memory_queue_i/clk_gate_mem_reg_60__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_12
memory_queue_i/clk_gate_mem_reg_61__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_8
memory_queue_i/clk_gate_mem_reg_61__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_9
memory_queue_i/clk_gate_mem_reg_62__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_5
memory_queue_i/clk_gate_mem_reg_62__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_6
memory_queue_i/clk_gate_mem_reg_63__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_2
memory_queue_i/clk_gate_mem_reg_63__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_3
memory_queue_i/clk_gate_mem_reg_6__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_173
memory_queue_i/clk_gate_mem_reg_6__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_174
memory_queue_i/clk_gate_mem_reg_7__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_170
memory_queue_i/clk_gate_mem_reg_7__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_171
memory_queue_i/clk_gate_mem_reg_8__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_167
memory_queue_i/clk_gate_mem_reg_8__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_168
memory_queue_i/clk_gate_mem_reg_9__addr_ready_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_164
memory_queue_i/clk_gate_mem_reg_9__valid_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_165
memory_queue_i/clk_gate_tail_reg_reg_5_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_0
phys_regfile_i                     38891.0625     11.9   28941.5988    9694.1037      0.0000  phys_regfile
phys_regfile_i/clk_gate_data_reg_10__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_55
phys_regfile_i/clk_gate_data_reg_11__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_54
phys_regfile_i/clk_gate_data_reg_12__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_53
phys_regfile_i/clk_gate_data_reg_13__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_52
phys_regfile_i/clk_gate_data_reg_14__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_51
phys_regfile_i/clk_gate_data_reg_15__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_50
phys_regfile_i/clk_gate_data_reg_16__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_49
phys_regfile_i/clk_gate_data_reg_17__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_48
phys_regfile_i/clk_gate_data_reg_18__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_47
phys_regfile_i/clk_gate_data_reg_19__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_46
phys_regfile_i/clk_gate_data_reg_1__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_64
phys_regfile_i/clk_gate_data_reg_20__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_45
phys_regfile_i/clk_gate_data_reg_21__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_44
phys_regfile_i/clk_gate_data_reg_22__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_43
phys_regfile_i/clk_gate_data_reg_23__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_42
phys_regfile_i/clk_gate_data_reg_24__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_41
phys_regfile_i/clk_gate_data_reg_25__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_40
phys_regfile_i/clk_gate_data_reg_26__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_39
phys_regfile_i/clk_gate_data_reg_27__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_38
phys_regfile_i/clk_gate_data_reg_28__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_37
phys_regfile_i/clk_gate_data_reg_29__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_36
phys_regfile_i/clk_gate_data_reg_2__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_63
phys_regfile_i/clk_gate_data_reg_30__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_35
phys_regfile_i/clk_gate_data_reg_31__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_34
phys_regfile_i/clk_gate_data_reg_32__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_33
phys_regfile_i/clk_gate_data_reg_33__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_32
phys_regfile_i/clk_gate_data_reg_34__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_31
phys_regfile_i/clk_gate_data_reg_35__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_30
phys_regfile_i/clk_gate_data_reg_36__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_29
phys_regfile_i/clk_gate_data_reg_37__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_28
phys_regfile_i/clk_gate_data_reg_38__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_27
phys_regfile_i/clk_gate_data_reg_39__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_26
phys_regfile_i/clk_gate_data_reg_3__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_62
phys_regfile_i/clk_gate_data_reg_40__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_25
phys_regfile_i/clk_gate_data_reg_41__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_24
phys_regfile_i/clk_gate_data_reg_42__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_23
phys_regfile_i/clk_gate_data_reg_43__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_22
phys_regfile_i/clk_gate_data_reg_44__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_21
phys_regfile_i/clk_gate_data_reg_45__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_20
phys_regfile_i/clk_gate_data_reg_46__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_19
phys_regfile_i/clk_gate_data_reg_47__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_18
phys_regfile_i/clk_gate_data_reg_48__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_17
phys_regfile_i/clk_gate_data_reg_49__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_16
phys_regfile_i/clk_gate_data_reg_4__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_61
phys_regfile_i/clk_gate_data_reg_50__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_15
phys_regfile_i/clk_gate_data_reg_51__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_14
phys_regfile_i/clk_gate_data_reg_52__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_13
phys_regfile_i/clk_gate_data_reg_53__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_12
phys_regfile_i/clk_gate_data_reg_54__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_11
phys_regfile_i/clk_gate_data_reg_55__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_10
phys_regfile_i/clk_gate_data_reg_56__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_9
phys_regfile_i/clk_gate_data_reg_57__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_8
phys_regfile_i/clk_gate_data_reg_58__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_7
phys_regfile_i/clk_gate_data_reg_59__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_6
phys_regfile_i/clk_gate_data_reg_5__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_60
phys_regfile_i/clk_gate_data_reg_60__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_5
phys_regfile_i/clk_gate_data_reg_61__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_4
phys_regfile_i/clk_gate_data_reg_62__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_3
phys_regfile_i/clk_gate_data_reg_63__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_2
phys_regfile_i/clk_gate_data_reg_6__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_59
phys_regfile_i/clk_gate_data_reg_7__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_58
phys_regfile_i/clk_gate_data_reg_8__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_57
phys_regfile_i/clk_gate_data_reg_9__31_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_56
phys_regfile_i/clk_gate_rs2_div_4_reg_5_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_1
queue_i                            21973.1963      6.7    9094.5403   12615.3161      0.0000  queue_DATA_WIDTH32_QUEUE_DEPTH64_1
queue_i/clk_gate_head_reg_reg_6_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_1
queue_i/clk_gate_mem_reg_0__32_        3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_0
queue_i/clk_gate_mem_reg_10__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_56
queue_i/clk_gate_mem_reg_11__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_55
queue_i/clk_gate_mem_reg_12__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_54
queue_i/clk_gate_mem_reg_13__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_53
queue_i/clk_gate_mem_reg_14__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_52
queue_i/clk_gate_mem_reg_15__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_51
queue_i/clk_gate_mem_reg_16__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_50
queue_i/clk_gate_mem_reg_17__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_49
queue_i/clk_gate_mem_reg_18__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_48
queue_i/clk_gate_mem_reg_19__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_47
queue_i/clk_gate_mem_reg_1__32_        3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_65
queue_i/clk_gate_mem_reg_20__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_46
queue_i/clk_gate_mem_reg_21__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_45
queue_i/clk_gate_mem_reg_22__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_44
queue_i/clk_gate_mem_reg_23__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_43
queue_i/clk_gate_mem_reg_24__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_42
queue_i/clk_gate_mem_reg_25__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_41
queue_i/clk_gate_mem_reg_26__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_40
queue_i/clk_gate_mem_reg_27__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_39
queue_i/clk_gate_mem_reg_28__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_38
queue_i/clk_gate_mem_reg_29__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_37
queue_i/clk_gate_mem_reg_2__32_        3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_64
queue_i/clk_gate_mem_reg_30__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_36
queue_i/clk_gate_mem_reg_31__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_35
queue_i/clk_gate_mem_reg_32__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_34
queue_i/clk_gate_mem_reg_33__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_33
queue_i/clk_gate_mem_reg_34__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_32
queue_i/clk_gate_mem_reg_35__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_31
queue_i/clk_gate_mem_reg_36__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_30
queue_i/clk_gate_mem_reg_37__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_29
queue_i/clk_gate_mem_reg_38__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_28
queue_i/clk_gate_mem_reg_39__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_27
queue_i/clk_gate_mem_reg_3__32_        3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_63
queue_i/clk_gate_mem_reg_40__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_26
queue_i/clk_gate_mem_reg_41__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_25
queue_i/clk_gate_mem_reg_42__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_24
queue_i/clk_gate_mem_reg_43__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_23
queue_i/clk_gate_mem_reg_44__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_22
queue_i/clk_gate_mem_reg_45__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_21
queue_i/clk_gate_mem_reg_46__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_20
queue_i/clk_gate_mem_reg_47__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_19
queue_i/clk_gate_mem_reg_48__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_18
queue_i/clk_gate_mem_reg_49__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_17
queue_i/clk_gate_mem_reg_4__32_        3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_62
queue_i/clk_gate_mem_reg_50__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_16
queue_i/clk_gate_mem_reg_51__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_15
queue_i/clk_gate_mem_reg_52__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_14
queue_i/clk_gate_mem_reg_53__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_13
queue_i/clk_gate_mem_reg_54__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_12
queue_i/clk_gate_mem_reg_55__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_11
queue_i/clk_gate_mem_reg_56__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_10
queue_i/clk_gate_mem_reg_57__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_9
queue_i/clk_gate_mem_reg_58__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_8
queue_i/clk_gate_mem_reg_59__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_7
queue_i/clk_gate_mem_reg_5__32_        3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_61
queue_i/clk_gate_mem_reg_60__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_6
queue_i/clk_gate_mem_reg_61__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_5
queue_i/clk_gate_mem_reg_62__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_4
queue_i/clk_gate_mem_reg_63__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_3
queue_i/clk_gate_mem_reg_6__32_        3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_60
queue_i/clk_gate_mem_reg_7__32_        3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_59
queue_i/clk_gate_mem_reg_8__32_        3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_58
queue_i/clk_gate_mem_reg_9__32_        3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_57
queue_i/clk_gate_tail_reg_reg_6_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_1_2
queue_pc                           21951.6503      6.7    9072.9943   12615.3161      0.0000  queue_DATA_WIDTH32_QUEUE_DEPTH64_0
queue_pc/clk_gate_head_reg_reg_6_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_1
queue_pc/clk_gate_mem_reg_0__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_0
queue_pc/clk_gate_mem_reg_10__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_56
queue_pc/clk_gate_mem_reg_11__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_55
queue_pc/clk_gate_mem_reg_12__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_54
queue_pc/clk_gate_mem_reg_13__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_53
queue_pc/clk_gate_mem_reg_14__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_52
queue_pc/clk_gate_mem_reg_15__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_51
queue_pc/clk_gate_mem_reg_16__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_50
queue_pc/clk_gate_mem_reg_17__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_49
queue_pc/clk_gate_mem_reg_18__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_48
queue_pc/clk_gate_mem_reg_19__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_47
queue_pc/clk_gate_mem_reg_1__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_65
queue_pc/clk_gate_mem_reg_20__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_46
queue_pc/clk_gate_mem_reg_21__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_45
queue_pc/clk_gate_mem_reg_22__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_44
queue_pc/clk_gate_mem_reg_23__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_43
queue_pc/clk_gate_mem_reg_24__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_42
queue_pc/clk_gate_mem_reg_25__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_41
queue_pc/clk_gate_mem_reg_26__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_40
queue_pc/clk_gate_mem_reg_27__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_39
queue_pc/clk_gate_mem_reg_28__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_38
queue_pc/clk_gate_mem_reg_29__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_37
queue_pc/clk_gate_mem_reg_2__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_64
queue_pc/clk_gate_mem_reg_30__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_36
queue_pc/clk_gate_mem_reg_31__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_35
queue_pc/clk_gate_mem_reg_32__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_34
queue_pc/clk_gate_mem_reg_33__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_33
queue_pc/clk_gate_mem_reg_34__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_32
queue_pc/clk_gate_mem_reg_35__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_31
queue_pc/clk_gate_mem_reg_36__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_30
queue_pc/clk_gate_mem_reg_37__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_29
queue_pc/clk_gate_mem_reg_38__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_28
queue_pc/clk_gate_mem_reg_39__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_27
queue_pc/clk_gate_mem_reg_3__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_63
queue_pc/clk_gate_mem_reg_40__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_26
queue_pc/clk_gate_mem_reg_41__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_25
queue_pc/clk_gate_mem_reg_42__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_24
queue_pc/clk_gate_mem_reg_43__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_23
queue_pc/clk_gate_mem_reg_44__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_22
queue_pc/clk_gate_mem_reg_45__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_21
queue_pc/clk_gate_mem_reg_46__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_20
queue_pc/clk_gate_mem_reg_47__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_19
queue_pc/clk_gate_mem_reg_48__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_18
queue_pc/clk_gate_mem_reg_49__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_17
queue_pc/clk_gate_mem_reg_4__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_62
queue_pc/clk_gate_mem_reg_50__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_16
queue_pc/clk_gate_mem_reg_51__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_15
queue_pc/clk_gate_mem_reg_52__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_14
queue_pc/clk_gate_mem_reg_53__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_13
queue_pc/clk_gate_mem_reg_54__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_12
queue_pc/clk_gate_mem_reg_55__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_11
queue_pc/clk_gate_mem_reg_56__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_10
queue_pc/clk_gate_mem_reg_57__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_9
queue_pc/clk_gate_mem_reg_58__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_8
queue_pc/clk_gate_mem_reg_59__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_7
queue_pc/clk_gate_mem_reg_5__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_61
queue_pc/clk_gate_mem_reg_60__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_6
queue_pc/clk_gate_mem_reg_61__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_5
queue_pc/clk_gate_mem_reg_62__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_4
queue_pc/clk_gate_mem_reg_63__32_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_3
queue_pc/clk_gate_mem_reg_6__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_60
queue_pc/clk_gate_mem_reg_7__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_59
queue_pc/clk_gate_mem_reg_8__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_58
queue_pc/clk_gate_mem_reg_9__32_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_57
queue_pc/clk_gate_tail_reg_reg_6_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH64_0_2
rat_i/clk_gate_rat_reg_0__5_           3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_0
rat_i/clk_gate_rat_reg_10__5_          3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_22
rat_i/clk_gate_rat_reg_11__5_          3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_21
rat_i/clk_gate_rat_reg_12__5_          3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_20
rat_i/clk_gate_rat_reg_13__5_          3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_19
rat_i/clk_gate_rat_reg_14__5_          3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_18
rat_i/clk_gate_rat_reg_15__5_          3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_17
rat_i/clk_gate_rat_reg_16__5_          3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_16
rat_i/clk_gate_rat_reg_17__5_          3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_15
rat_i/clk_gate_rat_reg_18__5_          3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_14
rat_i/clk_gate_rat_reg_19__5_          3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_13
rat_i/clk_gate_rat_reg_1__5_           3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_31
rat_i/clk_gate_rat_reg_20__5_          3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_12
rat_i/clk_gate_rat_reg_21__5_          3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_11
rat_i/clk_gate_rat_reg_22__5_          3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_10
rat_i/clk_gate_rat_reg_23__5_          3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_9
rat_i/clk_gate_rat_reg_24__5_          3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_8
rat_i/clk_gate_rat_reg_25__5_          3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_7
rat_i/clk_gate_rat_reg_26__5_          3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_6
rat_i/clk_gate_rat_reg_27__5_          3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_5
rat_i/clk_gate_rat_reg_28__5_          3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_4
rat_i/clk_gate_rat_reg_29__5_          3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_3
rat_i/clk_gate_rat_reg_2__5_           3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_30
rat_i/clk_gate_rat_reg_30__5_          3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_2
rat_i/clk_gate_rat_reg_31__5_          3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_1
rat_i/clk_gate_rat_reg_3__5_           3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_29
rat_i/clk_gate_rat_reg_4__5_           3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_28
rat_i/clk_gate_rat_reg_5__5_           3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_27
rat_i/clk_gate_rat_reg_6__5_           3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_26
rat_i/clk_gate_rat_reg_7__5_           3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_25
rat_i/clk_gate_rat_reg_8__5_           3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_24
rat_i/clk_gate_rat_reg_9__5_           3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_23
rat_i/clk_gate_valid_reg_9_            3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_0_2
reservation_stations_i             18484.6061      5.7    7279.0901   11109.7560      0.0000  reservation_station
reservation_stations_i/clk_gate_add_reservation_station_reg_0__busy_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_20
reservation_stations_i/clk_gate_add_reservation_station_reg_1__busy_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_19
reservation_stations_i/clk_gate_add_reservation_station_reg_2__busy_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_18
reservation_stations_i/clk_gate_add_reservation_station_reg_3__busy_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_17
reservation_stations_i/clk_gate_branch_reservation_station_reg_0__busy_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_8
reservation_stations_i/clk_gate_branch_reservation_station_reg_1__busy_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_7
reservation_stations_i/clk_gate_branch_reservation_station_reg_2__busy_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_6
reservation_stations_i/clk_gate_branch_reservation_station_reg_3__busy_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_5
reservation_stations_i/clk_gate_divide_reservation_station_reg_0__busy_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_12
reservation_stations_i/clk_gate_divide_reservation_station_reg_1__busy_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_11
reservation_stations_i/clk_gate_divide_reservation_station_reg_2__busy_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_10
reservation_stations_i/clk_gate_divide_reservation_station_reg_3__busy_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_9
reservation_stations_i/clk_gate_mem_reservation_station_reg_0__busy_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_0
reservation_stations_i/clk_gate_mem_reservation_station_reg_0__ps1_v_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_3
reservation_stations_i/clk_gate_mem_reservation_station_reg_1__busy_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_23
reservation_stations_i/clk_gate_mem_reservation_station_reg_1__ps1_v_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_1
reservation_stations_i/clk_gate_mem_reservation_station_reg_2__busy_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_22
reservation_stations_i/clk_gate_mem_reservation_station_reg_2__ps1_v_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_2
reservation_stations_i/clk_gate_mem_reservation_station_reg_3__busy_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_21
reservation_stations_i/clk_gate_mem_reservation_station_reg_3__ps1_v_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_4
reservation_stations_i/clk_gate_multiply_reservation_station_reg_0__busy_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_16
reservation_stations_i/clk_gate_multiply_reservation_station_reg_1__busy_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_15
reservation_stations_i/clk_gate_multiply_reservation_station_reg_2__busy_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_14
reservation_stations_i/clk_gate_multiply_reservation_station_reg_3__busy_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_13
rob_i                              28553.2382      8.7    9937.4941   18097.0441      0.0000  rob
rob_i/clk_gate_head_reg_reg_5_         3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_1
rob_i/clk_gate_mem_reg_0__commit_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_193
rob_i/clk_gate_mem_reg_0__valid_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_0
rob_i/clk_gate_mem_reg_10__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_163
rob_i/clk_gate_mem_reg_10__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_164
rob_i/clk_gate_mem_reg_11__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_160
rob_i/clk_gate_mem_reg_11__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_161
rob_i/clk_gate_mem_reg_12__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_157
rob_i/clk_gate_mem_reg_12__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_158
rob_i/clk_gate_mem_reg_13__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_154
rob_i/clk_gate_mem_reg_13__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_155
rob_i/clk_gate_mem_reg_14__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_151
rob_i/clk_gate_mem_reg_14__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_152
rob_i/clk_gate_mem_reg_15__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_148
rob_i/clk_gate_mem_reg_15__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_149
rob_i/clk_gate_mem_reg_16__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_145
rob_i/clk_gate_mem_reg_16__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_146
rob_i/clk_gate_mem_reg_17__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_142
rob_i/clk_gate_mem_reg_17__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_143
rob_i/clk_gate_mem_reg_18__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_139
rob_i/clk_gate_mem_reg_18__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_140
rob_i/clk_gate_mem_reg_19__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_136
rob_i/clk_gate_mem_reg_19__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_137
rob_i/clk_gate_mem_reg_1__commit_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_190
rob_i/clk_gate_mem_reg_1__valid_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_191
rob_i/clk_gate_mem_reg_20__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_133
rob_i/clk_gate_mem_reg_20__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_134
rob_i/clk_gate_mem_reg_21__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_130
rob_i/clk_gate_mem_reg_21__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_131
rob_i/clk_gate_mem_reg_22__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_127
rob_i/clk_gate_mem_reg_22__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_128
rob_i/clk_gate_mem_reg_23__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_124
rob_i/clk_gate_mem_reg_23__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_125
rob_i/clk_gate_mem_reg_24__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_121
rob_i/clk_gate_mem_reg_24__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_122
rob_i/clk_gate_mem_reg_25__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_118
rob_i/clk_gate_mem_reg_25__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_119
rob_i/clk_gate_mem_reg_26__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_115
rob_i/clk_gate_mem_reg_26__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_116
rob_i/clk_gate_mem_reg_27__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_112
rob_i/clk_gate_mem_reg_27__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_113
rob_i/clk_gate_mem_reg_28__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_109
rob_i/clk_gate_mem_reg_28__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_110
rob_i/clk_gate_mem_reg_29__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_106
rob_i/clk_gate_mem_reg_29__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_107
rob_i/clk_gate_mem_reg_2__commit_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_187
rob_i/clk_gate_mem_reg_2__valid_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_188
rob_i/clk_gate_mem_reg_30__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_103
rob_i/clk_gate_mem_reg_30__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_104
rob_i/clk_gate_mem_reg_31__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_100
rob_i/clk_gate_mem_reg_31__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_101
rob_i/clk_gate_mem_reg_32__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_97
rob_i/clk_gate_mem_reg_32__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_98
rob_i/clk_gate_mem_reg_33__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_94
rob_i/clk_gate_mem_reg_33__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_95
rob_i/clk_gate_mem_reg_34__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_91
rob_i/clk_gate_mem_reg_34__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_92
rob_i/clk_gate_mem_reg_35__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_88
rob_i/clk_gate_mem_reg_35__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_89
rob_i/clk_gate_mem_reg_36__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_85
rob_i/clk_gate_mem_reg_36__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_86
rob_i/clk_gate_mem_reg_37__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_82
rob_i/clk_gate_mem_reg_37__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_83
rob_i/clk_gate_mem_reg_38__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_79
rob_i/clk_gate_mem_reg_38__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_80
rob_i/clk_gate_mem_reg_39__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_76
rob_i/clk_gate_mem_reg_39__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_77
rob_i/clk_gate_mem_reg_3__commit_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_184
rob_i/clk_gate_mem_reg_3__valid_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_185
rob_i/clk_gate_mem_reg_40__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_73
rob_i/clk_gate_mem_reg_40__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_74
rob_i/clk_gate_mem_reg_41__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_70
rob_i/clk_gate_mem_reg_41__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_71
rob_i/clk_gate_mem_reg_42__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_67
rob_i/clk_gate_mem_reg_42__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_68
rob_i/clk_gate_mem_reg_43__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_64
rob_i/clk_gate_mem_reg_43__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_65
rob_i/clk_gate_mem_reg_44__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_61
rob_i/clk_gate_mem_reg_44__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_62
rob_i/clk_gate_mem_reg_45__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_58
rob_i/clk_gate_mem_reg_45__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_59
rob_i/clk_gate_mem_reg_46__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_55
rob_i/clk_gate_mem_reg_46__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_56
rob_i/clk_gate_mem_reg_47__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_52
rob_i/clk_gate_mem_reg_47__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_53
rob_i/clk_gate_mem_reg_48__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_49
rob_i/clk_gate_mem_reg_48__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_50
rob_i/clk_gate_mem_reg_49__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_46
rob_i/clk_gate_mem_reg_49__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_47
rob_i/clk_gate_mem_reg_4__commit_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_181
rob_i/clk_gate_mem_reg_4__valid_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_182
rob_i/clk_gate_mem_reg_50__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_43
rob_i/clk_gate_mem_reg_50__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_44
rob_i/clk_gate_mem_reg_51__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_40
rob_i/clk_gate_mem_reg_51__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_41
rob_i/clk_gate_mem_reg_52__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_37
rob_i/clk_gate_mem_reg_52__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_38
rob_i/clk_gate_mem_reg_53__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_34
rob_i/clk_gate_mem_reg_53__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_35
rob_i/clk_gate_mem_reg_54__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_31
rob_i/clk_gate_mem_reg_54__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_32
rob_i/clk_gate_mem_reg_55__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_28
rob_i/clk_gate_mem_reg_55__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_29
rob_i/clk_gate_mem_reg_56__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_25
rob_i/clk_gate_mem_reg_56__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_26
rob_i/clk_gate_mem_reg_57__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_22
rob_i/clk_gate_mem_reg_57__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_23
rob_i/clk_gate_mem_reg_58__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_19
rob_i/clk_gate_mem_reg_58__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_20
rob_i/clk_gate_mem_reg_59__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_16
rob_i/clk_gate_mem_reg_59__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_17
rob_i/clk_gate_mem_reg_5__commit_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_178
rob_i/clk_gate_mem_reg_5__valid_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_179
rob_i/clk_gate_mem_reg_60__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_13
rob_i/clk_gate_mem_reg_60__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_14
rob_i/clk_gate_mem_reg_61__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_10
rob_i/clk_gate_mem_reg_61__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_11
rob_i/clk_gate_mem_reg_62__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_7
rob_i/clk_gate_mem_reg_62__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_8
rob_i/clk_gate_mem_reg_63__commit_
                                       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_4
rob_i/clk_gate_mem_reg_63__valid_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_5
rob_i/clk_gate_mem_reg_6__commit_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_175
rob_i/clk_gate_mem_reg_6__valid_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_176
rob_i/clk_gate_mem_reg_7__commit_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_172
rob_i/clk_gate_mem_reg_7__valid_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_173
rob_i/clk_gate_mem_reg_8__commit_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_169
rob_i/clk_gate_mem_reg_8__valid_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_170
rob_i/clk_gate_mem_reg_9__commit_      3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_166
rob_i/clk_gate_mem_reg_9__valid_       3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_167
rob_i/clk_gate_tail_reg_reg_5_         3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_2
rrat_i/clk_gate_rrat_reg_10__5_        3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_9
rrat_i/clk_gate_rrat_reg_11__5_        3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_10
rrat_i/clk_gate_rrat_reg_12__5_        3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_11
rrat_i/clk_gate_rrat_reg_13__5_        3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_12
rrat_i/clk_gate_rrat_reg_14__5_        3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_13
rrat_i/clk_gate_rrat_reg_15__5_        3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_14
rrat_i/clk_gate_rrat_reg_16__5_        3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_15
rrat_i/clk_gate_rrat_reg_17__5_        3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_16
rrat_i/clk_gate_rrat_reg_18__5_        3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_17
rrat_i/clk_gate_rrat_reg_19__5_        3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_18
rrat_i/clk_gate_rrat_reg_1__5_         3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_0
rrat_i/clk_gate_rrat_reg_20__5_        3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_19
rrat_i/clk_gate_rrat_reg_21__5_        3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_20
rrat_i/clk_gate_rrat_reg_22__5_        3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_21
rrat_i/clk_gate_rrat_reg_23__5_        3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_22
rrat_i/clk_gate_rrat_reg_24__5_        3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_23
rrat_i/clk_gate_rrat_reg_25__5_        3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_24
rrat_i/clk_gate_rrat_reg_26__5_        3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_25
rrat_i/clk_gate_rrat_reg_27__5_        3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_26
rrat_i/clk_gate_rrat_reg_28__5_        3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_27
rrat_i/clk_gate_rrat_reg_29__5_        3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_28
rrat_i/clk_gate_rrat_reg_2__5_         3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_1
rrat_i/clk_gate_rrat_reg_30__5_        3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_29
rrat_i/clk_gate_rrat_reg_31__5_        3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_30
rrat_i/clk_gate_rrat_reg_3__5_         3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_2
rrat_i/clk_gate_rrat_reg_4__5_         3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_3
rrat_i/clk_gate_rrat_reg_5__5_         3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_4
rrat_i/clk_gate_rrat_reg_6__5_         3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_5
rrat_i/clk_gate_rrat_reg_7__5_         3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_6
rrat_i/clk_gate_rrat_reg_8__5_         3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_7
rrat_i/clk_gate_rrat_reg_9__5_         3.9900      0.0       0.0000       3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_8
--------------------------------  -----------  -------  -----------  -----------  ----------  ----------------------------------------------------------
Total                                                   127330.4784  119943.6561  79840.6826

1
327114
0.000778
[0;32mTiming Met [0m
[0;32mSynthesis Successful [0m
 
 ``` 

 </details> 
<details><summary>coremark_im ❌</summary> 

 ``` 
 mkdir -p spike
rm -f vcs/dump.fsdb
cd vcs && ./top_tb -l simulation.log -exitstatus +NO_DUMP_ALL_ECE411 \
	+TIMEOUT_ECE411=100000000 \
	+CLOCK_PERIOD_PS_ECE411=10000 \
	+MEMLST_ECE411="/srv/ece411ag/ag/given/mp_ooo/testcode/comp/coremark_im/memory_32.lst" \
	+BRAM_0_ON_X_ECE411=0
Chronologic VCS simulator copyright 1991-2020
Contains Synopsys proprietary information.
Compiler version R-2020.12-SP1-1_Full64; Runtime version R-2020.12-SP1-1_Full64;  Nov 19 03:16 2024
*Verdi* Loading libsscore_vcs202012.so
FSDB Dumper for VCS, Release Verdi_R-2020.12-SP1-1, Linux x86_64/64bit, 04/20/2021
(C) 1996 - 2021 by Synopsys, Inc.
*Verdi* ERROR: Disk full. *Verdi* : Give up dump vars, fast file may be incorrect
make: *** [Makefile:31: run_vcs_top_tb] Error 255
 
 ``` 

 </details> 
<details><summary>aes_sha ❌</summary> 

 ``` 
 mkdir -p spike
rm -f vcs/dump.fsdb
cd vcs && ./top_tb -l simulation.log -exitstatus +NO_DUMP_ALL_ECE411 \
	+TIMEOUT_ECE411=100000000 \
	+CLOCK_PERIOD_PS_ECE411=10000 \
	+MEMLST_ECE411="/srv/ece411ag/ag/given/mp_ooo/testcode/comp/aes_sha/memory_32.lst" \
	+BRAM_0_ON_X_ECE411=0
Chronologic VCS simulator copyright 1991-2020
Contains Synopsys proprietary information.
Compiler version R-2020.12-SP1-1_Full64; Runtime version R-2020.12-SP1-1_Full64;  Nov 19 03:16 2024
*Verdi* Loading libsscore_vcs202012.so
FSDB Dumper for VCS, Release Verdi_R-2020.12-SP1-1, Linux x86_64/64bit, 04/20/2021
(C) 1996 - 2021 by Synopsys, Inc.
*Verdi* ERROR: Disk full. *Verdi* : Give up dump vars, fast file may be incorrect
make: *** [Makefile:31: run_vcs_top_tb] Error 255
 
 ``` 

 </details> 
<details><summary>compression ❌</summary> 

 ``` 
 mkdir -p spike
rm -f vcs/dump.fsdb
cd vcs && ./top_tb -l simulation.log -exitstatus +NO_DUMP_ALL_ECE411 \
	+TIMEOUT_ECE411=100000000 \
	+CLOCK_PERIOD_PS_ECE411=10000 \
	+MEMLST_ECE411="/srv/ece411ag/ag/given/mp_ooo/testcode/comp/compression/memory_32.lst" \
	+BRAM_0_ON_X_ECE411=0
Chronologic VCS simulator copyright 1991-2020
Contains Synopsys proprietary information.
Compiler version R-2020.12-SP1-1_Full64; Runtime version R-2020.12-SP1-1_Full64;  Nov 19 03:16 2024
*Verdi* Loading libsscore_vcs202012.so
FSDB Dumper for VCS, Release Verdi_R-2020.12-SP1-1, Linux x86_64/64bit, 04/20/2021
(C) 1996 - 2021 by Synopsys, Inc.
*Verdi* ERROR: Disk full. *Verdi* : Give up dump vars, fast file may be incorrect
make: *** [Makefile:31: run_vcs_top_tb] Error 255
 
 ``` 

 </details> 
<details><summary>fft ❌</summary> 

 ``` 
 mkdir -p spike
rm -f vcs/dump.fsdb
cd vcs && ./top_tb -l simulation.log -exitstatus +NO_DUMP_ALL_ECE411 \
	+TIMEOUT_ECE411=100000000 \
	+CLOCK_PERIOD_PS_ECE411=10000 \
	+MEMLST_ECE411="/srv/ece411ag/ag/given/mp_ooo/testcode/comp/fft/memory_32.lst" \
	+BRAM_0_ON_X_ECE411=0
Chronologic VCS simulator copyright 1991-2020
Contains Synopsys proprietary information.
Compiler version R-2020.12-SP1-1_Full64; Runtime version R-2020.12-SP1-1_Full64;  Nov 19 03:16 2024
*Verdi* Loading libsscore_vcs202012.so
FSDB Dumper for VCS, Release Verdi_R-2020.12-SP1-1, Linux x86_64/64bit, 04/20/2021
(C) 1996 - 2021 by Synopsys, Inc.
*Verdi* ERROR: Disk full. *Verdi* : Give up dump vars, fast file may be incorrect
make: *** [Makefile:31: run_vcs_top_tb] Error 255
 
 ``` 

 </details> 
<details><summary>mergesort ❌</summary> 

 ``` 
 mkdir -p spike
rm -f vcs/dump.fsdb
cd vcs && ./top_tb -l simulation.log -exitstatus +NO_DUMP_ALL_ECE411 \
	+TIMEOUT_ECE411=100000000 \
	+CLOCK_PERIOD_PS_ECE411=10000 \
	+MEMLST_ECE411="/srv/ece411ag/ag/given/mp_ooo/testcode/comp/mergesort/memory_32.lst" \
	+BRAM_0_ON_X_ECE411=0
Chronologic VCS simulator copyright 1991-2020
Contains Synopsys proprietary information.
Compiler version R-2020.12-SP1-1_Full64; Runtime version R-2020.12-SP1-1_Full64;  Nov 19 03:16 2024
*Verdi* Loading libsscore_vcs202012.so
FSDB Dumper for VCS, Release Verdi_R-2020.12-SP1-1, Linux x86_64/64bit, 04/20/2021
(C) 1996 - 2021 by Synopsys, Inc.
*Verdi* ERROR: Disk full. *Verdi* : Give up dump vars, fast file may be incorrect
make: *** [Makefile:31: run_vcs_top_tb] Error 255
 
 ``` 

 </details> 
