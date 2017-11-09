function [ sMat ] = initTargets(TargetNum,ObjectiveNum,Dim,SizeOfEnvironment )
    sMat=SizeOfEnvironment(2,1)*ones(TargetNum,Dim+2);
    for i=1:TargetNum
        sMat(i,1)=SizeOfEnvironment(1,1) + (SizeOfEnvironment(2,2)-SizeOfEnvironment(1,1))*i/(TargetNum-1);
        sMat(i,Dim+1)=2;
        sMat(i,Dim+2)=mod(i,ObjectiveNum);
    end
end
