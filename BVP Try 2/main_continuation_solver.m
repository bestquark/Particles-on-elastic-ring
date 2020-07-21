function output = main_continuation_solver

% Initial conditions for x and p  

% EXAMPLE: 2 PARTICLES
% one at origin, one at the top of circle
% x0 = [0 0 0; 0 1/pi pi];
% p0 = [0 0 2*pi; 0 0 2*pi];
% n = 2;
% L = [0.5 0.5];

% EXAMPLE: 2 PARTICLES
% one at origin, one at the side of circle
% x0 = [0 0 0; -0.5/pi 0.5/pi -pi/2];
% p0 = [0 0 2*pi; 0 0 2*pi];
% n = 2;
% L = [0.75 0.25];

% EXAMPLE: 2 PARTICLES
% starting from Req 3
% x0 = [0 0 0; 0 0.4274 3.1416];
% p0 = [0 257.2647 22.7037; 0 -257.2647 22.7037];
% n = 2;
% L = [0.5 0.5];

% EXAMPLE: 3 PARTICLES



% EXAMPLE: 3 PARTICLES
% start in 3-symmetric-equilateral-triangle-case
% p0 = [-0.1170 -0.2032 6.2712;0.2336 0.0107 6.2704;-0.1185 0.1974 6.2715];
% Reqs =  linspace(1/pi,0,10);

x0 = [0 0 0; sqrt(3)/(4*pi) wrapToPi(3/(4*pi)) (2*pi)/3; 
    -sqrt(3)/(4*pi) wrapToPi(3/(4*pi)) (4*pi)/3];
p0 = [-0.1170 -0.2032 2*pi;0.2336 0.0107 2*pi;-0.1185 0.1974 2*pi];
n = 3;
L = [1/3 1/3 1/3];
Reqs =  linspace(sqrt(3)/(2*pi),0,10);



%EXAMPLE: 4 PARTICLES

% x0 = [0 0 0;0.5/pi 0.5/pi pi/2;0 1/pi pi; -0.5/pi 0.5/pi -pi/2];
% p0 = [0 0 2*pi; 0 0 2*pi;0 0 2*pi;0 0 2*pi];
% n = 4;
% L = [0.25 0.25 0.25 0.25];
% Reqs =  linspace(sqrt(3)/(2*pi),pi,10);

% EXAMPLE: 4 PARTICLES randomly generated IC
% randomly generate L s.t. sumL = 1
% x0 = rand(4,3);
% p0 = 3*rand(4,3);
% n = 4;
% l1 = rand(1,1);
% l2 = rand(1,1) * (1 - l1);
% l3 = rand(1,1) * (1 - l1 - l2);
% l4 = 1 - l1 - l2 - l3;
% L = [l1 l2 l3 l4];

% Arclength
s = 1;

% Define parameters
params = parameters;

% List of Desired boundary condition for x(tf)
% Reqs = [0.5*sqrt(2)/pi];
% Reqs = linspace(1/pi, 0, 50);
% Reqs =  linspace(1/pi,3,50);

% Solve the continuation problem
output = solve_continuation(x0,p0,n,L,s,Reqs, params);

end