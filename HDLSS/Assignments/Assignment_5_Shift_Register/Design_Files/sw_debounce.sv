module sw_debounce(
    output reg op_pulse,
     input wire in_sw
);
    
    reg state = 1'b0;
    
    
    always_ff @(*) begin
        case (state)
            1'b0: begin // IDLE
                if (in_sw) begin
                    state = 1'b1; // SW_IN
                    op_pulse = 1'b1;
                end
            end
            1'b1: begin // SW_IN
                op_pulse = 1'b0;
                if (~in_sw) begin
                    state = 1'b0;
                end
            end
        endcase
    end

endmodule