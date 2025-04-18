%% 
cons=[];
%% 
x=sdpvar(1,3);
% x=[binvar(1,1),sdpvar(1,2)];
%% 
y=2*x(1)+3*x(2)+x(3);
%% 
cons=[cons,x(1)+4*x(2)+2*x(3)>=8];
cons=[cons,3*x(1)+2*x(2)>=6]; 
cons=[cons,x(1)+x(2)+x(3)>=0];
%% 
ops = sdpsettings('solver','cplex','showprogress',1);
optimize(cons,y,ops)
%% 
x=double(x);
y=double(y);