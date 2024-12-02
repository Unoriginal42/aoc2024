// DAY 2
//data:read0 `:ex2.txt
data:read0 `:day2.txt
data:"J"$" "vs/:data
sum not{l:1_-':[x];any[3<abs l]or any 1_differ abs[l]%l}each data


// part 2
data:read0`:day2.txt
data:"J"$" "vs/:data
// not happy but fuck it
map:data!not{[x]
  l:1_-':[x]; chk1:(3<abs l)or 0b,1_differ abs[l]%l;
  if[all not chk1;:0b];
  // had to add 0 1 due to start issues with way i extracted value
  not any not{l:x til[count x]except z;l:1_-':[l]; y,any[3<abs l]or any 1_differ abs[l]%l}[x]/[();0 1,where 0b,chk1]
 }each data
