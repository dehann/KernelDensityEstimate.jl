
function test03()
    spls = zeros(1,3)
    spls[1,:] = [0.5172, 0.7169, 0.4049]
    p1000 = kde!(spls,"lcv");
    printBallTree(p1000);

    # should get
    #D= 1
    #N= 3
    #centers= 0.5609     0.46105           0      0.4049      0.5172      0.7169
    #weights= 1     0.66667           0     0.33333     0.33333     0.33333
    #ranges= 0.156     0.05615           0           0           0           0
    #leftch= 1  3  0  3  4  5
    #rightch= 5           4           0  4294967295  4294967295  4294967295
    #highest= 5  4  0  3  4  5
    #lowest= 3  3  0  3  4  5
    #perm= 0  0  0  2  0  1
    #means= 0.54633     0.46105           0      0.4049      0.5172      0.7169
    #bw= 0.05517    0.041674           0    0.038521    0.038521    0.038521
end
function test04()
    spls = zeros(2,3)
    spls[1,:] = [0.5172, 0.7169, 0.4049]
    spls[2,:] = [0.0312, 1.0094, 2.0204]
    p1000 = kde!(spls,"lcv");
    printBallTree(p1000);
    # should get
    #BallTreeDensity
    #D= 2
    #N= 3
    #centers= 0.5609      1.0258     0.61705      0.5203           0           0      0.5172      0.0312      0.7169      1.0094      0.4049      2.0204
    #weights= 1     0.66667           0     0.33333     0.33333     0.33333
    #ranges= 0.156      0.9946     0.09985      0.4891           0           0           0           0           0           0           0           0
    #leftch= 1  3  0  3  4  5
    #rightch= 5           4           0  4294967295  4294967295  4294967295
    #highest= 5  4  0  3  4  5
    #lowest= 3  3  0  3  4  5
    #perm= 0  0  0  0  1  2
    #means= 0.54633      1.0203     0.61705      0.5203           0           0      0.5172      0.0312      0.7169      1.0094      0.4049      2.0204
    #bw= 1.0268      1.6697      1.0201      1.2494           0           0      1.0101      1.0101      1.0101      1.0101      1.0101      1.0101
end