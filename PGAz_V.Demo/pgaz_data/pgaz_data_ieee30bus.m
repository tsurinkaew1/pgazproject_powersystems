% IEEE 30-BUS TEST SYSTEM
% Load Flow Analysis of IEEE 30-Bus System
% 1 - Slack Bus..
% 2 - PV Bus..
% 0 - PQ Bus..

% Bus Data
%        Bus Bus      Voltage Angle   ---Load----  -------Generator-----      Static Mvar
%        No  code     Mag.    Degree   MW    Mvar  MW       Mvar  Qmin  Qmax  +Qc/-Ql
bus.con = [
    1   1   1.06    0    0.0    0.0    0.0    0.0   0   0   0;   % Slack Bus
    2   2   1.043   0   21.7   12.7   40.0    0.0 -40  50   0;   % PV Bus
    3   0   1.0     0    2.4    1.2    0.0    0.0   0   0   0;   % PQ Bus
    4   0   1.06    0    7.6    1.6    0.0    0.0   0   0   0;   % PQ Bus
    5   2   1.01    0   94.2   19.0    0.0    0.0 -40  40   0;   % PV Bus
    6   0   1.0     0    0.0    0.0    0.0    0.0   0   0   0;   % PQ Bus
    7   0   1.0     0   22.8   10.9    0.0    0.0   0   0   0;   % PQ Bus
    8   2   1.01    0   30.0   30.0    0.0    0.0 -10  40   0;   % PV Bus
    9   0   1.0     0    0.0    0.0    0.0    0.0   0   0   0;   % PQ Bus
   10   0   1.0     0    5.8    2.0    0.0    0.0   0   0  19;   % PQ Bus
   11   2   1.082   0    0.0    0.0    0.0    0.0  -6  24   0;   % PV Bus
   12   0   1.0     0   11.2    7.5    0.0    0.0   0   0   0;   % PQ Bus
   13   2   1.071   0    0.0    0.0    0.0    0.0  -6  24   0;   % PV Bus
   14   0   1.0     0    6.2    1.6    0.0    0.0   0   0   0;   % PQ Bus
   15   0   1.0     0    8.2    2.5    0.0    0.0   0   0   0;   % PQ Bus
   16   0   1.0     0    3.5    1.8    0.0    0.0   0   0   0;   % PQ Bus
   17   0   1.0     0    9.0    5.8    0.0    0.0   0   0   0;   % PQ Bus
   18   0   1.0     0    3.2    0.9    0.0    0.0   0   0   0;   % PQ Bus
   19   0   1.0     0    9.5    3.4    0.0    0.0   0   0   0;   % PQ Bus
   20   0   1.0     0    2.2    0.7    0.0    0.0   0   0   0;   % PQ Bus
   21   0   1.0     0   17.5   11.2    0.0    0.0   0   0   0;   % PQ Bus
   22   0   1.0     0    0.0    0.0    0.0    0.0   0   0   0;   % PQ Bus
   23   0   1.0     0    3.2    1.6    0.0    0.0   0   0   0;   % PQ Bus
   24   0   1.0     0    8.7    6.7    0.0    0.0   0   0  4.3;   % PQ Bus
   25   0   1.0     0    0.0    0.0    0.0    0.0   0   0   0;   % PQ Bus
   26   0   1.0     0    3.5    2.3    0.0    0.0   0   0   0;   % PQ Bus
   27   0   1.0     0    0.0    0.0    0.0    0.0   0   0   0;   % PQ Bus
   28   0   1.0     0    0.0    0.0    0.0    0.0   0   0   0;   % PQ Bus
   29   0   1.0     0    2.4    0.9    0.0    0.0   0   0   0;   % PQ Bus
   30   0   1.0     0   10.6    1.9    0.0    0.0   0   0   0;   % PQ Bus
];

% Line Data
%        Bus bus   R        X     1/2 B     = 1 for lines
%        nl  nr   p.u.     p.u.    p.u.     > 1 or < 1 tr. tap at bus nl
line.con = [
    1  2  0.0192  0.0575  0.02640  1;
    1  3  0.0452  0.1852  0.02040  1;
    2  4  0.0570  0.1737  0.01840  1;
    3  4  0.0132  0.0379  0.00420  1;
    2  5  0.0472  0.1983  0.02090  1;
    2  6  0.0581  0.1763  0.01870  1;
    4  6  0.0119  0.0414  0.00450  1;
    5  7  0.0460  0.1160  0.01020  1;
    6  7  0.0267  0.0820  0.00850  1;
    6  8  0.0120  0.0420  0.00450  1;
    6  9  0.0     0.2080  0.0     0.978;
    6 10  0.0     0.5560  0.0     0.969;
    9 11  0.0     0.2080  0.0     1;
    9 10  0.0     0.1100  0.0     1;
    4 12  0.0     0.2560  0.0     0.932;
   12 13  0.0     0.1400  0.0     1;
   12 14  0.1231  0.2559  0.0     1;
   12 15  0.0662  0.1304  0.0     1;
   12 16  0.0945  0.1987  0.0     1;
   14 15  0.2210  0.1997  0.0     1;
   16 17  0.0824  0.1923  0.0     1;
   15 18  0.1073  0.2185  0.0     1;
   18 19  0.0639  0.1292  0.0     1;
   19 20  0.0340  0.0680  0.0     1;
   10 20  0.0936  0.2090  0.0     1;
   10 17  0.0324  0.0845  0.0     1;
   10 21  0.0348  0.0749  0.0     1;
   10 22  0.0727  0.1499  0.0     1;
   21 22  0.0116  0.0236  0.0     1;
   15 23  0.1000  0.2020  0.0     1;
   22 24  0.1150  0.1790  0.0     1;
   23 24  0.1320  0.2700  0.0     1;
   24 25  0.1885  0.3292  0.0     1;
   25 26  0.2544  0.3800  0.0     1;
   25 27  0.1093  0.2087  0.0     1;
   28 27  0.0000  0.3960  0.0     0.968;
   27 29  0.2198  0.4153  0.0     1;
   27 30  0.3202  0.6027  0.0     1;
   29 30  0.2399  0.4533  0.0     1;
    8 28  0.0636  0.2000  0.0214  1;
    6 28  0.0169  0.0599  0.065   1;
];

% Generator Data (gen.con)
% Bus   Pmin   Pmax    Cf        Cl        Cq
gen.con = [
    1    10    250.0   200      7.0     0.008;   % Generator at Slack Bus
    2    10     50.0   180      6.5     0.009;   % Generator at PV Bus
    5    10    100.0   150      6.7     0.010;   % Generator at PV Bus
    8    10     40.0   120      6.4     0.007;   % Generator at PV Bus
   11    10     25.0    70      6.2     0.007;   % Generator at PV Bus
   13    10     30.0    90      6.6     0.006;   % Generator at PV Bus
];
