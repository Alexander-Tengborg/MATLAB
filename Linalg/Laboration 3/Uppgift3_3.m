H=[3 -2 -2 0; 0 4 -1 0; -3 -3 -1 3];
S=[1 2 3;1 2 4;1 3 4;2 3 4]; 

figure; hold on; 

axis equal; view(3); axis([-4 4 -4 4 -4 4]); box on; grid on; 

xlabel('x'); ylabel('y'); zlabel('z'); 

for i=1:size(S,1) 

         Si = S(i,:); 

         fill3(H(1,Si),H(2,Si),H(3,Si),'g','FaceAlpha',0.7); 

end 