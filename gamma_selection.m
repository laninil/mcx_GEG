function[a1, g] = gamma_selection(gamma)

addpath(genpath('/home/laninil/Documents/MonteCarlo/mcx-master_Geg'))
gamma_table = load("/home/laninil/Documents/MonteCarlo/mcx-master_Geg/gammaGeg.mat");
a1_table = load("/home/laninil/Documents/MonteCarlo/mcx-master_Geg/aGeg.mat");
g_table = load("/home/laninil/Documents/MonteCarlo/mcx-master_Geg/gGeg.mat");

difference = gamma_table.gamma - gamma;
[Mx, Ix] = min(abs(difference));
[My, Iy] = min(abs(Mx));

a1 = a1_table.a1(Iy);
g = g_table.g(Ix(Iy));

end