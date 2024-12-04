str:("....XXMAS.";".SAMXMS...";"...S..A...";"..A.A.MS.X";"XMASAMX.MM";"X.....XA.A";"S.S.S.S.SS";".A.A.A.A.A";"..M.M.M.MM";".X.X.XMASX")
// works for basic example think its something with the reverse anyways dont care fuck diagonals
b:{`XMAS~/:`${y,enlist first 4 cut z _ x}[x]/[();til count x]};
horz1:sum any each b each str;
horz2:sum any each b each reverse each str;
vert1:sum any each b each flip str;
vert2:sum any each b each reverse each flip str;
combos:distinct raze{{(x+til 4),'y+til 4}[x]each til y}[;count str]each til count str[;0];
diag1:sum{`XMAS~`$x ./:y}[str]each combos;
diag2:sum{`XMAS~`$x ./:y}[reverse each str]each combos;
diag3:sum{`XMAS~`$x ./:y}[reverse str]each combos;
diag4:sum{`XMAS~`$x ./:y}[reverse each reverse str]each combos;
