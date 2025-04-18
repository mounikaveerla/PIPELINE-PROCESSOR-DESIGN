# PIPELINE-PROCESSOR-DESIGN

"company" : CODTECH IT SOLUTIONS

"Name" : Mounika Veerla

"Intern Id" : CT06WC138

"Domain" :VLSI

"Duration" : 6weeks

"Mentor" : Neela Santosh

Description : In this repository I perform a task called Designing a 4 stage pipelined processor with basic instructions like ADD, SUB, AND, LOAD. We execute the code, testbench and simulation of processor for each stage operation.

Tools used: Modelsim(questasim), Mentor graphics, Xilinix, Quartus prime

The computer or any devices use the concept of parallelism for speedup of system operations. The one of parallelism technique is pipelining concept. Many devices using the pipelining for increase speed and throughout. The overall pipeline stage can be subdivided into stages such as fetch, decode, execute, store. In this paper the design and simulation of four stage pipeline can be doneseparately using the Xilinx ISE and Modelsim simulator. It shows how the each stage of pipeline performs the operations Pipelining, a standard feature in RISC processors, allows formultiple instructions are overlapped in execution (to be
executed during one clock cycle). In a pipelined processor,the datapath is divided into subsequent stages. Each stage isgiven an input from the previous stage, performs a specificoperation on the given input, and passes the resulting outputto the next stage in the datapath.Each of these steps is called a pipe stage or a pipe segment.The stages are connected one to the next to form a pipe—instructions enter at one end, progress through the stages,and exit at the other end. The throughput of an instructionpipeline is determined by how often an instruction exits thepipeline. The time required between moving an instruction
one step down the pipeline is a processor cycle.

Because allstages proceed at the same time, the length of a processorcycle is determined by the time required for the slowest pipestage, the longest step would determine the time betweenadvancing pipe stage. In a computer, this processor cycle isusually one clock cycle (sometimes it is two, rarely more).Under these conditions, the speedup from pipelining equalsthe number of pipe stages. Thus, the time per instruction onthe pipelined processor will not have its minimum possiblevalue, yet it can be close.

Instruction Execution can be divicded into four phases. These are
 Instruction Fetch(IF)
 Instruction Decode
 Execution(EX)
 Store(ST)
 The advantages of a pipelining are an increase in throughput and reduced response time. This processor can be used notonly in traditional computing applications such as desktops,laptops, workstation etc. but also as a component in another piece of technology such as either a cell phone, digitalcamera, portable digital assistant, household appliances,automobile antilock brake system and many more.
 The pipelining is divided into four sub stages such as fetch,decode, execute, store. The simulation of each stage is done by using Xilinx ISE and Modelsim simulator and is shown bellow. The technology schematic for each stage is also shown. The Verilog HDL can be used to design the eachstage of pipelining.
 The pipelining concept takes lot of advantages in many ofthe systems. The pipelining has some of the hazards. In thispaper the hazards concept is ignored. The pipelining ofinstructions which reduce the CPI, increases the speed of execution or operation, and also increase throughput ofoverall system. This is basic concept of any system and lot ofimprovement can be done in pipelining concept to increasethe speed of system. The future scope is to apply the conceptto different embedded systems and we can see how theperformance increases by this concept.

 "output" :
 ![Image](https://github.com/user-attachments/assets/c04d7311-f5a3-4e1a-8708-e613cc8af7cb)

 
