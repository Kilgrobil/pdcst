function [ sMat ] = initTargets(TargetNum,ObjectiveNum,Dim,SizeOfEnvironment )
    sMat=zeros(TargetNum,Dim+3);
    radius=min(abs(SizeOfEnvironment(1,1:Dim)-SizeOfEnvironment(2,1:Dim)))*.05;
    center=.5*SizeOfEnvironment(1,1:Dim)+.5*SizeOfEnvironment(2,1:Dim);
    for i=1:TargetNum
        sMat(i,1)=center(1)+radius*cos(2*pi*i/TargetNum);
        sMat(i,2)=center(2)+radius*sin(2*pi*i/TargetNum);
        if Dim~=2
            sMat(i,3)=center(3);
        end
        sMat(i,Dim+1)=2;
        sMat(i,Dim+2)=1;
        sMat(i,Dim+3)=i;
    end
end
