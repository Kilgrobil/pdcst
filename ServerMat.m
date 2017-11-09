%This sampmle code is server of multi agents system (MAS) for work on multi
%agents problem .
% Published by Masoud Nadi
% Email : nadimasoud.90@gmail.com
% Copy Write 2015
%% make agents matrix
% This function load agents in random positions in a line
% The sMat matrix is :
% sMat(:,1)=X ; sMat(:,2)=Y ;sMat(:,3)=Z (in 3D environment) ;
% sMat(:,3)=Agent number ( in 2D environment) ; sMat(:,4)=Agent number (in
% 3D environment)

function [ sMat ] = ServerMat(TrackerNum,TargetNum,Dim,SizeOfEnvironmet )
    AgentNum = TrackerNum + TargetNum;
    sMat=zeros(AgentNum,Dim);
    for i=1:TrackerNum
        sMat(i,1)=i;
    end
    for j=1:TargetNum
       sMat(TrackerNum+j,1:Dim) = [2*j+2;2*j+2];
    end
    sMat(:,Dim+1)=(1:AgentNum);
    for i=1:2
        sMat(AgentNum+i,1:Dim)=SizeOfEnvironmet(i,1:Dim);
    end

end
