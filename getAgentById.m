function agent = getAgentById(agents,id)
%getAgentById returns the line of the agents matrix ending with id
[agentNum,dim]=size(agents);
for i=1:agentNum
   if agents(i,dim)==id
       agent=agents(i,:);
       break;
   end
end
end

