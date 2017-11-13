function [ sMat ] = initTargets(TargetNum,ObjectiveNum,Dim,SizeOfEnvironment )
    sMat=(SizeOfEnvironment(2,1)*.9+SizeOfEnvironment(1,1)*.1)*ones(TargetNum,Dim+3);
    for i=1:TargetNum
        sMat(i,1)=SizeOfEnvironment(1,1) + (SizeOfEnvironment(2,2)-SizeOfEnvironment(1,1))*(i-0.5)/TargetNum;
        sMat(i,Dim+1)=2;
        sMat(i,Dim+2)=mod(i,ObjectiveNum)+1;
        sMat(i,Dim+3)=i;
    end
end
