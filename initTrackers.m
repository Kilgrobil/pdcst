function [ sMat ] = initTrackers(TrackerNum,TargetNum,Dim,SizeOfEnvironment )
    sMat=ones(TrackerNum,Dim+3);
    for i=1:TrackerNum
        for j=1:Dim
            sMat(i,j)=(SizeOfEnvironment(1,j)+SizeOfEnvironment(2,j))/2;
        end
        sMat(i,Dim+1)=1;
        sMat(i,Dim+2)=mod(i,TargetNum)+1;
        sMat(i,Dim+3)=i;
    end
end
