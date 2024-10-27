module sum_ones #(parameter WIDTH = 256)(
   input [WIDTH-1:0] input_data,
   output reg [31:0] num_ones
);


integer i;

always@(input_data)
begin
   num_ones = 0;  //initialize count variable.
   for(i=0;i<WIDTH;i=i+1)   //for all the bits.
       num_ones = num_ones + input_data[i]; //Add the bit to the count.
end

endmodule