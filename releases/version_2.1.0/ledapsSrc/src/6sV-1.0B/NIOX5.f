      subroutine    niox5(a,inu)
       real a(8)
       real acr(8,256)
       integer inu,j,k,i
c     nitrous oxide (12740 - 15290 cm-1)
c
       data ((acr(k,j),k=1,8),j=  1,  8) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.12740e+05, 0.12750e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.12750e+05, 0.12760e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.12760e+05, 0.12770e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.12770e+05, 0.12780e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.12780e+05, 0.12790e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.12790e+05, 0.12800e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.12800e+05, 0.12810e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.12810e+05, 0.12820e+05/
       data ((acr(k,j),k=1,8),j=  9, 16) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.12820e+05, 0.12830e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.12830e+05, 0.12840e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.12840e+05, 0.12850e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.12850e+05, 0.12860e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.12860e+05, 0.12870e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.12870e+05, 0.12880e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.12880e+05, 0.12890e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.12890e+05, 0.12900e+05/
       data ((acr(k,j),k=1,8),j= 17, 24) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.12900e+05, 0.12910e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.12910e+05, 0.12920e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.12920e+05, 0.12930e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.12930e+05, 0.12940e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.12940e+05, 0.12950e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.12950e+05, 0.12960e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.12960e+05, 0.12970e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.12970e+05, 0.12980e+05/
       data ((acr(k,j),k=1,8),j= 25, 32) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.12980e+05, 0.12990e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.12990e+05, 0.13000e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13000e+05, 0.13010e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13010e+05, 0.13020e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13020e+05, 0.13030e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13030e+05, 0.13040e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13040e+05, 0.13050e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13050e+05, 0.13060e+05/
       data ((acr(k,j),k=1,8),j= 33, 40) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13060e+05, 0.13070e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13070e+05, 0.13080e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13080e+05, 0.13090e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13090e+05, 0.13100e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13100e+05, 0.13110e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13110e+05, 0.13120e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13120e+05, 0.13130e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13130e+05, 0.13140e+05/
       data ((acr(k,j),k=1,8),j= 41, 48) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13140e+05, 0.13150e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13150e+05, 0.13160e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13160e+05, 0.13170e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13170e+05, 0.13180e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13180e+05, 0.13190e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13190e+05, 0.13200e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13200e+05, 0.13210e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13210e+05, 0.13220e+05/
       data ((acr(k,j),k=1,8),j= 49, 56) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13220e+05, 0.13230e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13230e+05, 0.13240e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13240e+05, 0.13250e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13250e+05, 0.13260e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13260e+05, 0.13270e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13270e+05, 0.13280e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13280e+05, 0.13290e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13290e+05, 0.13300e+05/
       data ((acr(k,j),k=1,8),j= 57, 64) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13300e+05, 0.13310e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13310e+05, 0.13320e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13320e+05, 0.13330e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13330e+05, 0.13340e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13340e+05, 0.13350e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13350e+05, 0.13360e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13360e+05, 0.13370e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13370e+05, 0.13380e+05/
       data ((acr(k,j),k=1,8),j= 65, 72) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13380e+05, 0.13390e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13390e+05, 0.13400e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13400e+05, 0.13410e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13410e+05, 0.13420e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13420e+05, 0.13430e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13430e+05, 0.13440e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13440e+05, 0.13450e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13450e+05, 0.13460e+05/
       data ((acr(k,j),k=1,8),j= 73, 80) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13460e+05, 0.13470e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13470e+05, 0.13480e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13480e+05, 0.13490e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13490e+05, 0.13500e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13500e+05, 0.13510e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13510e+05, 0.13520e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13520e+05, 0.13530e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13530e+05, 0.13540e+05/
       data ((acr(k,j),k=1,8),j= 81, 88) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13540e+05, 0.13550e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13550e+05, 0.13560e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13560e+05, 0.13570e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13570e+05, 0.13580e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13580e+05, 0.13590e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13590e+05, 0.13600e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13600e+05, 0.13610e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13610e+05, 0.13620e+05/
       data ((acr(k,j),k=1,8),j= 89, 96) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13620e+05, 0.13630e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13630e+05, 0.13640e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13640e+05, 0.13650e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13650e+05, 0.13660e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13660e+05, 0.13670e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13670e+05, 0.13680e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13680e+05, 0.13690e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13690e+05, 0.13700e+05/
       data ((acr(k,j),k=1,8),j= 97,104) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13700e+05, 0.13710e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13710e+05, 0.13720e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13720e+05, 0.13730e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13730e+05, 0.13740e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13740e+05, 0.13750e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13750e+05, 0.13760e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13760e+05, 0.13770e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13770e+05, 0.13780e+05/
       data ((acr(k,j),k=1,8),j=105,112) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13780e+05, 0.13790e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13790e+05, 0.13800e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13800e+05, 0.13810e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13810e+05, 0.13820e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13820e+05, 0.13830e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13830e+05, 0.13840e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13840e+05, 0.13850e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13850e+05, 0.13860e+05/
       data ((acr(k,j),k=1,8),j=113,120) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13860e+05, 0.13870e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13870e+05, 0.13880e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13880e+05, 0.13890e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13890e+05, 0.13900e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13900e+05, 0.13910e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13910e+05, 0.13920e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13920e+05, 0.13930e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13930e+05, 0.13940e+05/
       data ((acr(k,j),k=1,8),j=121,128) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13940e+05, 0.13950e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13950e+05, 0.13960e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13960e+05, 0.13970e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13970e+05, 0.13980e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13980e+05, 0.13990e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.13990e+05, 0.14000e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14000e+05, 0.14010e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14010e+05, 0.14020e+05/
       data ((acr(k,j),k=1,8),j=129,136) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14020e+05, 0.14030e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14030e+05, 0.14040e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14040e+05, 0.14050e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14050e+05, 0.14060e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14060e+05, 0.14070e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14070e+05, 0.14080e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14080e+05, 0.14090e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14090e+05, 0.14100e+05/
       data ((acr(k,j),k=1,8),j=137,144) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14100e+05, 0.14110e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14110e+05, 0.14120e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14120e+05, 0.14130e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14130e+05, 0.14140e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14140e+05, 0.14150e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14150e+05, 0.14160e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14160e+05, 0.14170e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14170e+05, 0.14180e+05/
       data ((acr(k,j),k=1,8),j=145,152) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14180e+05, 0.14190e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14190e+05, 0.14200e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14200e+05, 0.14210e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14210e+05, 0.14220e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14220e+05, 0.14230e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14230e+05, 0.14240e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14240e+05, 0.14250e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14250e+05, 0.14260e+05/
       data ((acr(k,j),k=1,8),j=153,160) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14260e+05, 0.14270e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14270e+05, 0.14280e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14280e+05, 0.14290e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14290e+05, 0.14300e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14300e+05, 0.14310e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14310e+05, 0.14320e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14320e+05, 0.14330e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14330e+05, 0.14340e+05/
       data ((acr(k,j),k=1,8),j=161,168) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14340e+05, 0.14350e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14350e+05, 0.14360e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14360e+05, 0.14370e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14370e+05, 0.14380e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14380e+05, 0.14390e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14390e+05, 0.14400e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14400e+05, 0.14410e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14410e+05, 0.14420e+05/
       data ((acr(k,j),k=1,8),j=169,176) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14420e+05, 0.14430e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14430e+05, 0.14440e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14440e+05, 0.14450e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14450e+05, 0.14460e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14460e+05, 0.14470e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14470e+05, 0.14480e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14480e+05, 0.14490e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14490e+05, 0.14500e+05/
       data ((acr(k,j),k=1,8),j=177,184) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14500e+05, 0.14510e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14510e+05, 0.14520e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14520e+05, 0.14530e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14530e+05, 0.14540e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14540e+05, 0.14550e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14550e+05, 0.14560e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14560e+05, 0.14570e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14570e+05, 0.14580e+05/
       data ((acr(k,j),k=1,8),j=185,192) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14580e+05, 0.14590e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14590e+05, 0.14600e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14600e+05, 0.14610e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14610e+05, 0.14620e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14620e+05, 0.14630e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14630e+05, 0.14640e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14640e+05, 0.14650e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14650e+05, 0.14660e+05/
       data ((acr(k,j),k=1,8),j=193,200) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14660e+05, 0.14670e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14670e+05, 0.14680e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14680e+05, 0.14690e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14690e+05, 0.14700e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14700e+05, 0.14710e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14710e+05, 0.14720e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14720e+05, 0.14730e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14730e+05, 0.14740e+05/
       data ((acr(k,j),k=1,8),j=201,208) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14740e+05, 0.14750e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14750e+05, 0.14760e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14760e+05, 0.14770e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14770e+05, 0.14780e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14780e+05, 0.14790e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14790e+05, 0.14800e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14800e+05, 0.14810e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14810e+05, 0.14820e+05/
       data ((acr(k,j),k=1,8),j=209,216) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14820e+05, 0.14830e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14830e+05, 0.14840e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14840e+05, 0.14850e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14850e+05, 0.14860e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14860e+05, 0.14870e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14870e+05, 0.14880e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14880e+05, 0.14890e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14890e+05, 0.14900e+05/
       data ((acr(k,j),k=1,8),j=217,224) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14900e+05, 0.14910e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14910e+05, 0.14920e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14920e+05, 0.14930e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14930e+05, 0.14940e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14940e+05, 0.14950e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14950e+05, 0.14960e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14960e+05, 0.14970e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14970e+05, 0.14980e+05/
       data ((acr(k,j),k=1,8),j=225,232) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14980e+05, 0.14990e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.14990e+05, 0.15000e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15000e+05, 0.15010e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15010e+05, 0.15020e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15020e+05, 0.15030e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15030e+05, 0.15040e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15040e+05, 0.15050e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15050e+05, 0.15060e+05/
       data ((acr(k,j),k=1,8),j=233,240) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15060e+05, 0.15070e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15070e+05, 0.15080e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15080e+05, 0.15090e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15090e+05, 0.15100e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15100e+05, 0.15110e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15110e+05, 0.15120e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15120e+05, 0.15130e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15130e+05, 0.15140e+05/
       data ((acr(k,j),k=1,8),j=241,248) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15140e+05, 0.15150e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15150e+05, 0.15160e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15160e+05, 0.15170e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15170e+05, 0.15180e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15180e+05, 0.15190e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15190e+05, 0.15200e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15200e+05, 0.15210e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15210e+05, 0.15220e+05/
       data ((acr(k,j),k=1,8),j=249,256) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15220e+05, 0.15230e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15230e+05, 0.15240e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15240e+05, 0.15250e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15250e+05, 0.15260e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15260e+05, 0.15270e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15270e+05, 0.15280e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15280e+05, 0.15290e+05,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.15290e+05, 0.15300e+05/
c
      do i=1,8
      a(i)=acr(i,inu)
      enddo
c
      return
      end
