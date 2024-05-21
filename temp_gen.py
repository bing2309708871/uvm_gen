import os

uvm_name = 'CROSSBAR_UVM'   # input project name
vif_name = 'crossbar_if'    # input virtual interface name

if (os.path.exists(uvm_name)):  # if project file exist, delete it
    os.system('rm -r '+uvm_name)
os.system('cp -r uvm_temp '+uvm_name) # copy template to new file

def file_gen(file_name,replace_words):
    test = open(file_name,'r').read()
    test_new = open(file_name,'w')
    for word in replace_words:
        test = test.replace(word[0],word[1])
    test_new.write(test)
    test_new.close()

replace_words = [['TEMP_VIF',vif_name]]

print("start...")
dir_path = 'uvm_temp'
for dirpath, dirnames, filenames in os.walk(uvm_name):
    for filename in filenames:
        file_path = os.path.join(dirpath, filename)
        print(file_path)
        file_gen(file_path,replace_words)
print("finished!")

