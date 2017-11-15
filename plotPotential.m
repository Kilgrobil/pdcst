[X,Y] = meshgrid(-4:1:15);                                
for i = -4:1:15
    for j=-4:1:15
        Z(i)=3/(X(i)^2+Y(i)^2);
    end
end
surf(X,Y,Z)