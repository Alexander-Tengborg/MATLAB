function f = f_numFile(in1,in2)
%f_numFile
%    F = f_numFile(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 9.1.
%    08-Sep-2022 22:44:17

x0_1 = in2(1,:);
x0_2 = in2(2,:);
x_1 = in1(1,:);
x_2 = in1(2,:);
f = [(x0_1-x_1).^2;(x0_2-x_2).^2];
