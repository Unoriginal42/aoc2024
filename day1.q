data:read0 `:day1ex.txt
l:flip"J"$(" "vs/:data) except\: enlist""
// part 1
sum abs(-).'flip l @'iasc each l

//data:read0 `:ex1.txt
l:"J"$(" "vs/:data) except\: enlist""
// part 2
map:k!{sum x in y}[l[;1]]each k:distinct l[;0]
sum l[;0]*map l[;0]
