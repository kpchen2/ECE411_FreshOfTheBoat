# AG Report mp_ooo_comp 2024-12-03T02:50:12-06:00 
Report generated at 2024-12-03T02:50:12-06:00, using commit ``6e516ca5603ee9e0a7fe9d05b3569b81d1c9c63b``

Autograder Run ID: de313184-8f7b-462a-bd95-790eccecdef7

Autograder Job ID: 27580b62-6bd1-4daf-b868-8fb58cbe9c8d

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
make[1]: Entering directory '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram'
rm -rf output
mkdir output
touch output/.gitkeep
make[1]: Leaving directory '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram'
python3 sram.py
sync
make -j4 
make[1]: Entering directory '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram'
make clean
make[2]: Entering directory '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram'
rm -rf output
mkdir output
touch output/.gitkeep
make[2]: Leaving directory '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram'
python3 sram.py
sync
make -j4 mp_cache_tag_array mp_cache_data_array
make[2]: Entering directory '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram'
make[2]: warning: -j4 forced in submake: resetting jobserver mode.
source /srv/ece411ag/OpenRAM/miniconda/bin/activate ;\
python3 /srv/ece411ag/OpenRAM/compiler/../sram_compiler.py /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.py
source /srv/ece411ag/OpenRAM/miniconda/bin/activate ;\
python3 /srv/ece411ag/OpenRAM/compiler/../sram_compiler.py /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.py
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
** Start: 12/03/2024 02:50:19
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
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.lvs
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.sp
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.v
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.lib
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.py
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.html
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.log
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.lef
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.gds
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
** Start: 12/03/2024 02:50:19
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
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.lvs
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.sp
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.v
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.lib
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.py
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.html
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.log
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.lef
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.gds
** Submodules: 1.2 seconds
** Placement: 0.0 seconds
** Routing: 0.0 seconds
** Verification: 0.0 seconds
** SRAM creation: 1.2 seconds
SP: Writing to /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.sp
** Spice writing: 0.0 seconds
DELAY: Writing stimulus...
** DELAY: 0.1 seconds
GDS: Writing to /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.gds
** GDS: 0.4 seconds
LEF: Writing to /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.lef
** LEF: 0.0 seconds
LVS: Writing to /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.lvs.sp
** LVS writing: 0.0 seconds
LIB: Characterizing... 
** Characterization: 0.1 seconds
Config: Writing to /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.py
** Config: 0.0 seconds
Datasheet: Writing to /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.html
** Datasheet: 0.0 seconds
Verilog: Writing to /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.v
** Verilog: 0.0 seconds
Extended Config: Writing to /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_extended.py
** Extended Config: 0.0 seconds
** End: 1.9 seconds
sed -i -E 's/falling_edge/rising_edge/g' /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C.lib
source /srv/ece411ag/OpenRAM/miniconda/bin/activate ;\
python3 /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/area.py /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.gds > /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.area.txt
cat ./output/mp_cache_tag_array/mp_cache_tag_array.area.txt | xargs -I {} sed -i -E 's/area : .*/area : {}/g' output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C.lib
cd /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array ;\
lc_shell -x 'read_lib /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C.lib; write_lib mp_cache_tag_array_TT_1p0V_25C_lib; exit' ;\
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
Reading '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C.lib' ...
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
** Submodules: 17.8 seconds
** Placement: 1.2 seconds
** Routing: 0.0 seconds
** Verification: 0.0 seconds
** SRAM creation: 19.0 seconds
SP: Writing to /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.sp
** Spice writing: 0.5 seconds
DELAY: Writing stimulus...
** DELAY: 0.6 seconds
GDS: Writing to /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.gds
** GDS: 2.5 seconds
LEF: Writing to /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.lef
** LEF: 0.0 seconds
LVS: Writing to /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.lvs.sp
** LVS writing: 0.1 seconds
LIB: Characterizing... 
** Characterization: 0.8 seconds
Config: Writing to /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.py
** Config: 0.0 seconds
Datasheet: Writing to /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.html
** Datasheet: 0.0 seconds
Verilog: Writing to /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.v
** Verilog: 0.0 seconds
Extended Config: Writing to /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array/mp_cache_data_array_extended.py
** Extended Config: 0.0 seconds
** End: 23.7 seconds
sed -i -E 's/falling_edge/rising_edge/g' /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C.lib
source /srv/ece411ag/OpenRAM/miniconda/bin/activate ;\
python3 /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/area.py /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.gds > /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array/mp_cache_data_array.area.txt
cat ./output/mp_cache_data_array/mp_cache_data_array.area.txt | xargs -I {} sed -i -E 's/area : .*/area : {}/g' output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C.lib
cd /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array ;\
lc_shell -x 'read_lib /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C.lib; write_lib mp_cache_data_array_TT_1p0V_25C_lib; exit' ;\
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
Reading '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C.lib' ...
Warning: Line 1, The 'internal_power_calculation' attribute in char_config group is required for NLPM library. 
	No default can be applied to this attribute. (LBDB-366)
Information: Line 82, Cell 'mp_cache_data_array', The cell 'mp_cache_data_array' contiains memory/memory_read/memory_write groups which are deprecated, use the is_memory_cell attribute instead. (LIBG-280)
Technology library 'mp_cache_data_array_TT_1p0V_25C_lib' read successfully
Wrote the 'mp_cache_data_array_TT_1p0V_25C_lib' library to 'mp_cache_data_array_TT_1p0V_25C_lib.db' successfully
Maximum memory usage for this session: 88.14 MB
CPU usage for this session:      3 seconds (  0.00 hours)
Elapsed time for this session:      4 seconds (  0.00 hours)
Thank you for using Library Compiler.

Thank you...
make[2]: Leaving directory '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram'
make[1]: Leaving directory '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram'
 
 ``` 

 </details> 
<details><summary>compile ✅</summary> 

 ``` 
 1900
0
mkdir -p vcs
python3 ../bin/rvfi_reference.py
cd vcs && vcs /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../pkg/types.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/cache.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/cache_arbiter.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/cacheline_adapter.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/cpu.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/execute.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/free_list.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/fu_add.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/fu_br.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/fu_div_rem.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/fu_mem.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/fu_mult.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/lru_array.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/memory_queue.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/phys_regfile.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/provided_cache.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/queue.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/rat.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/rename_dispatch.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/reservation_station.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/rob.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/rrat.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/stage1.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/stage2.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/test.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/valid_array.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/split_lsq.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hvl/common/dram_w_burst_frfcfs_controller.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hvl/common/mem_itf.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hvl/common/mon_itf.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hvl/common/monitor.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hvl/common/rvfimon.v /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hvl/vcs/top_tb.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../sram/output/mp_cache_data_array/mp_cache_data_array.v /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../sram/output/mp_cache_tag_array/mp_cache_tag_array.v /srv/software/Synopsys-2021_x86_64/icc/R-2020.09-SP4/dw/sim_ver/DW_mult_seq.v /srv/software/Synopsys-2021_x86_64/icc/R-2020.09-SP4/dw/sim_ver/DW_div_seq.v -licqueue -full64 -lca -sverilog -timescale=1ps/1ps -debug_acc+all -kdb -fsdb -suppress=LCA_FEATURES_ENABLED -msg_config=../vcs_warn.config -xprop=../xprop.config -xprop=flowctrl +incdir+/srv/software/Synopsys-2021_x86_64/icc/R-2020.09-SP4/dw/sim_ver +define+DW_SUPPRESS_WARN +incdir+/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hvl/vcs +incdir+/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hvl/common -l compile.log -top top_tb -o top_tb
                         Chronologic VCS (TM)
      Version R-2020.12-SP1-1_Full64 -- Tue Dec  3 02:50:56 2024

                    Copyright (c) 1991 - 2021 Synopsys, Inc.
   This software and the associated documentation are proprietary to Synopsys,
 Inc. This software may only be used in accordance with the terms and conditions
 of a written license agreement with Synopsys, Inc. All other use, reproduction,
            or distribution of this software is strictly prohibited.

Reading Config file '../xprop.config'
Parsing design file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../pkg/types.sv'
Parsing design file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/cache.sv'
Parsing design file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/cache_arbiter.sv'
Parsing design file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/cacheline_adapter.sv'
Parsing design file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/cpu.sv'
Parsing design file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/execute.sv'
Parsing design file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/free_list.sv'
Parsing design file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/fu_add.sv'
Parsing design file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/fu_br.sv'
Parsing design file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/fu_div_rem.sv'
Parsing design file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/fu_mem.sv'
Parsing design file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/fu_mult.sv'
Parsing design file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/lru_array.sv'
Parsing design file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/memory_queue.sv'
Parsing design file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/phys_regfile.sv'
Parsing design file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/provided_cache.sv'
Parsing design file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/queue.sv'
Parsing design file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/rat.sv'
Parsing design file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/rename_dispatch.sv'
Parsing design file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/reservation_station.sv'
Parsing design file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/rob.sv'
Parsing design file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/rrat.sv'
Parsing design file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/stage1.sv'
Parsing design file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/stage2.sv'
Parsing design file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/test.sv'
Parsing design file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/valid_array.sv'
Parsing design file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/split_lsq.sv'
Parsing design file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hvl/common/dram_w_burst_frfcfs_controller.sv'
Parsing design file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hvl/common/mem_itf.sv'
Parsing design file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hvl/common/mon_itf.sv'
Parsing design file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hvl/common/monitor.sv'
Parsing design file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hvl/common/rvfimon.v'
Parsing design file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hvl/vcs/top_tb.sv'
Parsing included file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hvl/common/rvfi_reference.svh'.
Back to file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hvl/vcs/top_tb.sv'.
Parsing design file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../sram/output/mp_cache_data_array/mp_cache_data_array.v'
Parsing design file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../sram/output/mp_cache_tag_array/mp_cache_tag_array.v'
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
make[1]: Entering directory '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/vcs/csrc'
make[1]: Leaving directory '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/vcs/csrc'
/srv/software/Synopsys-2021_x86_64/vcs-mx/O-2018.09-SP2-3/bin/vcs: line 31361: 327396 Segmentation fault      (core dumped) ${TOOL_HOME}/bin/cfs_ident_exec -f ${XML_INPUT_EXE} -o "${fsearchDir}/idents_tapi.xml" -o_SrcFile "${dirSrcFiles}/src_files_c" ${all_dyn_libs} > tapi_xml_writer.log
make[1]: Entering directory '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/vcs/csrc'
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../top_tb ]; then chmod a-x ../top_tb; fi
g++  -o ../top_tb      -rdynamic  -Wl,-rpath='$ORIGIN'/top_tb.daidir -Wl,-rpath=./top_tb.daidir -Wl,-rpath=/srv/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib -L/srv/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib  -Wl,-rpath-link=./  /usr/lib64/libnuma.so.1   objs/amcQw_d.o   _325499_archive_1.so  SIM_l.o      rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o           -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /srv/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive        _vcs_pli_stub_.o   /srv/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib/vcs_save_restore_new.o /srv/software/Synopsys-2021_x86_64/verdi/R-2020.12-SP1-1/share/PLI/VCS/LINUX64/pli.a -ldl  -lc -lm -lpthread -ldl 
../top_tb up to date
make[1]: Leaving directory '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/vcs/csrc'
CPU time: 6.269 seconds to compile + 1.341 seconds to elab + .635 seconds to link
Verdi KDB elaboration done and the database successfully generated: 0 error(s), 0 warning(s)
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/cache_arbiter.sv:55 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/cache_arbiter.sv:136 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/cacheline_adapter.sv:31 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/cacheline_adapter.sv:52 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/cacheline_adapter.sv:96 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/cpu.sv:199 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/cpu.sv:221 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/execute.sv:81 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/execute.sv:103 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/execute.sv:115 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/execute.sv:262 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/free_list.sv:40 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/free_list.sv:76 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/free_list.sv:82 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/free_list.sv:94 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/fu_add.sv:35 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/fu_add.sv:49 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/fu_add.sv:68 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/fu_br.sv:36 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/fu_br.sv:56 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/fu_div_rem.sv:32 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/fu_div_rem.sv:83 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/fu_div_rem.sv:117 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/fu_mem.sv:27 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/fu_mult.sv:46 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/fu_mult.sv:76 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/fu_mult.sv:110 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/lru_array.sv:33 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/lru_array.sv:55 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/memory_queue.sv:76 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/memory_queue.sv:143 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/phys_regfile.sv:21 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/phys_regfile.sv:69 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/phys_regfile.sv:131 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/queue.sv:42 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/queue.sv:83 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/queue.sv:91 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/queue.sv:103 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/rat.sv:45 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/rat.sv:49 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/rat.sv:53 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/rat.sv:57 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/rat.sv:61 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/rat.sv:66 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/rat.sv:74 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/rat.sv:88 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/rat.sv:99 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/rename_dispatch.sv:52 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/rename_dispatch.sv:91 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/rename_dispatch.sv:103 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/reservation_station.sv:108 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/reservation_station.sv:193 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/reservation_station.sv:401 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/reservation_station.sv:607 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/reservation_station.sv:631 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/reservation_station.sv:654 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/reservation_station.sv:677 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/reservation_station.sv:700 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/reservation_station.sv:~741 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/reservation_station.sv:~745 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/reservation_station.sv:~749 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/reservation_station.sv:~753 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/reservation_station.sv:~757 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/reservation_station.sv:~761 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/reservation_station.sv:~765 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/reservation_station.sv:~769 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/reservation_station.sv:~773 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/reservation_station.sv:~777 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/rob.sv:116 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/rob.sv:269 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/rrat.sv:39 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/stage1.sv:54 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/stage2.sv:51 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/valid_array.sv:24 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/valid_array.sv:38 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../sram/output/mp_cache_data_array/mp_cache_data_array.v:41 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../sram/output/mp_cache_data_array/mp_cache_data_array.v:52 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../sram/output/mp_cache_tag_array/mp_cache_tag_array.v:37 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../sram/output/mp_cache_tag_array/mp_cache_tag_array.v:47 YES
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sim/../hdl/cache.sv:54 YES
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

        "/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db"
        "/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db"
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
Checking Rule sdc_init_rule (Rule 52 of total 325) .... done (Time = 0.00s, Memory = 32.0K)
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
 Analyzing source file "/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../pkg/types.sv" ....
 Analyzing source file "/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/cache.sv" ....
 Analyzing source file "/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/cache_arbiter.sv" ....
 Analyzing source file "/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/cacheline_adapter.sv" ....
 Analyzing source file "/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/cpu.sv" ....
 Analyzing source file "/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/execute.sv" ....
 Analyzing source file "/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/free_list.sv" ....
 Analyzing source file "/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/fu_add.sv" ....
 Analyzing source file "/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/fu_br.sv" ....
 Analyzing source file "/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/fu_div_rem.sv" ....
 Analyzing source file "/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/fu_mem.sv" ....
 Analyzing source file "/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/fu_mult.sv" ....
 Analyzing source file "/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/lru_array.sv" ....
 Analyzing source file "/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/memory_queue.sv" ....
 Analyzing source file "/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/phys_regfile.sv" ....
 Analyzing source file "/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/provided_cache.sv" ....
 Analyzing source file "/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/queue.sv" ....
 Analyzing source file "/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/rat.sv" ....
 Analyzing source file "/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/rename_dispatch.sv" ....
 Analyzing source file "/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/reservation_station.sv" ....
 Analyzing source file "/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/rob.sv" ....
 Analyzing source file "/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/rrat.sv" ....
 Analyzing source file "/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/stage1.sv" ....
 Analyzing source file "/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/stage2.sv" ....
 Analyzing source file "/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/test.sv" ....
 Analyzing source file "/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/valid_array.sv" ....
 Analyzing source file "/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/split_lsq.sv" ....
 Elaborating Top Verilog Design Unit 'cpu' ..... done
