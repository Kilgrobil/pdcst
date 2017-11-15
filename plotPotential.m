%This plots the potential from the point of view of a Tracker. 
%There is an other Tracker in [2.1,2.1].
%There is a yakuza in [5.1,7.7].


[X,Y] = meshgrid(0:0.2:10);
Z = zeros(size(X));
for i = 1:size(X)
    for j=1:size(X)
        Z(i,j) =     end
end
surf(X,Y,Z)
set(gca,'color',[1 1 1])