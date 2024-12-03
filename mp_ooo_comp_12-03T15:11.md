# AG Report mp_ooo_comp 2024-12-03T15:11:00-06:00 
Report generated at 2024-12-03T15:11:00-06:00, using commit ``0554052790a4e482214961b17c705693cf481920``

Autograder Run ID: e12e03aa-5755-4f84-8279-e449d3d762e3

Autograder Job ID: 0419798b-32c9-4266-9a75-a886723a7db2

|Tests|Result|IPC|Delay (μs)|Power (mW)|PD<sup>3</sup>A<sup>½</sup>|
|---|---|--:|--:|--:|--:|
|SRAM|✅|
|compile|❌|

### Logs
<details><summary>SRAM ✅</summary> 

 ``` 
 make clean
make[1]: Entering directory '/srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram'
rm -rf output
mkdir output
touch output/.gitkeep
make[1]: Leaving directory '/srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram'
python3 sram.py
sync
make -j4 
make[1]: Entering directory '/srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram'
make clean
make[2]: Entering directory '/srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram'
rm -rf output
mkdir output
touch output/.gitkeep
make[2]: Leaving directory '/srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram'
python3 sram.py
sync
make -j4 mp_cache_tag_array mp_cache_data_array
make[2]: Entering directory '/srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram'
make[2]: warning: -j4 forced in submake: resetting jobserver mode.
source /srv/ece411ag/OpenRAM/miniconda/bin/activate ;\
python3 /srv/ece411ag/OpenRAM/compiler/../sram_compiler.py /srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.py
source /srv/ece411ag/OpenRAM/miniconda/bin/activate ;\
python3 /srv/ece411ag/OpenRAM/compiler/../sram_compiler.py /srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_data_array/mp_cache_data_array.py
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
** Start: 12/03/2024 15:11:08
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
/srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.lvs
/srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.sp
/srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.v
/srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.lib
/srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.py
/srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.html
/srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.log
/srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.lef
/srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.gds
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
** Start: 12/03/2024 15:11:08
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
/srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_data_array/mp_cache_data_array.lvs
/srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_data_array/mp_cache_data_array.sp
/srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_data_array/mp_cache_data_array.v
/srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_data_array/mp_cache_data_array.lib
/srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_data_array/mp_cache_data_array.py
/srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_data_array/mp_cache_data_array.html
/srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_data_array/mp_cache_data_array.log
/srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_data_array/mp_cache_data_array.lef
/srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_data_array/mp_cache_data_array.gds
** Submodules: 1.0 seconds
** Placement: 0.0 seconds
** Routing: 0.0 seconds
** Verification: 0.0 seconds
** SRAM creation: 1.1 seconds
SP: Writing to /srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.sp
** Spice writing: 0.0 seconds
DELAY: Writing stimulus...
** DELAY: 0.1 seconds
GDS: Writing to /srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.gds
** GDS: 0.4 seconds
LEF: Writing to /srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.lef
** LEF: 0.0 seconds
LVS: Writing to /srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.lvs.sp
** LVS writing: 0.0 seconds
LIB: Characterizing... 
** Characterization: 0.1 seconds
Config: Writing to /srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.py
** Config: 0.0 seconds
Datasheet: Writing to /srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.html
** Datasheet: 0.0 seconds
Verilog: Writing to /srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.v
** Verilog: 0.0 seconds
Extended Config: Writing to /srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_extended.py
** Extended Config: 0.0 seconds
** End: 1.8 seconds
sed -i -E 's/falling_edge/rising_edge/g' /srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C.lib
source /srv/ece411ag/OpenRAM/miniconda/bin/activate ;\
python3 /srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/area.py /srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.gds > /srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array.area.txt
cat ./output/mp_cache_tag_array/mp_cache_tag_array.area.txt | xargs -I {} sed -i -E 's/area : .*/area : {}/g' output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C.lib
cd /srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_tag_array ;\
lc_shell -x 'read_lib /srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C.lib; write_lib mp_cache_tag_array_TT_1p0V_25C_lib; exit' ;\
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
Reading '/srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_tag_array/mp_cache_tag_array_TT_1p0V_25C.lib' ...
Warning: Line 1, The 'internal_power_calculation' attribute in char_config group is required for NLPM library. 
	No default can be applied to this attribute. (LBDB-366)
Information: Line 74, Cell 'mp_cache_tag_array', The cell 'mp_cache_tag_array' contiains memory/memory_read/memory_write groups which are deprecated, use the is_memory_cell attribute instead. (LIBG-280)
Technology library 'mp_cache_tag_array_TT_1p0V_25C_lib' read successfully
Wrote the 'mp_cache_tag_array_TT_1p0V_25C_lib' library to 'mp_cache_tag_array_TT_1p0V_25C_lib.db' successfully
Maximum memory usage for this session: 84.32 MB
CPU usage for this session:      3 seconds (  0.00 hours)
Elapsed time for this session:      4 seconds (  0.00 hours)
Thank you for using Library Compiler.

Thank you...
** Submodules: 14.6 seconds
** Placement: 1.1 seconds
** Routing: 0.0 seconds
** Verification: 0.0 seconds
** SRAM creation: 15.7 seconds
SP: Writing to /srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_data_array/mp_cache_data_array.sp
** Spice writing: 0.5 seconds
DELAY: Writing stimulus...
** DELAY: 0.6 seconds
GDS: Writing to /srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_data_array/mp_cache_data_array.gds
** GDS: 2.7 seconds
LEF: Writing to /srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_data_array/mp_cache_data_array.lef
** LEF: 0.0 seconds
LVS: Writing to /srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_data_array/mp_cache_data_array.lvs.sp
** LVS writing: 0.1 seconds
LIB: Characterizing... 
** Characterization: 0.9 seconds
Config: Writing to /srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_data_array/mp_cache_data_array.py
** Config: 0.0 seconds
Datasheet: Writing to /srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_data_array/mp_cache_data_array.html
** Datasheet: 0.0 seconds
Verilog: Writing to /srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_data_array/mp_cache_data_array.v
** Verilog: 0.0 seconds
Extended Config: Writing to /srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_data_array/mp_cache_data_array_extended.py
** Extended Config: 0.0 seconds
** End: 20.6 seconds
sed -i -E 's/falling_edge/rising_edge/g' /srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C.lib
source /srv/ece411ag/OpenRAM/miniconda/bin/activate ;\
python3 /srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/area.py /srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_data_array/mp_cache_data_array.gds > /srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_data_array/mp_cache_data_array.area.txt
cat ./output/mp_cache_data_array/mp_cache_data_array.area.txt | xargs -I {} sed -i -E 's/area : .*/area : {}/g' output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C.lib
cd /srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_data_array ;\
lc_shell -x 'read_lib /srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C.lib; write_lib mp_cache_data_array_TT_1p0V_25C_lib; exit' ;\
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
Reading '/srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram/output/mp_cache_data_array/mp_cache_data_array_TT_1p0V_25C.lib' ...
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
make[2]: Leaving directory '/srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram'
make[1]: Leaving directory '/srv/tmp/0419798b-32c9-4266-9a75-a886723a7db2/dut/sram'
 
 ``` 

 </details> 
<details><summary>compile ❌</summary> 

 ``` 
 Error: clock period must be a even positive number
 
 ``` 

 </details> 
