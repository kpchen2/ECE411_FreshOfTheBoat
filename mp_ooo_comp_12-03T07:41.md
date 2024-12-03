# AG Report mp_ooo_comp 2024-12-03T07:41:28-06:00 
Report generated at 2024-12-03T07:41:28-06:00, using commit ``24a32a09e334407618a4bfbcade7072c484c1e40``

Autograder Run ID: 7c6a40bc-260b-49a6-ad88-08ec6545eca4

Autograder Job ID: 939920a5-cabf-42a5-a24b-b3c42d39635d

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
make[1]: Entering directory '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram'
rm -rf output
mkdir output
touch output/.gitkeep
make[1]: Leaving directory '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram'
python3 sram.py
sync
make -j4 
make[1]: Entering directory '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram'
make clean
make[2]: Entering directory '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram'
rm -rf output
mkdir output
touch output/.gitkeep
make[2]: Leaving directory '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram'
python3 sram.py
sync
make -j4 mp_cache_tag_array mp_cache_data_array
make[2]: Entering directory '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram'
make[2]: warning: -j4 forced in submake: resetting jobserver mode.
source /srv/ece411ag/OpenRAM/miniconda/bin/activate ;\
python3 /srv/ece411ag/OpenRAM/compiler/../sram_compiler.py /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.py
source /srv/ece411ag/OpenRAM/miniconda/bin/activate ;\
python3 /srv/ece411ag/OpenRAM/compiler/../sram_compiler.py /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.py
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
** Start: 12/03/2024 07:41:34
|==============================================================================|
Technology: freepdk45
Total size: 384 bits
Word size: 24
Words: 16
Banks: 1
RW ports: 1
R-only ports: 0
W-only ports: 0
|=========                      OpenRAM v1.2.48                       =========|
Design supply routing skipped. Supplies will have multiple must-connect pins. (route_supplies=True to enable supply routing).
DRC/LVS/PEX is only run on the top-level design to save run-time (inline_lvsdrc=True to do inline checking).
|=========                                                            =========|
DRC/LVS/PEX is disabled (check_lvsdrc=True to enable).
|=========               VLSI Design and Automation Lab               =========|
Characterization is disabled (using analytical delay models) (analytical_delay=False to simulate).
|=========        Computer Science and Engineering Department         =========|
Only generating nominal corner timing.
|=========            University of California Santa Cruz             =========|
Words per row: None
|=========                                                            =========|
Output files are: 
|=========          Usage help: openram-user-group@ucsc.edu           =========|
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.lvs
|=========        Development help: openram-dev-group@ucsc.edu        =========|
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.sp
|=========                See LICENSE for license info                =========|
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.v
|==============================================================================|
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.lib
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.py
** Start: 12/03/2024 07:41:34
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.html
Technology: freepdk45
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.log
Total size: 4096 bits
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.lef
Word size: 256
Words: 16
Banks: 1
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.gds
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
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.lvs
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.sp
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.v
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.lib
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.py
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.html
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.log
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.lef
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.gds
** Submodules: 1.3 seconds
** Placement: 0.0 seconds
** Routing: 0.0 seconds
** Verification: 0.0 seconds
** SRAM creation: 1.3 seconds
SP: Writing to /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.sp
** Spice writing: 0.1 seconds
DELAY: Writing stimulus...
** DELAY: 0.1 seconds
GDS: Writing to /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.gds
** GDS: 0.4 seconds
LEF: Writing to /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.lef
** LEF: 0.0 seconds
LVS: Writing to /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.lvs.sp
** LVS writing: 0.0 seconds
LIB: Characterizing... 
** Characterization: 0.1 seconds
Config: Writing to /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.py
** Config: 0.0 seconds
Datasheet: Writing to /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.html
** Datasheet: 0.0 seconds
Verilog: Writing to /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.v
** Verilog: 0.0 seconds
Extended Config: Writing to /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_extended.py
** Extended Config: 0.0 seconds
** End: 2.1 seconds
sed -i -E 's/falling_edge/rising_edge/g' /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C.lib
source /srv/ece411ag/OpenRAM/miniconda/bin/activate ;\
python3 /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/area.py /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.gds > /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.area.txt
cat ./output/mp_cache_tag_array/mp_cache_tag_array.area.txt | xargs -I {} sed -i -E 's/area : .*/area : {}/g' output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C.lib
cd /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_tag_array ;\
lc_shell -x 'read_lib /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C.lib; write_lib mp_cache_tag_array_TT_1p0V_25C_lib; exit' ;\
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
Reading '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C.lib' ...
Warning: Line 1, The 'internal_power_calculation' attribute in char_config group is required for NLPM library. 
	No default can be applied to this attribute. (LBDB-366)
Information: Line 74, Cell 'mp_cache_tag_array', The cell 'mp_cache_tag_array' contiains memory/memory_read/memory_write groups which are deprecated, use the is_memory_cell attribute instead. (LIBG-280)
Technology library 'mp_cache_tag_array_TT_1p0V_25C_lib' read successfully
Wrote the 'mp_cache_tag_array_TT_1p0V_25C_lib' library to 'mp_cache_tag_array_TT_1p0V_25C_lib.db' successfully
Maximum memory usage for this session: 84.32 MB
CPU usage for this session:      3 seconds (  0.00 hours)
Elapsed time for this session:      3 seconds (  0.00 hours)
Thank you for using Library Compiler.

Thank you...
** Submodules: 13.8 seconds
** Placement: 1.2 seconds
** Routing: 0.0 seconds
** Verification: 0.0 seconds
** SRAM creation: 15.0 seconds
SP: Writing to /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.sp
** Spice writing: 0.4 seconds
DELAY: Writing stimulus...
** DELAY: 0.6 seconds
GDS: Writing to /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.gds
** GDS: 2.6 seconds
LEF: Writing to /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.lef
** LEF: 0.0 seconds
LVS: Writing to /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.lvs.sp
** LVS writing: 0.1 seconds
LIB: Characterizing... 
** Characterization: 0.7 seconds
Config: Writing to /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.py
** Config: 0.0 seconds
Datasheet: Writing to /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.html
** Datasheet: 0.0 seconds
Verilog: Writing to /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.v
** Verilog: 0.0 seconds
Extended Config: Writing to /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_data_array/mp_cache_data_array_extended.py
** Extended Config: 0.0 seconds
** End: 19.5 seconds
sed -i -E 's/falling_edge/rising_edge/g' /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C.lib
source /srv/ece411ag/OpenRAM/miniconda/bin/activate ;\
python3 /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/area.py /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.gds > /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.area.txt
cat ./output/mp_cache_data_array/mp_cache_data_array.area.txt | xargs -I {} sed -i -E 's/area : .*/area : {}/g' output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C.lib
cd /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_data_array ;\
lc_shell -x 'read_lib /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C.lib; write_lib mp_cache_data_array_TT_1p0V_25C_lib; exit' ;\
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
Reading '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C.lib' ...
Warning: Line 1, The 'internal_power_calculation' attribute in char_config group is required for NLPM library. 
	No default can be applied to this attribute. (LBDB-366)
Information: Line 82, Cell 'mp_cache_data_array', The cell 'mp_cache_data_array' contiains memory/memory_read/memory_write groups which are deprecated, use the is_memory_cell attribute instead. (LIBG-280)
Technology library 'mp_cache_data_array_TT_1p0V_25C_lib' read successfully
Wrote the 'mp_cache_data_array_TT_1p0V_25C_lib' library to 'mp_cache_data_array_TT_1p0V_25C_lib.db' successfully
Maximum memory usage for this session: 88.14 MB
CPU usage for this session:      2 seconds (  0.00 hours)
Elapsed time for this session:      3 seconds (  0.00 hours)
Thank you for using Library Compiler.

Thank you...
make[2]: Leaving directory '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram'
make[1]: Leaving directory '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram'
 
 ``` 

 </details> 
<details><summary>compile ✅</summary> 

 ``` 
 1950
0
mkdir -p vcs
python3 ../bin/rvfi_reference.py
cd vcs && vcs /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../pkg/types.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/cache.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/cache_arbiter.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/cacheline_adapter.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/cpu.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/execute.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/free_list.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/fu_add.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/fu_br.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/fu_div_rem.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/fu_mem.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/fu_mult.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/lru_array.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/memory_queue.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/phys_regfile.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/provided_cache.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/queue.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/rat.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/rename_dispatch.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/reservation_station.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/rob.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/rrat.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/stage1.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/stage2.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/test.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/valid_array.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/split_lsq.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hvl/common/dram_w_burst_frfcfs_controller.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hvl/common/mem_itf.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hvl/common/mon_itf.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hvl/common/monitor.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hvl/common/rvfimon.v /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hvl/vcs/top_tb.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../sram/output/mp_cache_data_array/mp_cache_data_array.v /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../sram/output/mp_cache_tag_array/mp_cache_tag_array.v /srv/software/Synopsys-2021_x86_64/icc/R-2020.09-SP4/dw/sim_ver/DW_mult_seq.v /srv/software/Synopsys-2021_x86_64/icc/R-2020.09-SP4/dw/sim_ver/DW_div_seq.v -licqueue -full64 -lca -sverilog -timescale=1ps/1ps -debug_acc+all -kdb -fsdb -suppress=LCA_FEATURES_ENABLED -msg_config=../vcs_warn.config -xprop=../xprop.config -xprop=flowctrl +incdir+/srv/software/Synopsys-2021_x86_64/icc/R-2020.09-SP4/dw/sim_ver +define+DW_SUPPRESS_WARN +incdir+/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hvl/vcs +incdir+/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hvl/common -l compile.log -top top_tb -o top_tb
                         Chronologic VCS (TM)
      Version R-2020.12-SP1-1_Full64 -- Tue Dec  3 07:42:05 2024

                    Copyright (c) 1991 - 2021 Synopsys, Inc.
   This software and the associated documentation are proprietary to Synopsys,
 Inc. This software may only be used in accordance with the terms and conditions
 of a written license agreement with Synopsys, Inc. All other use, reproduction,
            or distribution of this software is strictly prohibited.

