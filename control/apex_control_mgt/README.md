# Compiling
Before compiling one of the configurations, change `Settings->General->Verilog defines`:

for 3.125G C2C link:
define `C2C_3P125G`
select `synth_3p125` run as active

for 3.75G C2C link:
UNdefine `C2C_3P125G`
select `synth_3p75` run as active

