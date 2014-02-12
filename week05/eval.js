var s = "function (x, y) { var s =\"+\"; return x + y; }";

eval(s);

s.replace("+", "-")