Reading Config file '../xprop.config'
Parsing design file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../pkg/types.sv'
Parsing design file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/cache.sv'
Parsing design file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/cache_arbiter.sv'
Parsing design file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/cacheline_adapter.sv'
Parsing design file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/cpu.sv'
Parsing design file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/execute.sv'
Parsing design file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/free_list.sv'
Parsing design file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/fu_add.sv'
Parsing design file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/fu_br.sv'
Parsing design file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/fu_div_rem.sv'
Parsing design file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/fu_mem.sv'
Parsing design file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/fu_mult.sv'
Parsing design file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/lru_array.sv'
Parsing design file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/memory_queue.sv'
Parsing design file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/phys_regfile.sv'
Parsing design file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/provided_cache.sv'
Parsing design file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/queue.sv'
Parsing design file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/rat.sv'
Parsing design file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/rename_dispatch.sv'
Parsing design file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/reservation_station.sv'
Parsing design file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/rob.sv'
Parsing design file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/rrat.sv'
Parsing design file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/stage1.sv'
Parsing design file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/stage2.sv'
Parsing design file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/test.sv'
Parsing design file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/valid_array.sv'
Parsing design file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/split_lsq.sv'
Parsing design file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hvl/common/dram_w_burst_frfcfs_controller.sv'
Parsing design file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hvl/common/mem_itf.sv'
Parsing design file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hvl/common/mon_itf.sv'
Parsing design file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hvl/common/monitor.sv'
Parsing design file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hvl/common/rvfimon.v'
Parsing design file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hvl/vcs/top_tb.sv'
Parsing included file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hvl/common/rvfi_reference.svh'.
Back to file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hvl/vcs/top_tb.sv'.
Parsing design file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../sram/output/mp_cache_data_array/mp_cache_data_array.v'
Parsing design file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../sram/output/mp_cache_tag_array/mp_cache_tag_array.v'
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
make[1]: Entering directory '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/vcs/csrc'
make[1]: Leaving directory '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/vcs/csrc'
/srv/software/Synopsys-2021_x86_64/vcs-mx/O-2018.09-SP2-3/bin/vcs: line 31361: 468703 Segmentation fault      (core dumped) ${TOOL_HOME}/bin/cfs_ident_exec -f ${XML_INPUT_EXE} -o "${fsearchDir}/idents_tapi.xml" -o_SrcFile "${dirSrcFiles}/src_files_c" ${all_dyn_libs} > tapi_xml_writer.log
make[1]: Entering directory '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/vcs/csrc'
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../top_tb ]; then chmod a-x ../top_tb; fi
g++  -o ../top_tb      -rdynamic  -Wl,-rpath='$ORIGIN'/top_tb.daidir -Wl,-rpath=./top_tb.daidir -Wl,-rpath=/srv/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib -L/srv/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib  -Wl,-rpath-link=./  /usr/lib64/libnuma.so.1   objs/amcQw_d.o   _468544_archive_1.so  SIM_l.o      rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o           -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /srv/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive        _vcs_pli_stub_.o   /srv/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib/vcs_save_restore_new.o /srv/software/Synopsys-2021_x86_64/verdi/R-2020.12-SP1-1/share/PLI/VCS/LINUX64/pli.a -ldl  -lc -lm -lpthread -ldl 
../top_tb up to date
make[1]: Leaving directory '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/vcs/csrc'
CPU time: 5.716 seconds to compile + 1.412 seconds to elab + .663 seconds to link
Verdi KDB elaboration done and the database successfully generated: 0 error(s), 0 warning(s)
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/cache_arbiter.sv:55 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/cache_arbiter.sv:136 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/cacheline_adapter.sv:31 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/cacheline_adapter.sv:52 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/cacheline_adapter.sv:96 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/cpu.sv:199 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/cpu.sv:221 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/execute.sv:81 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/execute.sv:103 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/execute.sv:115 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/execute.sv:262 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/free_list.sv:40 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/free_list.sv:76 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/free_list.sv:82 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/free_list.sv:94 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/fu_add.sv:35 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/fu_add.sv:49 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/fu_add.sv:68 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/fu_br.sv:36 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/fu_br.sv:56 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/fu_div_rem.sv:32 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/fu_div_rem.sv:83 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/fu_div_rem.sv:117 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/fu_mem.sv:27 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/fu_mult.sv:46 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/fu_mult.sv:76 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/fu_mult.sv:110 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/lru_array.sv:33 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/lru_array.sv:55 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/memory_queue.sv:76 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/memory_queue.sv:143 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/phys_regfile.sv:21 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/phys_regfile.sv:69 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/phys_regfile.sv:131 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/queue.sv:42 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/queue.sv:83 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/queue.sv:91 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/queue.sv:103 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/rat.sv:45 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/rat.sv:49 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/rat.sv:53 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/rat.sv:57 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/rat.sv:61 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/rat.sv:66 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/rat.sv:74 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/rat.sv:88 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/rat.sv:99 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/rename_dispatch.sv:52 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/rename_dispatch.sv:91 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/rename_dispatch.sv:103 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/reservation_station.sv:108 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/reservation_station.sv:193 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/reservation_station.sv:401 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/reservation_station.sv:607 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/reservation_station.sv:631 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/reservation_station.sv:654 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/reservation_station.sv:677 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/reservation_station.sv:700 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/reservation_station.sv:~741 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/reservation_station.sv:~745 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/reservation_station.sv:~749 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/reservation_station.sv:~753 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/reservation_station.sv:~757 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/reservation_station.sv:~761 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/reservation_station.sv:~765 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/reservation_station.sv:~769 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/reservation_station.sv:~773 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/reservation_station.sv:~777 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/rob.sv:116 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/rob.sv:269 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/rrat.sv:39 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/stage1.sv:54 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/stage2.sv:51 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/valid_array.sv:24 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/valid_array.sv:38 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../sram/output/mp_cache_data_array/mp_cache_data_array.v:41 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../sram/output/mp_cache_data_array/mp_cache_data_array.v:52 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../sram/output/mp_cache_tag_array/mp_cache_tag_array.v:37 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../sram/output/mp_cache_tag_array/mp_cache_tag_array.v:47 YES
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sim/../hdl/cache.sv:54 YES
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

        "/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db"
        "/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db"
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
Checking Rule SGDC_abstract_port18 (Rule 51 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
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
 Analyzing source file "/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../pkg/types.sv" ....
 Analyzing source file "/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/cache.sv" ....
 Analyzing source file "/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/cache_arbiter.sv" ....
 Analyzing source file "/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/cacheline_adapter.sv" ....
 Analyzing source file "/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/cpu.sv" ....
 Analyzing source file "/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/execute.sv" ....
 Analyzing source file "/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/free_list.sv" ....
 Analyzing source file "/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/fu_add.sv" ....
 Analyzing source file "/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/fu_br.sv" ....
 Analyzing source file "/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/fu_div_rem.sv" ....
 Analyzing source file "/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/fu_mem.sv" ....
 Analyzing source file "/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/fu_mult.sv" ....
 Analyzing source file "/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/lru_array.sv" ....
 Analyzing source file "/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/memory_queue.sv" ....
 Analyzing source file "/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/phys_regfile.sv" ....
 Analyzing source file "/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/provided_cache.sv" ....
 Analyzing source file "/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/queue.sv" ....
 Analyzing source file "/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/rat.sv" ....
 Analyzing source file "/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/rename_dispatch.sv" ....
 Analyzing source file "/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/reservation_station.sv" ....
 Analyzing source file "/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/rob.sv" ....
 Analyzing source file "/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/rrat.sv" ....
 Analyzing source file "/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/stage1.sv" ....
 Analyzing source file "/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/stage2.sv" ....
 Analyzing source file "/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/test.sv" ....
 Analyzing source file "/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/valid_array.sv" ....
 Analyzing source file "/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/split_lsq.sv" ....
 Elaborating Top Verilog Design Unit 'cpu' ..... done
Checking Rule ElabSummary (Rule 73 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
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
Checking Rule HdlLibDuCheck (Rule 80 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule RtlDesignInfo (Rule 81 of total 325) .... done (Time = 0.00s, Memory = 8.0K)
Checking Rule W339a (Rule 82 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W416 (Rule 83 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule mixedsenselist (Rule 84 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W110a (Rule 85 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule preReq_ConsCase (Rule 86 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule CheckCelldefine (Rule 87 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_waive23 (Rule 88 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
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
Checking Rule W481a (Rule 101 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W481b (Rule 102 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W422 (Rule 103 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W292 (Rule 104 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W71 (Rule 105 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W287b (Rule 106 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
Checking Rule W293 (Rule 107 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W398 (Rule 108 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W421 (Rule 109 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W424 (Rule 110 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule W467 (Rule 111 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Prereqs_RegInputOutputs (Rule 112 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule PragmaComments-ML (Rule 113 of total 325) .... done (Time = 0.00s, Memory = 32.0K)
Checking Rule PragmaComments-ML (Rule 114 of total 325) .... done (Time = 0.00s, Memory = -8.0K)
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
    Checking Rule W110 (Rule 128 of total 325) .... done (Time = 0.01s, Memory = 264.0K)
    Checking Rule W122 (Rule 129 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496a (Rule 130 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496b (Rule 131 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W19 (Rule 132 of total 325) .... done (Time = 0.00s, Memory = 8.0K)
    Checking Rule W66 (Rule 133 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W116 (Rule 134 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W123 (Rule 135 of total 325) .... done (Time = 0.01s, Memory = 88.0K)
    Checking Rule W156 (Rule 136 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W215 (Rule 137 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W216 (Rule 138 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W218 (Rule 139 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W224 (Rule 140 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W263 (Rule 141 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
    Checking Rule W289 (Rule 142 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
    Checking Rule W337 (Rule 143 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W416 (Rule 144 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W352 (Rule 145 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W362 (Rule 146 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.00s, Memory = 32.0K)
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
    Checking Rule ReportPortInfo-ML (Rule 169 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 170 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 171 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoAssignX-ML (Rule 172 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
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
    Checking Rule W287a (Rule 158 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
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
    Checking Rule NoAssignX-ML (Rule 172 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
    Checking Rule ParamWidthMismatch-ML (Rule 173 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Postreqs_Usage_ML (Rule 174 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoXInCase-ML (Rule 175 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking ELABDU Rules for designUnit valid_array
    Checking Rule Prereqs_InferLatch (Rule 117 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.5.3 (Rule 118 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.2.3.3 (Rule 119 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.3.1.6 (Rule 120 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.2.3 (Rule 121 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.3.2a (Rule 122 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
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
    Checking Rule W123 (Rule 135 of total 325) .... done (Time = 0.00s, Memory = 40.0K)
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
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.01s, Memory = 64.0K)
    Checking Rule W486 (Rule 148 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W499 (Rule 149 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
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
    Checking Rule W528 (Rule 165 of total 325) .... done (Time = 0.00s, Memory = 8.0K)
    Checking Rule W528 (Rule 166 of total 325) .... done (Time = 0.00s, Memory = 608.0K)
    Checking Rule Prereqs_Usage (Rule 167 of total 325) .... done (Time = 0.00s, Memory = -24.0K)
    Checking Rule Prereqs_ConstantInput-ML (Rule 168 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule ReportPortInfo-ML (Rule 169 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 170 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule Prereqs_ReportPortInfo-ML (Rule 171 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule NoAssignX-ML (Rule 172 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
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
    Checking Rule Postreqs_Usage_ML (Rule 174 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
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
    Checking Rule STARC05-2.2.3.3 (Rule 119 of total 325) .... done (Time = 0.00s, Memory = 8.0K)
    Checking Rule STARC05-2.3.1.6 (Rule 120 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.2.3 (Rule 121 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.3.2a (Rule 122 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.11.3.1 (Rule 123 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.3.1 (Rule 124 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
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
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.02s, Memory = 256.0K)
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
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.01s, Memory = 8.0K)
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
    Checking Rule STARC05-2.11.3.1 (Rule 123 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.1.3.1 (Rule 124 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4a (Rule 125 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.1.4b (Rule 126 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule sim_race02 (Rule 127 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W110 (Rule 128 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W122 (Rule 129 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496a (Rule 130 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W496b (Rule 131 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
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
    Checking Rule W71 (Rule 155 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 156 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W240 (Rule 157 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W287a (Rule 158 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
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
    Checking Rule STARC05-2.2.3.3 (Rule 119 of total 325) .... done (Time = 0.01s, Memory = 48.0K)
    Checking Rule STARC05-2.3.1.6 (Rule 120 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.2.3 (Rule 121 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule STARC05-2.10.3.2a (Rule 122 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
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
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.01s, Memory = 32.0K)
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
    Checking Rule ParamWidthMismatch-ML (Rule 173 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
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
    Checking Rule _width_expr02_mismatch_prereq (Rule 199 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
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
Checking Lexical Rules for file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/cache.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/cache_arbiter.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/cacheline_adapter.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/cpu.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/execute.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/free_list.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/fu_add.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/fu_br.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/fu_div_rem.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/fu_mem.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/fu_mult.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/lru_array.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/memory_queue.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/phys_regfile.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/queue.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/rat.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/rename_dispatch.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/reservation_station.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/rob.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/rrat.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/stage1.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/stage2.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/valid_array.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../pkg/types.sv
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
Checking Rule InferBlackBox (Rule 211 of total 325) .... done (Time = 0.07s, Memory = 0.0K)
Checking Rule checkCMD_mthresh (Rule 212 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_waive37 (Rule 213 of total 325) .... done (Time = 0.00s, Memory = -8192.0K)
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
Checking Rule InferLatch (Rule 250 of total 325) .... done (Time = 0.05s, Memory = 32.0K)
Checking Rule UndrivenInTerm-ML (Rule 251 of total 325) .... done (Time = 1.11s, Memory = -32.0K)
Checking Rule Av_casereq03 (Rule 252 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_fsm_setup01 (Rule 253 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_PortRetention (Rule 254 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_assume_path05 (Rule 255 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
 Flattening cpu (.lib instances separately flattened) ....
    22% completed (50000 instances created)
    45% completed (100000 instances created)
    67% completed (150000 instances created)
    90% completed (200000 instances created)
 Flattening completed
Checking Rule SGDC_set_case_analysis_LC (Rule 256 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule Av_IpblockTaggedNet (Rule 257 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule BufClock (Rule 258 of total 325) .... done (Time = 0.48s, Memory = 3224.0K)
Checking Rule CombLoop (Rule 259 of total 325) .... done (Time = 0.29s, Memory = 912.0K)
Checking Rule STARC05-2.5.1.2 (Rule 260 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-1.3.1.3 (Rule 261 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
Checking Rule STARC05-1.4.3.4 (Rule 262 of total 325) .... done (Time = 0.02s, Memory = 8.0K)
Checking Rule FlopClockConstant (Rule 263 of total 325) .... done (Time = 0.03s, Memory = 16.0K)
Checking Rule FlopSRConst (Rule 264 of total 325) .... done (Time = 0.03s, Memory = 0.0K)
Checking Rule FlopEConst (Rule 265 of total 325) .... done (Time = 0.03s, Memory = 24.0K)
Checking Rule checkPinConnectedToSupply (Rule 266 of total 325) .... done (Time = 0.05s, Memory = 0.0K)
Checking Rule W392 (Rule 267 of total 325) .... done (Time = 0.02s, Memory = 1384.0K)
Checking Rule W415 (Rule 268 of total 325) .... done (Time = 0.14s, Memory = 0.0K)
Checking Rule LatchFeedback (Rule 269 of total 325) .... done (Time = 0.26s, Memory = 8.0K)
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
Checking Rule STARC05-1.2.1.2 (Rule 283 of total 325) .... done (Time = 0.08s, Memory = 912.0K)
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
         cpu   (file: /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/cpu.sv)

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
   /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/spyglass-1/consolidated_reports/cpu_lint_lint_turbo_rtl/ 

   SpyGlass LogFile: 
    /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/spyglass-1/cpu/lint/lint_turbo_rtl/spyglass.log 

   Standard Reports: 
     waiver.rpt          moresimple.rpt          no_msg_reporting_rules.rpt       

   HTML report:
    /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/spyglass-1/html_reports/goals_summary.html
  

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
#     Report Created on: Tue Dec  3 07:42:28 2024
#     Working Directory: /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint
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
[3]      N.A        DetectTopDesignUnits    DetectTopDesignUnits    Info        /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/lint/../hdl/cpu.sv                               1       2     Module cpu is a top level design unit
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
 1950
0
compile_ultra -gate_clock -retime
compile_ultra -incremental -gate_clock -retime
6
rm -f  *.log
rm -f  default.svf
rm -rf work
rm -rf reports
rm -rf outputs
make outputs/synth.ddc
make[1]: Entering directory '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth'
mkdir -p reports outputs
export ECE411_CLOCK_PERIOD_PS=1950 ;\
export ECE411_MIN_POWER=0 ;\
export ECE411_COMPILE_CMD="compile_ultra -gate_clock -retime" ;\
export ECE411_COMPILE_CMD_INC="compile_ultra -incremental -gate_clock -retime" ;\
export ECE411_COMPILE_ITER="6" ;\
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
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db
if {$sram_library eq ""} {
   set link_library [list "*" $target_library $synthetic_library]
} else {
   set link_library [list "*" $target_library $synthetic_library $sram_library]
}
* /srv/ece411ag/freepdk-45nm/stdcells.db dw_foundation.sldb {/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db}
get_license DC-Ultra-Features
1
get_license DC-Ultra-Opt
1
set pkg_src [getenv PKG_SRCS]
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../pkg/types.sv
if {$pkg_src ne ""} {
   analyze -library WORK -format sverilog $pkg_src
}
Running PRESTO HDLC
Compiling source file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../pkg/types.sv
Presto compilation completed successfully.
Loading db file '/srv/ece411ag/freepdk-45nm/stdcells.db'
Loading db file '/srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/libraries/syn/dw_foundation.sldb'
1
set modules [split [getenv HDL_SRCS] " "]
/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/cache.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/cache_arbiter.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/cacheline_adapter.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/cpu.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/execute.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/free_list.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/fu_add.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/fu_br.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/fu_div_rem.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/fu_mem.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/fu_mult.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/lru_array.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/memory_queue.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/phys_regfile.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/provided_cache.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/queue.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/rat.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/rename_dispatch.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/reservation_station.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/rob.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/rrat.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/stage1.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/stage2.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/test.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/valid_array.sv /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/split_lsq.sv
foreach module $modules {
   analyze -library WORK -format sverilog "${module}"
}
Running PRESTO HDLC
Compiling source file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/cache.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/cache_arbiter.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/cacheline_adapter.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/cpu.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/execute.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/free_list.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/fu_add.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/fu_br.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/fu_div_rem.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/fu_mem.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/fu_mult.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/lru_array.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/memory_queue.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/phys_regfile.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/provided_cache.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/queue.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/rat.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/rename_dispatch.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/reservation_station.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/rob.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/rrat.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/stage1.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/stage2.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/test.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/valid_array.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/split_lsq.sv
Presto compilation completed successfully.
elaborate $design_toplevel
Loading db file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db'
Loading db file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db'
Loading db file '/srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/libraries/syn/gtech.db'
Loading db file '/srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/libraries/syn/standard.sldb'
  Loading link library 'NangateOpenCellLibrary'
  Loading link library 'mp_cache_data_array_TT_1p0V_25C_lib'
  Loading link library 'mp_cache_tag_array_TT_1p0V_25C_lib'
  Loading link library 'gtech'
Running PRESTO HDLC

Inferred memory devices in process
	in routine cpu line 199 in file
		'/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/cpu.sv'.
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
		'/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/cache.sv'.
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
	'/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/memory_queue.sv'
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
		'/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/memory_queue.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|    tail_reg_reg     | Flip-flop |   5   |  Y  | Y  | N  | N  | N  | Y  | N  |
|    head_reg_reg     | Flip-flop |   5   |  Y  | Y  | N  | N  | N  | Y  | N  |
|       mem_reg       | Flip-flop | 4176  |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================
Statistics for MUX_OPs
======================================================
| block name/line  | Inputs | Outputs | # sel inputs |
======================================================
| memory_queue/181 |   16   |    1    |      4       |
| memory_queue/181 |   16   |    1    |      4       |
| memory_queue/149 |   16   |   260   |      4       |
| memory_queue/166 |   16   |    3    |      4       |
| memory_queue/168 |   16   |    2    |      4       |
| memory_queue/168 |   16   |    2    |      4       |
| memory_queue/169 |   16   |    2    |      4       |
| memory_queue/170 |   16   |    1    |      4       |
| memory_queue/170 |   16   |    1    |      4       |
| memory_queue/171 |   16   |    1    |      4       |
| memory_queue/182 |   16   |   32    |      4       |
| memory_queue/184 |   16   |    7    |      4       |
| memory_queue/184 |   16   |    4    |      4       |
| memory_queue/185 |   16   |    3    |      4       |
| memory_queue/192 |   16   |    4    |      4       |
| memory_queue/193 |   16   |    3    |      4       |
| memory_queue/200 |   16   |    3    |      4       |
| memory_queue/201 |   16   |    8    |      4       |
| memory_queue/202 |   16   |   16    |      4       |
| memory_queue/203 |   16   |   32    |      4       |
| memory_queue/233 |   16   |   261   |      4       |
======================================================
Presto compilation completed successfully. (memory_queue)
Information: Building the design 'cache_arbiter'. (HDL-193)

Statistics for case statements in always block at line 112 in file
	'/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/cache_arbiter.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|           136            |     no/auto      |
===============================================

Inferred memory devices in process
	in routine cache_arbiter line 55 in file
		'/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/cache_arbiter.sv'.
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
	'/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/cacheline_adapter.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            52            |    auto/auto     |
===============================================

Inferred memory devices in process
	in routine cacheline_adapter line 31 in file
		'/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/cacheline_adapter.sv'.
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
		'/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/queue.sv'.
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
		'/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/rename_dispatch.sv'.
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
		'/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/rat.sv'.
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
		'/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/rob.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|       mem_reg       | Flip-flop | 6688  |  Y  | Y  | N  | N  | Y  | N  | N  |
|    tail_reg_reg     | Flip-flop |   5   |  Y  | Y  | N  | N  | N  | Y  | N  |
|    head_reg_reg     | Flip-flop |   5   |  Y  | Y  | N  | N  | N  | Y  | N  |
===============================================================================
Statistics for MUX_OPs
======================================================
| block name/line  | Inputs | Outputs | # sel inputs |
======================================================
|     rob/203      |   16   |   32    |      4       |
|     rob/272      |   16   |    1    |      4       |
|     rob/272      |   16   |    1    |      4       |
|     rob/277      |   16   |   352   |      4       |
|     rob/308      |   16   |   418   |      4       |
======================================================
Presto compilation completed successfully. (rob)
Information: Building the design 'rrat'. (HDL-193)

Inferred memory devices in process
	in routine rrat line 39 in file
		'/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/rrat.sv'.
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
		'/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/free_list.sv'.
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
		'/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/phys_regfile.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      data_reg       | Flip-flop | 2048  |  Y  | Y  | N  | N  | N  | N  | N  |
===============================================================================

Inferred memory devices in process
	in routine phys_regfile line 69 in file
		'/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/phys_regfile.sv'.
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
		'/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/execute.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|   rd_mul_reg_reg    | Flip-flop |   5   |  Y  | Y  | N  | N  | Y  | N  | N  |
|   rob_mul_reg_reg   | Flip-flop |   4   |  Y  | Y  | N  | N  | Y  | N  | N  |
|   pd_mul_reg_reg    | Flip-flop |   6   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================

Inferred memory devices in process
	in routine execute line 103 in file
		'/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/execute.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|   rd_div_reg_reg    | Flip-flop |   5   |  Y  | Y  | N  | N  | Y  | N  | N  |
|   rob_div_reg_reg   | Flip-flop |   4   |  Y  | Y  | N  | N  | Y  | N  | N  |
|   pd_div_reg_reg    | Flip-flop |   6   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================

Inferred memory devices in process
	in routine execute line 115 in file
		'/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/execute.sv'.
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
		'/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/reservation_station.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
| regf_we_div_reg_reg | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
| regf_we_mul_reg_reg | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
===============================================================================

Inferred memory devices in process
	in routine reservation_station line 192 in file
		'/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/reservation_station.sv'.
============================================================================================
|          Register Name           |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
============================================================================================
|      cdb_ps_id_add_reg_reg       | Flip-flop |   6   |  Y  | Y  | N  | N  | N  | N  | N  |
|    cdb_ps_id_multiply_reg_reg    | Flip-flop |   6   |  Y  | Y  | N  | N  | N  | N  | N  |
|     cdb_ps_id_divide_reg_reg     | Flip-flop |   6   |  Y  | Y  | N  | N  | N  | N  | N  |
|     cdb_ps_id_branch_reg_reg     | Flip-flop |   6   |  Y  | Y  | N  | N  | N  | N  | N  |
|      cdb_ps_id_mem_reg_reg       | Flip-flop |   6   |  Y  | Y  | N  | N  | N  | N  | N  |
|   mem_reservation_station_reg    | Flip-flop | 1160  |  Y  | Y  | N  | N  | Y  | N  | N  |
|   add_reservation_station_reg    | Flip-flop | 1144  |  Y  | Y  | N  | N  | Y  | N  | N  |
| multiply_reservation_station_reg | Flip-flop |  572  |  Y  | Y  | N  | N  | Y  | N  | N  |
|  divide_reservation_station_reg  | Flip-flop |  572  |  Y  | Y  | N  | N  | Y  | N  | N  |
|  branch_reservation_station_reg  | Flip-flop | 1144  |  Y  | Y  | N  | N  | Y  | N  | N  |
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
		'/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/valid_array.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|    din0_reg_reg     | Flip-flop |   1   |  N  | N  | N  | N  | N  | N  | N  |
|    web0_reg_reg     | Flip-flop |   1   |  N  | N  | N  | N  | N  | Y  | N  |
|    addr0_reg_reg    | Flip-flop |   4   |  Y  | Y  | N  | N  | N  | N  | N  |
===============================================================================

Inferred memory devices in process
	in routine valid_array line 38 in file
		'/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/valid_array.sv'.
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
		'/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/lru_array.sv'.
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
		'/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/lru_array.sv'.
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
	'/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/fu_add.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            35            |    user/user     |
===============================================

Statistics for case statements in always block at line 48 in file
	'/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/fu_add.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            49            |    user/user     |
===============================================

Statistics for case statements in always block at line 60 in file
	'/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/fu_add.sv'
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
	'/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/fu_mult.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            76            |    user/user     |
|           110            |    user/user     |
===============================================

Inferred memory devices in process
	in routine fu_mult line 46 in file
		'/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/fu_mult.sv'.
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
	'/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/fu_div_rem.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            83            |    user/user     |
|           117            |    user/user     |
===============================================

Inferred memory devices in process
	in routine fu_div_rem line 32 in file
		'/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/fu_div_rem.sv'.
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
	'/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/fu_br.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            36            |    user/user     |
===============================================

Statistics for case statements in always block at line 47 in file
	'/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/../hdl/fu_br.sv'
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
Date:        Tue Dec  3 07:43:09 2024
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
  * (23 designs)              /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/cpu.db, etc
  NangateOpenCellLibrary (library)
                              /srv/ece411ag/freepdk-45nm/stdcells.db
  dw_foundation.sldb (library)
                              /srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/libraries/syn/dw_foundation.sldb
  mp_cache_data_array_TT_1p0V_25C_lib (library)
                              /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db
  mp_cache_tag_array_TT_1p0V_25C_lib (library)
                              /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db

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
Information: propagating constant for register rob_i/tail_reg_reg_4_
Information: propagating constant for register rob_i/head_reg_reg_4_
Information: propagating constant for register memory_queue_i/tail_reg_reg_4_
Information: propagating constant for register memory_queue_i/head_reg_reg_4_
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
Information: Ungrouping 19 of 438 hierarchies before Pass 1 (OPT-775)
Information: State dependent leakage is now switched from on to off.

  Beginning Pass 1 Mapping
  ------------------------
....
  Processing 'rob'
Information: Added key list 'DesignWare' to design 'rob'. (DDB-72)
 Implement Synthetic for 'rob'.
  Processing 'reservation_station'
Information: Added key list 'DesignWare' to design 'reservation_station'. (DDB-72)
  Processing 'memory_queue'
Information: Added key list 'DesignWare' to design 'memory_queue'. (DDB-72)
 Implement Synthetic for 'memory_queue'.
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
Information: Complementing port 'rob_out[235]' in design 'rob'.
	 The new name of the port is 'rob_out[235]_BAR'. (OPT-319)
Information: Complementing port 'rob_out[234]' in design 'rob'.
	 The new name of the port is 'rob_out[234]_BAR'. (OPT-319)
Information: Complementing port 'rob_out[233]' in design 'rob'.
	 The new name of the port is 'rob_out[233]_BAR'. (OPT-319)
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
    0:02:17  303894.3  13978.40 103341048.0 16182702.5                           4543711.0000      0.00  
    0:02:17  303894.3  13978.40 103341048.0 16182702.5                           4543711.0000      0.00  
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
    0:02:18  303906.3  13978.40 103341048.0 16182705.2                           4544156.0000      0.00  
Information: In design 'cpu', the register 'cache_i/arrays_1__valid_array/addr0_reg_reg_1_' is removed because it is merged to 'cache_i/arrays_0__valid_array/addr0_reg_reg_1_'. (OPT-1215)
Information: In design 'cpu', the register 'cache_i/arrays_2__valid_array/addr0_reg_reg_1_' is removed because it is merged to 'cache_i/arrays_0__valid_array/addr0_reg_reg_1_'. (OPT-1215)
Information: In design 'cpu', the register 'cache_i/arrays_3__valid_array/addr0_reg_reg_1_' is removed because it is merged to 'cache_i/arrays_0__valid_array/addr0_reg_reg_1_'. (OPT-1215)
Information: In design 'cpu', the register 'cache_i/arrays_1__valid_array/addr0_reg_reg_0_' is removed because it is merged to 'cache_i/arrays_0__valid_array/addr0_reg_reg_0_'. (OPT-1215)
Information: In design 'cpu', the register 'cache_i/arrays_2__valid_array/addr0_reg_reg_0_' is removed because it is merged to 'cache_i/arrays_0__valid_array/addr0_reg_reg_0_'. (OPT-1215)
Information: In design 'cpu', the register 'cache_i/arrays_3__valid_array/addr0_reg_reg_0_' is removed because it is merged to 'cache_i/arrays_0__valid_array/addr0_reg_reg_0_'. (OPT-1215)
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
Information: Ungrouping hierarchy arbiter 'cache_arbiter' #insts = 1358. (OPT-777)
Information: Ungrouping hierarchy rat_i 'rat' #insts = 2488. (OPT-777)
Information: Ungrouping hierarchy cache_i/stage_1_i 'stage_1_1' #insts = 1541. (OPT-777)
Information: Ungrouping hierarchy cache_d/stage_1_i 'stage_1_0' #insts = 1876. (OPT-777)
  Building model 'DW01_NAND2'
  Building model 'DW_and_tree_width5'
  Building model 'DW_cntr_scnto_width5_count_to12_rst_mode0_dcod_mode0'
Information: Performing clock-gating on design execute_DW_div_seq_0. (PWR-730)
    0:03:15  293597.0      1.79    3078.2 6703684.9                           4331500.0000      0.00  
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
    0:05:09  397655.1      7.02   59364.6   12777.5                           11474910.0000      0.00  
    0:05:14  396660.5      7.08   59707.6   13312.8                           11432237.0000      0.00  

  Beginning Constant Register Removal
  -----------------------------------
    0:05:19  401868.0      7.08   59895.5   13190.8                           11707439.0000      0.00  
    0:05:22  401847.8      7.08   59895.5   13497.1                           11706968.0000      0.00  

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
  Mapping 'execute_DW_cmp_0'
  Mapping 'execute_DW_cmp_1'
  Mapping 'execute_DP_OP_153J14_126_7210_1'

  Beginning Isolate Ports
  -----------------------

  Beginning Delay Optimization
  ----------------------------
    0:06:08  244874.0      2.46   17148.4    9479.8                           3802020.2500      0.00  
    0:06:17  244986.3      1.08    5106.5    9497.8                           3803970.0000      0.00  
    0:06:17  244986.3      1.08    5106.5    9497.8                           3803970.0000      0.00  
    0:06:20  244976.9      1.08    5111.3    9571.5                           3804245.5000      0.00  
    0:06:30  244152.3      1.13    4888.2    9757.9                           3785384.7500      0.00  
    0:06:34  243703.6      1.08    4832.2    9611.2                           3773052.2500      0.00  

  Beginning WLM Backend Optimization
  --------------------------------------
    0:06:47  243220.8      1.08    4512.1    9585.5                           3739099.5000      0.00  
    0:06:52  242585.6      1.08    4336.9    9429.7                           3702352.2500      0.00  
    0:06:55  241854.1      1.08    4280.0    9403.0                           3668204.0000      0.00  
    0:07:01  241006.4      1.08    3636.6    9395.9                           3633806.7500      0.00  
    0:07:06  240177.2      1.08    3576.5    9390.6                           3600570.5000      0.00  
    0:07:09  239661.7      1.08    3163.4    9322.6                           3580052.7500      0.00  
    0:07:10  239154.7      1.08    3122.7    9317.0                           3559764.7500      0.00  
    0:07:11  239141.4      1.07    3120.6    9317.0                           3558798.7500      0.00  
    0:07:11  239141.4      1.07    3120.6    9317.0                           3558798.7500      0.00  
    0:07:19  235931.3      1.07    2977.7    8967.3                           3354796.0000      0.00  
    0:07:19  235931.3      1.07    2977.7    8967.3                           3354796.0000      0.00  
    0:07:26  236463.3      0.72    1946.7    8960.4                           3372755.0000      0.00  
    0:07:26  236463.3      0.72    1946.7    8960.4                           3372755.0000      0.00  
    0:07:26  236466.3      0.69    1886.8    8960.4                           3373010.7500      0.00  
    0:07:27  236466.3      0.69    1886.8    8960.4                           3373010.7500      0.00  
    0:07:32  236731.5      0.62    1680.7    8954.1                           3381717.5000      0.00  
    0:07:32  236731.5      0.62    1680.7    8954.1                           3381717.5000      0.00  
    0:07:39  236770.6      0.49    1219.5    8947.6                           3384592.5000      0.00  
    0:07:39  236770.6      0.49    1219.5    8947.6                           3384592.5000      0.00  
    0:07:39  236770.6      0.49    1219.5    8947.6                           3384592.5000      0.00  
    0:07:39  236770.6      0.49    1219.5    8947.6                           3384592.5000      0.00  
    0:07:39  236770.6      0.49    1219.5    8947.6                           3384592.5000      0.00  
    0:07:39  236770.6      0.49    1219.5    8947.6                           3384592.5000      0.00  
    0:07:39  236770.6      0.49    1219.5    8947.6                           3384592.5000      0.00  
    0:07:39  236770.6      0.49    1219.5    8947.6                           3384592.5000      0.00  
    0:07:39  236770.6      0.49    1219.5    8947.6                           3384592.5000      0.00  
    0:07:40  236770.6      0.49    1219.5    8947.6                           3384592.5000      0.00  
    0:07:40  236770.6      0.49    1219.5    8947.6                           3384592.5000      0.00  


  Beginning Design Rule Fixing  (max_transition)  (max_fanout)  (max_capacitance)
  ----------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:07:40  236770.6      0.49    1219.5    8947.6                           3384592.5000      0.00  
  Global Optimization (Phase 33)
  Global Optimization (Phase 34)
  Global Optimization (Phase 35)
    0:07:44  236833.4      0.49    1200.0    7632.6 rob_i/mem_reg_14__pc_branch__27_/SE 3385489.0000      0.00  
    0:07:46  236826.2      0.47    1172.7    7632.6 rob_i/mem_reg_0__pc_branch__31_/SE 3384234.2500      0.00  
    0:07:50  236665.2      0.43    1052.6    7632.6 rob_i/mem_reg_5__pc_branch__27_/SE 3376294.5000      0.00  
    0:07:52  236674.8      0.42    1024.9    7632.6 rob_i/mem_reg_14__pc_branch__25_/SE 3375933.2500      0.00  
    0:07:54  236687.8      0.41    1003.0    7632.6 rat_i/valid_reg_30_/D     3375291.2500      0.00  
    0:07:57  236663.4      0.40     981.7    7632.6 reservation_stations_i/branch_reservation_station_reg_3__ps2_v_/SE 3373494.0000      0.00  
    0:07:59  236598.5      0.38     940.5    7632.6 memory_queue_i/mem_reg_9__addr__31_/SE 3370442.7500      0.00  
    0:08:02  236567.9      0.37     901.7    7632.6 rob_i/mem_reg_5__pc_branch__25_/SE 3368536.7500      0.00  
    0:08:04  236562.6      0.36     868.0    7632.6 reservation_stations_i/add_reservation_station_reg_1__ps2_v_/SE 3368012.0000      0.00  
    0:08:06  236554.1      0.35     840.2    7632.6 rat_i/valid_reg_23_/D     3367132.2500      0.00  
    0:08:07  236525.3      0.35     829.5    7632.6 rob_i/mem_reg_5__pc_branch__27_/SE 3365730.5000      0.00  
    0:08:09  236538.1      0.39     813.8    7387.8 cache_d/stage_2_i/tag_out[28] 3365384.5000      0.00  
    0:08:12  236536.0      0.36     836.0    7308.4 rat_i/valid_reg_12_/D     3363965.2500      0.00  
    0:08:14  236530.6      0.34     832.7    7308.4 rat_i/valid_reg_12_/D     3362923.7500      0.00  
    0:08:15  236525.3      0.34     803.5    7308.4 reservation_stations_i/branch_reservation_station_reg_3__ps2_v_/SE 3362487.0000      0.00  
    0:08:17  236509.6      0.33     781.8    7308.4 reservation_stations_i/branch_reservation_station_reg_1__ps2_v_/SE 3361284.2500      0.00  
    0:08:19  236498.7      0.33     755.2    7308.4 rat_i/valid_reg_12_/D     3360433.0000      0.00  
    0:08:21  236514.7      0.31     751.6    7308.4 rat_i/valid_reg_12_/D     3360526.0000      0.00  
    0:08:23  236530.9      0.30     731.2    7308.4 rob_i/mem_reg_7__pc_branch__25_/SE 3361063.2500      0.00  
    0:08:25  236524.5      0.30     713.5    7308.4 reservation_stations_i/branch_reservation_station_reg_1__ps2_v_/SE 3360540.0000      0.00  
    0:08:26  236512.3      0.29     626.2    7308.4 reservation_stations_i/branch_reservation_station_reg_3__ps2_v_/SE 3360013.0000      0.00  
    0:08:28  236510.2      0.28     592.7    7308.4 rob_i/mem_reg_7__pc_branch__25_/SE 3359748.7500      0.00  
    0:08:29  236509.6      0.28     589.9    7308.4 rob_i/mem_reg_7__pc_branch__25_/SE 3359557.5000      0.00  
    0:08:31  236507.0      0.28     581.5    7308.4 rob_i/mem_reg_7__pc_branch__20_/SE 3359224.2500      0.00  
    0:08:33  236511.8      0.27     578.0    7308.4 memory_queue_i/mem_reg_9__addr__30_/SE 3359133.5000      0.00  
    0:08:34  236520.3      0.27     562.9    7308.4 rob_i/mem_reg_7__pc_branch__25_/SE 3359242.2500      0.00  
    0:08:36  236520.3      0.27     559.5    7308.4 phys_regfile_i/data_reg_23__31_/D 3359180.0000      0.00  
    0:08:38  236503.2      0.26     544.9    7308.4 rat_i/valid_reg_28_/D     3358325.7500      0.00  
    0:08:40  236479.6      0.26     524.2    7308.4 rob_i/mem_reg_7__pc_branch__25_/SE 3357029.2500      0.00  
    0:08:41  236468.1      0.25     504.7    7308.4 phys_regfile_i/data_reg_14__19_/D 3356526.7500      0.00  
    0:08:43  236513.1      0.25     496.9    6992.2 execute_i/fu_div_i/U1/shf_reg_reg[2][1]/SI 3357323.7500      0.00  
    0:08:45  236484.9      0.24     514.0    6992.2                           3355853.2500      0.00  
    0:08:47  236530.1      0.24     455.9    6992.7                           3357706.7500      0.00  


  Beginning Leakage Power Optimization  (max_leakage_power 0)
  ------------------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:08:47  236530.1      0.24     455.9    6992.7                           3357706.7500      0.00  
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
Information: Complementing port 'global_branch_addr[1]' in design 'rob'.
	 The new name of the port is 'global_branch_addr[1]_BAR'. (OPT-319)
Information: Complementing port 'global_branch_addr[0]' in design 'rob'.
	 The new name of the port is 'global_branch_addr[0]_BAR'. (OPT-319)
Information: Complementing port 'enqueue_valid' in design 'memory_queue'.
	 The new name of the port is 'enqueue_valid_BAR'. (OPT-319)
Information: Complementing port 'mem_cdb_valid_BAR' in design 'rob'.
	 The new name of the port is 'mem_cdb_valid'. (OPT-319)
Information: Complementing port 'regf_we_mem_BAR' in design 'phys_regfile'.
	 The new name of the port is 'regf_we_mem'. (OPT-319)
Information: Complementing port 'regf_we_mem_BAR' in design 'reservation_station'.
	 The new name of the port is 'regf_we_mem'. (OPT-319)
Information: Complementing port 'cdb_mem[233]_BAR' in design 'memory_queue'.
	 The new name of the port is 'cdb_mem[233]'. (OPT-319)
Information: Complementing port 'rob_out[414]_BAR' in design 'rob'.
	 The new name of the port is 'rob_out[414]'. (OPT-319)
Information: Complementing port 'rob_out[411]_BAR' in design 'rob'.
	 The new name of the port is 'rob_out[411]'. (OPT-319)
Information: Complementing port 'rob_out[410]_BAR' in design 'rob'.
	 The new name of the port is 'rob_out[410]'. (OPT-319)
Information: Complementing port 'read_halt' in design 'stage_2_0'.
	 The new name of the port is 'read_halt_BAR'. (OPT-319)
    0:09:19  233202.7      0.28     582.4    6522.2 rob_i/mem_reg_1__pc_branch__18_/SE 3178305.2500      0.00  
    0:09:21  233197.7      0.27     576.9    6522.2 phys_regfile_i/data_reg_26__30_/D 3178016.5000      0.00  
    0:09:21  233200.1      0.27     576.1    6522.2                           3177992.0000      0.00  
    0:09:22  233218.9      0.26     567.6    6522.2                           3178744.5000      0.00  
    0:09:22  233218.9      0.26     567.6    6522.2                           3178744.5000      0.00  
    0:09:28  233237.6      0.26     492.4    6525.5                           3180287.2500      0.00  
    0:09:28  233237.6      0.26     492.4    6525.5                           3180287.2500      0.00  
    0:09:28  233237.6      0.26     492.4    6525.5                           3180287.2500      0.00  
    0:09:28  233237.6      0.26     492.4    6525.5                           3180287.2500      0.00  
    0:09:28  233238.1      0.26     492.1    6525.5                           3180337.7500      0.00  
    0:09:28  233238.1      0.26     492.1    6525.5                           3180337.7500      0.00  
    0:09:29  233235.7      0.26     491.3    6525.5                           3180303.0000      0.00  
    0:09:29  233235.7      0.26     491.3    6525.5                           3180303.0000      0.00  
    0:09:32  233313.4      0.23     436.2    6588.7                           3184463.2500      0.00  
    0:09:32  233313.4      0.23     436.2    6588.7                           3184463.2500      0.00  
    0:09:32  233313.4      0.23     436.2    6588.7                           3184463.2500      0.00  
    0:09:32  233313.4      0.23     436.2    6588.7                           3184463.2500      0.00  
    0:09:32  233313.4      0.23     436.2    6588.7                           3184463.2500      0.00  
    0:09:32  233313.4      0.23     436.2    6588.7                           3184463.2500      0.00  
    0:09:33  233313.4      0.23     436.2    6588.7                           3184463.2500      0.00  
    0:09:33  233313.4      0.23     436.2    6588.7                           3184463.2500      0.00  
    0:09:33  233313.4      0.23     436.2    6588.7                           3184463.2500      0.00  
    0:09:33  233313.4      0.23     436.2    6588.7                           3184463.2500      0.00  
    0:09:33  233313.4      0.23     436.2    6588.7                           3184463.2500      0.00  

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:09:38  233307.8      0.23     432.5    6588.7                           3184369.2500      0.00  
    0:09:47  231511.5      0.26     797.6    6582.4                           3092351.0000      0.00  
    0:09:49  231579.3      0.24     771.3    6582.4                           3095535.2500      0.00  
    0:09:51  231573.7      0.24     771.3    6582.4                           3095363.7500      0.00  
    0:09:52  231570.8      0.24     771.1    6582.4                           3095314.5000      0.00  
    0:09:53  231551.9      0.24     771.1    6523.6                           3094417.5000      0.00  
    0:09:55  231526.1      0.24     766.9    6523.6                           3093788.2500      0.00  
    0:09:55  231526.1      0.24     766.9    6523.6                           3093788.2500      0.00  
    0:10:01  231665.8      0.24     588.7    6523.6                           3102934.0000      0.00  
    0:10:05  231560.7      0.24     585.3    6523.6                           3099672.2500      0.00  
    0:10:09  231493.7      0.24     519.1    6523.6                           3097493.5000      0.00  
    0:10:14  231640.5      0.24     502.0    6136.5 cache_d/data_out[524]     3099498.5000      0.00  
    0:10:16  231920.1      0.23     475.9    5803.3 rob_i/mem_reg_0__pc_branch__23_/SE 3108217.0000      0.00  
    0:10:19  231966.3      0.22     446.1    5803.3 reservation_stations_i/branch_reservation_station_reg_3__ps2_v_/SE 3110604.2500      0.00  
    0:10:20  231975.4      0.22     442.5    5826.9 rob_i/mem_reg_14__pc_branch__28_/SE 3111118.5000      0.00  
    0:10:21  231976.7      0.22     441.0    5803.3 free_list_i/mem_reg_30__0_/SE 3111147.0000      0.00  
    0:10:22  232017.4      0.22     441.0    5608.0 cache_d/stage_2_i/data_out[146] 3111719.0000      0.00  
    0:10:22  232056.5      0.22     441.0    5420.4                           3112268.5000      0.00  
    0:10:26  232192.7      0.20     329.7    5422.7                           3118172.5000      0.00  
    0:10:26  232192.7      0.20     329.7    5422.7                           3118172.5000      0.00  
    0:10:28  232196.4      0.20     316.5    5422.7                           3118515.2500      0.00  
    0:10:28  232196.4      0.20     316.5    5422.7                           3118515.2500      0.00  
    0:10:28  232196.4      0.20     316.5    5422.7                           3118515.2500      0.00  
    0:10:35  232007.3      0.20     308.9    5425.2                           3108574.7500      0.00  
Loading db file '/srv/ece411ag/freepdk-45nm/stdcells.db'
Loading db file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db'
Loading db file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db'


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
    0:00:16  232017.4      0.20     308.9    5425.2                           3108737.2500      0.00  
    0:00:17  232099.9      0.20     294.3    5427.2                           3115133.0000      0.00  
    0:00:18  232091.1      0.20     294.3    5427.2                           3114899.7500      0.00  
    0:00:19  232086.6      0.20     294.3    5427.2                           3114790.0000      0.00  
    0:00:20  232079.4      0.20     294.3    5427.2                           3114585.2500      0.00  
    0:00:21  232076.7      0.20     294.3    5427.2                           3114512.7500      0.00  
    0:00:26  232082.3      0.20     294.3    5427.2                           3115549.5000      0.00  
Information: Complementing port 'read_halt_BAR' in design 'stage_2_0'.
	 The new name of the port is 'read_halt'. (OPT-319)

  Beginning Mapping Optimizations  (Ultra High effort)  (Incremental)
  -------------------------------

  Beginning Incremental Implementation Selection
  ----------------------------------------------
    0:01:04  235958.7      0.14     229.3    5467.8                           3184748.2500      0.00  

  Beginning Delay Optimization Phase
  ----------------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:04  235958.7      0.14     229.3    5467.8                           3184748.2500      0.00  
    0:01:10  237736.2      0.72    1400.9    5532.5                           3285875.5000      0.00  
    0:01:16  236358.3      0.70    1531.7    5468.3                           3213464.2500      0.00  
    0:01:16  236358.3      0.70    1531.7    5468.3                           3213464.2500      0.00  
    0:01:16  236372.1      0.60    1441.7    5468.3                           3214532.7500      0.00  
    0:01:16  236372.1      0.60    1441.7    5468.3                           3214532.7500      0.00  
    0:01:19  236299.0      0.13     216.2    5499.4                           3210166.7500      0.00  

  Beginning Delay Optimization
  ----------------------------
    0:01:19  236299.0      0.13     216.2    5499.4                           3210166.7500      0.00  
    0:01:19  236299.0      0.13     216.2    5499.4                           3210166.7500      0.00  
    0:01:19  236299.0      0.13     216.2    5499.4                           3210166.7500      0.00  
    0:01:19  236299.0      0.13     216.2    5499.4                           3210166.7500      0.00  
    0:01:19  236299.0      0.13     216.2    5499.4                           3210166.7500      0.00  
    0:01:22  236322.4      0.13     216.1    5526.6                           3210263.2500      0.00  


  Beginning Design Rule Fixing  (max_transition)  (max_fanout)  (max_capacitance)
  ----------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:24  236322.4      0.13     216.1    5526.6                           3210263.2500      0.00  
    0:01:27  236577.2      0.13     211.0    4996.8 rob_i/mem_reg_11__pc_branch__18_/SE 3216115.2500      0.00  
    0:01:30  236619.8      0.12     191.1    5000.0 phys_regfile_i/data_reg_9__19_/D 3217858.2500      0.00  
    0:01:32  236633.9      0.12     179.0    5000.0 rob_i/R_155/D             3218250.2500      0.00  
    0:01:34  236662.6      0.11     171.5    5063.1 phys_regfile_i/data_reg_12__19_/D 3219168.0000      0.00  
    0:01:37  236690.2      0.11     156.7    5138.5 reservation_stations_i/branch_reservation_station_reg_2__ps1_v_/SE 3220102.7500      0.00  
    0:01:39  236701.4      0.11     154.4    5138.5 rob_i/R_83/D              3220271.0000      0.00  
    0:01:42  236724.8      0.10     150.3    5166.4 rob_i/R_83/D              3220702.7500      0.00  
    0:01:44  236759.7      0.10     142.2    5304.9 rob_i/mem_reg_10__pc_branch__18_/SE 3222230.7500      0.00  
    0:01:46  236751.4      0.10     139.2    5166.4 rob_i/n2464               3221222.0000      0.00  
    0:01:48  236773.8      0.10     138.1    4829.9 phys_regfile_i/data_reg_15__23_/D 3220865.5000      0.00  
    0:01:50  236783.3      0.09     135.6    4829.9 rob_i/mem_reg_8__pc_branch__18_/SE 3221098.5000      0.00  
    0:01:52  236794.8      0.09     132.0    4829.9 rob_i/mem_reg_10__pc_branch__12_/SE 3221623.7500      0.00  
    0:01:54  236801.7      0.09     127.3    4829.9 reservation_stations_i/add_reservation_station_reg_2__ps2_v_/SE 3221739.2500      0.00  
    0:01:55  236846.1      0.13     162.1    4639.7 rst                       3222465.5000      0.00  
    0:01:58  236870.6      0.10     133.0    4639.7 R_1446/D                  3223367.0000      0.00  
    0:02:01  236878.8      0.09     138.5    4639.7 R_1446/D                  3223455.2500      0.00  
    0:02:02  236887.3      0.09     138.9    4635.9 cache_d/stage_2_i/data_out[372] 3223595.0000      0.00  
    0:02:03  236926.5      0.09     138.9    4452.5                           3224144.5000      0.00  
    0:02:10  236845.1      0.09     129.3    4452.5                           3220375.2500      0.00  
    0:02:10  236845.1      0.09     129.3    4452.5                           3220375.2500      0.00  
    0:02:10  236847.2      0.09     128.7    4452.5                           3220501.0000      0.00  
    0:02:10  236847.2      0.09     128.7    4452.5                           3220501.0000      0.00  
    0:02:13  236901.2      0.08      94.0    4457.5                           3222448.0000      0.00  
    0:02:13  236901.2      0.08      94.0    4457.5                           3222448.0000      0.00  
    0:02:14  236908.6      0.08      93.9    4457.5                           3222684.7500      0.00  
    0:02:14  236908.6      0.08      93.9    4457.5                           3222684.7500      0.00  
    0:02:14  236908.6      0.08      93.9    4457.5                           3222684.7500      0.00  
    0:02:16  236914.7      0.08      92.3    4457.5                           3222800.5000      0.00  
    0:02:17  236927.8      0.08      89.5    4457.5                           3223375.7500      0.00  
    0:02:18  236955.2      0.08      82.2    4457.5                           3224459.5000      0.00  
    0:02:21  236967.4      0.08      77.9    4457.5                           3224740.7500      0.00  
    0:02:27  236900.9      0.08      81.1    4459.9                           3221346.5000      0.00  
    0:02:28  236900.9      0.08      81.1    4459.9                           3221346.5000      0.00  
    0:02:28  236902.2      0.08      81.1    4459.9                           3221384.7500      0.00  
    0:02:28  236902.2      0.08      81.1    4459.9                           3221384.7500      0.00  
    0:02:29  236917.1      0.08      80.8    4459.9                           3222151.7500      0.00  
    0:02:29  236917.1      0.08      80.8    4459.9                           3222151.7500      0.00  
    0:02:29  236917.1      0.08      80.8    4459.9                           3222151.7500      0.00  
    0:02:29  236917.1      0.08      80.8    4459.9                           3222151.7500      0.00  
    0:02:29  236917.1      0.08      80.8    4459.9                           3222151.7500      0.00  
    0:02:30  236917.1      0.08      80.8    4459.9                           3222151.7500      0.00  

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:02:30  236917.1      0.08      80.8    4459.9                           3222151.7500      0.00  
    0:02:35  236885.2      0.08      80.7    4459.2                           3220249.7500      0.00  
    0:02:39  236646.9      0.08      73.9    4459.2                           3212190.5000      0.00  
    0:02:43  236142.0      0.08      72.8    4459.2                           3196384.2500      0.00  
    0:02:45  235924.2      0.08      72.2    4459.2                           3190230.2500      0.00  
    0:02:51  236002.6      0.08      68.1    4054.8 cache_d/data_out[143]     3186661.7500      0.00  
    0:02:54  236032.4      0.08      67.4    4045.6 rob_i/R_261/D             3187854.0000      0.00  
    0:03:00  236090.4      0.09      84.4    3853.4 R_1618/D                  3189164.5000      0.00  
    0:03:02  236108.8      0.08      80.3    3853.4 free_list_i/mem_reg_31__4_/SE 3189691.2500      0.00  
    0:03:03  236149.5      0.08      80.3    3668.1                           3190256.0000      0.00  
    0:03:08  235784.2      0.09     217.0    3676.7                           3174378.7500      0.00  
    0:03:11  235809.0      0.08     136.6    3676.7                           3175023.5000      0.00  
    0:03:13  235804.7      0.08     138.0    3676.7                           3174892.2500      0.00  
    0:03:15  235798.1      0.08     138.4    3676.7                           3174769.2500      0.00  
    0:03:15  235793.3      0.08     138.4    3676.7                           3174691.2500      0.00  
    0:03:15  235793.3      0.08     138.4    3676.7                           3174691.2500      0.00  
    0:03:19  235829.2      0.08     122.0    3992.1                           3176823.2500      0.00  
    0:03:19  235829.2      0.08     122.0    3992.1                           3176823.2500      0.00  
    0:03:20  235829.2      0.08     122.0    3992.1                           3176823.2500      0.00  
    0:03:20  235829.2      0.08     122.0    3992.1                           3176823.2500      0.00  
    0:03:20  235829.2      0.08     122.0    3992.1                           3176823.2500      0.00  
    0:03:20  235829.2      0.08     122.0    3992.1                           3176823.2500      0.00  
    0:03:22  235825.2      0.08     119.8    3992.1                           3176623.0000      0.00  
    0:03:24  235824.7      0.08     119.7    3992.1                           3176594.5000      0.00  
    0:03:26  235821.5      0.08     117.3    3992.1                           3176438.7500      0.00  
    0:03:27  235821.0      0.08     115.2    3992.1                           3176450.7500      0.00  
    0:03:27  235821.0      0.08     115.2    3992.1                           3176450.7500      0.00  
    0:03:27  235821.2      0.08     115.2    3992.1                           3176476.0000      0.00  
    0:03:35  235737.4      0.08     113.3    3992.1                           3172000.7500      0.00  
Loading db file '/srv/ece411ag/freepdk-45nm/stdcells.db'
Loading db file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db'
Loading db file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db'


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
    0:00:16  235737.4      0.08     113.0    3992.1                           3172000.7500      0.00  
    0:00:18  235927.9      0.08      91.7    3994.7                           3185969.0000      0.00  
    0:00:20  235926.8      0.08      91.7    3994.7                           3185946.2500      0.00  
    0:00:21  235926.3      0.08      91.7    3994.7                           3185932.0000      0.00  
    0:00:23  235924.7      0.08      91.7    3994.7                           3185915.0000      0.00  
    0:00:28  235926.6      0.08      90.5    3994.7                           3185994.2500      0.00  
Information: Complementing port 'read_halt' in design 'stage_2_0'.
	 The new name of the port is 'read_halt_BAR'. (OPT-319)

  Beginning Mapping Optimizations  (Ultra High effort)  (Incremental)
  -------------------------------

  Beginning Incremental Implementation Selection
  ----------------------------------------------
    0:01:08  238316.3      0.05      60.3    4104.6                           3228625.5000      0.00  

  Beginning Delay Optimization Phase
  ----------------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:08  238316.3      0.05      60.3    4104.6                           3228625.5000      0.00  
    0:01:14  238981.8      0.45     422.0    3789.1                           3266666.0000      0.00  
    0:01:20  238609.4      0.43     621.3    3695.3                           3248647.0000      0.00  
    0:01:21  238609.4      0.43     621.3    3695.3                           3248647.0000      0.00  
    0:01:21  238600.4      0.23     572.8    3695.3                           3248152.0000      0.00  
    0:01:21  238600.4      0.23     572.8    3695.3                           3248152.0000      0.00  
    0:01:22  238590.5      0.09      74.1    3697.3                           3247647.0000      0.00  

  Beginning Delay Optimization
  ----------------------------
    0:01:22  238590.5      0.09      74.1    3697.3                           3247647.0000      0.00  
    0:01:22  238590.5      0.09      74.1    3697.3                           3247647.0000      0.00  
    0:01:22  238590.5      0.09      74.1    3697.3                           3247647.0000      0.00  
    0:01:22  238590.5      0.09      74.1    3697.3                           3247647.0000      0.00  
    0:01:22  238590.5      0.09      74.1    3697.3                           3247647.0000      0.00  
    0:01:26  238539.5      0.09      74.2    3696.9                           3244251.0000      0.00  


  Beginning Design Rule Fixing  (max_transition)  (max_fanout)  (max_capacitance)
  ----------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:28  238539.5      0.09      74.2    3696.9                           3244251.0000      0.00  
    0:01:31  238793.0      0.07      67.5    3305.5 rob_i/mem_reg_2__pc_branch__11_/SE 3250892.5000      0.00  
    0:01:33  238792.2      0.05      57.4    3722.3 rob_i/mem_reg_14__pc_branch__3_/SE 3250634.2500      0.00  
    0:01:34  238801.8      0.05      46.5    3545.3 reservation_stations_i/n4337 3250785.0000      0.00  
    0:01:37  238879.2      0.07      54.5    2945.9 R_2419/D                  3251608.5000      0.00  
    0:01:40  238893.8      0.05      51.9    2945.9 free_list_i/mem_reg_16__1_/SE 3251727.0000      0.00  
    0:01:43  238906.3      0.05      43.9    2945.9 rob_i/R_1002/D            3252010.2500      0.00  
    0:01:45  238926.0      0.04      41.1    2945.9 rob_i/R_1002/D            3252463.2500      0.00  
    0:01:46  238938.7      0.04      40.2    2920.0 cache_d/stage_2_i/data_out[680] 3252658.0000      0.00  
    0:01:46  238973.1      0.04      40.2    2761.0                           3253140.2500      0.00  
    0:01:53  238844.6      0.04      52.3    2762.0                           3245934.7500      0.00  
    0:01:53  238844.6      0.04      52.3    2762.0                           3245934.7500      0.00  
    0:01:53  238844.6      0.04      52.3    2762.0                           3245934.7500      0.00  
    0:01:53  238844.6      0.04      52.3    2762.0                           3245934.7500      0.00  
    0:01:55  238892.2      0.04      20.9    2766.0                           3247399.7500      0.00  
    0:01:55  238892.2      0.04      20.9    2766.0                           3247399.7500      0.00  
    0:01:58  238953.6      0.04      19.2    2766.0                           3250040.0000      0.00  
    0:01:58  238953.6      0.04      19.2    2766.0                           3250040.0000      0.00  
    0:01:58  238953.6      0.04      19.2    2766.0                           3250040.0000      0.00  
    0:02:00  238970.9      0.03      17.7    2766.0                           3250235.2500      0.00  
    0:02:02  239003.1      0.03      15.8    2766.0                           3251497.7500      0.00  
    0:02:07  238913.2      0.03      17.4    2769.2                           3246507.7500      0.00  
    0:02:08  238913.2      0.03      17.4    2769.2                           3246507.7500      0.00  
    0:02:08  238914.8      0.03      17.5    2769.2                           3246621.5000      0.00  
    0:02:08  238914.8      0.03      17.5    2769.2                           3246621.5000      0.00  
    0:02:08  238917.5      0.03      17.3    2769.2                           3246747.7500      0.00  
    0:02:08  238917.5      0.03      17.3    2769.2                           3246747.7500      0.00  
    0:02:09  238917.5      0.03      17.3    2769.2                           3246747.7500      0.00  
    0:02:09  238917.5      0.03      17.3    2769.2                           3246747.7500      0.00  
    0:02:09  238917.5      0.03      17.3    2769.2                           3246747.7500      0.00  
    0:02:10  238917.5      0.03      17.3    2769.2                           3246747.7500      0.00  

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:02:10  238917.5      0.03      17.3    2769.2                           3246747.7500      0.00  
    0:02:14  238906.8      0.03      17.3    2769.2                           3246366.2500      0.00  
    0:02:17  238738.4      0.03      16.3    2769.2                           3241115.7500      0.00  
    0:02:21  238563.1      0.03      16.6    2768.9                           3237509.2500      0.00  
    0:02:23  238426.2      0.03      14.4    2766.7                           3233128.5000      0.00  
    0:02:30  238544.8      0.03      11.6    2399.3 rob_i/R_439/D             3231746.7500      0.00  
    0:02:31  238556.5      0.03      11.0    2419.8 reservation_stations_i/add_reservation_station_reg_1__ps1_v_/SE 3231612.5000      0.00  
    0:02:34  238564.5      0.03      10.6    2395.7 cache_d/stage_2_i/data_out[320] 3231722.7500      0.00  
    0:02:39  238620.6      0.03      38.8    2211.1 cache_d/stage_2_i/data_out[434] 3232910.7500      0.00  
    0:02:39  238659.7      0.03      38.8    2034.1                           3233460.2500      0.00  
    0:02:44  238242.9      0.06     112.5    2043.5                           3217466.7500      0.00  
    0:02:47  238266.3      0.05     106.2    2043.5                           3217985.0000      0.00  
    0:02:49  238246.6      0.05     108.0    2043.5                           3217087.0000      0.00  
    0:02:50  238241.0      0.05     108.3    2043.5                           3216986.5000      0.00  
    0:02:51  238237.8      0.05     108.3    2043.5                           3216897.2500      0.00  
    0:02:51  238237.8      0.05     108.3    2043.5                           3216897.2500      0.00  
    0:02:56  238290.5      0.04      57.8    2050.7                           3219877.7500      0.00  
    0:02:56  238290.5      0.04      57.8    2050.7                           3219877.7500      0.00  
    0:02:56  238290.5      0.04      57.8    2050.7                           3219877.7500      0.00  
    0:02:56  238290.5      0.04      57.8    2050.7                           3219877.7500      0.00  
    0:02:56  238290.5      0.04      57.8    2050.7                           3219877.7500      0.00  
    0:02:56  238290.5      0.04      57.8    2050.7                           3219877.7500      0.00  
    0:02:58  238287.6      0.04      56.2    2050.7                           3219761.7500      0.00  
    0:03:00  238284.6      0.04      54.8    2050.7                           3219715.5000      0.00  
    0:03:03  238283.1      0.04      54.5    2050.7                           3219721.2500      0.00  
    0:03:05  238282.8      0.04      53.3    2050.7                           3219736.5000      0.00  
    0:03:05  238282.8      0.04      53.3    2050.7                           3219736.5000      0.00  
    0:03:05  238288.4      0.04      51.2    2050.7                           3219999.5000      0.00  
    0:03:13  238180.4      0.04      51.1    2051.0                           3214296.5000      0.00  
Loading db file '/srv/ece411ag/freepdk-45nm/stdcells.db'
Loading db file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db'
Loading db file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db'


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
    0:00:16  238180.4      0.04      51.1    2051.0                           3214296.5000      0.00  
    0:00:18  238440.3      0.04      15.9    2056.3                           3232236.5000      0.00  
    0:00:20  238438.4      0.04      15.9    2056.3                           3232222.5000      0.00  
    0:00:22  238437.1      0.04      15.9    2056.3                           3232181.0000      0.00  
    0:00:23  238434.9      0.04      15.9    2056.3                           3232129.0000      0.00  

  Beginning Mapping Optimizations  (Ultra High effort)  (Incremental)
  -------------------------------

  Beginning Incremental Implementation Selection
  ----------------------------------------------
    0:01:06  236296.8      0.03      16.2    2124.9                           3196382.0000      0.00  

  Beginning Delay Optimization Phase
  ----------------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:06  236296.8      0.03      16.2    2124.9                           3196382.0000      0.00  
    0:01:11  237225.7      0.37     719.7    2087.2                           3245751.5000      0.00  
    0:01:17  236970.6      0.36     707.5    2066.0                           3230708.0000      0.00  
    0:01:17  236970.6      0.36     707.5    2066.0                           3230708.0000      0.00  
    0:01:17  236971.9      0.34     695.4    2066.0                           3230801.5000      0.00  
    0:01:17  236971.9      0.34     695.4    2066.0                           3230801.5000      0.00  
    0:01:20  236926.5      0.07      39.8    2100.0                           3228528.2500      0.00  

  Beginning Delay Optimization
  ----------------------------
    0:01:20  236926.5      0.07      39.8    2100.0                           3228528.2500      0.00  
    0:01:20  236926.5      0.07      39.8    2100.0                           3228528.2500      0.00  
    0:01:20  236926.5      0.07      39.8    2100.0                           3228528.2500      0.00  
    0:01:20  236926.5      0.07      39.8    2100.0                           3228528.2500      0.00  
    0:01:20  236926.5      0.07      39.8    2100.0                           3228528.2500      0.00  
    0:01:23  236857.0      0.07      41.8    2100.0                           3225048.2500      0.00  


  Beginning Design Rule Fixing  (max_transition)  (max_fanout)  (max_capacitance)
  ----------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:25  236857.0      0.07      41.8    2100.0                           3225048.2500      0.00  
    0:01:28  237123.0      0.06      39.8    1785.6 rob_i/mem_reg_4__pc_branch__19_/SE 3231877.5000      0.00  
    0:01:30  237127.5      0.05      29.3    1785.5 rob_i/R_326/D             3231720.2500      0.00  
    0:01:33  237214.3      0.05      28.8    1408.1 cache_i/stage_2_i/data_out[19] 3232836.2500      0.00  
    0:01:33  237243.8      0.05      28.8    1364.9                           3233251.2500      0.00  
    0:01:40  237166.4      0.05      68.7    1366.5                           3229450.0000      0.00  
    0:01:40  237166.4      0.05      68.7    1366.5                           3229450.0000      0.00  
    0:01:40  237167.2      0.05      68.7    1366.5                           3229446.7500      0.00  
    0:01:40  237167.2      0.05      68.7    1366.5                           3229446.7500      0.00  
    0:01:42  237206.0      0.03      14.1    1370.2                           3231558.2500      0.00  
    0:01:42  237206.0      0.03      14.1    1370.2                           3231558.2500      0.00  
    0:01:48  237214.3      0.03      12.9    1370.2                           3232037.7500      0.00  
    0:01:48  237214.3      0.03      12.9    1370.2                           3232037.7500      0.00  
    0:01:53  237214.3      0.03      12.9    1370.2                           3232037.7500      0.00  
    0:01:56  237236.1      0.03      11.8    1370.2                           3232717.2500      0.00  
    0:01:57  237249.9      0.03      10.4    1370.2                           3233112.0000      0.00  
    0:01:59  237270.1      0.03       9.3    1370.2                           3234082.7500      0.00  
    0:02:04  237223.3      0.03      11.2    1369.0                           3231294.5000      0.00  
    0:02:04  237223.3      0.03      11.2    1369.0                           3231294.5000      0.00  
    0:02:04  237223.6      0.03      11.2    1369.0                           3231330.0000      0.00  
    0:02:04  237223.6      0.03      11.2    1369.0                           3231330.0000      0.00  
    0:02:05  237235.3      0.03      11.2    1369.0                           3231807.2500      0.00  
    0:02:05  237235.3      0.03      11.2    1369.0                           3231807.2500      0.00  
    0:02:06  237235.3      0.03      11.2    1369.0                           3231807.2500      0.00  
    0:02:06  237235.3      0.03      11.2    1369.0                           3231807.2500      0.00  
    0:02:06  237235.3      0.03      11.2    1369.0                           3231807.2500      0.00  
    0:02:07  237235.3      0.03      11.2    1369.0                           3231807.2500      0.00  

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:02:07  237235.3      0.03      11.2    1369.0                           3231807.2500      0.00  
    0:02:12  237221.7      0.03      11.3    1369.0                           3231047.0000      0.00  
    0:02:14  237023.0      0.03      10.7    1369.0                           3225092.0000      0.00  
    0:02:18  236719.5      0.03      10.9    1369.0                           3212904.5000      0.00  
    0:02:20  236571.1      0.03      10.8    1368.3                           3206369.0000      0.00  
    0:02:26  236530.1      0.03       9.7    1255.4 rob_i/R_2623/D            3199861.5000      0.00  
    0:02:28  236609.9      0.03       9.7    1136.1                           3200962.5000      0.00  
    0:02:33  236254.5      0.05      66.5    1147.2                           3186643.0000      0.00  
    0:02:39  236275.5      0.04      52.4    1147.2                           3187170.5000      0.00  
    0:02:40  236269.7      0.04      52.1    1147.2                           3187091.0000      0.00  
    0:02:40  236269.7      0.04      52.1    1147.2                           3187091.0000      0.00  
    0:02:44  236366.0      0.03      39.2    1149.7                           3191529.5000      0.00  
    0:02:44  236366.0      0.03      39.2    1149.7                           3191529.5000      0.00  
    0:02:45  236366.0      0.03      39.2    1149.7                           3191529.5000      0.00  
    0:02:45  236366.0      0.03      39.2    1149.7                           3191529.5000      0.00  
    0:02:45  236366.0      0.03      39.2    1149.7                           3191529.5000      0.00  
    0:02:45  236366.0      0.03      39.2    1149.7                           3191529.5000      0.00  
    0:02:48  236360.9      0.03      35.1    1149.7                           3191263.2500      0.00  
    0:02:51  236359.3      0.03      34.6    1149.7                           3191240.7500      0.00  
    0:02:55  236358.3      0.03      34.1    1148.7                           3191206.7500      0.00  
    0:02:55  236356.9      0.03      34.1    1148.7                           3191201.2500      0.00  
    0:02:56  236356.9      0.03      34.1    1148.7                           3191201.2500      0.00  
    0:02:56  236363.3      0.03      31.5    1148.7                           3191581.7500      0.00  
    0:03:04  236235.9      0.03      30.9    1152.8                           3182531.7500      0.00  
Loading db file '/srv/ece411ag/freepdk-45nm/stdcells.db'
Loading db file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db'
Loading db file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db'


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
    0:00:16  236235.9      0.03      30.9    1152.8                           3182531.7500      0.00  
    0:00:18  236422.1      0.03       7.0    1161.1                           3195051.2500      0.00  
    0:00:19  236420.8      0.03       7.0    1161.1                           3195022.5000      0.00  
    0:00:21  236419.7      0.03       7.0    1161.1                           3195001.2500      0.00  
    0:00:23  236417.1      0.03       7.0    1161.1                           3194968.7500      0.00  

  Beginning Mapping Optimizations  (Ultra High effort)  (Incremental)
  -------------------------------

  Beginning Incremental Implementation Selection
  ----------------------------------------------
    0:00:49  236069.1      0.03       7.9    1304.3                           3189679.2500      0.00  

  Beginning Delay Optimization Phase
  ----------------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:00:49  236069.1      0.03       7.9    1304.3                           3189679.2500      0.00  
    0:00:54  236968.5      0.58     852.9    1304.3                           3237208.5000      0.00  
    0:01:00  236812.1      0.58     340.3    1210.8                           3227105.2500      0.00  
    0:01:00  236812.1      0.58     340.3    1210.8                           3227105.2500      0.00  
    0:01:00  236795.8      0.26     238.9    1206.7                           3225334.2500      0.00  
    0:01:00  236795.8      0.26     238.9    1206.7                           3225334.2500      0.00  
    0:01:02  236653.5      0.05      24.2    1328.2                           3217715.7500      0.00  

  Beginning Delay Optimization
  ----------------------------
    0:01:02  236653.5      0.05      24.2    1328.2                           3217715.7500      0.00  
    0:01:02  236653.5      0.05      24.2    1328.2                           3217715.7500      0.00  
    0:01:02  236653.5      0.05      24.2    1328.2                           3217715.7500      0.00  
    0:01:02  236653.5      0.05      24.2    1328.2                           3217715.7500      0.00  
    0:01:02  236653.5      0.05      24.2    1328.2                           3217715.7500      0.00  
    0:01:04  236615.2      0.05      26.1    1328.2                           3215936.5000      0.00  


  Beginning Design Rule Fixing  (max_transition)  (max_fanout)  (max_capacitance)
  ----------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:06  236615.2      0.05      26.1    1328.2                           3215936.5000      0.00  
    0:01:10  236730.1      0.05      19.5    1073.0 rob_i/mem_reg_13__pc_branch__19_/SE 3218591.7500      0.00  
    0:01:12  236737.1      0.03      10.5    1088.5 rob_i/mem_reg_13__pc_branch__19_/SE 3218473.2500      0.00  
    0:01:13  236761.5      0.03      10.2    1054.0 cache_i/data_out[828]     3219121.7500      0.00  
    0:01:16  236829.4      0.03      11.9     966.4 free_list_i/clk_gate_mem_reg_22__6_/latch/E 3220181.2500      0.00  
    0:01:17  236858.1      0.03       9.1     912.4                           3220066.0000      0.00  
    0:01:23  236610.2      0.03       8.5     913.2                           3206379.5000      0.00  
    0:01:24  236610.2      0.03       8.5     913.2                           3206379.5000      0.00  
    0:01:24  236610.7      0.03       8.4     913.2                           3206436.5000      0.00  
    0:01:24  236610.7      0.03       8.4     913.2                           3206436.5000      0.00  
    0:01:24  236620.6      0.03       8.3     913.2                           3206883.0000      0.00  
    0:01:24  236620.6      0.03       8.3     913.2                           3206883.0000      0.00  
    0:01:25  236621.1      0.03       8.3     913.2                           3206919.0000      0.00  
    0:01:25  236621.1      0.03       8.3     913.2                           3206919.0000      0.00  
    0:01:25  236621.1      0.03       8.3     913.2                           3206919.0000      0.00  
    0:01:27  236629.9      0.02       7.1     913.2                           3207030.0000      0.00  
    0:01:29  236644.8      0.02       6.2     913.2                           3207144.5000      0.00  
    0:01:31  236649.0      0.02       6.1     913.2                           3207280.2500      0.00  
    0:01:37  236552.7      0.02       6.3     914.1                           3202022.7500      0.00  
    0:01:37  236552.7      0.02       6.3     914.1                           3202022.7500      0.00  
    0:01:37  236552.7      0.02       6.3     914.1                           3202022.7500      0.00  
    0:01:37  236552.7      0.02       6.3     914.1                           3202022.7500      0.00  
    0:01:38  236554.6      0.02       5.6     924.1                           3202185.5000      0.00  
    0:01:38  236554.6      0.02       5.6     924.1                           3202185.5000      0.00  
    0:01:39  236554.6      0.02       5.6     924.1                           3202185.5000      0.00  
    0:01:39  236554.6      0.02       5.6     924.1                           3202185.5000      0.00  
    0:01:39  236554.6      0.02       5.6     924.1                           3202185.5000      0.00  
    0:01:40  236554.6      0.02       5.6     924.1                           3202185.5000      0.00  

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:40  236554.6      0.02       5.6     924.1                           3202185.5000      0.00  
    0:01:45  236517.3      0.02       5.6     924.1                           3199852.0000      0.00  
    0:01:47  236435.4      0.02       5.5     924.1                           3196557.5000      0.00  
    0:01:50  236368.1      0.02       5.6     923.1                           3194054.2500      0.00  
    0:01:53  236342.0      0.02       5.5     923.0                           3192737.2500      0.00  
    0:01:59  236376.1      0.02       5.0     805.7 rob_i/mem_reg_13__pc_branch__19_/SE 3190417.5000      0.00  
    0:02:01  236497.1      0.02       8.8     729.0 cache_d/stage_2_i/tag_out[94] 3193093.2500      0.00  
    0:02:01  236497.1      0.02       8.8     727.2                           3193021.7500      0.00  
    0:02:06  236154.5      0.04      32.1     743.0                           3179620.2500      0.00  
    0:02:09  236179.0      0.03      26.8     743.0                           3180186.7500      0.00  
    0:02:11  236177.1      0.03      26.8     743.0                           3180189.5000      0.00  
    0:02:13  236171.5      0.03      26.8     743.0                           3180091.7500      0.00  
    0:02:13  236170.7      0.03      26.8     743.0                           3180092.0000      0.00  
    0:02:13  236170.7      0.03      26.8     743.0                           3180092.0000      0.00  
    0:02:16  236204.0      0.03      17.8     743.0                           3181896.0000      0.00  
    0:02:16  236204.0      0.03      17.8     743.0                           3181896.0000      0.00  
    0:02:16  236204.0      0.03      17.8     743.0                           3181896.0000      0.00  
    0:02:16  236204.0      0.03      17.8     743.0                           3181896.0000      0.00  
    0:02:16  236204.0      0.03      17.8     743.0                           3181896.0000      0.00  
    0:02:16  236204.0      0.03      17.8     743.0                           3181896.0000      0.00  
    0:02:17  236203.7      0.03      17.7     743.0                           3181919.5000      0.00  
    0:02:19  236196.3      0.03      16.9     743.0                           3181596.0000      0.00  
    0:02:20  236192.3      0.03      15.6     743.0                           3181407.2500      0.00  
    0:02:20  236192.3      0.03      15.6     743.0                           3181407.2500      0.00  
    0:02:20  236195.7      0.03      13.5     743.0                           3181591.2500      0.00  
    0:02:28  236106.9      0.03      13.4     747.4                           3175832.5000      0.00  
Loading db file '/srv/ece411ag/freepdk-45nm/stdcells.db'
Loading db file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db'
Loading db file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db'


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
    0:00:16  236106.9      0.03      13.4     747.4                           3175832.5000      0.00  
    0:00:18  236299.8      0.03       7.8     750.1                           3188669.5000      0.00  
    0:00:20  236296.0      0.03       7.8     750.1                           3188589.2500      0.00  
    0:00:21  236295.0      0.03       7.8     750.1                           3188561.2500      0.00  
    0:00:23  236294.2      0.03       7.8     750.1                           3188538.0000      0.00  

  Beginning Mapping Optimizations  (Ultra High effort)  (Incremental)
  -------------------------------

  Beginning Incremental Implementation Selection
  ----------------------------------------------
    0:00:50  236431.2      0.02       6.4     768.5                           3191913.7500      0.00  

  Beginning Delay Optimization Phase
  ----------------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:00:50  236431.2      0.02       6.4     768.5                           3191913.7500      0.00  
    0:00:55  237180.2      1.32    5951.4     763.8                           3231806.5000      0.00  
    0:01:00  236737.6      1.32    5475.6     754.3                           3206797.7500      0.00  
    0:01:01  236737.6      1.32    5475.6     754.3                           3206797.7500      0.00  
    0:01:01  236723.0      0.74    2414.8     762.6                           3206211.2500      0.00  
    0:01:01  236723.0      0.74    2414.8     762.6                           3206211.2500      0.00  
    0:01:03  236709.7      0.02       5.3     791.8                           3207021.7500      0.00  

  Beginning Delay Optimization
  ----------------------------
    0:01:04  236709.7      0.02       5.3     791.8                           3207021.7500      0.00  
    0:01:04  236709.7      0.02       5.3     791.8                           3207021.7500      0.00  
    0:01:04  236709.7      0.02       5.3     791.8                           3207021.7500      0.00  
    0:01:04  236709.7      0.02       5.3     791.8                           3207021.7500      0.00  
    0:01:04  236709.7      0.02       5.3     791.8                           3207021.7500      0.00  
    0:01:05  236669.0      0.02       5.3     791.8                           3204365.7500      0.00  


  Beginning Design Rule Fixing  (max_transition)  (max_fanout)  (max_capacitance)
  ----------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:07  236669.0      0.02       5.3     791.8                           3204365.7500      0.00  
    0:01:10  236714.4      0.02       5.0     735.7 rob_i/mem_reg_10__pc_branch__15_/SE 3204852.5000      0.00  
    0:01:11  236719.2      0.02       4.4     734.3 rob_i/n2593               3205006.7500      0.00  
    0:01:13  236704.6      0.02       4.1     730.7 cache_d/stage_2_i/tag_out[69] 3204051.0000      0.00  
    0:01:14  236709.9      0.02       4.5     727.2                           3204175.2500      0.00  
    0:01:21  236625.9      0.02       4.7     727.7                           3199800.0000      0.00  
    0:01:21  236625.9      0.02       4.7     727.7                           3199800.0000      0.00  
    0:01:21  236626.1      0.02       4.7     727.7                           3199825.2500      0.00  
    0:01:21  236626.1      0.02       4.7     727.7                           3199825.2500      0.00  
    0:01:22  236680.7      0.02       3.0     745.7                           3201465.7500      0.00  
    0:01:22  236680.7      0.02       3.0     745.7                           3201465.7500      0.00  
    0:01:24  236701.1      0.01       2.6     821.8                           3202484.2500      0.00  
    0:01:24  236701.1      0.01       2.6     821.8                           3202484.2500      0.00  
    0:01:24  236701.1      0.01       2.6     821.8                           3202484.2500      0.00  
    0:01:25  236720.3      0.01       2.1     821.8                           3202963.0000      0.00  
    0:01:27  236736.3      0.01       1.9     821.8                           3203518.2500      0.00  
    0:01:33  236694.8      0.01       2.4     821.7                           3201583.7500      0.00  
    0:01:33  236694.8      0.01       2.4     821.7                           3201583.7500      0.00  
    0:01:33  236696.4      0.01       2.4     821.7                           3201679.7500      0.00  
    0:01:33  236696.4      0.01       2.4     821.7                           3201679.7500      0.00  
    0:01:34  236704.9      0.01       2.0     821.7                           3202124.7500      0.00  
    0:01:34  236704.9      0.01       2.0     821.7                           3202124.7500      0.00  
    0:01:34  236704.9      0.01       2.0     821.7                           3202124.7500      0.00  
    0:01:34  236704.9      0.01       2.0     821.7                           3202124.7500      0.00  
    0:01:34  236704.9      0.01       2.0     821.7                           3202124.7500      0.00  
    0:01:35  236704.9      0.01       2.0     821.7                           3202124.7500      0.00  

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:36  236704.9      0.01       2.0     821.7                           3202124.7500      0.00  
    0:01:41  236696.4      0.01       2.0     821.7                           3201592.7500      0.00  
    0:01:43  236658.9      0.01       2.0     821.7                           3200899.2500      0.00  
    0:01:48  236602.2      0.01       1.9     821.7                           3199174.2500      0.00  
    0:01:50  236551.7      0.01       1.9     821.7                           3197639.7500      0.00  
    0:01:55  236499.5      0.01       1.7     727.2 rob_i/R_913/D             3193239.5000      0.00  
    0:01:56  236499.5      0.01       1.7     727.2                           3193239.5000      0.00  
    0:02:01  236304.5      0.03      14.1     738.3                           3186137.5000      0.00  
    0:02:03  236343.4      0.02       7.8     738.3                           3187289.0000      0.00  
    0:02:04  236342.8      0.02       7.9     738.3                           3187274.5000      0.00  
    0:02:06  236330.9      0.02       7.8     738.3                           3186990.7500      0.00  
    0:02:08  236329.5      0.02       7.8     738.3                           3186976.0000      0.00  
    0:02:08  236329.5      0.02       7.8     738.3                           3186976.0000      0.00  
    0:02:12  236381.4      0.01       2.2    1126.8                           3189858.0000      0.00  
    0:02:12  236381.4      0.01       2.2    1126.8                           3189858.0000      0.00  
    0:02:12  236381.4      0.01       2.2    1126.8                           3189858.0000      0.00  
    0:02:12  236381.4      0.01       2.2    1126.8                           3189858.0000      0.00  
    0:02:12  236381.4      0.01       2.2    1126.8                           3189858.0000      0.00  
    0:02:12  236381.4      0.01       2.2    1126.8                           3189858.0000      0.00  
    0:02:14  236375.0      0.01       1.8    1126.8                           3189520.2500      0.00  
    0:02:14  236375.0      0.01       1.8    1126.8                           3189520.2500      0.00  
    0:02:14  236375.0      0.01       1.8    1126.8                           3189520.2500      0.00  
    0:02:23  236218.6      0.01       1.8    1126.8                           3178347.2500      0.00  
Loading db file '/srv/ece411ag/freepdk-45nm/stdcells.db'
Loading db file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db'
Loading db file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db'


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
    0:00:16  236218.6      0.01       1.8    1126.8                           3178347.2500      0.00  
    0:00:17  236302.7      0.01       1.4    1127.8                           3184430.5000      0.00  
    0:00:19  236299.5      0.01       1.4    1127.8                           3184375.0000      0.00  
    0:00:21  236298.7      0.01       1.4    1127.8                           3184353.7500      0.00  
    0:00:22  236297.1      0.01       1.4    1127.8                           3184335.7500      0.00  

  Beginning Mapping Optimizations  (Ultra High effort)  (Incremental)
  -------------------------------

  Beginning Incremental Implementation Selection
  ----------------------------------------------
    0:00:54  236155.6      0.01       1.2    1165.2                           3182374.5000      0.00  

  Beginning Delay Optimization Phase
  ----------------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:00:54  236155.6      0.01       1.2    1165.2                           3182374.5000      0.00  
    0:00:59  237170.9      0.97     478.7     812.7                           3235972.0000      0.00  
    0:01:04  236596.1      0.96     119.5     793.7                           3204228.5000      0.00  
    0:01:04  236596.1      0.96     119.5     793.7                           3204228.5000      0.00  
    0:01:04  236602.2      0.91     107.8     794.3                           3204734.2500      0.00  
    0:01:04  236602.2      0.91     107.8     794.3                           3204734.2500      0.00  
    0:01:08  236595.3      0.01       0.7     811.7                           3205196.0000      0.00  

  Beginning Delay Optimization
  ----------------------------
    0:01:08  236595.3      0.01       0.7     811.7                           3205196.0000      0.00  
    0:01:08  236595.3      0.01       0.7     811.7                           3205196.0000      0.00  
    0:01:08  236595.3      0.01       0.7     811.7                           3205196.0000      0.00  
    0:01:08  236595.3      0.01       0.7     811.7                           3205196.0000      0.00  
    0:01:08  236595.3      0.01       0.7     811.7                           3205196.0000      0.00  
    0:01:09  236589.2      0.01       0.7     811.7                           3205116.5000      0.00  


  Beginning Design Rule Fixing  (max_transition)  (max_fanout)  (max_capacitance)
  ----------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:11  236589.2      0.01       0.7     811.7                           3205116.5000      0.00  
    0:01:14  236653.8      0.01       0.4     730.2 memory_queue_i/mem_reg_12__addr__30_/SE 3206953.5000      0.00  
    0:01:15  236664.4      0.00       0.4     730.2 rob_i/R_5612/D            3207436.0000      0.00  
    0:01:17  236666.6      0.03       5.3     727.2 rst                       3207436.7500      0.00  
    0:01:20  236687.1      0.01       0.5     727.2 R_1856/D                  3207887.7500      0.00  
    0:01:21  236689.4      0.00       0.4     727.2                           3207981.7500      0.00  
    0:01:28  236562.8      0.01       0.4     728.3                           3201291.0000      0.00  
    0:01:28  236562.8      0.01       0.4     728.3                           3201291.0000      0.00  
    0:01:28  236562.8      0.01       0.4     728.3                           3201291.0000      0.00  
    0:01:28  236562.8      0.01       0.4     728.3                           3201291.0000      0.00  
    0:01:31  236610.7      0.00       0.0     732.3                           3203209.5000      0.00  
    0:01:31  236610.7      0.00       0.0     732.3                           3203209.5000      0.00  
    0:01:32  236629.1      0.00       0.0     732.3                           3204001.2500      0.00  
    0:01:32  236629.1      0.00       0.0     732.3                           3204001.2500      0.00  
    0:01:33  236629.1      0.00       0.0     732.3                           3204001.2500      0.00  
    0:01:35  236630.9      0.00       0.0     732.3                           3204059.2500      0.00  
    0:01:40  236565.8      0.00       0.0     732.3                           3199675.2500      0.00  
    0:01:40  236565.8      0.00       0.0     732.3                           3199675.2500      0.00  
    0:01:40  236565.8      0.00       0.0     732.3                           3199675.2500      0.00  
    0:01:40  236565.8      0.00       0.0     732.3                           3199675.2500      0.00  
    0:01:40  236567.4      0.00       0.0     732.3                           3199788.7500      0.00  
    0:01:40  236567.4      0.00       0.0     732.3                           3199788.7500      0.00  
    0:01:40  236567.4      0.00       0.0     732.3                           3199788.7500      0.00  
    0:01:40  236567.4      0.00       0.0     732.3                           3199788.7500      0.00  
    0:01:40  236567.4      0.00       0.0     732.3                           3199788.7500      0.00  
    0:01:41  236567.4      0.00       0.0     732.3                           3199788.7500      0.00  

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:41  236567.4      0.00       0.0     732.3                           3199788.7500      0.00  
    0:01:46  236540.0      0.00       0.0     732.3                           3198090.2500      0.00  
    0:01:48  236385.4      0.00       0.0     732.3                           3190648.0000      0.00  
    0:01:50  236360.1      0.00       0.0     732.3                           3190057.0000      0.00  
    0:01:54  236266.2      0.00       0.0     732.3                           3187065.2500      0.00  
    0:02:02  236218.1      0.00       0.0     729.2 rob_i/rst                 3182514.0000      0.00  
    0:02:06  236277.4      0.00       0.0     727.2 R_2487/D                  3185547.2500      0.00  
    0:02:07  236277.4      0.00       0.0     727.2                           3185547.2500      0.00  
    0:02:12  236030.8      0.03       6.3     740.0                           3176025.5000      0.00  
    0:02:16  236064.3      0.01       2.0     740.0                           3177305.5000      0.00  
    0:02:17  236063.3      0.01       2.1     740.0                           3177280.5000      0.00  
    0:02:19  236060.9      0.01       2.1     740.0                           3177218.2500      0.00  
    0:02:20  236052.1      0.01       2.0     740.0                           3177026.0000      0.00  
    0:02:20  236052.1      0.01       2.0     740.0                           3177026.0000      0.00  
    0:02:20  236052.1      0.01       2.0     740.0                           3177026.0000      0.00  
    0:02:24  236095.2      0.00       0.3     748.0                           3179306.0000      0.00  
    0:02:24  236095.2      0.00       0.3     748.0                           3179306.0000      0.00  
    0:02:24  236095.2      0.00       0.3     748.0                           3179306.0000      0.00  
    0:02:24  236095.2      0.00       0.3     748.0                           3179306.0000      0.00  
    0:02:24  236095.2      0.00       0.3     748.0                           3179306.0000      0.00  
    0:02:24  236095.2      0.00       0.3     748.0                           3179306.0000      0.00  
    0:02:25  236089.1      0.00       0.2     748.0                           3179054.0000      0.00  
    0:02:25  236089.1      0.00       0.2     748.0                           3179054.0000      0.00  
    0:02:25  236090.1      0.00       0.2     748.0                           3179075.7500      0.00  
    0:02:33  235975.5      0.00       0.2     748.0                           3170638.0000      0.00  
Loading db file '/srv/ece411ag/freepdk-45nm/stdcells.db'
Loading db file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db'
Loading db file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db'


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
Date:        Tue Dec  3 08:12:11 2024
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
Writing verilog file '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth/outputs/cpu.gate.v'.
1
exit

Memory usage for this session 743 Mbytes.
Memory usage for this session including child processes 1111 Mbytes.
CPU usage for this session 3302 seconds ( 0.92 hours ).
Elapsed time for this session 1768 seconds ( 0.49 hours ).

Thank you...
rm -f  *.log
rm -f  default.svf
rm -rf work
make[1]: Leaving directory '/srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/synth'
 
****************************************
Report : timing
        -path full
        -delay max
        -max_paths 1
Design : cpu
Version: R-2020.09-SP4
Date   : Tue Dec  3 08:12:11 2024
****************************************

 # A fanout number of 1000 was used for high fanout net computations.

Operating Conditions: typical   Library: NangateOpenCellLibrary
Wire Load Model Mode: enclosed

  Startpoint: reservation_stations_i/mem_reservation_station_reg_0__ps1_v_
              (rising edge-triggered flip-flop clocked by my_clk)
  Endpoint: memory_queue_i/mem_reg_3__addr__29_
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
  memory_queue       5K_hvratio_1_1        NangateOpenCellLibrary

  Point                                                   Incr       Path
  --------------------------------------------------------------------------
  clock my_clk (rise edge)                            0.000000   0.000000
  clock network delay (ideal)                         0.000000   0.000000
  reservation_stations_i/mem_reservation_station_reg_0__ps1_v_/CK (SDFF_X1)
                                                      0.000000   0.000000 r
  reservation_stations_i/mem_reservation_station_reg_0__ps1_v_/Q (SDFF_X1)
                                                      0.062421   0.062421 r
  reservation_stations_i/U899/ZN (AND2_X1)            0.041943   0.104363 r
  reservation_stations_i/U900/ZN (NAND2_X1)           0.024678   0.129041 f
  reservation_stations_i/U95/ZN (AND2_X2)             0.040379   0.169421 f
  reservation_stations_i/U58/ZN (AND2_X2)             0.049355   0.218775 f
  reservation_stations_i/U577/ZN (NAND2_X1)           0.037917   0.256693 r
  reservation_stations_i/U471/ZN (NAND4_X1)           0.060558   0.317251 f
  reservation_stations_i/mem_ps1[5] (reservation_station)
                                                      0.000000   0.317251 f
  phys_regfile_i/rs1_mem[5] (phys_regfile)            0.000000   0.317251 f
  phys_regfile_i/U6437/ZN (INV_X1)                    0.052917   0.370168 r
  phys_regfile_i/U677/ZN (OR3_X1)                     0.052911   0.423080 r
  phys_regfile_i/U3937/ZN (INV_X1)                    0.035703   0.458782 f
  phys_regfile_i/U4068/ZN (AND2_X1)                   0.047624   0.506407 f
  phys_regfile_i/U9307/ZN (NAND2_X1)                  0.028206   0.534613 r
  phys_regfile_i/U9308/ZN (AND2_X1)                   0.036349   0.570962 r
  phys_regfile_i/U9311/ZN (AND4_X1)                   0.058778   0.629740 r
  phys_regfile_i/U9322/ZN (AND4_X1)                   0.055597   0.685337 r
  phys_regfile_i/U12748/ZN (AND3_X1)                  0.048811   0.734148 r
  phys_regfile_i/U9350/ZN (AOI21_X1)                  0.033230   0.767378 f
  phys_regfile_i/rs1_v_mem[1] (phys_regfile)          0.000000   0.767378 f
  execute_i/rs1_v_mem[1] (execute)                    0.000000   0.767378 f
  execute_i/U3607/ZN (OAI21_X1)                       0.060495   0.827873 r
  execute_i/U344/ZN (NAND2_X1)                        0.034358   0.862231 f
  execute_i/U2149/ZN (NAND2_X1)                       0.035038   0.897269 r
  execute_i/U3550/ZN (NAND3_X1)                       0.037339   0.934608 f
  execute_i/U1969/ZN (NAND2_X1)                       0.035651   0.970259 r
  execute_i/U4328/ZN (NAND3_X1)                       0.036731   1.006990 f
  execute_i/U2278/ZN (NAND2_X1)                       0.030566   1.037556 r
  execute_i/U137/ZN (AND3_X2)                         0.051545   1.089101 r
  execute_i/U282/ZN (OAI21_X1)                        0.030746   1.119848 f
  execute_i/U4376/CO (FA_X1)                          0.094425   1.214272 f
  execute_i/U1963/ZN (NAND2_X1)                       0.037014   1.251287 r
  execute_i/U1367/ZN (NAND3_X1)                       0.042741   1.294028 f
  execute_i/U2156/ZN (NAND2_X1)                       0.031617   1.325645 r
  execute_i/U2158/ZN (NAND3_X1)                       0.036212   1.361857 f
  execute_i/U2629/ZN (NAND2_X1)                       0.033480   1.395337 r
  execute_i/U46/ZN (NAND2_X1)                         0.027557   1.422894 f
  execute_i/U45/ZN (NAND2_X1)                         0.027394   1.450289 r
  execute_i/U4341/ZN (AND2_X1)                        0.045786   1.496075 r
  execute_i/U2631/ZN (OAI211_X1)                      0.036584   1.532658 f
  execute_i/U2380/ZN (NAND2_X1)                       0.034247   1.566905 r
  execute_i/U2381/ZN (AND2_X2)                        0.046316   1.613221 r
  execute_i/U2030/ZN (NAND2_X1)                       0.028303   1.641524 f
  execute_i/U217/ZN (XNOR2_X1)                        0.057893   1.699417 r
  execute_i/U214/ZN (AND2_X4)                         0.074786   1.774203 r
  execute_i/calculated_address[29] (execute)          0.000000   1.774203 r
  memory_queue_i/addr[29] (memory_queue)              0.000000   1.774203 r
  memory_queue_i/U2870/ZN (NAND2_X1)                  0.039572   1.813775 f
  memory_queue_i/U641/ZN (AND3_X1)                    0.042875   1.856650 f
  memory_queue_i/mem_reg_3__addr__29_/SE (SDFF_X1)    0.012932   1.869582 f
  data arrival time                                              1.869582

  clock my_clk (rise edge)                            1.950000   1.950000
  clock network delay (ideal)                         0.000000   1.950000
  memory_queue_i/mem_reg_3__addr__29_/CK (SDFF_X1)    0.000000   1.950000 r
  library setup time                                  -0.083803  1.866197
  data required time                                             1.866197
  --------------------------------------------------------------------------
  data required time                                             1.866197
  data arrival time                                              -1.869582
  --------------------------------------------------------------------------
  slack (VIOLATED)                                               -0.003386


1
 
****************************************
Report : area
Design : cpu
Version: R-2020.09-SP4
Date   : Tue Dec  3 08:12:07 2024
****************************************

Information: Updating design information... (UID-85)
Library(s) Used:

    NangateOpenCellLibrary (File: /srv/ece411ag/freepdk-45nm/stdcells.db)
    mp_cache_data_array_TT_1p0V_25C_lib (File: /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db)
    mp_cache_tag_array_TT_1p0V_25C_lib (File: /srv/tmp/939920a5-cabf-42a5-a24b-b3c42d39635d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db)

Number of ports:                        12411
Number of nets:                        108459
Number of cells:                        97014
Number of combinational cells:          83648
Number of sequential cells:             11519
Number of macros/black boxes:              16
Number of buf/inv:                       9896
Number of references:                     217

Combinational area:              92174.320695
Buf/Inv area:                     6751.877963
Noncombinational area:           63960.497685
Macro/Black Box area:            79840.682617
Net Interconnect area:      undefined  (Wire load has zero net area)

Total cell area:                235975.500997
Total area:                 undefined

Hierarchical area distribution
------------------------------

                                  Global cell area               Local cell area
                                  --------------------  ---------------------------------- 
Hierarchical cell                 Absolute     Percent  Combi-      Noncombi-   Black-
                                  Total        Total    national    national    boxes       Design
--------------------------------  -----------  -------  ----------  ----------  ----------  ----------------------------------------------------------
cpu                               235975.5010    100.0  12293.4561  11261.1100  79840.6826  cpu
arbiter/clk_gate_d_dfp_read_reg_reg
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cache_arbiter_3
arbiter/clk_gate_full_burst_reg_reg_255_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cache_arbiter_2
arbiter/clk_gate_missed_i_addr_reg_reg_31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cache_arbiter_1
arbiter/clk_gate_missed_rw_reg_reg
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cache_arbiter_0
arbiter/clk_gate_state_reg_31_         3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cache_arbiter_4
cache_adapter_i/clk_gate_cache_wdata_reg_reg_127_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cacheline_adapter_3
cache_adapter_i/clk_gate_cache_wdata_reg_reg_191_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cacheline_adapter_2
cache_adapter_i/clk_gate_cache_wdata_reg_reg_63_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cacheline_adapter_4
cache_adapter_i/clk_gate_mem_wdata_reg_reg_255_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cacheline_adapter_0
cache_d/arrays_0__valid_array/clk_gate_internal_array_reg_0__0_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_valid_array_0_3
cache_d/arrays_1__valid_array/clk_gate_internal_array_reg_0__0_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_valid_array_0_2
cache_d/arrays_2__valid_array/clk_gate_internal_array_reg_0__0_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_valid_array_0_1
cache_d/arrays_3__valid_array/clk_gate_internal_array_reg_0__0_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_valid_array_0_0
cache_d/lru_array/clk_gate_internal_array_reg_0__2_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_0
cache_d/lru_array/clk_gate_internal_array_reg_10__2_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_10
cache_d/lru_array/clk_gate_internal_array_reg_11__2_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_11
cache_d/lru_array/clk_gate_internal_array_reg_12__2_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_12
cache_d/lru_array/clk_gate_internal_array_reg_13__2_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_13
cache_d/lru_array/clk_gate_internal_array_reg_14__2_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_14
cache_d/lru_array/clk_gate_internal_array_reg_15__2_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_15
cache_d/lru_array/clk_gate_internal_array_reg_1__2_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_1
cache_d/lru_array/clk_gate_internal_array_reg_2__2_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_2
cache_d/lru_array/clk_gate_internal_array_reg_3__2_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_3
cache_d/lru_array/clk_gate_internal_array_reg_4__2_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_4
cache_d/lru_array/clk_gate_internal_array_reg_5__2_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_5
cache_d/lru_array/clk_gate_internal_array_reg_6__2_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_6
cache_d/lru_array/clk_gate_internal_array_reg_7__2_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_7
cache_d/lru_array/clk_gate_internal_array_reg_8__2_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_8
cache_d/lru_array/clk_gate_internal_array_reg_9__2_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_9
cache_d/stage_2_i                   2778.9020      1.2   2778.9020      0.0000      0.0000  stage_2_0
cache_i/arrays_0__valid_array/clk_gate_internal_array_reg_0__0_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_valid_array_4_3
cache_i/arrays_1__valid_array/clk_gate_internal_array_reg_0__0_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_valid_array_4_2
cache_i/arrays_2__valid_array/clk_gate_internal_array_reg_0__0_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_valid_array_4_1
cache_i/arrays_3__valid_array/clk_gate_internal_array_reg_0__0_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_valid_array_4_0
cache_i/lru_array/clk_gate_internal_array_reg_0__2_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_16
cache_i/lru_array/clk_gate_internal_array_reg_10__2_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_26
cache_i/lru_array/clk_gate_internal_array_reg_11__2_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_27
cache_i/lru_array/clk_gate_internal_array_reg_12__2_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_28
cache_i/lru_array/clk_gate_internal_array_reg_13__2_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_29
cache_i/lru_array/clk_gate_internal_array_reg_14__2_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_30
cache_i/lru_array/clk_gate_internal_array_reg_15__2_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_31
cache_i/lru_array/clk_gate_internal_array_reg_1__2_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_17
cache_i/lru_array/clk_gate_internal_array_reg_2__2_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_18
cache_i/lru_array/clk_gate_internal_array_reg_3__2_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_19
cache_i/lru_array/clk_gate_internal_array_reg_4__2_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_20
cache_i/lru_array/clk_gate_internal_array_reg_5__2_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_21
cache_i/lru_array/clk_gate_internal_array_reg_6__2_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_22
cache_i/lru_array/clk_gate_internal_array_reg_7__2_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_23
cache_i/lru_array/clk_gate_internal_array_reg_8__2_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_24
cache_i/lru_array/clk_gate_internal_array_reg_9__2_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_lru_array_0_25
cache_i/stage_2_i                   2553.0680      1.1   2553.0680      0.0000      0.0000  stage_2_1
clk_gate_cache_d/stage_reg_reg_offset__2_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cpu_0_1
clk_gate_cache_i/stage_reg_reg_rmask__0_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cpu_0_0
clk_gate_pc_reg_31_                    3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cpu_0
execute_i                           9496.9980      4.0   7636.5940   1828.4840      0.0000  execute
execute_i/clk_gate_rd_div_reg_reg_4_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_execute_1
execute_i/clk_gate_rd_mul_reg_reg_4_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_execute_0
execute_i/fu_div_i/U1/clk_gate_b_reg_reg
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_execute_DW_div_seq_J14_0_0
execute_i/fu_div_i/U1/clk_gate_shf_reg_reg[0]
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_execute_DW_div_seq_J14_0_1
execute_i/fu_div_i/clk_gate_decode_info_reg_reg_funct3__2_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_fu_div_rem
execute_i/fu_mul_i/U1/clk_gate_b_reg_reg
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_execute_DW_mult_seq_J14_0_1
execute_i/fu_mul_i/U1/clk_gate_mac_reg_reg
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_execute_DW_mult_seq_J14_0_0
execute_i/fu_mul_i/clk_gate_decode_info_reg_reg_funct3__2_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_fu_mult
free_list_i/clk_gate_head_reg_reg_5_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_33
free_list_i/clk_gate_mem_reg_0__6_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_0
free_list_i/clk_gate_mem_reg_10__6_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_10
free_list_i/clk_gate_mem_reg_11__6_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_11
free_list_i/clk_gate_mem_reg_12__6_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_12
free_list_i/clk_gate_mem_reg_13__6_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_13
free_list_i/clk_gate_mem_reg_14__6_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_14
free_list_i/clk_gate_mem_reg_15__6_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_15
free_list_i/clk_gate_mem_reg_16__6_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_16
free_list_i/clk_gate_mem_reg_17__6_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_17
free_list_i/clk_gate_mem_reg_18__6_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_18
free_list_i/clk_gate_mem_reg_19__6_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_19
free_list_i/clk_gate_mem_reg_1__6_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_1
free_list_i/clk_gate_mem_reg_20__6_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_20
free_list_i/clk_gate_mem_reg_21__6_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_21
free_list_i/clk_gate_mem_reg_22__6_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_22
free_list_i/clk_gate_mem_reg_23__6_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_23
free_list_i/clk_gate_mem_reg_24__6_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_24
free_list_i/clk_gate_mem_reg_25__6_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_25
free_list_i/clk_gate_mem_reg_26__6_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_26
free_list_i/clk_gate_mem_reg_27__6_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_27
free_list_i/clk_gate_mem_reg_28__6_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_28
free_list_i/clk_gate_mem_reg_29__6_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_29
free_list_i/clk_gate_mem_reg_2__6_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_2
free_list_i/clk_gate_mem_reg_30__6_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_30
free_list_i/clk_gate_mem_reg_31__6_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_31
free_list_i/clk_gate_mem_reg_3__6_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_3
free_list_i/clk_gate_mem_reg_4__6_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_4
free_list_i/clk_gate_mem_reg_5__6_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_5
free_list_i/clk_gate_mem_reg_6__6_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_6
free_list_i/clk_gate_mem_reg_7__6_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_7
free_list_i/clk_gate_mem_reg_8__6_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_8
free_list_i/clk_gate_mem_reg_9__6_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_9
free_list_i/clk_gate_tail_reg_reg_5_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_free_list_32
memory_queue_i                     17201.1561      7.3   7770.1261   9295.3700      0.0000  memory_queue
memory_queue_i/clk_gate_head_reg_reg_3_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_49
memory_queue_i/clk_gate_mem_reg_0__addr_ready_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_47
memory_queue_i/clk_gate_mem_reg_0__valid_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_48
memory_queue_i/clk_gate_mem_reg_10__addr_ready_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_17
memory_queue_i/clk_gate_mem_reg_10__valid_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_18
memory_queue_i/clk_gate_mem_reg_11__addr_ready_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_14
memory_queue_i/clk_gate_mem_reg_11__valid_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_15
memory_queue_i/clk_gate_mem_reg_12__addr_ready_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_11
memory_queue_i/clk_gate_mem_reg_12__valid_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_12
memory_queue_i/clk_gate_mem_reg_13__addr_ready_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_8
memory_queue_i/clk_gate_mem_reg_13__valid_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_9
memory_queue_i/clk_gate_mem_reg_14__addr_ready_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_5
memory_queue_i/clk_gate_mem_reg_14__valid_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_6
memory_queue_i/clk_gate_mem_reg_15__addr_ready_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_2
memory_queue_i/clk_gate_mem_reg_15__valid_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_3
memory_queue_i/clk_gate_mem_reg_1__addr_ready_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_44
memory_queue_i/clk_gate_mem_reg_1__valid_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_45
memory_queue_i/clk_gate_mem_reg_2__addr_ready_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_41
memory_queue_i/clk_gate_mem_reg_2__valid_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_42
memory_queue_i/clk_gate_mem_reg_3__addr_ready_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_38
memory_queue_i/clk_gate_mem_reg_3__valid_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_39
memory_queue_i/clk_gate_mem_reg_4__addr_ready_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_35
memory_queue_i/clk_gate_mem_reg_4__valid_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_36
memory_queue_i/clk_gate_mem_reg_5__addr_ready_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_32
memory_queue_i/clk_gate_mem_reg_5__valid_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_33
memory_queue_i/clk_gate_mem_reg_6__addr_ready_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_29
memory_queue_i/clk_gate_mem_reg_6__valid_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_30
memory_queue_i/clk_gate_mem_reg_7__addr_ready_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_26
memory_queue_i/clk_gate_mem_reg_7__valid_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_27
memory_queue_i/clk_gate_mem_reg_8__addr_ready_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_23
memory_queue_i/clk_gate_mem_reg_8__valid_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_24
memory_queue_i/clk_gate_mem_reg_9__addr_ready_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_20
memory_queue_i/clk_gate_mem_reg_9__valid_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_21
memory_queue_i/clk_gate_tail_reg_reg_3_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_memory_queue_0
phys_regfile_i                     49245.9099     20.9  37255.6943  11738.8456      0.0000  phys_regfile
phys_regfile_i/clk_gate_data_reg_10__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_54
phys_regfile_i/clk_gate_data_reg_11__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_53
phys_regfile_i/clk_gate_data_reg_12__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_52
phys_regfile_i/clk_gate_data_reg_13__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_51
phys_regfile_i/clk_gate_data_reg_14__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_50
phys_regfile_i/clk_gate_data_reg_15__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_49
phys_regfile_i/clk_gate_data_reg_16__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_48
phys_regfile_i/clk_gate_data_reg_17__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_47
phys_regfile_i/clk_gate_data_reg_18__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_46
phys_regfile_i/clk_gate_data_reg_19__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_45
phys_regfile_i/clk_gate_data_reg_1__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_63
phys_regfile_i/clk_gate_data_reg_20__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_44
phys_regfile_i/clk_gate_data_reg_21__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_43
phys_regfile_i/clk_gate_data_reg_22__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_42
phys_regfile_i/clk_gate_data_reg_23__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_41
phys_regfile_i/clk_gate_data_reg_24__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_40
phys_regfile_i/clk_gate_data_reg_25__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_39
phys_regfile_i/clk_gate_data_reg_26__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_38
phys_regfile_i/clk_gate_data_reg_27__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_37
phys_regfile_i/clk_gate_data_reg_28__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_36
phys_regfile_i/clk_gate_data_reg_29__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_35
phys_regfile_i/clk_gate_data_reg_2__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_62
phys_regfile_i/clk_gate_data_reg_30__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_34
phys_regfile_i/clk_gate_data_reg_31__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_33
phys_regfile_i/clk_gate_data_reg_32__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_32
phys_regfile_i/clk_gate_data_reg_33__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_31
phys_regfile_i/clk_gate_data_reg_34__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_30
phys_regfile_i/clk_gate_data_reg_35__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_29
phys_regfile_i/clk_gate_data_reg_36__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_28
phys_regfile_i/clk_gate_data_reg_37__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_27
phys_regfile_i/clk_gate_data_reg_38__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_26
phys_regfile_i/clk_gate_data_reg_39__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_25
phys_regfile_i/clk_gate_data_reg_3__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_61
phys_regfile_i/clk_gate_data_reg_40__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_24
phys_regfile_i/clk_gate_data_reg_41__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_23
phys_regfile_i/clk_gate_data_reg_42__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_22
phys_regfile_i/clk_gate_data_reg_43__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_21
phys_regfile_i/clk_gate_data_reg_44__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_20
phys_regfile_i/clk_gate_data_reg_45__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_19
phys_regfile_i/clk_gate_data_reg_46__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_18
phys_regfile_i/clk_gate_data_reg_47__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_17
phys_regfile_i/clk_gate_data_reg_48__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_16
phys_regfile_i/clk_gate_data_reg_49__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_15
phys_regfile_i/clk_gate_data_reg_4__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_60
phys_regfile_i/clk_gate_data_reg_50__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_14
phys_regfile_i/clk_gate_data_reg_51__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_13
phys_regfile_i/clk_gate_data_reg_52__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_12
phys_regfile_i/clk_gate_data_reg_53__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_11
phys_regfile_i/clk_gate_data_reg_54__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_10
phys_regfile_i/clk_gate_data_reg_55__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_9
phys_regfile_i/clk_gate_data_reg_56__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_8
phys_regfile_i/clk_gate_data_reg_57__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_7
phys_regfile_i/clk_gate_data_reg_58__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_6
phys_regfile_i/clk_gate_data_reg_59__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_5
phys_regfile_i/clk_gate_data_reg_5__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_59
phys_regfile_i/clk_gate_data_reg_60__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_4
phys_regfile_i/clk_gate_data_reg_61__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_3
phys_regfile_i/clk_gate_data_reg_62__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_2
phys_regfile_i/clk_gate_data_reg_63__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_1
phys_regfile_i/clk_gate_data_reg_6__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_58
phys_regfile_i/clk_gate_data_reg_7__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_57
phys_regfile_i/clk_gate_data_reg_8__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_56
phys_regfile_i/clk_gate_data_reg_9__31_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_phys_regfile_55
queue_i                            11317.5022      4.8   4751.5581   6430.2840      0.0000  queue_DATA_WIDTH32_QUEUE_DEPTH32_1
queue_i/clk_gate_head_reg_reg_5_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_1
queue_i/clk_gate_mem_reg_0__32_        3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_0
queue_i/clk_gate_mem_reg_10__32_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_24
queue_i/clk_gate_mem_reg_11__32_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_23
queue_i/clk_gate_mem_reg_12__32_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_22
queue_i/clk_gate_mem_reg_13__32_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_21
queue_i/clk_gate_mem_reg_14__32_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_20
queue_i/clk_gate_mem_reg_15__32_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_19
queue_i/clk_gate_mem_reg_16__32_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_18
queue_i/clk_gate_mem_reg_17__32_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_17
queue_i/clk_gate_mem_reg_18__32_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_16
queue_i/clk_gate_mem_reg_19__32_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_15
queue_i/clk_gate_mem_reg_1__32_        3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_33
queue_i/clk_gate_mem_reg_20__32_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_14
queue_i/clk_gate_mem_reg_21__32_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_13
queue_i/clk_gate_mem_reg_22__32_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_12
queue_i/clk_gate_mem_reg_23__32_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_11
queue_i/clk_gate_mem_reg_24__32_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_10
queue_i/clk_gate_mem_reg_25__32_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_9
queue_i/clk_gate_mem_reg_26__32_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_8
queue_i/clk_gate_mem_reg_27__32_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_7
queue_i/clk_gate_mem_reg_28__32_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_6
queue_i/clk_gate_mem_reg_29__32_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_5
queue_i/clk_gate_mem_reg_2__32_        3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_32
queue_i/clk_gate_mem_reg_30__32_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_4
queue_i/clk_gate_mem_reg_31__32_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_3
queue_i/clk_gate_mem_reg_3__32_        3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_31
queue_i/clk_gate_mem_reg_4__32_        3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_30
queue_i/clk_gate_mem_reg_5__32_        3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_29
queue_i/clk_gate_mem_reg_6__32_        3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_28
queue_i/clk_gate_mem_reg_7__32_        3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_27
queue_i/clk_gate_mem_reg_8__32_        3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_26
queue_i/clk_gate_mem_reg_9__32_        3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_25
queue_i/clk_gate_tail_reg_reg_5_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_1_2
queue_pc                           11125.1842      4.7   4651.2761   6338.2480      0.0000  queue_DATA_WIDTH32_QUEUE_DEPTH32_0
queue_pc/clk_gate_head_reg_reg_5_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_1
queue_pc/clk_gate_mem_reg_0__32_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_0
queue_pc/clk_gate_mem_reg_10__32_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_24
queue_pc/clk_gate_mem_reg_11__32_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_23
queue_pc/clk_gate_mem_reg_12__32_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_22
queue_pc/clk_gate_mem_reg_13__32_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_21
queue_pc/clk_gate_mem_reg_14__32_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_20
queue_pc/clk_gate_mem_reg_15__32_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_19
queue_pc/clk_gate_mem_reg_16__32_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_18
queue_pc/clk_gate_mem_reg_17__32_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_17
queue_pc/clk_gate_mem_reg_18__32_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_16
queue_pc/clk_gate_mem_reg_19__32_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_15
queue_pc/clk_gate_mem_reg_1__32_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_33
queue_pc/clk_gate_mem_reg_20__32_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_14
queue_pc/clk_gate_mem_reg_21__32_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_13
queue_pc/clk_gate_mem_reg_22__32_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_12
queue_pc/clk_gate_mem_reg_23__32_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_11
queue_pc/clk_gate_mem_reg_24__32_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_10
queue_pc/clk_gate_mem_reg_25__32_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_9
queue_pc/clk_gate_mem_reg_26__32_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_8
queue_pc/clk_gate_mem_reg_27__32_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_7
queue_pc/clk_gate_mem_reg_28__32_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_6
queue_pc/clk_gate_mem_reg_29__32_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_5
queue_pc/clk_gate_mem_reg_2__32_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_32
queue_pc/clk_gate_mem_reg_30__32_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_4
queue_pc/clk_gate_mem_reg_31__32_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_3
queue_pc/clk_gate_mem_reg_3__32_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_31
queue_pc/clk_gate_mem_reg_4__32_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_30
queue_pc/clk_gate_mem_reg_5__32_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_29
queue_pc/clk_gate_mem_reg_6__32_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_28
queue_pc/clk_gate_mem_reg_7__32_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_27
queue_pc/clk_gate_mem_reg_8__32_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_26
queue_pc/clk_gate_mem_reg_9__32_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_25
queue_pc/clk_gate_tail_reg_reg_5_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_queue_DATA_WIDTH32_QUEUE_DEPTH32_0_2
rat_i/clk_gate_rat_reg_0__5_           3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_0
rat_i/clk_gate_rat_reg_10__5_          3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_22
rat_i/clk_gate_rat_reg_11__5_          3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_21
rat_i/clk_gate_rat_reg_12__5_          3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_20
rat_i/clk_gate_rat_reg_13__5_          3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_19
rat_i/clk_gate_rat_reg_14__5_          3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_18
rat_i/clk_gate_rat_reg_15__5_          3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_17
rat_i/clk_gate_rat_reg_16__5_          3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_16
rat_i/clk_gate_rat_reg_17__5_          3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_15
rat_i/clk_gate_rat_reg_18__5_          3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_14
rat_i/clk_gate_rat_reg_19__5_          3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_13
rat_i/clk_gate_rat_reg_1__5_           3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_31
rat_i/clk_gate_rat_reg_20__5_          3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_12
rat_i/clk_gate_rat_reg_21__5_          3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_11
rat_i/clk_gate_rat_reg_22__5_          3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_10
rat_i/clk_gate_rat_reg_23__5_          3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_9
rat_i/clk_gate_rat_reg_24__5_          3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_8
rat_i/clk_gate_rat_reg_25__5_          3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_7
rat_i/clk_gate_rat_reg_26__5_          3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_6
rat_i/clk_gate_rat_reg_27__5_          3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_5
rat_i/clk_gate_rat_reg_28__5_          3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_4
rat_i/clk_gate_rat_reg_29__5_          3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_3
rat_i/clk_gate_rat_reg_2__5_           3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_30
rat_i/clk_gate_rat_reg_30__5_          3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_2
rat_i/clk_gate_rat_reg_31__5_          3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_1
rat_i/clk_gate_rat_reg_3__5_           3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_29
rat_i/clk_gate_rat_reg_4__5_           3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_28
rat_i/clk_gate_rat_reg_5__5_           3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_27
rat_i/clk_gate_rat_reg_6__5_           3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_26
rat_i/clk_gate_rat_reg_7__5_           3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_25
rat_i/clk_gate_rat_reg_8__5_           3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_24
rat_i/clk_gate_rat_reg_9__5_           3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rat_23
reservation_stations_i             18636.2260      7.9   8519.4480  10036.9780      0.0000  reservation_station
reservation_stations_i/clk_gate_add_reservation_station_reg_0__busy_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_16
reservation_stations_i/clk_gate_add_reservation_station_reg_1__busy_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_15
reservation_stations_i/clk_gate_add_reservation_station_reg_2__busy_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_14
reservation_stations_i/clk_gate_add_reservation_station_reg_3__busy_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_13
reservation_stations_i/clk_gate_branch_reservation_station_reg_0__busy_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_8
reservation_stations_i/clk_gate_branch_reservation_station_reg_1__busy_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_7
reservation_stations_i/clk_gate_branch_reservation_station_reg_2__busy_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_6
reservation_stations_i/clk_gate_branch_reservation_station_reg_3__busy_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_5
reservation_stations_i/clk_gate_divide_reservation_station_reg_0__busy_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_10
reservation_stations_i/clk_gate_divide_reservation_station_reg_1__busy_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_9
reservation_stations_i/clk_gate_mem_reservation_station_reg_0__busy_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_0
reservation_stations_i/clk_gate_mem_reservation_station_reg_0__ps1_v_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_3
reservation_stations_i/clk_gate_mem_reservation_station_reg_1__busy_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_19
reservation_stations_i/clk_gate_mem_reservation_station_reg_1__ps1_v_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_4
reservation_stations_i/clk_gate_mem_reservation_station_reg_2__busy_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_18
reservation_stations_i/clk_gate_mem_reservation_station_reg_2__ps1_v_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_1
reservation_stations_i/clk_gate_mem_reservation_station_reg_3__busy_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_17
reservation_stations_i/clk_gate_mem_reservation_station_reg_3__ps1_v_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_2
reservation_stations_i/clk_gate_multiply_reservation_station_reg_0__busy_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_12
reservation_stations_i/clk_gate_multiply_reservation_station_reg_1__busy_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_reservation_station_11
rob_i                               9630.7959      4.1   3964.1980   5530.9379      0.0000  rob
rob_i/clk_gate_head_reg_reg_3_         3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_1
rob_i/clk_gate_mem_reg_0__commit_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_49
rob_i/clk_gate_mem_reg_0__valid_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_0
rob_i/clk_gate_mem_reg_10__commit_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_19
rob_i/clk_gate_mem_reg_10__valid_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_20
rob_i/clk_gate_mem_reg_11__commit_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_16
rob_i/clk_gate_mem_reg_11__valid_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_17
rob_i/clk_gate_mem_reg_12__commit_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_13
rob_i/clk_gate_mem_reg_12__valid_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_14
rob_i/clk_gate_mem_reg_13__commit_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_10
rob_i/clk_gate_mem_reg_13__valid_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_11
rob_i/clk_gate_mem_reg_14__commit_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_7
rob_i/clk_gate_mem_reg_14__valid_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_8
rob_i/clk_gate_mem_reg_15__commit_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_4
rob_i/clk_gate_mem_reg_15__valid_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_5
rob_i/clk_gate_mem_reg_1__commit_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_46
rob_i/clk_gate_mem_reg_1__valid_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_47
rob_i/clk_gate_mem_reg_2__commit_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_43
rob_i/clk_gate_mem_reg_2__valid_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_44
rob_i/clk_gate_mem_reg_3__commit_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_40
rob_i/clk_gate_mem_reg_3__valid_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_41
rob_i/clk_gate_mem_reg_4__commit_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_37
rob_i/clk_gate_mem_reg_4__valid_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_38
rob_i/clk_gate_mem_reg_5__commit_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_34
rob_i/clk_gate_mem_reg_5__valid_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_35
rob_i/clk_gate_mem_reg_6__commit_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_31
rob_i/clk_gate_mem_reg_6__valid_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_32
rob_i/clk_gate_mem_reg_7__commit_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_28
rob_i/clk_gate_mem_reg_7__valid_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_29
rob_i/clk_gate_mem_reg_8__commit_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_25
rob_i/clk_gate_mem_reg_8__valid_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_26
rob_i/clk_gate_mem_reg_9__commit_      3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_22
rob_i/clk_gate_mem_reg_9__valid_       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_23
rob_i/clk_gate_tail_reg_reg_3_         3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rob_2
rrat_i/clk_gate_rrat_reg_10__5_        3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_9
rrat_i/clk_gate_rrat_reg_11__5_        3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_10
rrat_i/clk_gate_rrat_reg_12__5_        3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_11
rrat_i/clk_gate_rrat_reg_13__5_        3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_12
rrat_i/clk_gate_rrat_reg_14__5_        3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_13
rrat_i/clk_gate_rrat_reg_15__5_        3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_14
rrat_i/clk_gate_rrat_reg_16__5_        3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_15
rrat_i/clk_gate_rrat_reg_17__5_        3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_16
rrat_i/clk_gate_rrat_reg_18__5_        3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_17
rrat_i/clk_gate_rrat_reg_19__5_        3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_18
rrat_i/clk_gate_rrat_reg_1__5_         3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_0
rrat_i/clk_gate_rrat_reg_20__5_        3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_19
rrat_i/clk_gate_rrat_reg_21__5_        3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_20
rrat_i/clk_gate_rrat_reg_22__5_        3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_21
rrat_i/clk_gate_rrat_reg_23__5_        3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_22
rrat_i/clk_gate_rrat_reg_24__5_        3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_23
rrat_i/clk_gate_rrat_reg_25__5_        3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_24
rrat_i/clk_gate_rrat_reg_26__5_        3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_25
rrat_i/clk_gate_rrat_reg_27__5_        3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_26
rrat_i/clk_gate_rrat_reg_28__5_        3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_27
rrat_i/clk_gate_rrat_reg_29__5_        3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_28
rrat_i/clk_gate_rrat_reg_2__5_         3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_1
rrat_i/clk_gate_rrat_reg_30__5_        3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_29
rrat_i/clk_gate_rrat_reg_31__5_        3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_30
rrat_i/clk_gate_rrat_reg_3__5_         3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_2
rrat_i/clk_gate_rrat_reg_4__5_         3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_3
rrat_i/clk_gate_rrat_reg_5__5_         3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_4
rrat_i/clk_gate_rrat_reg_6__5_         3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_5
rrat_i/clk_gate_rrat_reg_7__5_         3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_6
rrat_i/clk_gate_rrat_reg_8__5_         3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_7
rrat_i/clk_gate_rrat_reg_9__5_         3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_rrat_8
--------------------------------  -----------  -------  ----------  ----------  ----------  ----------------------------------------------------------
Total                                                   92174.3207  63960.4977  79840.6826

1
235975
-0.003386
[0;31mTiming Not Met [0m
 
 ``` 

 </details> 
