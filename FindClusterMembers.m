function [result]=FindClusterMembers( data,nOfc )
    [center,U,objFcn] = fcm(data,nOfc);
    maxU = max(U);
    index1 = find(U(1, :) == maxU)
    index2 = find(U(2, :) == maxU)
    if nOfc>=3
        index3 = find(U(3, :) == maxU)
    end
    if nOfc>=4
        index4 = find(U(4, :) == maxU);
    end
    if nOfc>=5
        index5 = find(U(5, :) == maxU);
    end
    fileID=fopen('cluster1.txt','a');
    fprintf(fileID,'%i\n',index1);
    fclose(fileID);
    fileID=fopen('cluster2.txt','a');
    fprintf(fileID,'%i\n',index2);
    fclose(fileID);
    if nOfc>=3
        fileID=fopen('cluster3.txt','a');
        fprintf(fileID,'%i\n',index3);
        fclose(fileID);
    end
    if nOfc>=4
        fileID=fopen('cluster4.txt','a');
        fprintf(fileID,'%i\n',index4);
        fclose(fileID);
    end
    if nOfc>=5
        fileID=fopen('cluster5.txt','a');
        fprintf(fileID,'%i\n',index5);
        fclose(fileID);
    end
end

