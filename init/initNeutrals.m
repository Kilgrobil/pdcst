function sMat = initNeutrals(Dim,SizeOfEnvironment )
% add two opposite corners of environment for display
    sMat=[SizeOfEnvironment(1,1:Dim) 0 0 0; SizeOfEnvironment(2,1:Dim) 0 0 1];
end
