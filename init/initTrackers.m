function [ sMat ] = initTrackers(TrackerNum,TargetNum,Dim,SizeOfEnvironment )
    sMat=zeros(TrackerNum,Dim+3);
    radius=min(abs(SizeOfEnvironment(1,1:Dim)-SizeOfEnvironment(2,1:Dim)))*.35;
    center=.5*SizeOfEnvironment(1,1:Dim)+.5*SizeOfEnvironment(2,1:Dim);
    for i=1:TrackerNum
        sMat(i,1)=center(1)+radius*cos(2*pi*i/TrackerNum);
        sMat(i,2)=center(2)+radius*sin(2*pi*i/TrackerNum);
        if Dim~=2
            sMat(i,3)=center(3);
        end
        sMat(i,Dim+1)=1;
        sMat(i,Dim+2)=mod(i,TargetNum)+1;
        sMat(i,Dim+3)=i;
    end
end
