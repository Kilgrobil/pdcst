function [ sMat ] = initObjectives(ObjectiveNum,Dim,SizeOfEnvironment )
    sMat=zeros(ObjectiveNum,Dim+3);
    for i=1:ObjectiveNum
        sMat(i,1)=SizeOfEnvironment(1,1) + (SizeOfEnvironment(2,2)-SizeOfEnvironment(1,1))*i/(ObjectiveNum-1);
        sMat(i,Dim+3)=i;
    end
    sMat(:,2)=SizeOfEnvironment(1,2)*ones(ObjectiveNum,1);
    if Dim~=2
        sMat(:,3)=SizeOfEnvironment(1,3)*ones(ObjectiveNum,1);
    end
    sMat(:,Dim+1)=3*ones(ObjectiveNum,1);
end
