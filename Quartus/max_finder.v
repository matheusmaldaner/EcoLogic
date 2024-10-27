module max_finder (
    input  wire [31:0] in0,
    input  wire [31:0] in1,
    input  wire [31:0] in2,
    input  wire [31:0] in3,
    input  wire [31:0] in4,
    input  wire [31:0] in5,
    input  wire [31:0] in6,
    input  wire [31:0] in7,
    input  wire [31:0] in8,
    input  wire [31:0] in9,
    output reg  [3:0] max_index  // Output index of highest value
);

    // Internal register array to store inputs for easy access
    reg [31:0] inputs [9:0];
    reg [31:0] max_value;
    integer i;

    always @(*) begin
        // Assign inputs to the register array
        inputs[0] = in0;
        inputs[1] = in1;
        inputs[2] = in2;
        inputs[3] = in3;
        inputs[4] = in4;
        inputs[5] = in5;
        inputs[6] = in6;
        inputs[7] = in7;
        inputs[8] = in8;
        inputs[9] = in9;

        // Initialize max_value with the first input and max_index to 0
        max_value = inputs[0];
        max_index = 0;

        // Loop through inputs to find the maximum value and its index
        for (i = 1; i < 10; i = i + 1) begin
            if (inputs[i] > max_value) begin
                max_value = inputs[i];
                max_index = i;  // Update max_index to the current index
            end
        end
    end

endmodule
