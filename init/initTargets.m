function [ sMat ] = initTargets(TargetNum,ObjectiveNum,Dim,SizeOfEnvironment )
    sMat=zeros(TargetNum,Dim+3);
    for i=1:TargetNum
        sMat(i,1:Dim)=.5*SizeOfEnvironment(1,1:Dim)+.5*SizeOfEnvironment(2:Dim);
        sMat(i,Dim+1)=2;
        sMat(i,Dim+2)=1;
        sMat(i,Dim+3)=i;
    end
end