Checking Rule ElabSummary (Rule 73 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule ReportCheckDataSummary (Rule 74 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
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
Checking Rule SGDC_waive23 (Rule 88 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_waive26 (Rule 89 of total 325) .... done (Time = 0.00s, Memory = 24.0K)
Checking Rule SGDC_waive27 (Rule 90 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule SGDC_waive29 (Rule 91 of total 325) .... done (Time = 0.00s, Memory = 8.0K)
Checking Rule STARC05-2.1.4.5 (Rule 92 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.3.1.5b (Rule 93 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-2.3.3.1 (Rule 94 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
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
Checking Rule PragmaComments-ML (Rule 113 of total 325) .... done (Time = 0.01s, Memory = 24.0K)
Checking Rule PragmaComments-ML (Rule 114 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule CheckDelayTimescale-ML (Rule 115 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
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
    Checking Rule W467 (Rule 162 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
    Checking Rule W505 (Rule 163 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W505 (Rule 164 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W528 (Rule 165 of total 325) .... done (Time = 0.02s, Memory = 104.0K)
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
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
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
    Checking Rule STARC05-2.10.2.3 (Rule 121 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
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
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.00s, Memory = 64.0K)
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
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
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
    Checking Rule W362 (Rule 146 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
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
    Checking Rule W66 (Rule 133 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
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
    Checking Rule W289 (Rule 142 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
    Checking Rule W337 (Rule 143 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W416 (Rule 144 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W352 (Rule 145 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W362 (Rule 146 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.01s, Memory = 8.0K)
    Checking Rule W486 (Rule 148 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W499 (Rule 149 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W502 (Rule 150 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
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
    Checking Rule W122 (Rule 129 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
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
    Checking Rule sim_race02 (Rule 127 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
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
    Checking Rule W362 (Rule 146 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
    Checking Rule W415a (Rule 147 of total 325) .... done (Time = 0.00s, Memory = 32.0K)
    Checking Rule W486 (Rule 148 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
    Checking Rule W499 (Rule 149 of total 325) .... done (Time = 0.01s, Memory = 8.0K)
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
    Checking Rule _width02_prereq (Rule 194 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
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
Checking Lexical Rules for file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/cache.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/cache_arbiter.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/cacheline_adapter.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/cpu.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/execute.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/free_list.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/fu_add.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/fu_br.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/fu_div_rem.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/fu_mem.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/fu_mult.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/lru_array.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/memory_queue.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/phys_regfile.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/queue.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/rat.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/rename_dispatch.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/reservation_station.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/rob.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/rrat.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/stage1.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/stage2.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/valid_array.sv
    Checking Rule Av_complexity_req01 (Rule 206 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Lexical Rules for file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../pkg/types.sv
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
Checking Rule InferBlackBox (Rule 211 of total 325) .... done (Time = 0.08s, Memory = 0.0K)
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
Checking Rule InferLatch (Rule 250 of total 325) .... done (Time = 0.04s, Memory = 32.0K)
Checking Rule UndrivenInTerm-ML (Rule 251 of total 325) .... done (Time = 1.13s, Memory = 32.0K)
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
Checking Rule BufClock (Rule 258 of total 325) .... done (Time = 0.53s, Memory = 3224.0K)
Checking Rule CombLoop (Rule 259 of total 325) .... done (Time = 0.30s, Memory = 912.0K)
Checking Rule STARC05-2.5.1.2 (Rule 260 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule STARC05-1.3.1.3 (Rule 261 of total 325) .... done (Time = 0.01s, Memory = 0.0K)
Checking Rule STARC05-1.4.3.4 (Rule 262 of total 325) .... done (Time = 0.02s, Memory = 8.0K)
Checking Rule FlopClockConstant (Rule 263 of total 325) .... done (Time = 0.04s, Memory = 16.0K)
Checking Rule FlopSRConst (Rule 264 of total 325) .... done (Time = 0.02s, Memory = 0.0K)
Checking Rule FlopEConst (Rule 265 of total 325) .... done (Time = 0.04s, Memory = 24.0K)
Checking Rule checkPinConnectedToSupply (Rule 266 of total 325) .... done (Time = 0.06s, Memory = 0.0K)
Checking Rule W392 (Rule 267 of total 325) .... done (Time = 0.02s, Memory = 1384.0K)
Checking Rule W415 (Rule 268 of total 325) .... done (Time = 0.15s, Memory = 0.0K)
Checking Rule LatchFeedback (Rule 269 of total 325) .... done (Time = 0.27s, Memory = 8.0K)
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
Checking Rule STARC05-1.2.1.2 (Rule 283 of total 325) .... done (Time = 0.09s, Memory = 912.0K)
Checking Rule AnalyzeBBox (Rule 284 of total 325) .... done (Time = 0.00s, Memory = 0.0K)
Checking Rule ReportCheckDataSummary (Rule 74 of total 325) .... done (Time = 0.01s, Memory = 0.0K)

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
         cpu   (file: /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/cpu.sv)

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
   /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/spyglass-1/consolidated_reports/cpu_lint_lint_turbo_rtl/ 

   SpyGlass LogFile: 
    /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/spyglass-1/cpu/lint/lint_turbo_rtl/spyglass.log 

   Standard Reports: 
     waiver.rpt          moresimple.rpt          no_msg_reporting_rules.rpt       

   HTML report:
    /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/spyglass-1/html_reports/goals_summary.html
  

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
#     Report Created on: Tue Dec  3 02:51:18 2024
#     Working Directory: /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint
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
[3]      N.A        DetectTopDesignUnits    DetectTopDesignUnits    Info        /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/lint/../hdl/cpu.sv                               1       2     Module cpu is a top level design unit
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
 1900
0
compile_ultra -gate_clock -retime
compile_ultra -incremental -gate_clock -retime
8
rm -f  *.log
rm -f  default.svf
rm -rf work
rm -rf reports
rm -rf outputs
make outputs/synth.ddc
make[1]: Entering directory '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth'
mkdir -p reports outputs
export ECE411_CLOCK_PERIOD_PS=1900 ;\
export ECE411_MIN_POWER=0 ;\
export ECE411_COMPILE_CMD="compile_ultra -gate_clock -retime" ;\
export ECE411_COMPILE_CMD_INC="compile_ultra -incremental -gate_clock -retime" ;\
export ECE411_COMPILE_ITER="8" ;\
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
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db
if {$sram_library eq ""} {
   set link_library [list "*" $target_library $synthetic_library]
} else {
   set link_library [list "*" $target_library $synthetic_library $sram_library]
}
* /srv/ece411ag/freepdk-45nm/stdcells.db dw_foundation.sldb {/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db}
get_license DC-Ultra-Features
1
get_license DC-Ultra-Opt
1
set pkg_src [getenv PKG_SRCS]
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../pkg/types.sv
if {$pkg_src ne ""} {
   analyze -library WORK -format sverilog $pkg_src
}
Running PRESTO HDLC
Compiling source file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../pkg/types.sv
Presto compilation completed successfully.
Loading db file '/srv/ece411ag/freepdk-45nm/stdcells.db'
Loading db file '/srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/libraries/syn/dw_foundation.sldb'
1
set modules [split [getenv HDL_SRCS] " "]
/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/cache.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/cache_arbiter.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/cacheline_adapter.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/cpu.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/execute.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/free_list.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/fu_add.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/fu_br.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/fu_div_rem.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/fu_mem.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/fu_mult.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/lru_array.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/memory_queue.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/phys_regfile.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/provided_cache.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/queue.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/rat.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/rename_dispatch.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/reservation_station.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/rob.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/rrat.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/stage1.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/stage2.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/test.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/valid_array.sv /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/split_lsq.sv
foreach module $modules {
   analyze -library WORK -format sverilog "${module}"
}
Running PRESTO HDLC
Compiling source file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/cache.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/cache_arbiter.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/cacheline_adapter.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/cpu.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/execute.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/free_list.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/fu_add.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/fu_br.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/fu_div_rem.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/fu_mem.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/fu_mult.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/lru_array.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/memory_queue.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/phys_regfile.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/provided_cache.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/queue.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/rat.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/rename_dispatch.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/reservation_station.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/rob.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/rrat.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/stage1.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/stage2.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/test.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/valid_array.sv
Presto compilation completed successfully.
Running PRESTO HDLC
Compiling source file /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/split_lsq.sv
Presto compilation completed successfully.
elaborate $design_toplevel
Loading db file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db'
Loading db file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db'
Loading db file '/srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/libraries/syn/gtech.db'
Loading db file '/srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/libraries/syn/standard.sldb'
  Loading link library 'NangateOpenCellLibrary'
  Loading link library 'mp_cache_data_array_TT_1p0V_25C_lib'
  Loading link library 'mp_cache_tag_array_TT_1p0V_25C_lib'
  Loading link library 'gtech'
Running PRESTO HDLC

Inferred memory devices in process
	in routine cpu line 199 in file
		'/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/cpu.sv'.
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
		'/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/cache.sv'.
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
	'/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/memory_queue.sv'
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
		'/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/memory_queue.sv'.
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
	'/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/cache_arbiter.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|           136            |     no/auto      |
===============================================

Inferred memory devices in process
	in routine cache_arbiter line 55 in file
		'/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/cache_arbiter.sv'.
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
	'/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/cacheline_adapter.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            52            |    auto/auto     |
===============================================

Inferred memory devices in process
	in routine cacheline_adapter line 31 in file
		'/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/cacheline_adapter.sv'.
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
		'/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/queue.sv'.
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
		'/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/rename_dispatch.sv'.
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
		'/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/rat.sv'.
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
		'/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/rob.sv'.
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
		'/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/rrat.sv'.
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
		'/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/free_list.sv'.
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
		'/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/phys_regfile.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|      data_reg       | Flip-flop | 2048  |  Y  | Y  | N  | N  | N  | N  | N  |
===============================================================================

Inferred memory devices in process
	in routine phys_regfile line 69 in file
		'/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/phys_regfile.sv'.
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
		'/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/execute.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|   rd_mul_reg_reg    | Flip-flop |   5   |  Y  | Y  | N  | N  | Y  | N  | N  |
|   rob_mul_reg_reg   | Flip-flop |   4   |  Y  | Y  | N  | N  | Y  | N  | N  |
|   pd_mul_reg_reg    | Flip-flop |   6   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================

Inferred memory devices in process
	in routine execute line 103 in file
		'/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/execute.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|   rd_div_reg_reg    | Flip-flop |   5   |  Y  | Y  | N  | N  | Y  | N  | N  |
|   rob_div_reg_reg   | Flip-flop |   4   |  Y  | Y  | N  | N  | Y  | N  | N  |
|   pd_div_reg_reg    | Flip-flop |   6   |  Y  | Y  | N  | N  | Y  | N  | N  |
===============================================================================

Inferred memory devices in process
	in routine execute line 115 in file
		'/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/execute.sv'.
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
		'/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/reservation_station.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
| regf_we_div_reg_reg | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
| regf_we_mul_reg_reg | Flip-flop |   1   |  N  | N  | N  | N  | Y  | N  | N  |
===============================================================================

Inferred memory devices in process
	in routine reservation_station line 192 in file
		'/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/reservation_station.sv'.
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
		'/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/valid_array.sv'.
===============================================================================
|    Register Name    |   Type    | Width | Bus | MB | AR | AS | SR | SS | ST |
===============================================================================
|    din0_reg_reg     | Flip-flop |   1   |  N  | N  | N  | N  | N  | N  | N  |
|    web0_reg_reg     | Flip-flop |   1   |  N  | N  | N  | N  | N  | Y  | N  |
|    addr0_reg_reg    | Flip-flop |   4   |  Y  | Y  | N  | N  | N  | N  | N  |
===============================================================================

Inferred memory devices in process
	in routine valid_array line 38 in file
		'/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/valid_array.sv'.
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
		'/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/lru_array.sv'.
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
		'/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/lru_array.sv'.
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
	'/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/fu_add.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            35            |    user/user     |
===============================================

Statistics for case statements in always block at line 48 in file
	'/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/fu_add.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            49            |    user/user     |
===============================================

Statistics for case statements in always block at line 60 in file
	'/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/fu_add.sv'
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
	'/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/fu_mult.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            76            |    user/user     |
|           110            |    user/user     |
===============================================

Inferred memory devices in process
	in routine fu_mult line 46 in file
		'/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/fu_mult.sv'.
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
	'/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/fu_div_rem.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            83            |    user/user     |
|           117            |    user/user     |
===============================================

Inferred memory devices in process
	in routine fu_div_rem line 32 in file
		'/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/fu_div_rem.sv'.
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
	'/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/fu_br.sv'
===============================================
|           Line           |  full/ parallel  |
===============================================
|            36            |    user/user     |
===============================================

Statistics for case statements in always block at line 47 in file
	'/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/../hdl/fu_br.sv'
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
Date:        Tue Dec  3 02:51:59 2024
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
  * (23 designs)              /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/cpu.db, etc
  NangateOpenCellLibrary (library)
                              /srv/ece411ag/freepdk-45nm/stdcells.db
  dw_foundation.sldb (library)
                              /srv/software/Synopsys-2021_x86_64/syn/R-2020.09-SP4/libraries/syn/dw_foundation.sldb
  mp_cache_data_array_TT_1p0V_25C_lib (library)
                              /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db
  mp_cache_tag_array_TT_1p0V_25C_lib (library)
                              /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db

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
    0:02:20  303894.3  13978.45 103342304.0 16182702.5                           4543711.0000      0.00  
    0:02:20  303894.3  13978.45 103342304.0 16182702.5                           4543711.0000      0.00  
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
    0:02:23  303906.3  13978.45 103342304.0 16182705.2                           4544156.0000      0.00  
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
    0:03:21  293597.0      1.84    3272.9 6703684.9                           4331500.0000      0.00  
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
    0:05:18  397800.1      6.99   60680.8   12728.3                           11480705.0000      0.00  
    0:05:23  396784.7      7.03   61094.3   13366.1                           11437243.0000      0.00  

  Beginning Constant Register Removal
  -----------------------------------
    0:05:28  401898.9      7.03   61228.4   13141.5                           11707508.0000      0.00  
    0:05:32  401878.6      7.03   61228.4   13447.8                           11707037.0000      0.00  

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
  Mapping 'execute_DP_OP_145J14_122_209_1'

  Beginning Isolate Ports
  -----------------------

  Beginning Delay Optimization
  ----------------------------
    0:06:19  244246.2      2.68   17979.8    9520.6                           3784065.0000      0.00  
    0:06:22  244540.4      1.44    5603.6    9536.5                           3793113.0000      0.00  
    0:06:22  244540.4      1.44    5603.6    9536.5                           3793113.0000      0.00  
    0:06:26  244501.6      1.44    5580.0    9620.3                           3792427.5000      0.00  
    0:06:38  243696.2      1.45    5108.6    9798.7                           3774383.0000      0.00  
    0:06:42  243246.1      1.44    5048.7    9641.4                           3761857.0000      0.00  

  Beginning WLM Backend Optimization
  --------------------------------------
    0:06:56  242768.6      1.44    5013.9    9621.6                           3728606.5000      0.00  
    0:07:00  242209.2      1.44    4730.1    9473.8                           3694265.0000      0.00  
    0:07:03  241585.2      1.44    4692.0    9472.9                           3664948.5000      0.00  
    0:07:07  240866.4      1.44    4494.9    9472.9                           3635654.7500      0.00  
    0:07:15  240030.9      1.44    4435.1    9469.9                           3602742.5000      0.00  
    0:07:18  239570.2      1.44    4408.6    9404.6                           3584841.5000      0.00  
    0:07:19  239148.1      1.44    4408.1    9403.6                           3568241.2500      0.00  
    0:07:20  239131.9      1.43    4395.1    9506.5                           3567235.0000      0.00  
    0:07:20  239131.9      1.43    4395.1    9506.5                           3567235.0000      0.00  
    0:07:28  235850.7      1.44    4202.0    8934.1                           3362974.0000      0.00  
    0:07:28  235850.7      1.44    4202.0    8934.1                           3362974.0000      0.00  
    0:07:31  236266.5      1.06    3818.4    9139.0                           3377951.2500      0.00  
    0:07:31  236266.5      1.06    3818.4    9139.0                           3377951.2500      0.00  
    0:07:31  236268.9      1.06    3818.4    9139.0                           3378080.5000      0.00  
    0:07:31  236268.9      1.06    3818.4    9139.0                           3378080.5000      0.00  
    0:07:31  236268.9      1.06    3818.4    9139.0                           3378080.5000      0.00  
    0:07:31  236268.9      1.06    3818.4    9139.0                           3378080.5000      0.00  
    0:07:35  236300.0      0.81    2446.3    9072.5                           3380256.5000      0.00  
    0:07:35  236300.0      0.81    2446.3    9072.5                           3380256.5000      0.00  
    0:07:44  236709.1      0.68    2107.0    9043.9                           3394124.2500      0.00  
    0:07:44  236709.1      0.68    2107.0    9043.9                           3394124.2500      0.00  
    0:07:47  236803.3      0.61    1865.8    9048.7                           3398204.0000      0.00  
    0:07:47  236803.3      0.61    1865.8    9048.7                           3398204.0000      0.00  
    0:07:47  236803.3      0.61    1865.8    9048.7                           3398204.0000      0.00  
    0:07:48  236803.3      0.61    1865.8    9048.7                           3398204.0000      0.00  
    0:07:48  236803.3      0.61    1865.8    9048.7                           3398204.0000      0.00  
    0:07:48  236803.3      0.61    1865.8    9048.7                           3398204.0000      0.00  
    0:07:48  236803.3      0.61    1865.8    9048.7                           3398204.0000      0.00  


  Beginning Design Rule Fixing  (max_transition)  (max_fanout)  (max_capacitance)
  ----------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:07:48  236803.3      0.61    1865.8    9048.7                           3398204.0000      0.00  
  Global Optimization (Phase 33)
  Global Optimization (Phase 34)
  Global Optimization (Phase 35)
    0:07:52  236919.8      0.59    1749.0    7763.8 reservation_stations_i/branch_reservation_station_reg_0__decode_info__pc__31_/SE 3401595.2500      0.00  
    0:07:56  236896.1      0.55    1695.8    7763.8 rob_i/mem_reg_9__pc_branch__28_/SE 3399232.0000      0.00  
    0:07:58  236867.1      0.54    1640.9    7763.8 rat_i/valid_reg_31_/D     3397248.0000      0.00  
    0:08:01  236827.8      0.52    1536.0    7763.8 rob_i/mem_reg_9__pc_branch__28_/SE 3395120.5000      0.00  
    0:08:03  236829.1      0.50    1505.9    7763.8 rob_i/mem_reg_9__pc_branch__28_/SE 3394552.0000      0.00  
    0:08:05  236842.7      0.49    1458.3    7763.8 phys_regfile_i/data_reg_31__30_/D 3394414.0000      0.00  
    0:08:07  236905.2      0.51    1511.9    7436.5 rat_i/valid_reg_31_/D     3395450.2500      0.00  
    0:08:09  236904.9      0.48    1455.7    7435.7 rat_i/valid_reg_22_/D     3394653.7500      0.00  
    0:08:11  236911.8      0.46    1417.3    7434.8 phys_regfile_i/data_reg_20__31_/D 3394241.7500      0.00  
    0:08:13  236924.6      0.45    1401.9    7434.0 reservation_stations_i/branch_reservation_station_reg_2__ps2_v_/SE 3394443.7500      0.00  
    0:08:15  236893.7      0.44    1366.2    7434.0 rob_i/mem_reg_5__pc_branch__29_/SE 3392113.2500      0.00  
    0:08:17  236904.1      0.44    1338.5    7434.0 phys_regfile_i/data_reg_12__31_/D 3392055.2500      0.00  
    0:08:19  236919.3      0.43    1326.4    7434.0 reservation_stations_i/mem_reservation_station_reg_1__ps1_v_/SE 3392266.0000      0.00  
    0:08:21  236909.4      0.42    1270.6    7434.0 rob_i/mem_reg_9__pc_branch__28_/SE 3390984.2500      0.00  
    0:08:23  236898.3      0.41    1243.3    7434.0 rob_i/mem_reg_9__pc_branch__28_/SE 3390095.7500      0.00  
    0:08:25  236887.6      0.40    1218.2    7434.0 rob_i/mem_reg_5__pc_branch__29_/SE 3389078.7500      0.00  
    0:08:27  236894.5      0.40    1185.5    7434.0 execute_i/fu_mul_i/U1/mac_reg_reg[28]/D 3388767.2500      0.00  
    0:08:28  236940.0      0.40    1171.2    7116.5 rat_i/valid_reg_22_/D     3389494.0000      0.00  
    0:08:30  236934.2      0.39    1084.6    7116.5 reservation_stations_i/branch_reservation_station_reg_2__ps2_v_/SE 3388490.7500      0.00  
    0:08:30  236935.0      0.39    1084.6    7116.5                           3388497.2500      0.00  
    0:08:31  236949.9      0.39    1082.5    7113.4                           3388976.5000      0.00  


  Beginning Leakage Power Optimization  (max_leakage_power 0)
  ------------------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:08:31  236949.9      0.39    1082.5    7113.4                           3388976.5000      0.00  
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
Information: Complementing port 'data_valid' in design 'memory_queue'.
	 The new name of the port is 'data_valid_BAR'. (OPT-319)
Information: Complementing port 'ufp_resp' in design 'stage_2_0'.
	 The new name of the port is 'ufp_resp_BAR'. (OPT-319)
Information: Complementing port 'rob_out[414]_BAR' in design 'rob'.
	 The new name of the port is 'rob_out[414]'. (OPT-319)
Information: Complementing port 'rob_out[411]_BAR' in design 'rob'.
	 The new name of the port is 'rob_out[411]'. (OPT-319)
Information: Complementing port 'rob_out[410]_BAR' in design 'rob'.
	 The new name of the port is 'rob_out[410]'. (OPT-319)
Information: Complementing port 'read_halt' in design 'stage_2_0'.
	 The new name of the port is 'read_halt_BAR'. (OPT-319)
    0:09:10  234580.9      0.37    1068.1    6585.6 rob_i/mem_reg_12__pc_branch__15_/SE 3224765.5000      0.00  
    0:09:11  234569.7      0.36    1052.9    6585.6 rob_i/mem_reg_12__pc_branch__15_/SE 3223841.2500      0.00  
    0:09:12  234583.3      0.36    1045.5    6585.6                           3224237.0000      0.00  
    0:09:14  234646.8      0.35    1038.4    6585.6                           3226285.0000      0.00  
    0:09:14  234646.8      0.35    1038.4    6585.6                           3226285.0000      0.00  
    0:09:20  233998.3      0.35     956.0    6588.2                           3190001.2500      0.00  
    0:09:20  233998.3      0.35     956.0    6588.2                           3190001.2500      0.00  
    0:09:22  234093.8      0.34     921.1    6598.6                           3193753.2500      0.00  
    0:09:23  234093.8      0.34     921.1    6598.6                           3193753.2500      0.00  
    0:09:23  234096.5      0.34     916.1    6598.6                           3194004.7500      0.00  
    0:09:23  234096.5      0.34     916.1    6598.6                           3194004.7500      0.00  
    0:09:23  234096.5      0.34     916.1    6598.6                           3194004.7500      0.00  
    0:09:23  234096.5      0.34     916.1    6598.6                           3194004.7500      0.00  
    0:09:28  234161.4      0.31     791.2    6617.3                           3197360.5000      0.00  
    0:09:28  234161.4      0.31     791.2    6617.3                           3197360.5000      0.00  
    0:09:28  234165.4      0.31     791.2    6617.3                           3197523.7500      0.00  
    0:09:28  234165.4      0.31     791.2    6617.3                           3197523.7500      0.00  
    0:09:28  234171.5      0.31     791.2    6622.8                           3197832.5000      0.00  
    0:09:28  234171.5      0.31     791.2    6622.8                           3197832.5000      0.00  
    0:09:29  234171.5      0.31     791.2    6622.8                           3197832.5000      0.00  
    0:09:29  234171.5      0.31     791.2    6622.8                           3197832.5000      0.00  
    0:09:29  234171.5      0.31     791.2    6622.8                           3197832.5000      0.00  
    0:09:29  234171.5      0.31     791.2    6622.8                           3197832.5000      0.00  
    0:09:29  234171.5      0.31     791.2    6622.8                           3197832.5000      0.00  

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:09:36  234165.1      0.31     789.7    6622.8                           3197716.5000      0.00  
    0:09:44  232428.7      0.34    1182.0    6601.1                           3109855.2500      0.00  
    0:09:47  232445.7      0.32    1161.8    6601.9                           3110947.0000      0.00  
    0:09:49  232416.4      0.32    1160.6    6601.9                           3109724.2500      0.00  
    0:09:50  232403.1      0.32    1160.3    6601.9                           3109425.2500      0.00  
    0:09:52  232402.1      0.32    1160.3    6601.9                           3109388.7500      0.00  
    0:09:53  232394.1      0.32    1158.7    6601.1                           3109170.7500      0.00  
    0:09:53  232394.1      0.32    1158.7    6601.1                           3109170.7500      0.00  
    0:10:00  232569.4      0.32    1033.5    6601.1                           3120625.7500      0.00  
    0:10:04  232444.6      0.32    1031.1    6601.1                           3117447.0000      0.00  
    0:10:08  232376.8      0.32    1017.0    6601.1                           3115194.5000      0.00  
    0:10:13  232452.9      0.32    1008.0    6352.1 cache_d/data_out[535]     3115405.2500      0.00  
    0:10:16  232708.2      0.30    1059.6    6145.6 rob_i/mem_reg_8__pc_branch__16_/SE 3124044.7500      0.00  
    0:10:18  232731.9      0.30    1053.2    6145.6 rob_i/mem_reg_8__pc_branch__16_/SE 3124984.2500      0.00  
    0:10:19  232760.6      0.29    1004.2    6388.2 rob_i/mem_reg_15__pc_branch__22_/SE 3126125.5000      0.00  
    0:10:21  232797.6      0.28     972.3    6397.8 rob_i/mem_reg_8__pc_branch__7_/SE 3127826.0000      0.00  
    0:10:23  232855.1      0.28     955.6    6404.2 rob_i/mem_reg_15__pc_branch__22_/SE 3130260.2500      0.00  
    0:10:25  232863.6      0.28     825.2    6112.4 rob_i/mem_reg_8__pc_branch__13_/SE 3130685.5000      0.00  
    0:10:27  232886.2      0.27     806.5    6112.4 rob_i/mem_reg_8__pc_branch__13_/SE 3131549.0000      0.00  
    0:10:29  232943.4      0.27     786.0    5910.0 cache_d/stage_2_i/data_out[48] 3132773.2500      0.00  
    0:10:29  232982.5      0.27     786.0    5722.4                           3133322.7500      0.00  
    0:10:35  233166.3      0.24     616.8    5767.3                           3141738.2500      0.00  
    0:10:35  233166.3      0.24     616.8    5767.3                           3141738.2500      0.00  
    0:10:37  233168.1      0.24     610.9    5767.3                           3141930.5000      0.00  
    0:10:38  233168.1      0.24     610.9    5767.3                           3141930.5000      0.00  
    0:10:38  233168.1      0.24     610.9    5767.3                           3141930.5000      0.00  
    0:10:45  232917.6      0.24     586.5    5776.4                           3129047.0000      0.00  
Loading db file '/srv/ece411ag/freepdk-45nm/stdcells.db'
Loading db file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db'
Loading db file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db'


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
    0:00:17  232927.1      0.24     586.5    5778.8                           3129195.2500      0.00  
    0:00:18  233033.8      0.24     568.5    5785.2                           3137833.5000      0.00  
    0:00:19  233030.6      0.24     568.2    5785.2                           3137733.7500      0.00  
    0:00:21  233025.6      0.24     568.1    5785.2                           3137648.5000      0.00  
    0:00:22  233014.9      0.24     568.0    5785.2                           3137325.0000      0.00  
    0:00:28  233047.6      0.24     569.4    5785.2                           3142228.5000      0.00  
Information: Complementing port 'read_halt_BAR' in design 'stage_2_0'.
	 The new name of the port is 'read_halt'. (OPT-319)

  Beginning Mapping Optimizations  (Ultra High effort)  (Incremental)
  -------------------------------

  Beginning Incremental Implementation Selection
  ----------------------------------------------
    0:01:29  242112.9      0.17     447.6    5848.9                           3303466.5000      0.00  

  Beginning Delay Optimization Phase
  ----------------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:29  242112.9      0.17     447.6    5848.9                           3303466.5000      0.00  
    0:01:36  243967.2      0.64    1555.4    5926.0                           3409795.2500      0.00  
    0:01:41  242819.9      0.62    2080.8    5844.8                           3350648.0000      0.00  
    0:01:41  242819.9      0.62    2080.8    5844.8                           3350648.0000      0.00  
    0:01:42  242815.7      0.59    2037.1    5844.8                           3350456.0000      0.00  
    0:01:42  242815.7      0.59    2037.1    5844.8                           3350456.0000      0.00  
    0:01:50  242670.2      0.17     732.6    6075.6                           3345256.2500      0.00  

  Beginning Delay Optimization
  ----------------------------
    0:01:50  242670.2      0.17     732.6    6075.6                           3345256.2500      0.00  
    0:01:50  242670.2      0.17     732.6    6075.6                           3345256.2500      0.00  
    0:01:50  242670.2      0.17     732.6    6075.6                           3345256.2500      0.00  
    0:01:50  242670.2      0.17     732.6    6075.6                           3345256.2500      0.00  
    0:01:50  242670.2      0.17     732.6    6075.6                           3345256.2500      0.00  
    0:01:53  242631.4      0.17     733.9    6078.6                           3343089.7500      0.00  


  Beginning Design Rule Fixing  (max_transition)  (max_fanout)  (max_capacitance)
  ----------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:55  242631.4      0.17     733.9    6078.6                           3343089.7500      0.00  
    0:02:00  242881.7      0.17     677.9    5244.0 R_1928/D                  3347363.7500      0.00  
    0:02:02  242898.2      0.16     659.2    5282.3 rob_i/R_923/D             3347696.7500      0.00  
    0:02:06  242922.6      0.16     370.4    5027.3 memory_queue_i/mem_reg_12__addr__21_/SE 3347037.0000      0.00  
    0:02:08  242939.6      0.15     366.1    5027.3 rob_i/mem_reg_10__pc_branch__12_/SE 3347069.7500      0.00  
    0:02:10  242965.4      0.14     332.4    5027.3 phys_regfile_i/data_reg_4__30_/D 3348149.7500      0.00  
    0:02:13  243022.4      0.20     435.8    4831.1 free_list_i/mem_reg_17__4_/SE 3349233.7500      0.00  
    0:02:15  243058.5      0.17     416.8    4831.1 R_1928/D                  3350599.2500      0.00  
    0:02:16  243081.4      0.16     392.8    4831.1 free_list_i/mem_reg_3__1_/SE 3351004.0000      0.00  
    0:02:19  243109.9      0.15     477.3    4831.1 R_1928/D                  3351646.7500      0.00  
    0:02:22  243124.5      0.14     341.2    4827.3 cache_d/stage_2_i/data_out[294] 3351979.7500      0.00  
    0:02:22  243163.6      0.14     341.2    4643.9                           3352529.2500      0.00  
    0:02:29  243058.3      0.14     314.3    4645.3                           3347911.2500      0.00  
    0:02:30  243058.3      0.14     314.3    4645.3                           3347911.2500      0.00  
    0:02:30  243061.2      0.14     313.9    4645.3                           3348112.0000      0.00  
    0:02:30  243061.2      0.14     313.9    4645.3                           3348112.0000      0.00  
    0:02:32  243096.6      0.13     289.1    4675.3                           3349300.2500      0.00  
    0:02:32  243096.6      0.13     289.1    4675.3                           3349300.2500      0.00  
    0:02:33  243111.2      0.13     286.1    4675.3                           3349954.0000      0.00  
    0:02:33  243111.2      0.13     286.1    4675.3                           3349954.0000      0.00  
    0:02:33  243111.2      0.13     286.1    4675.3                           3349954.0000      0.00  
    0:02:37  243140.7      0.12     341.1    4675.3                           3351062.7500      0.00  
    0:02:39  243151.1      0.12     326.2    4675.3                           3351263.0000      0.00  
    0:02:41  243170.8      0.12     319.1    4675.3                           3351912.0000      0.00  
    0:02:42  243188.1      0.12     304.8    4675.3                           3352597.5000      0.00  
    0:02:44  243212.6      0.12     295.9    4675.3                           3353350.5000      0.00  
    0:02:46  243242.1      0.12     277.1    4675.3                           3354531.0000      0.00  
    0:02:53  243104.6      0.12     206.3    4674.9                           3346901.7500      0.00  
    0:02:53  243104.6      0.12     206.3    4674.9                           3346901.7500      0.00  
    0:02:53  243104.6      0.12     206.3    4674.9                           3346901.7500      0.00  
    0:02:53  243104.6      0.12     206.3    4674.9                           3346901.7500      0.00  
    0:02:54  243137.0      0.12     212.8    4681.3                           3348792.2500      0.00  
    0:02:54  243137.0      0.12     212.8    4681.3                           3348792.2500      0.00  
    0:02:54  243137.0      0.12     212.8    4681.3                           3348792.2500      0.00  
    0:02:54  243137.0      0.12     212.8    4681.3                           3348792.2500      0.00  
    0:02:54  243137.0      0.12     212.8    4681.3                           3348792.2500      0.00  
    0:02:55  243137.0      0.12     212.8    4681.3                           3348792.2500      0.00  

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:02:56  243137.0      0.12     212.8    4681.3                           3348792.2500      0.00  
    0:03:01  243048.4      0.12     210.1    4674.9                           3343940.2500      0.00  
    0:03:04  242725.5      0.12     212.0    4674.8                           3334054.5000      0.00  
    0:03:08  242305.8      0.12     211.3    4674.8                           3322084.2500      0.00  
    0:03:10  242078.9      0.12     227.2    4674.8                           3315491.2500      0.00  
    0:03:16  242073.0      0.12     230.0    4375.1 cache_d/data_out[104]     3309041.2500      0.00  
    0:03:18  242156.3      0.11     210.6    4262.0 rob_i/R_740/D             3311340.0000      0.00  
    0:03:19  242183.4      0.11     210.1    4153.4 cache_d/stage_2_i/data_out[404] 3311822.5000      0.00  
    0:03:20  242240.1      0.11     210.1    3887.5                           3312618.5000      0.00  
    0:03:27  241488.1      0.14     381.5    3887.2                           3284539.0000      0.00  
    0:03:32  241558.0      0.11     363.8    3887.2                           3286731.7500      0.00  
    0:03:33  241554.9      0.11     363.8    3887.2                           3286680.2500      0.00  
    0:03:34  241554.9      0.11     363.8    3887.2                           3286680.2500      0.00  
    0:03:34  241554.9      0.11     363.8    3887.2                           3286680.2500      0.00  
    0:03:37  241611.2      0.10     320.9    3909.4                           3289878.0000      0.00  
    0:03:37  241611.2      0.10     320.9    3909.4                           3289878.0000      0.00  
    0:03:38  241611.2      0.10     320.9    3909.4                           3289878.0000      0.00  
    0:03:38  241611.2      0.10     320.9    3909.4                           3289878.0000      0.00  
    0:03:38  241611.2      0.10     320.9    3909.4                           3289878.0000      0.00  
    0:03:38  241611.2      0.10     320.9    3909.4                           3289878.0000      0.00  
    0:03:40  241606.5      0.10     303.2    3909.4                           3289654.0000      0.00  
    0:03:43  241604.6      0.10     296.3    3909.4                           3289549.0000      0.00  
    0:03:45  241601.7      0.10     295.4    3909.4                           3289479.0000      0.00  
    0:03:52  241600.6      0.10     294.5    3909.4                           3289472.2500      0.00  
    0:03:57  241599.0      0.10     293.9    3909.4                           3289387.7500      0.00  
    0:03:58  241598.7      0.10     293.8    3909.4                           3289375.0000      0.00  
    0:03:58  241598.7      0.10     293.8    3909.4                           3289375.0000      0.00  
    0:03:58  241599.8      0.10     293.8    3909.4                           3289471.5000      0.00  
    0:04:06  241432.5      0.10     216.2    3911.4                           3278723.2500      0.00  
Loading db file '/srv/ece411ag/freepdk-45nm/stdcells.db'
Loading db file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db'
Loading db file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db'


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
    0:00:16  241432.5      0.10     215.8    3911.4                           3278723.2500      0.00  
    0:00:18  241682.3      0.10     181.2    3926.2                           3297526.0000      0.00  
    0:00:19  241677.5      0.10     181.1    3926.2                           3297438.7500      0.00  
    0:00:21  241676.7      0.10     181.1    3926.2                           3297417.2500      0.00  
    0:00:22  241676.1      0.10     181.3    3926.2                           3297403.0000      0.00  
    0:00:28  241672.2      0.10     179.5    3926.1                           3297344.0000      0.00  
Information: Complementing port 'read_halt' in design 'stage_2_0'.
	 The new name of the port is 'read_halt_BAR'. (OPT-319)

  Beginning Mapping Optimizations  (Ultra High effort)  (Incremental)
  -------------------------------

  Beginning Incremental Implementation Selection
  ----------------------------------------------
    0:00:45  240260.0      0.10     188.7    4047.9                           3273409.0000      0.00  

  Beginning Delay Optimization Phase
  ----------------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:00:45  240260.0      0.10     188.7    4047.9                           3273409.0000      0.00  
    0:00:51  242331.3      0.87    1569.6    4047.9                           3382767.5000      0.00  
    0:00:56  241406.2      0.83    1173.0    4035.9                           3330557.0000      0.00  
    0:00:57  241406.2      0.83    1173.0    4035.9                           3330557.0000      0.00  
    0:00:57  241404.3      0.51     631.0    4035.9                           3330607.5000      0.00  
    0:00:57  241404.3      0.51     631.0    4035.9                           3330607.5000      0.00  
    0:01:00  241346.8      0.15     255.9    4062.9                           3327154.0000      0.00  

  Beginning Delay Optimization
  ----------------------------
    0:01:00  241346.8      0.15     255.9    4062.9                           3327154.0000      0.00  
    0:01:00  241346.8      0.15     255.9    4062.9                           3327154.0000      0.00  
    0:01:00  241346.8      0.15     255.9    4062.9                           3327154.0000      0.00  
    0:01:00  241346.8      0.15     255.9    4062.9                           3327154.0000      0.00  
    0:01:00  241346.8      0.15     255.9    4062.9                           3327154.0000      0.00  
    0:01:04  241280.6      0.15     264.7    4062.7                           3323588.5000      0.00  


  Beginning Design Rule Fixing  (max_transition)  (max_fanout)  (max_capacitance)
  ----------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:06  241280.6      0.15     264.7    4062.7                           3323588.5000      0.00  
    0:01:09  241528.3      0.13     237.5    3634.7 execute_i/fu_div_i/U1/shf_reg_reg[0][2]/SI 3329705.7500      0.00  
    0:01:12  241528.0      0.10     186.9    3664.7 rob_i/R_1657/D            3328827.7500      0.00  
    0:01:14  241539.7      0.10     181.3    3734.9 rob_i/R_1657/D            3328843.2500      0.00  
    0:01:15  241551.7      0.10     180.2    3735.1 rob_i/R_1657/D            3328921.5000      0.00  
    0:01:17  241556.4      0.10     178.9    3736.9 R_2009/D                  3328894.2500      0.00  
    0:01:19  241588.1      0.09     177.9    3511.3 cache_d/stage_2_i/data_out[88] 3329412.0000      0.00  
    0:01:21  241607.0      0.09     172.1    3444.7 rob_i/R_794/D             3329635.7500      0.00  
    0:01:23  241608.8      0.09     167.0    3444.7 rob_i/R_1657/D            3329660.0000      0.00  
    0:01:25  241643.7      0.15     179.0    3252.7 execute_i/fu_div_i/U1/shf_reg_reg[0][2]/SI 3329566.0000      0.00  
    0:01:27  241669.2      0.10     197.9    3252.7 R_1937/D                  3330330.5000      0.00  
    0:01:30  241678.8      0.09     180.7    3252.5 rob_i/R_1666/D            3330549.0000      0.00  
    0:01:30  241718.7      0.09     180.7    3067.6                           3331109.7500      0.00  
    0:01:37  241579.9      0.09     175.8    3067.6                           3323160.2500      0.00  
    0:01:37  241579.9      0.09     175.8    3067.6                           3323160.2500      0.00  
    0:01:37  241580.1      0.09     175.7    3067.6                           3323183.0000      0.00  
    0:01:37  241580.1      0.09     175.7    3067.6                           3323183.0000      0.00  
    0:01:41  241653.3      0.08     126.5    3072.6                           3327507.0000      0.00  
    0:01:41  241653.3      0.08     126.5    3072.6                           3327507.0000      0.00  
    0:01:41  241666.3      0.08     126.3    3072.6                           3328246.7500      0.00  
    0:01:41  241666.3      0.08     126.3    3072.6                           3328246.7500      0.00  
    0:01:41  241666.3      0.08     126.3    3072.6                           3328246.7500      0.00  
    0:01:43  241675.6      0.08     124.7    3072.6                           3328560.5000      0.00  
    0:01:44  241690.8      0.08     113.5    3072.6                           3328886.7500      0.00  
    0:01:46  241710.5      0.08     101.5    3072.6                           3329267.0000      0.00  
    0:01:47  241711.3      0.08     101.5    3072.6                           3329278.2500      0.00  
    0:01:53  241521.1      0.08      95.7    3072.1                           3319299.0000      0.00  
    0:01:54  241521.1      0.08      95.7    3072.1                           3319299.0000      0.00  
    0:01:54  241522.9      0.08      96.2    3072.1                           3319386.2500      0.00  
    0:01:54  241522.9      0.08      96.2    3072.1                           3319386.2500      0.00  
    0:01:55  241532.0      0.08      95.4    3072.1                           3320036.0000      0.00  
    0:01:55  241532.0      0.08      95.4    3072.1                           3320036.0000      0.00  
    0:01:55  241532.0      0.08      95.4    3072.1                           3320036.0000      0.00  
    0:01:55  241532.0      0.08      95.4    3072.1                           3320036.0000      0.00  
    0:01:55  241532.0      0.08      95.4    3072.1                           3320036.0000      0.00  
    0:01:56  241532.0      0.08      95.4    3072.1                           3320036.0000      0.00  

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:57  241532.0      0.08      95.4    3072.1                           3320036.0000      0.00  
    0:02:01  241450.8      0.08      95.3    3072.1                           3315368.7500      0.00  
    0:02:04  241241.0      0.08      92.7    3072.1                           3308221.2500      0.00  
    0:02:08  240821.5      0.08      91.0    3072.1                           3289430.2500      0.00  
    0:02:12  240784.5      0.08      91.5    3072.1                           3287063.2500      0.00  
    0:02:16  240931.6      0.08      89.7    2708.0 rob_i/R_708/D             3287860.2500      0.00  
    0:02:17  240939.9      0.07      89.4    2708.0 rob_i/R_708/D             3287914.5000      0.00  
    0:02:20  240989.9      0.11     125.8    2519.9 execute_i/R_1838/D        3288953.0000      0.00  
    0:02:21  241018.6      0.07     107.6    2519.9 R_3888/D                  3289877.5000      0.00  
    0:02:22  241058.5      0.07     100.8    2339.0                           3290438.2500      0.00  
    0:02:27  240721.7      0.10     216.4    2338.3                           3275490.2500      0.00  
    0:02:30  240758.2      0.08     203.9    2338.3                           3276661.5000      0.00  
    0:02:32  240755.3      0.08     203.9    2338.3                           3276600.2500      0.00  
    0:02:34  240755.3      0.08     203.9    2338.3                           3276600.2500      0.00  
    0:02:34  240755.3      0.08     203.9    2338.3                           3276600.2500      0.00  
    0:02:36  240820.2      0.07     192.2    2338.3                           3279857.5000      0.00  
    0:02:36  240820.2      0.07     192.2    2338.3                           3279857.5000      0.00  
    0:02:37  240820.2      0.07     192.2    2338.3                           3279857.5000      0.00  
    0:02:37  240820.2      0.07     192.2    2338.3                           3279857.5000      0.00  
    0:02:37  240820.2      0.07     192.2    2338.3                           3279857.5000      0.00  
    0:02:37  240820.2      0.07     192.2    2338.3                           3279857.5000      0.00  
    0:02:39  240814.6      0.07     184.9    2338.3                           3279492.0000      0.00  
    0:02:40  240808.2      0.07     183.5    2338.3                           3279190.0000      0.00  
    0:02:43  240802.9      0.07     170.2    2338.3                           3278902.7500      0.00  
    0:02:45  240794.4      0.07     159.0    2338.3                           3278647.5000      0.00  
    0:02:47  240786.4      0.07     150.8    2338.3                           3278308.2500      0.00  
    0:02:48  240786.4      0.07     150.8    2338.3                           3278308.2500      0.00  
    0:02:48  240786.4      0.07     150.8    2338.3                           3278308.2500      0.00  
    0:02:56  240652.3      0.07     148.5    2338.3                           3268631.7500      0.00  
Loading db file '/srv/ece411ag/freepdk-45nm/stdcells.db'
Loading db file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db'
Loading db file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db'


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
    0:00:15  240652.3      0.07     148.3    2338.3                           3268631.7500      0.00  
    0:00:17  240895.7      0.07     112.6    2345.7                           3284875.0000      0.00  
    0:00:19  240888.3      0.07     112.5    2345.7                           3284584.7500      0.00  

  Beginning Mapping Optimizations  (Ultra High effort)  (Incremental)
  -------------------------------

  Beginning Incremental Implementation Selection
  ----------------------------------------------
    0:00:40  239864.2      0.08     115.7    2427.9                           3268815.0000      0.00  

  Beginning Delay Optimization Phase
  ----------------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:00:40  239864.2      0.08     115.7    2427.9                           3268815.0000      0.00  
    0:00:45  240216.3      0.48     891.5    2427.9                           3287445.0000      0.00  
    0:00:50  240090.3      0.47    1185.8    2348.1                           3281247.7500      0.00  
    0:00:50  240090.3      0.47    1185.8    2348.1                           3281247.7500      0.00  
    0:00:51  240081.7      0.32     913.6    2348.1                           3280799.0000      0.00  
    0:00:51  240081.7      0.32     913.6    2348.1                           3280799.0000      0.00  
    0:00:52  240033.1      0.08     108.6    2353.4                           3278059.5000      0.00  

  Beginning Delay Optimization
  ----------------------------
    0:00:52  240033.1      0.08     108.6    2353.4                           3278059.5000      0.00  
    0:00:52  240033.1      0.08     108.6    2353.4                           3278059.5000      0.00  
    0:00:52  240033.1      0.08     108.6    2353.4                           3278059.5000      0.00  
    0:00:53  240033.1      0.08     108.6    2353.4                           3278059.5000      0.00  
    0:00:53  240033.1      0.08     108.6    2353.4                           3278059.5000      0.00  
    0:00:56  240003.5      0.08     109.3    2353.4                           3275485.5000      0.00  


  Beginning Design Rule Fixing  (max_transition)  (max_capacitance)
  ----------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:00:58  240003.5      0.08     109.3    2353.4                           3275485.5000      0.00  
    0:01:00  240220.3      0.08     108.0    1993.9 rob_i/R_881/D             3280180.5000      0.00  
    0:01:01  240222.5      0.07     107.2    1993.9 rob_i/R_881/D             3280244.7500      0.00  
    0:01:03  240265.0      0.07     102.2    1813.3 rob_i/R_1523/D            3280855.2500      0.00  
    0:01:04  240310.2      0.07     101.3    1632.8 rob_i/R_1242/D            3281411.5000      0.00  
    0:01:05  240351.2      0.07     101.1    1466.4                           3281861.0000      0.00  
    0:01:10  240370.9      0.07     100.6    1466.4                           3283408.5000      0.00  
    0:01:11  240370.9      0.07     100.6    1466.4                           3283408.5000      0.00  
    0:01:11  240372.5      0.07     101.4    1466.4                           3283504.2500      0.00  
    0:01:11  240372.5      0.07     101.4    1466.4                           3283504.2500      0.00  
    0:01:13  240373.8      0.07      83.2    1468.4                           3283251.5000      0.00  
    0:01:13  240373.8      0.07      83.2    1468.4                           3283251.5000      0.00  
    0:01:14  240388.7      0.07      82.1    1474.8                           3283828.5000      0.00  
    0:01:14  240388.7      0.07      82.1    1474.8                           3283828.5000      0.00  
    0:01:15  240388.7      0.07      82.1    1474.8                           3283828.5000      0.00  
    0:01:16  240393.0      0.07      73.2    1474.8                           3283938.0000      0.00  
    0:01:18  240432.9      0.07      71.6    1474.8                           3285515.5000      0.00  
    0:01:20  240445.9      0.07      67.7    1474.8                           3286015.0000      0.00  
    0:01:25  240419.3      0.07      66.7    1474.8                           3284626.2500      0.00  
    0:01:25  240419.3      0.07      66.7    1474.8                           3284626.2500      0.00  
    0:01:25  240419.3      0.07      66.7    1474.8                           3284626.2500      0.00  
    0:01:25  240419.3      0.07      66.7    1474.8                           3284626.2500      0.00  
    0:01:25  240422.8      0.07      66.7    1474.8                           3284800.0000      0.00  
    0:01:25  240422.8      0.07      66.7    1474.8                           3284800.0000      0.00  
    0:01:25  240422.8      0.07      66.7    1474.8                           3284800.0000      0.00  
    0:01:25  240422.8      0.07      66.7    1474.8                           3284800.0000      0.00  
    0:01:25  240422.8      0.07      66.7    1474.8                           3284800.0000      0.00  
    0:01:26  240422.8      0.07      66.7    1474.8                           3284800.0000      0.00  

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:27  240422.8      0.07      66.7    1474.8                           3284800.0000      0.00  
    0:01:32  240425.4      0.07      66.9    1474.8                           3284976.5000      0.00  
    0:01:33  240260.5      0.07      62.8    1474.8                           3281143.7500      0.00  
    0:01:37  240071.1      0.07      61.0    1474.8                           3273552.7500      0.00  
    0:01:40  240044.5      0.07      61.0    1474.8                           3272535.2500      0.00  
    0:01:46  240048.5      0.07      63.5    1376.8 rob_i/R_1705/D            3268378.5000      0.00  
    0:01:47  240051.4      0.06      63.7    1376.8 rob_i/R_794/D             3268366.2500      0.00  
    0:01:52  240093.4      0.08     118.9    1308.6 R_3888/D                  3268977.0000      0.00  
    0:01:54  240147.2      0.06     106.5    1250.2                           3269925.5000      0.00  
    0:01:59  239874.5      0.08     162.6    1257.3                           3255924.0000      0.00  
    0:02:01  239917.6      0.07     145.7    1257.3                           3257309.7500      0.00  
    0:02:03  239910.4      0.07     145.2    1257.3                           3257165.2500      0.00  
    0:02:05  239909.9      0.07     144.3    1257.3                           3257161.7500      0.00  
    0:02:05  239909.9      0.07     144.3    1257.3                           3257161.7500      0.00  
    0:02:05  239909.9      0.07     144.3    1257.3                           3257161.7500      0.00  
    0:02:08  239953.8      0.07     125.9    1278.0                           3259149.0000      0.00  
    0:02:08  239953.8      0.07     125.9    1278.0                           3259149.0000      0.00  
    0:02:09  239953.8      0.07     125.9    1278.0                           3259149.0000      0.00  
    0:02:09  239953.8      0.07     125.9    1278.0                           3259149.0000      0.00  
    0:02:09  239953.8      0.07     125.9    1278.0                           3259149.0000      0.00  
    0:02:09  239953.8      0.07     125.9    1278.0                           3259149.0000      0.00  
    0:02:11  239949.0      0.07     123.4    1278.0                           3258981.7500      0.00  
    0:02:12  239947.7      0.07     123.0    1278.0                           3258972.0000      0.00  
    0:02:14  239944.5      0.07     122.8    1278.0                           3258896.5000      0.00  
    0:02:15  239938.6      0.07     122.6    1278.0                           3258724.0000      0.00  
    0:02:17  239934.9      0.07     122.4    1278.0                           3258583.7500      0.00  
    0:02:17  239934.9      0.07     122.4    1278.0                           3258583.7500      0.00  
    0:02:17  239934.9      0.07     122.4    1278.0                           3258583.7500      0.00  
    0:02:24  239854.3      0.07     122.4    1257.4                           3254560.2500      0.00  
Loading db file '/srv/ece411ag/freepdk-45nm/stdcells.db'
Loading db file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db'
Loading db file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db'


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
    0:00:15  239854.3      0.07     122.3    1257.4                           3254560.2500      0.00  
    0:00:18  240240.3      0.07     120.5    1261.4                           3289001.7500      0.00  
    0:00:19  240236.3      0.07     120.5    1261.4                           3288884.0000      0.00  
    0:00:26  240233.9      0.07     124.5    1261.4                           3288826.7500      0.00  
Information: Complementing port 'read_halt_BAR' in design 'stage_2_0'.
	 The new name of the port is 'read_halt'. (OPT-319)

  Beginning Mapping Optimizations  (Ultra High effort)  (Incremental)
  -------------------------------

  Beginning Incremental Implementation Selection
  ----------------------------------------------
    0:00:38  239774.2      0.07     134.7    1284.6                           3280888.0000      0.00  

  Beginning Delay Optimization Phase
  ----------------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:00:38  239774.2      0.07     134.7    1284.6                           3280888.0000      0.00  
    0:00:43  240556.3      0.48    1290.3    1284.6                           3322226.7500      0.00  
    0:00:48  240358.9      0.48    1497.2    1272.4                           3310334.0000      0.00  
    0:00:48  240358.9      0.48    1497.2    1272.4                           3310334.0000      0.00  
    0:00:49  240329.4      0.32     979.4    1272.4                           3308761.7500      0.00  
    0:00:49  240329.4      0.32     979.4    1272.4                           3308761.7500      0.00  
    0:00:52  240282.0      0.08     152.4    1272.4                           3305016.2500      0.00  

  Beginning Delay Optimization
  ----------------------------
    0:00:52  240282.0      0.08     152.4    1272.4                           3305016.2500      0.00  
    0:00:52  240282.0      0.08     152.4    1272.4                           3305016.2500      0.00  
    0:00:52  240282.0      0.08     152.4    1272.4                           3305016.2500      0.00  
    0:00:52  240282.0      0.08     152.4    1272.4                           3305016.2500      0.00  
    0:00:52  240282.0      0.08     152.4    1272.4                           3305016.2500      0.00  
    0:00:55  240221.7      0.08     152.6    1272.4                           3300363.7500      0.00  


  Beginning Design Rule Fixing  (max_transition)  (max_capacitance)
  ----------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:00:56  240221.7      0.08     152.6    1272.4                           3300363.7500      0.00  
    0:00:58  240380.5      0.07     121.9    1162.5 rob_i/R_1705/D            3305072.2500      0.00  
    0:01:00  240383.7      0.07     121.5    1155.5 cache_i/stage_2_i/data_out[50] 3305121.5000      0.00  
    0:01:01  240498.6      0.07     121.5     993.2                           3306736.5000      0.00  
    0:01:06  240451.5      0.07     116.9     993.7                           3304599.5000      0.00  
    0:01:06  240451.5      0.07     116.9     993.7                           3304599.5000      0.00  
    0:01:06  240451.7      0.07     116.9     993.7                           3304634.0000      0.00  
    0:01:06  240451.7      0.07     116.9     993.7                           3304634.0000      0.00  
    0:01:06  240460.8      0.07     116.4     993.7                           3305020.7500      0.00  
    0:01:07  240460.8      0.07     116.4     993.7                           3305020.7500      0.00  
    0:01:07  240462.4      0.07     116.4     993.7                           3305075.0000      0.00  
    0:01:07  240462.4      0.07     116.4     993.7                           3305075.0000      0.00  
    0:01:07  240462.4      0.07     116.4     993.7                           3305075.0000      0.00  
    0:01:08  240472.5      0.07      81.0     993.7                           3305394.5000      0.00  
    0:01:10  240498.0      0.07      80.0     993.7                           3306468.7500      0.00  
    0:01:13  240516.4      0.07      78.1     993.7                           3307212.5000      0.00  
    0:01:17  240489.0      0.07      78.3     995.3                           3305739.2500      0.00  
    0:01:18  240489.0      0.07      78.3     995.3                           3305739.2500      0.00  
    0:01:18  240489.0      0.07      78.3     995.3                           3305739.2500      0.00  
    0:01:18  240489.0      0.07      78.3     995.3                           3305739.2500      0.00  
    0:01:20  240515.3      0.07      78.2     995.3                           3306846.2500      0.00  
    0:01:20  240515.3      0.07      78.2     995.3                           3306846.2500      0.00  
    0:01:20  240515.3      0.07      78.2     995.3                           3306846.2500      0.00  
    0:01:20  240515.3      0.07      78.2     995.3                           3306846.2500      0.00  
    0:01:20  240515.3      0.07      78.2     995.3                           3306846.2500      0.00  
    0:01:21  240515.3      0.07      78.2     995.3                           3306846.2500      0.00  

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:22  240515.3      0.07      78.2     995.3                           3306846.2500      0.00  
    0:01:26  240481.8      0.07      78.5     995.3                           3305319.2500      0.00  
    0:01:27  240410.0      0.07      77.3     994.3                           3303261.5000      0.00  
    0:01:31  240353.6      0.07      76.6     994.3                           3301474.5000      0.00  
    0:01:34  240289.8      0.07      83.9     994.0                           3299396.0000      0.00  
    0:01:39  240261.8      0.07      76.3     885.0 rob_i/R_1705/D            3293074.7500      0.00  
    0:01:40  240264.8      0.06      75.1     885.0 rob_i/mem_reg_1__pc_branch__7_/SE 3293018.7500      0.00  
    0:01:42  240275.7      0.06      74.3     885.0 rob_i/R_1705/D            3293222.0000      0.00  
    0:01:43  240316.9      0.06      73.9     831.0 rob_i/mem_reg_1__pc_branch__7_/SE 3293806.7500      0.00  
    0:01:44  240356.8      0.06      73.9     776.9                           3294367.5000      0.00  
    0:01:51  239755.4      0.09     175.4     788.6                           3266041.2500      0.00  
    0:01:54  239792.3      0.07     158.3     788.6                           3267386.7500      0.00  
    0:01:55  239787.0      0.07     158.3     788.6                           3267365.0000      0.00  
    0:01:56  239777.7      0.07     158.2     788.6                           3267156.7500      0.00  
    0:01:56  239777.7      0.07     158.2     788.6                           3267156.7500      0.00  
    0:02:00  239834.4      0.06     131.1     788.6                           3270259.0000      0.00  
    0:02:00  239834.4      0.06     131.1     788.6                           3270259.0000      0.00  
    0:02:01  239834.4      0.06     131.1     788.6                           3270259.0000      0.00  
    0:02:01  239834.4      0.06     131.1     788.6                           3270259.0000      0.00  
    0:02:01  239834.4      0.06     131.1     788.6                           3270259.0000      0.00  
    0:02:01  239834.4      0.06     131.1     788.6                           3270259.0000      0.00  
    0:02:03  239830.9      0.06     124.6     788.6                           3270171.5000      0.00  
    0:02:05  239828.8      0.06     124.6     788.6                           3270141.2500      0.00  
    0:02:06  239827.4      0.06     124.4     788.6                           3270116.7500      0.00  
    0:02:08  239823.2      0.06     120.5     788.6                           3269954.0000      0.00  
    0:02:10  239813.1      0.06     120.5     788.6                           3269582.0000      0.00  
    0:02:10  239813.1      0.06     120.5     788.6                           3269582.0000      0.00  
    0:02:10  239813.1      0.06     120.5     788.6                           3269582.0000      0.00  
    0:02:19  239556.7      0.06     118.0     788.6                           3243528.5000      0.00  
Loading db file '/srv/ece411ag/freepdk-45nm/stdcells.db'
Loading db file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db'
Loading db file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db'


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
    0:00:16  239556.7      0.06     118.0     788.6                           3243528.5000      0.00  
    0:00:19  239845.0      0.06      95.9     791.6                           3263766.2500      0.00  
    0:00:23  239842.6      0.06      97.1     791.6                           3263703.0000      0.00  
    0:00:28  239845.0      0.06      94.2     791.6                           3263806.7500      0.00  
Information: Complementing port 'read_halt' in design 'stage_2_0'.
	 The new name of the port is 'read_halt_BAR'. (OPT-319)

  Beginning Mapping Optimizations  (Ultra High effort)  (Incremental)
  -------------------------------

  Beginning Incremental Implementation Selection
  ----------------------------------------------
    0:00:41  239354.2      0.06      96.4     836.9                           3255987.5000      0.00  

  Beginning Delay Optimization Phase
  ----------------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:00:41  239354.2      0.06      96.4     836.9                           3255987.5000      0.00  
    0:00:46  240691.1      0.96    2123.2     836.9                           3326514.7500      0.00  
    0:00:51  240314.2      0.95    1578.2     809.7                           3305890.5000      0.00  
    0:00:51  240314.2      0.95    1578.2     809.7                           3305890.5000      0.00  
    0:00:51  240282.8      0.43    1350.0     809.7                           3304229.0000      0.00  
    0:00:51  240282.8      0.43    1350.0     809.7                           3304229.0000      0.00  
    0:00:54  240173.5      0.12     300.6     834.3                           3297473.5000      0.00  

  Beginning Delay Optimization
  ----------------------------
    0:00:54  240173.5      0.12     300.6     834.3                           3297473.5000      0.00  
    0:00:55  240173.5      0.12     300.6     834.3                           3297473.5000      0.00  
    0:00:55  240173.5      0.12     300.6     834.3                           3297473.5000      0.00  
    0:00:55  240173.5      0.12     300.6     834.3                           3297473.5000      0.00  
    0:00:55  240173.5      0.12     300.6     834.3                           3297473.5000      0.00  
    0:00:57  240126.7      0.12     313.3     834.3                           3293992.7500      0.00  


  Beginning Design Rule Fixing  (max_transition)  (max_fanout)  (max_capacitance)
  ----------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:00:58  240126.7      0.12     313.3     834.3                           3293992.7500      0.00  
    0:01:02  240207.3      0.09     225.4     733.5 phys_regfile_i/data_reg_44__23_/D 3295341.2500      0.00  
    0:01:04  240220.3      0.09     215.0     733.5 rob_i/R_3125/D            3295584.2500      0.00  
    0:01:05  240231.5      0.08     198.4     733.5 rob_i/R_3131/D            3295942.2500      0.00  
    0:01:08  240220.1      0.07      53.0     733.5 rob_i/R_881/D             3295199.0000      0.00  
    0:01:09  240221.9      0.07      52.6     733.2 cache_d/stage_2_i/tag_out[94] 3295094.7500      0.00  
    0:01:12  240230.4      0.07     157.9     727.2                           3295017.0000      0.00  
    0:01:18  240022.4      0.07     122.1     729.1                           3283932.5000      0.00  
    0:01:18  240022.4      0.07     122.1     729.1                           3283932.5000      0.00  
    0:01:18  240023.5      0.07     122.1     729.1                           3284004.5000      0.00  
    0:01:18  240023.5      0.07     122.1     729.1                           3284004.5000      0.00  
    0:01:20  239990.8      0.07      82.7     729.1                           3281428.2500      0.00  
    0:01:20  239990.8      0.07      82.7     729.1                           3281428.2500      0.00  
    0:01:21  240013.6      0.06      42.5     730.1                           3282367.5000      0.00  
    0:01:21  240013.6      0.06      42.5     730.1                           3282367.5000      0.00  
    0:01:21  240013.6      0.06      42.5     730.1                           3282367.5000      0.00  
    0:01:23  240026.1      0.06      37.7     730.1                           3282803.0000      0.00  
    0:01:24  240041.0      0.06      36.0     730.1                           3283373.5000      0.00  
    0:01:26  240070.0      0.06      33.0     730.1                           3284931.0000      0.00  
    0:01:27  240070.6      0.06      33.0     730.1                           3284941.2500      0.00  
    0:01:32  239979.1      0.06      41.7     731.7                           3280294.5000      0.00  
    0:01:32  239979.1      0.06      41.7     731.7                           3280294.5000      0.00  
    0:01:32  239979.1      0.06      41.7     731.7                           3280294.5000      0.00  
    0:01:32  239979.1      0.06      41.7     731.7                           3280294.5000      0.00  
    0:01:34  240009.1      0.05      41.2     731.7                           3281398.0000      0.00  
    0:01:34  240009.1      0.05      41.2     731.7                           3281398.0000      0.00  
    0:01:34  240009.1      0.05      41.2     731.7                           3281398.0000      0.00  
    0:01:34  240009.1      0.05      41.2     731.7                           3281398.0000      0.00  
    0:01:34  240009.1      0.05      41.2     731.7                           3281398.0000      0.00  
    0:01:36  240009.1      0.05      41.2     731.7                           3281398.0000      0.00  

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:36  240009.1      0.05      41.2     731.7                           3281398.0000      0.00  
    0:01:40  239983.3      0.06      43.4     731.7                           3280220.7500      0.00  
    0:01:42  239847.1      0.06      44.4     731.2                           3273651.0000      0.00  
    0:01:46  239716.0      0.06      32.7     729.9                           3269234.7500      0.00  
    0:01:48  239667.0      0.06      32.4     729.7                           3267787.0000      0.00  
    0:01:54  239570.2      0.06      25.8     728.2 rob_i/R_881/D             3260170.5000      0.00  
    0:01:56  239570.5      0.07      81.3     727.2 R_1951/D                  3260075.5000      0.00  
    0:01:57  239571.6      0.07      76.4     727.2                           3260108.2500      0.00  
    0:02:02  239190.6      0.08     208.1     740.3                           3242951.5000      0.00  
    0:02:04  239215.6      0.08     197.3     740.3                           3243841.0000      0.00  
    0:02:07  239215.1      0.08     197.3     740.3                           3243796.7500      0.00  
    0:02:07  239215.1      0.08     197.3     740.3                           3243796.7500      0.00  
    0:02:10  239277.6      0.07     114.1     743.3                           3246546.7500      0.00  
    0:02:10  239277.6      0.07     114.1     743.3                           3246546.7500      0.00  
    0:02:10  239277.6      0.07     114.1     743.3                           3246546.7500      0.00  
    0:02:10  239277.6      0.07     114.1     743.3                           3246546.7500      0.00  
    0:02:10  239277.6      0.07     114.1     743.3                           3246546.7500      0.00  
    0:02:10  239277.6      0.07     114.1     743.3                           3246546.7500      0.00  
    0:02:13  239272.8      0.07     105.2     743.3                           3246310.7500      0.00  
    0:02:14  239269.4      0.07     103.1     743.3                           3246173.7500      0.00  
    0:02:16  239268.3      0.07     102.7     743.3                           3246206.2500      0.00  
    0:02:19  239264.1      0.07     102.2     743.3                           3245948.0000      0.00  
    0:02:19  239264.1      0.07     102.2     743.3                           3245948.0000      0.00  
    0:02:19  239264.1      0.07     102.2     743.3                           3245948.0000      0.00  
    0:02:26  239084.2      0.07     102.2     743.3                           3235043.2500      0.00  
Loading db file '/srv/ece411ag/freepdk-45nm/stdcells.db'
Loading db file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db'
Loading db file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db'


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
    0:00:16  239084.2      0.07     102.2     743.3                           3235043.2500      0.00  
    0:00:17  239240.4      0.07      54.5     746.8                           3244994.5000      0.00  
    0:00:18  239238.8      0.07      54.6     746.8                           3244964.5000      0.00  
    0:00:20  239236.7      0.07      54.8     746.8                           3244949.0000      0.00  
    0:00:20  239233.7      0.07      54.6     746.8                           3244944.2500      0.00  

  Beginning Mapping Optimizations  (Ultra High effort)  (Incremental)
  -------------------------------

  Beginning Incremental Implementation Selection
  ----------------------------------------------
    0:00:40  237667.0      0.07      65.3     778.7                           3218387.7500      0.00  

  Beginning Delay Optimization Phase
  ----------------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:00:40  237667.0      0.07      65.3     778.7                           3218387.7500      0.00  
    0:00:45  238200.3      0.53    1044.8     778.7                           3246640.2500      0.00  
    0:00:50  238000.8      0.51    1225.5     759.9                           3235178.0000      0.00  
    0:00:51  238000.8      0.51    1225.5     759.9                           3235178.0000      0.00  
    0:00:51  238004.0      0.50    1222.4     759.9                           3235326.2500      0.00  
    0:00:51  238004.0      0.50    1222.4     759.9                           3235326.2500      0.00  
    0:00:53  237926.1      0.07     106.8     763.9                           3230935.7500      0.00  

  Beginning Delay Optimization
  ----------------------------
    0:00:53  237926.1      0.07     106.8     763.9                           3230935.7500      0.00  
    0:00:53  237926.1      0.07     106.8     763.9                           3230935.7500      0.00  
    0:00:54  237926.1      0.07     106.8     763.9                           3230935.7500      0.00  
    0:00:54  237926.1      0.07     106.8     763.9                           3230935.7500      0.00  
    0:00:54  237926.1      0.07     106.8     763.9                           3230935.7500      0.00  
    0:00:57  237878.7      0.07     107.1     764.4                           3227328.7500      0.00  


  Beginning Design Rule Fixing  (max_transition)  (max_fanout)  (max_capacitance)
  ----------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:00:58  237878.7      0.07     107.1     764.4                           3227328.7500      0.00  
    0:01:01  237961.7      0.07     102.4     736.7 rob_i/R_1508/D            3229895.7500      0.00  
    0:01:03  237963.6      0.06      99.5     733.7 phys_regfile_i/rst        3229809.5000      0.00  
    0:01:06  237981.1      0.07     102.8     727.2 R_2009/D                  3230185.2500      0.00  
    0:01:07  237991.0      0.06     102.7     727.2                           3230428.5000      0.00  
    0:01:13  238028.0      0.06     112.7     727.8                           3232927.0000      0.00  
    0:01:13  238028.0      0.06     112.7     727.8                           3232927.0000      0.00  
    0:01:14  238028.0      0.06     112.7     727.8                           3232937.2500      0.00  
    0:01:14  238028.0      0.06     112.7     727.8                           3232937.2500      0.00  
    0:01:15  238059.1      0.06      88.0     792.8                           3233938.5000      0.00  
    0:01:15  238059.1      0.06      88.0     792.8                           3233938.5000      0.00  
    0:01:16  238073.2      0.06      73.3     792.8                           3234636.0000      0.00  
    0:01:16  238073.2      0.06      73.3     792.8                           3234636.0000      0.00  
    0:01:16  238073.2      0.06      73.3     792.8                           3234636.0000      0.00  
    0:01:17  238076.6      0.06      68.7     792.8                           3234706.5000      0.00  
    0:01:18  238104.3      0.06      58.0     792.8                           3236162.7500      0.00  
    0:01:20  238118.9      0.06      56.7     792.8                           3236567.0000      0.00  
    0:01:25  238113.9      0.06      58.1     794.4                           3236445.5000      0.00  
    0:01:25  238113.9      0.06      58.1     794.4                           3236445.5000      0.00  
    0:01:25  238114.1      0.06      58.1     794.4                           3236433.0000      0.00  
    0:01:26  238114.1      0.06      58.1     794.4                           3236433.0000      0.00  
    0:01:26  238118.9      0.06      58.0     794.4                           3236806.5000      0.00  
    0:01:26  238118.9      0.06      58.0     794.4                           3236806.5000      0.00  
    0:01:27  238118.9      0.06      58.0     794.4                           3236806.5000      0.00  
    0:01:27  238118.9      0.06      58.0     794.4                           3236806.5000      0.00  
    0:01:27  238118.9      0.06      58.0     794.4                           3236806.5000      0.00  
    0:01:28  238118.9      0.06      58.0     794.4                           3236806.5000      0.00  

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:28  238118.9      0.06      58.0     794.4                           3236806.5000      0.00  
    0:01:33  238105.4      0.06      57.7     794.4                           3236065.5000      0.00  
    0:01:35  238052.7      0.06      57.7     794.4                           3234365.7500      0.00  
    0:01:38  237909.9      0.06      55.2     792.1                           3228584.2500      0.00  
    0:01:40  237875.0      0.06      55.5     792.1                           3227445.7500      0.00  
    0:01:46  237812.8      0.06      48.4     735.2 rob_i/R_907/D             3222807.7500      0.00  
    0:01:49  237813.3      0.07     134.0     727.2 R_2009/D                  3222694.0000      0.00  
    0:01:50  237842.6      0.06     132.8     727.2 R_1951/D                  3223620.5000      0.00  
    0:01:51  237845.5      0.06     124.1     727.2                           3223749.7500      0.00  
    0:01:56  237441.2      0.09     230.5     738.3                           3205270.0000      0.00  
    0:01:59  237504.5      0.07     196.4     738.3                           3207238.0000      0.00  
    0:02:01  237501.0      0.07     196.4     738.3                           3207067.5000      0.00  
    0:02:02  237499.9      0.07     196.4     738.3                           3207067.2500      0.00  
    0:02:02  237497.6      0.07     196.4     738.3                           3207027.5000      0.00  
    0:02:02  237497.6      0.07     196.4     738.3                           3207027.5000      0.00  
    0:02:07  237574.2      0.06     158.3     740.3                           3210948.7500      0.00  
    0:02:07  237574.2      0.06     158.3     740.3                           3210948.7500      0.00  
    0:02:07  237574.2      0.06     158.3     740.3                           3210948.7500      0.00  
    0:02:07  237574.2      0.06     158.3     740.3                           3210948.7500      0.00  
    0:02:07  237574.2      0.06     158.3     740.3                           3210948.7500      0.00  
    0:02:07  237574.2      0.06     158.3     740.3                           3210948.7500      0.00  
    0:02:09  237571.2      0.06     103.0     740.3                           3210845.2500      0.00  
    0:02:11  237568.3      0.06     100.6     740.3                           3210709.0000      0.00  
    0:02:13  237567.5      0.06      93.2     740.3                           3210647.2500      0.00  
    0:02:14  237563.8      0.06      82.2     740.3                           3210435.2500      0.00  
    0:02:14  237563.8      0.06      82.2     740.3                           3210435.2500      0.00  
    0:02:14  237563.8      0.06      82.2     740.3                           3210435.2500      0.00  
    0:02:22  237486.4      0.06      77.8     740.3                           3205870.2500      0.00  
Loading db file '/srv/ece411ag/freepdk-45nm/stdcells.db'
Loading db file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db'
Loading db file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db'


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
    0:00:17  237486.4      0.06      77.7     740.3                           3205870.2500      0.00  
    0:00:18  237677.6      0.06      37.3     746.9                           3218494.7500      0.00  
    0:00:20  237673.6      0.06      37.3     746.9                           3218314.2500      0.00  
    0:00:21  237668.1      0.06      37.2     746.9                           3218147.0000      0.00  
    0:00:24  237666.5      0.06      37.2     746.9                           3218088.0000      0.00  

  Beginning Mapping Optimizations  (Ultra High effort)  (Incremental)
  -------------------------------

  Beginning Incremental Implementation Selection
  ----------------------------------------------
    0:00:42  235578.9      0.06      42.5     750.9                           3181724.7500      0.00  

  Beginning Delay Optimization Phase
  ----------------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:00:42  235578.9      0.06      42.5     750.9                           3181724.7500      0.00  
    0:00:47  236377.4      0.66     309.5     750.9                           3224069.7500      0.00  
    0:00:52  236322.4      0.65     316.9     746.2                           3221782.5000      0.00  
    0:00:53  236322.4      0.65     316.9     746.2                           3221782.5000      0.00  
    0:00:53  236322.1      0.61     311.0     746.1                           3221768.2500      0.00  
    0:00:53  236322.1      0.61     311.0     746.1                           3221768.2500      0.00  
    0:01:02  235918.3      0.06      51.1    1140.7                           3200176.5000      0.00  

  Beginning Delay Optimization
  ----------------------------
    0:01:02  235918.3      0.06      51.1    1140.7                           3200176.5000      0.00  
    0:01:02  235918.3      0.06      51.1    1140.7                           3200176.5000      0.00  
    0:01:02  235918.3      0.06      51.1    1140.7                           3200176.5000      0.00  
    0:01:02  235918.3      0.06      51.1    1140.7                           3200176.5000      0.00  
    0:01:02  235918.3      0.06      51.1    1140.7                           3200176.5000      0.00  
    0:01:05  235821.0      0.06      51.3    1141.5                           3195338.5000      0.00  


  Beginning Design Rule Fixing  (max_transition)  (max_fanout)  (max_capacitance)
  ----------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:06  235821.0      0.06      51.3    1141.5                           3195338.5000      0.00  
    0:01:10  235853.9      0.06      48.2     786.4 rob_i/R_1694/D            3195796.7500      0.00  
    0:01:11  235855.8      0.06      47.7     786.4 rob_i/R_549/D             3195836.5000      0.00  
    0:01:14  235853.1      0.06      47.2     741.3 cache_d/stage_2_i/tag_out[46] 3195446.5000      0.00  
    0:01:18  235865.1      0.08     125.7     727.2 R_1951/D                  3195519.5000      0.00  
    0:01:21  235898.4      0.06      99.2     727.2 R_2007/D                  3196632.7500      0.00  
    0:01:23  235918.6      0.06      84.6     727.2                           3197333.5000      0.00  
    0:01:29  235854.7      0.06      70.6     728.9                           3194191.0000      0.00  
    0:01:30  235854.7      0.06      70.6     728.9                           3194191.0000      0.00  
    0:01:30  235855.3      0.06      70.6     728.9                           3194239.2500      0.00  
    0:01:30  235855.3      0.06      70.6     728.9                           3194239.2500      0.00  
    0:01:32  235899.4      0.05      47.0     728.9                           3195604.7500      0.00  
    0:01:32  235899.4      0.05      47.0     728.9                           3195604.7500      0.00  
    0:01:32  235900.5      0.05      46.9     728.9                           3195604.2500      0.00  
    0:01:32  235900.5      0.05      46.9     728.9                           3195604.2500      0.00  
    0:01:32  235900.5      0.05      46.9     728.9                           3195604.2500      0.00  
    0:01:34  235906.3      0.05      46.7     728.9                           3195775.0000      0.00  
    0:01:36  235934.3      0.05      44.0     728.9                           3196912.5000      0.00  
    0:01:38  235942.0      0.05      43.4     728.9                           3197194.7500      0.00  
    0:01:44  235892.2      0.05      45.2     728.9                           3194357.5000      0.00  
    0:01:44  235892.2      0.05      45.2     728.9                           3194357.5000      0.00  
    0:01:44  235894.4      0.05      45.3     728.9                           3194488.2500      0.00  
    0:01:44  235894.4      0.05      45.3     728.9                           3194488.2500      0.00  
    0:01:52  235903.4      0.05      45.2     728.9                           3195036.0000      0.00  
    0:01:52  235903.4      0.05      45.2     728.9                           3195036.0000      0.00  
    0:01:53  235903.9      0.05      45.2     728.9                           3195046.5000      0.00  
    0:01:53  235903.9      0.05      45.2     728.9                           3195046.5000      0.00  
    0:01:54  235903.9      0.05      45.2     728.9                           3195046.5000      0.00  
    0:01:55  235903.9      0.05      45.2     728.9                           3195046.5000      0.00  

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:55  235903.9      0.05      45.2     728.9                           3195046.5000      0.00  
    0:02:00  235893.3      0.05      46.0     728.9                           3194712.5000      0.00  
    0:02:02  235858.2      0.05      46.3     728.9                           3193403.2500      0.00  
    0:02:05  235755.0      0.05      46.2     728.5                           3189138.5000      0.00  
    0:02:07  235730.2      0.05      46.0     728.5                           3188438.0000      0.00  
    0:02:12  235701.3      0.05      41.6     727.2 rob_i/R_907/D             3185301.5000      0.00  
    0:02:12  235702.9      0.05      41.5     727.2                           3185321.2500      0.00  
    0:02:17  235390.0      0.07     125.0     742.1                           3170551.7500      0.00  
    0:02:20  235422.5      0.06     114.4     742.1                           3171569.2500      0.00  
    0:02:23  235418.0      0.06     114.4     742.1                           3171404.2500      0.00  
    0:02:23  235418.0      0.06     114.4     742.1                           3171404.2500      0.00  
    0:02:25  235450.4      0.06      79.9     749.1                           3173174.0000      0.00  
    0:02:25  235450.4      0.06      79.9     749.1                           3173174.0000      0.00  
    0:02:25  235450.4      0.06      79.9     749.1                           3173174.0000      0.00  
    0:02:25  235450.4      0.06      79.9     749.1                           3173174.0000      0.00  
    0:02:25  235450.4      0.06      79.9     749.1                           3173174.0000      0.00  
    0:02:25  235450.4      0.06      79.9     749.1                           3173174.0000      0.00  
    0:02:27  235441.1      0.06      72.6     749.1                           3172797.2500      0.00  
    0:02:29  235440.6      0.06      72.6     749.1                           3172778.7500      0.00  
    0:02:31  235432.9      0.06      69.0     749.1                           3172394.2500      0.00  
    0:02:33  235421.2      0.06      65.0     749.1                           3171775.0000      0.00  
    0:02:33  235421.2      0.06      65.0     749.1                           3171775.0000      0.00  
    0:02:33  235424.6      0.06      65.4     749.1                           3171992.2500      0.00  
    0:02:40  235355.2      0.06      58.4     750.5                           3167841.2500      0.00  
Loading db file '/srv/ece411ag/freepdk-45nm/stdcells.db'
Loading db file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db'
Loading db file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db'


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
    0:00:16  235355.2      0.06      58.3     750.5                           3167841.2500      0.00  
    0:00:20  235524.6      0.06      31.7     757.1                           3178471.0000      0.00  
    0:00:21  235523.8      0.06      31.7     757.1                           3178458.2500      0.00  
    0:00:29  235522.8      0.06      32.1     757.1                           3178429.5000      0.00  
Information: Complementing port 'read_halt_BAR' in design 'stage_2_0'.
	 The new name of the port is 'read_halt'. (OPT-319)

  Beginning Mapping Optimizations  (Ultra High effort)  (Incremental)
  -------------------------------

  Beginning Incremental Implementation Selection
  ----------------------------------------------
    0:00:42  235084.4      0.06      32.6     761.8                           3171270.5000      0.00  

  Beginning Delay Optimization Phase
  ----------------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:00:42  235084.4      0.06      32.6     761.8                           3171270.5000      0.00  
    0:00:48  235846.0      0.78    1486.5     761.8                           3211388.5000      0.00  
    0:00:53  235600.4      0.76    1263.5     756.9                           3196899.0000      0.00  
    0:00:53  235600.4      0.76    1263.5     756.9                           3196899.0000      0.00  
    0:00:53  235581.8      0.66     716.5     756.9                           3195867.5000      0.00  
    0:00:53  235581.8      0.66     716.5     756.9                           3195867.5000      0.00  
    0:00:58  235631.0      0.09     214.6    1006.5                           3197934.0000      0.00  

  Beginning Delay Optimization
  ----------------------------
    0:00:58  235631.0      0.09     214.6    1006.5                           3197934.0000      0.00  
    0:00:58  235631.0      0.09     214.6    1006.5                           3197934.0000      0.00  
    0:00:58  235631.0      0.09     214.6    1006.5                           3197934.0000      0.00  
    0:00:59  235631.0      0.09     214.6    1006.5                           3197934.0000      0.00  
    0:00:59  235631.0      0.09     214.6    1006.5                           3197934.0000      0.00  
    0:01:01  235607.1      0.09     215.5    1006.1                           3196247.7500      0.00  


  Beginning Design Rule Fixing  (max_transition)  (max_fanout)  (max_capacitance)
  ----------------------------

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:03  235607.1      0.09     215.5    1006.1                           3196247.7500      0.00  
    0:01:06  235708.2      0.09     166.9     743.0 phys_regfile_i/R_6324/D   3199909.2500      0.00  
    0:01:08  235724.9      0.09     149.2     741.0 phys_regfile_i/n14948     3200290.7500      0.00  
    0:01:10  235728.9      0.09     155.8     727.2                           3200204.7500      0.00  
    0:01:16  235623.3      0.09     145.8     727.9                           3195041.0000      0.00  
    0:01:17  235623.3      0.09     145.8     727.9                           3195041.0000      0.00  
    0:01:17  235623.6      0.09     145.8     727.9                           3195066.2500      0.00  
    0:01:17  235623.6      0.09     145.8     727.9                           3195066.2500      0.00  
    0:01:18  235680.8      0.07      90.5     733.9                           3197016.2500      0.00  
    0:01:18  235680.8      0.07      90.5     733.9                           3197016.2500      0.00  
    0:01:20  235700.2      0.07      84.1     733.9                           3197843.2500      0.00  
    0:01:20  235700.2      0.07      84.1     733.9                           3197843.2500      0.00  
    0:01:21  235700.2      0.07      84.1     733.9                           3197843.2500      0.00  
    0:01:22  235708.4      0.06      83.0     733.9                           3197982.7500      0.00  
    0:01:24  235732.6      0.06      73.4     733.9                           3199301.2500      0.00  
    0:01:29  235664.5      0.06      72.7     733.9                           3195920.2500      0.00  
    0:01:30  235664.5      0.06      72.7     733.9                           3195920.2500      0.00  
    0:01:30  235665.1      0.07      73.4     733.9                           3195955.2500      0.00  
    0:01:30  235665.1      0.07      73.4     733.9                           3195955.2500      0.00  
    0:01:30  235668.5      0.06      73.5     733.9                           3196118.7500      0.00  
    0:01:30  235668.5      0.06      73.5     733.9                           3196118.7500      0.00  
    0:01:30  235668.5      0.06      73.5     733.9                           3196118.7500      0.00  
    0:01:30  235668.5      0.06      73.5     733.9                           3196118.7500      0.00  
    0:01:30  235668.5      0.06      73.5     733.9                           3196118.7500      0.00  
    0:01:32  235668.5      0.06      73.5     733.9                           3196118.7500      0.00  

                                  TOTAL                                                            
   ELAPSED            WORST NEG   SETUP    DESIGN                              LEAKAGE   MIN DELAY 
    TIME      AREA      SLACK     COST    RULE COST         ENDPOINT            POWER      COST    
  --------- --------- --------- --------- --------- ------------------------- --------- -----------
    0:01:32  235668.5      0.06      73.5     733.9                           3196118.7500      0.00  
    0:01:37  235664.3      0.06      73.2     733.9                           3195751.7500      0.00  
    0:01:39  235609.2      0.06      72.4     733.8                           3194441.7500      0.00  
    0:01:43  235537.4      0.06      67.2     732.8                           3192148.7500      0.00  
    0:01:46  235499.6      0.06      68.9     732.8                           3190955.0000      0.00  
    0:01:52  235416.1      0.06      65.9     731.2 rob_i/R_974/D             3185195.7500      0.00  
    0:01:53  235417.4      0.06      66.7     730.2 rob_i/rst                 3185157.2500      0.00  
    0:01:55  235446.2      0.06      99.0     727.2                           3186470.5000      0.00  
    0:02:00  235058.6      0.08     150.5     741.0                           3169358.5000      0.00  
    0:02:01  235084.4      0.07     112.6     741.0                           3170106.7500      0.00  
    0:02:03  235083.6      0.07     112.1     741.0                           3170120.5000      0.00  
    0:02:04  235081.7      0.07     112.1     741.0                           3170075.7500      0.00  
    0:02:05  235078.5      0.07     112.0     741.0                           3169998.5000      0.00  
    0:02:05  235078.5      0.07     112.0     741.0                           3169998.5000      0.00  
    0:02:06  235110.5      0.06      87.6     750.4                           3171606.0000      0.00  
    0:02:06  235110.5      0.06      87.6     750.4                           3171606.0000      0.00  
    0:02:06  235110.5      0.06      87.6     750.4                           3171606.0000      0.00  
    0:02:06  235110.5      0.06      87.6     750.4                           3171606.0000      0.00  
    0:02:06  235110.5      0.06      87.6     750.4                           3171606.0000      0.00  
    0:02:06  235110.5      0.06      87.6     750.4                           3171606.0000      0.00  
    0:02:08  235098.0      0.06      72.1     750.4                           3171141.5000      0.00  
    0:02:10  235094.8      0.06      71.1     750.4                           3171061.0000      0.00  
    0:02:12  235075.4      0.06      60.7     750.4                           3170186.5000      0.00  
    0:02:13  235074.3      0.06      60.5     750.4                           3170176.5000      0.00  
    0:02:13  235074.3      0.06      60.5     750.4                           3170176.5000      0.00  
    0:02:13  235075.4      0.06      61.0     750.4                           3170220.7500      0.00  
    0:02:20  234965.5      0.06      61.0     750.4                           3163643.5000      0.00  
Loading db file '/srv/ece411ag/freepdk-45nm/stdcells.db'
Loading db file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db'
Loading db file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db'


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
Date:        Tue Dec  3 03:25:48 2024
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
Writing verilog file '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth/outputs/cpu.gate.v'.
1
exit

Memory usage for this session 742 Mbytes.
Memory usage for this session including child processes 1111 Mbytes.
CPU usage for this session 3661 seconds ( 1.02 hours ).
Elapsed time for this session 2055 seconds ( 0.57 hours ).

Thank you...
rm -f  *.log
rm -f  default.svf
rm -rf work
make[1]: Leaving directory '/srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/synth'
 
****************************************
Report : timing
        -path full
        -delay max
        -max_paths 1
Design : cpu
Version: R-2020.09-SP4
Date   : Tue Dec  3 03:25:48 2024
****************************************

 # A fanout number of 1000 was used for high fanout net computations.

Operating Conditions: typical   Library: NangateOpenCellLibrary
Wire Load Model Mode: enclosed

  Startpoint: reservation_stations_i/branch_reservation_station_reg_1__ps1_v_
              (rising edge-triggered flip-flop clocked by my_clk)
  Endpoint: rob_i/R_974
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
  reservation_stations_i/branch_reservation_station_reg_1__ps1_v_/CK (SDFF_X1)
                                                      0.000000   0.000000 r
  reservation_stations_i/branch_reservation_station_reg_1__ps1_v_/Q (SDFF_X1)
                                                      0.064457   0.064457 f
  reservation_stations_i/U482/ZN (AND2_X1)            0.041801   0.106259 f
  reservation_stations_i/U128/ZN (NAND2_X1)           0.030109   0.136368 r
  reservation_stations_i/U5557/ZN (AND4_X2)           0.088187   0.224555 r
  reservation_stations_i/U700/Z (BUF_X1)              0.042137   0.266692 r
  reservation_stations_i/U4682/ZN (NAND2_X1)          0.027269   0.293961 f
  reservation_stations_i/U4687/ZN (NAND4_X2)          0.047285   0.341245 r
  reservation_stations_i/branch_ps1[4] (reservation_station)
                                                      0.000000   0.341245 r
  phys_regfile_i/rs1_br[4] (phys_regfile)             0.000000   0.341245 r
  phys_regfile_i/U11653/ZN (NAND2_X1)                 0.040735   0.381980 f
  phys_regfile_i/U5520/ZN (INV_X1)                    0.030232   0.412213 r
  phys_regfile_i/U5486/ZN (AND2_X2)                   0.064528   0.476741 r
  phys_regfile_i/U336/ZN (AND2_X2)                    0.064209   0.540950 r
  phys_regfile_i/U286/Z (BUF_X2)                      0.048000   0.588950 r
  phys_regfile_i/U16787/ZN (NAND2_X1)                 0.028368   0.617318 f
  phys_regfile_i/U16788/ZN (AND2_X1)                  0.034065   0.651383 f
  phys_regfile_i/U6324/ZN (AND4_X1)                   0.036895   0.688277 f
  phys_regfile_i/U5347/ZN (AND4_X1)                   0.043571   0.731848 f
  phys_regfile_i/U16830/ZN (AOI21_X1)                 0.037856   0.769704 r
  phys_regfile_i/rs1_v_br[18] (phys_regfile)          0.000000   0.769704 r
  execute_i/rs1_v_br[18] (execute)                    0.000000   0.769704 r
  execute_i/U48/ZN (INV_X1)                           0.026007   0.795711 f
  execute_i/U47/ZN (OR2_X1)                           0.053794   0.849505 f
  execute_i/U60/ZN (OAI21_X1)                         0.039429   0.888934 r
  execute_i/U2693/ZN (INV_X1)                         0.025946   0.914880 f
  execute_i/U4894/ZN (AOI221_X1)                      0.084989   0.999868 r
  execute_i/U4897/ZN (AOI211_X1)                      0.034032   1.033901 f
  execute_i/U2759/ZN (OR2_X1)                         0.055923   1.089823 f
  execute_i/U2700/ZN (OAI211_X1)                      0.035079   1.124903 r
  execute_i/U2699/ZN (XNOR2_X1)                       0.063943   1.188846 r
  execute_i/U2566/ZN (AOI21_X1)                       0.032716   1.221562 f
  execute_i/U2656/ZN (OAI21_X1)                       0.038189   1.259751 r
  execute_i/U2768/ZN (NAND2_X1)                       0.041741   1.301492 f
  execute_i/U2217/ZN (INV_X1)                         0.042442   1.343934 r
  execute_i/U5103/ZN (OAI21_X1)                       0.036445   1.380379 f
  execute_i/U625/ZN (AND2_X1)                         0.042406   1.422785 f
  execute_i/U2179/ZN (AOI21_X1)                       0.053089   1.475874 r
  execute_i/U2776/ZN (OAI21_X1)                       0.029930   1.505804 f
  execute_i/U2777/ZN (INV_X1)                         0.027006   1.532810 r
  execute_i/U2026/ZN (AND2_X1)                        0.040041   1.572850 r
  execute_i/U2216/ZN (OAI21_X1)                       0.033549   1.606399 f
  execute_i/U2686/ZN (NAND3_X1)                       0.035071   1.641470 r
  execute_i/U182/ZN (AND3_X2)                         0.064789   1.706259 r
  execute_i/U2637/ZN (OAI21_X1)                       0.035977   1.742236 f
  execute_i/U2743/ZN (XNOR2_X1)                       0.053612   1.795847 f
  execute_i/U2742/ZN (AND2_X2)                        0.049230   1.845077 f
  execute_i/cdb_br[199] (execute)                     0.000000   1.845077 f
  rob_i/branch_pc_branch[31] (rob)                    0.000000   1.845077 f
  rob_i/U2920/Z (MUX2_X1)                             0.070188   1.915265 f
  rob_i/R_974/D (DFF_X1)                              0.008556   1.923821 f
  data arrival time                                              1.923821

  clock my_clk (rise edge)                            1.900000   1.900000
  clock network delay (ideal)                         0.000000   1.900000
  rob_i/R_974/CK (DFF_X1)                             0.000000   1.900000 r
  library setup time                                  -0.040694  1.859306
  data required time                                             1.859306
  --------------------------------------------------------------------------
  data required time                                             1.859306
  data arrival time                                              -1.923821
  --------------------------------------------------------------------------
  slack (VIOLATED)                                               -0.064515


1
 
****************************************
Report : area
Design : cpu
Version: R-2020.09-SP4
Date   : Tue Dec  3 03:25:44 2024
****************************************

Information: Updating design information... (UID-85)
Library(s) Used:

    NangateOpenCellLibrary (File: /srv/ece411ag/freepdk-45nm/stdcells.db)
    mp_cache_data_array_TT_1p0V_25C_lib (File: /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C_lib.db)
    mp_cache_tag_array_TT_1p0V_25C_lib (File: /srv/tmp/27580b62-6bd1-4daf-b868-8fb58cbe9c8d/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C_lib.db)

Number of ports:                        12411
Number of nets:                        108640
Number of cells:                        97160
Number of combinational cells:          84026
Number of sequential cells:             11174
Number of macros/black boxes:              16
Number of buf/inv:                       9986
Number of references:                     222

Combinational area:              92661.100699
Buf/Inv area:                     6869.449966
Noncombinational area:           62463.715723
Macro/Black Box area:            79840.682617
Net Interconnect area:      undefined  (Wire load has zero net area)

Total cell area:                234965.499039
Total area:                 undefined

Hierarchical area distribution
------------------------------

                                  Global cell area               Local cell area
                                  --------------------  ---------------------------------- 
Hierarchical cell                 Absolute     Percent  Combi-      Noncombi-   Black-
                                  Total        Total    national    national    boxes       Design
--------------------------------  -----------  -------  ----------  ----------  ----------  ----------------------------------------------------------
cpu                               234965.4990    100.0  12388.6841  11316.4380  79840.6826  cpu
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
cache_d/stage_2_i                   2824.1220      1.2   2824.1220      0.0000      0.0000  stage_2_0
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
cache_i/stage_2_i                   2553.6000      1.1   2553.6000      0.0000      0.0000  stage_2_1
clk_gate_cache_d/stage_reg_reg_wdata__23_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cpu_0_1
clk_gate_cache_i/stage_reg_reg_tag__0_
                                       3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cpu_0_0
clk_gate_pc_reg_31_                    3.9900      0.0      0.0000      3.9900      0.0000  SNPS_CLOCK_GATE_HIGH_cpu_0
execute_i                           9598.0780      4.1   7793.0020   1773.1560      0.0000  execute
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
memory_queue_i                     17042.6201      7.3   7757.6241   9149.3360      0.0000  memory_queue
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
phys_regfile_i                     48446.0479     20.6  37408.3783  10786.2997      0.0000  phys_regfile
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
queue_i                            11282.6562      4.8   4743.8441   6403.1520      0.0000  queue_DATA_WIDTH32_QUEUE_DEPTH32_1
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
queue_pc                           11118.2682      4.7   4644.3601   6338.2480      0.0000  queue_DATA_WIDTH32_QUEUE_DEPTH32_0
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
reservation_stations_i             18731.1880      8.0   8583.5540  10067.8340      0.0000  reservation_station
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
rob_i                               9228.6039      3.9   3963.9320   5129.0119      0.0000  rob
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
Total                                                   92661.1007  62463.7157  79840.6826

1
234965
-0.064515
[0;31mTiming Not Met [0m
 
 ``` 

 </details> 
