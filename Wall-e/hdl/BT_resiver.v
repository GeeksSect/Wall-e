module BT_module //
(
input clk,
input rstn,
input rxrdy,

input [7:0]data_rx,
output reg [7:0] data_buf,
output reg oen //
);

reg[1:0]TX_RX_repiter;
parameter idle = 0, rx = 1, endc = 3;
always @(posedge clk, negedge rstn)
begin
    if(!rstn)
        begin
            oen <= 1;
            data_buf <= 8'hF0;
            TX_RX_repiter <= idle;
        end
    else
        begin
            case(TX_RX_repiter)
                idle:
                    begin
                        if(rxrdy)
                            TX_RX_repiter <= rx;
                        else
                            TX_RX_repiter <= idle;
                    end
                rx:
                    begin
                        oen <= 1'b0;
                        data_buf <= data_rx;
                        TX_RX_repiter <= endc;
                    end
                endc:
                    begin
                        oen <= 1'b1;
                        TX_RX_repiter <= idle;
                    end
            endcase
        end
end
endmodule

