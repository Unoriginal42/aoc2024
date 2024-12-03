//str:"xmul(2,4)%&mul[3,7]!@^do_not_mul(5,5)+mul(32,64]then(mul(11,8)mul(8,5))"
str:raze read0`:day3.txt
// PART 1
sum (*).'2#/:"J"$","vs/:s where any each flip(s:raze")"vs/:"mul("vs str)like/:{(x,\:",") cross x}("???";"??";"?")

s:"do()"vs/:"don't()"vs str
// PART 2
s:raze({(0,1_count[x]#1)_'x}"do()"vs/:"don't()"vs str)
sum (*).'2#/:"J"$","vs/:s where any each flip(s:raze")"vs/:raze"mul("vs/:s)like/:{(x,\:",") cross x}("???";"??";"?")
 
