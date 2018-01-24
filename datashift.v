//向左或向右作移位操作
module datashift(clk,rst,d,qleft);

input clk;//系统时钟
input rst;
input d;//移位寄存器输人数据
output [7:0] qleft;//移位寄存器左移并行输出信号
//output [7:0] qright;//移位寄存器右移并行输出信号

reg [7:0] qleft;
//reg [7:0] qright;

always@(posedge clk)
begin
  if(rst)
    qleft<=0;
  else
  //利用连接操作符实现移位操作
     qleft<={qleft[6:0],d};
  //另一种描述方式
//qleft[7]<=qleft[6];
//qleft[6]<=qleft[5];
//qleft[5]<=qleft[4];
//qleft[4]<=qleft[3];
//qleft[3]<=qleft[2];
//qleft[2]<=qleft[1];
//qleft[1]<=qleft[0];
//qleft[0]<=d;
end

//always@(posedge clk)                
//begin 
//  if(rst)
//    qright<=0;
//  else
//  //利用连接操作符实现移位操作     
////    qright<={d,qright[7:1]};           
//  //另一种描述方式  
//qright[7]<=d;              
//qright[6]<=qright[7];              
//qright[5]<=qright[6];              
//qright[4]<=qright[5];              
//qright[3]<=qright[4];              
//qright[2]<=qright[3];              
//qright[1]<=qright[2];              
//qright[0]<=qright[1];              
//                    
//end                                
endmodule   
