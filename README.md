use python to generate uvm enviriment
step 1:open temp_gen.py ,input your uvm project name to uvm_name and input virtual interface name to vif_name
step 2:run temp_gen.py, generate your uvm project
step 3:add your code in project/rtl, change filename project/rtl/if.sv
setp 4:modify filelist.f, packet.sv, iDriver.sv, you can run and see wavefile
step 5:modift iMonitor.sv, oMonitor.sv, Coverage.sv

