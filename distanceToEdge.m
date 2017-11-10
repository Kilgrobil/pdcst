function distance = distanceToEdge(position,envSize)
%distanceToEdge returns the euclidian distance of position to the closest
%wall of the environment
dim=length(position);
dInf=min(abs(position-envSize(1,1:dim)));
dSup=min(abs(position-envSize(2,1:dim)));
distance=min(dInf,dSup);
end

