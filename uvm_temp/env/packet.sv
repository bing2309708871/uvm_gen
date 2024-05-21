// All transaction classes must be extended from the uvm_sequence_item base class.

class packet extends uvm_sequence_item;

    rand bit [31:0] wdata;
    
    `uvm_object_utils_begin(packet)
        `uvm_field_int(data, UVM_ALL_ON);
    `uvm_object_utils_end

    //---consttraint format---- 
    //constraint const_name{
    //    value > 0;
    //    value < 1;
    //}

    
    function new(string name = "packet");
      super.new(name);
      `uvm_info("TRACE", $sformatf("%m"), UVM_HIGH);
    endfunction: new

endclass: packet


// ----some format for uvm_field-----

// `define uvm_field_int(ARG,FLAG)
// `define uvm_field_real(ARG,FLAG)
// `define uvm_field_enum(T,ARG,FLAG)
// `define uvm_field_object(ARG,FLAG)
// `define uvm_field_event(ARG,FLAG)
// `define uvm_field_string(ARG,FLAG)
// 
// `define uvm_field_array_enum(ARG,FLAG)
// `define uvm_field_array_int(ARG,FLAG)
// `define uvm_field_array_object(ARG,FLAG)
// `define uvm_field_array_string(ARG,FLAG)
// 
// `define uvm_field_sarray_int(ARG,FLAG)
// `define uvm_field_sarray_enum(ARG,FLAG)
// `define uvm_field_sarray_object(ARG,FLAG)
// `define uvm_field_sarray_string(ARG,FLAG)
// 
// `define uvm_field_queue_enum(ARG,FLAG)
// `define uvm_field_queue_int(ARG,FLAG)
// `define uvm_field_queue_object(ARG,FLAG)
// `define uvm_field_queue_string(ARG,FLAG)

// -------used to control feild---------
// parameter UVM_ALL_ON = 'b000000101010101;
// parameter UVM_COPY = (1<<0);
// parameter UVM_NOCOPY = (1<<1);
// parameter UVM_COMPARE = (1<<2);
// parameter UVM_NOCOMPARE = (1<<3);
// parameter UVM_PRINT = (1<<4);
// parameter UVM_NOPRINT = (1<<5);
// parameter UVM_RECORD = (1<<6);
// parameter UVM_NORECORD = (1<<7);
// parameter UVM_PACK = (1<<8);
// parameter UVM_NOPACK = (1<<9);
