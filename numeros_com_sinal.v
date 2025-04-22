module numeros_com_sinal(
    input signed [7:0] entrada_signed_1,
    input signed [3:0] entrada_signed_2,
    input [7:0] entrada_unsigned_1,
    input [3:0] entrada_unsigned_2,
    input [1:0] codigo,
    output reg [7:0] saida
);

always @(*) begin
    if(codigo == 0) begin
        saida = entrada_signed_1 + entrada_signed_2;
    end
    else if(codigo == 1) begin
        saida = entrada_unsigned_1 + entrada_unsigned_2;
    end
    else if(codigo == 2) begin
        saida = entrada_unsigned_1 + entrada_signed_1;
    end
    else if(codigo == 3) begin
        saida = entrada_unsigned_1 + entrada_signed_2;
    end
end

endmodule