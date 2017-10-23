function [result] = Wine_Clustering(data,nOfc )
    
    [center,U,objFcn] = fcm(data,nOfc);
    maxU = max(U);
    index1 = find(U(1, :) == maxU);
    index2 = find(U(2, :) == maxU);
    if nOfc>=3
        index3 = find(U(3, :) == maxU);
    end
    if nOfc>=4
        index4 = find(U(4, :) == maxU);
    end
    if nOfc>=5
        index5 = find(U(5, :) == maxU);
    end
    
    figure
    line(data(index1,1),data(index1,2),'linestyle','none','marker', 'o','color','g');
    line(data(index2,1),data(index2,2),'linestyle','none','marker', 'x','color','r');
    if nOfc>=3
        line(data(index3,1),data(index3,2),'linestyle','none','marker', '*','color','b');
    end
    if nOfc>=4
        line(data(index4,1),data(index4,2),'linestyle','none','marker', '+','color','k');
    end
    if nOfc>=5
        line(data(index5,1),data(index5,2),'linestyle','none','marker', '.','color','m');
    end
    
    hold on
    plot(center(1,1),center(1,2),'ko','markersize',15,'LineWidth',2)
    plot(center(2,1),center(2,2),'kx','markersize',15,'LineWidth',2)
    if nOfc>=3
        plot(center(3,1),center(3,2),'k*','markersize',15,'LineWidth',2)
    end
    if nOfc>=4
        plot(center(4,1),center(4,2),'k+','markersize',15,'LineWidth',2)
    end
    if nOfc>=5
        plot(center(5,1),center(5,2),'k.','markersize',15,'LineWidth',2)
    end
    
    [m1 n1]=size(index1);
    [m2 n2]=size(index2);
    if nOfc>=3
        [m3 n3]=size(index3);
    end
    if nOfc>=4
        [m4 n4]=size(index4);
    end
    if nOfc>=5
        [m5 n5]=size(index5);
    end
    
    std1=0;
    r1=0;
    std2=0;
    r2=0;
    if nOfc>=3
        std3=0;
        r3=0;
    end
    if nOfc>=4
        std4=0;
        r4=0;
    end
    if nOfc>=5
        std5=0;
        r5=0;
    end
    
    for i=1:n1
        temp=sqrt((data(index1(1, i), 1)-center(1, 1))^2+(data(index1(1, i), 2)-center(1, 2))^2);
        if(r1<temp)
            r1=temp;
        end
        std1=std1+temp;            
    end
    for i=1:n2
        temp=sqrt((data(index2(1, i), 1)-center(2, 1))^2+(data(index2(1, i), 2)-center(2, 2))^2);
        if(r2<temp)
            r2=temp;
        end
        std2=std2+temp;            

    end
    if nOfc>=3
        for i=1:n3
            temp=sqrt((data(index3(1, i), 1)-center(3, 1))^2+(data(index3(1, i), 2)-center(3, 2))^2);
            if(r3<temp)
                r3=temp;
            end
            std3=std3+temp;            
        end
    end
    if nOfc>=4
        for i=1:n4
            temp=sqrt((data(index4(1, i), 1)-center(4, 1))^2+(data(index4(1, i), 2)-center(4, 2))^2);
            if(r4<temp)
                r4=temp;
            end
            std4=std4+temp;
        end
    end
    if nOfc>=5
        for i=1:n5
            temp=sqrt((data(index5(1, i), 1)-center(5, 1))^2+(data(index5(1, i), 2)-center(5, 2))^2);
            if(r5<temp)
                r5=temp;
            end
            std5=std5+temp;
        end
    end
    
    x1=center(1,1);
    y1=center(1,2);
    std1=std1/sqrt(n1);
    x2=center(2,1);
    y2=center(2,2);
    std2=std2/sqrt(n2);
    if nOfc>=3
        x3=center(3,1);
        y3=center(3,2);
        std3=std3/sqrt(n3);
    end
    if nOfc>=4
        x4=center(4,1);
        y4=center(4,2);
        std4=std4/sqrt(n4);
    end
    if nOfc>=5
        x5=center(5,1);
        y5=center(5,2);
        std5=std5/sqrt(n5);
    end
    
    if nOfc==2
        result = [x1 y1 r1 std1; x2 y2 r2 std2];
    end
    if nOfc==3
        result = [x1 y1 r1 std1; x2 y2 r2 std2; x3 y3 r3 std3];
    end
    if nOfc==4
        result = [x1 y1 r1 std1; x2 y2 r2 std2; x3 y3 r3 std3; x4 y4 r4 std4];
    end
    if nOfc==5
        result = [x1 y1 r1 std1; x2 y2 r2 std2; x3 y3 r3 std3; x4 y4 r4 std4; x5 y5 r5 std5];
    end
    
    if nOfc==2
        fileID=fopen('clus2_c1.txt','a');
        fprintf(fileID,'[%4.2f,%4.2f]\n',x1,y1);
        fclose(fileID);
        fileID=fopen('clus2_c2.txt','a');
        fprintf(fileID,'[%4.2f,%4.2f]\n',x2,y2);
        fclose(fileID);
        fileID=fopen('clus2_r1.txt','a');
        fprintf(fileID,'%4.4f\n',r1);
        fclose(fileID);
        fileID=fopen('clus2_r2.txt','a');
        fprintf(fileID,'%4.4f\n',r2);
        fclose(fileID);
        fileID=fopen('clus2_std1.txt','a');
        fprintf(fileID,'%4.4f\n',std1);
        fclose(fileID);
        fileID=fopen('clus2_std2.txt','a');
        fprintf(fileID,'%4.4f\n',std2);
        fclose(fileID);
    end
    if nOfc==3
        fileID=fopen('clus3_c1.txt','a');
        fprintf(fileID,'[%4.2f,%4.2f]\n',x1,y1);
        fclose(fileID);
        fileID=fopen('clus3_c2.txt','a');
        fprintf(fileID,'[%4.2f,%4.2f]\n',x2,y2);
        fclose(fileID);
        fileID=fopen('clus3_c3.txt','a');
        fprintf(fileID,'[%4.2f,%4.2f]\n',x3,y3);
        fclose(fileID);
        fileID=fopen('clus3_r1.txt','a');
        fprintf(fileID,'%4.4f\n',r1);
        fclose(fileID);
        fileID=fopen('clus3_r2.txt','a');
        fprintf(fileID,'%4.4f\n',r2);
        fclose(fileID);
        fileID=fopen('clus3_r3.txt','a');
        fprintf(fileID,'%4.4f\n',r3);
        fclose(fileID);
        fileID=fopen('clus3_std1.txt','a');
        fprintf(fileID,'%4.4f\n',std1);
        fclose(fileID);
        fileID=fopen('clus3_std2.txt','a');
        fprintf(fileID,'%4.4f\n',std2);
        fclose(fileID);
        fileID=fopen('clus3_std3.txt','a');
        fprintf(fileID,'%4.4f\n',std3);
        fclose(fileID);
    end
    if nOfc==4
        fileID=fopen('clus4_c1.txt','a');
        fprintf(fileID,'[%4.2f,%4.2f]\n',x1,y1);
        fclose(fileID);
        fileID=fopen('clus4_c2.txt','a');
        fprintf(fileID,'[%4.2f,%4.2f]\n',x2,y2);
        fclose(fileID);
        fileID=fopen('clus4_c3.txt','a');
        fprintf(fileID,'[%4.2f,%4.2f]\n',x3,y3);
        fclose(fileID);
        fileID=fopen('clus4_c4.txt','a');
        fprintf(fileID,'[%4.2f,%4.2f]\n',x4,y4);
        fclose(fileID);
        fileID=fopen('clus4_r1.txt','a');
        fprintf(fileID,'%4.4f\n',r1);
        fclose(fileID);
        fileID=fopen('clus4_r2.txt','a');
        fprintf(fileID,'%4.4f\n',r2);
        fclose(fileID);
        fileID=fopen('clus4_r3.txt','a');
        fprintf(fileID,'%4.4f\n',r3);
        fclose(fileID);
        fileID=fopen('clus4_r4.txt','a');
        fprintf(fileID,'%4.4f\n',r4);
        fclose(fileID);
        fileID=fopen('clus4_std1.txt','a');
        fprintf(fileID,'%4.4f\n',std1);
        fclose(fileID);
        fileID=fopen('clus4_std2.txt','a');
        fprintf(fileID,'%4.4f\n',std2);
        fclose(fileID);
        fileID=fopen('clus4_std3.txt','a');
        fprintf(fileID,'%4.4f\n',std3);
        fclose(fileID);
        fileID=fopen('clus4_std4.txt','a');
        fprintf(fileID,'%4.4f\n',std4);
        fclose(fileID);
    end
    if nOfc==5
        fileID=fopen('clus5_c1.txt','a');
        fprintf(fileID,'[%4.2f,%4.2f]\n',x1,y1);
        fclose(fileID);
        fileID=fopen('clus5_c2.txt','a');
        fprintf(fileID,'[%4.2f,%4.2f]\n',x2,y2);
        fclose(fileID);
        fileID=fopen('clus5_c3.txt','a');
        fprintf(fileID,'[%4.2f,%4.2f]\n',x3,y3);
        fclose(fileID);
        fileID=fopen('clus5_c4.txt','a');
        fprintf(fileID,'[%4.2f,%4.2f]\n',x4,y4);
        fclose(fileID);
        fileID=fopen('clus5_c5.txt','a');
        fprintf(fileID,'[%4.2f,%4.2f]\n',x5,y5);
        fclose(fileID);
        fileID=fopen('clus5_r1.txt','a');
        fprintf(fileID,'%4.4f\n',r1);
        fclose(fileID);
        fileID=fopen('clus5_r2.txt','a');
        fprintf(fileID,'%4.4f\n',r2);
        fclose(fileID);
        fileID=fopen('clus5_r3.txt','a');
        fprintf(fileID,'%4.4f\n',r3);
        fclose(fileID);
        fileID=fopen('clus5_r4.txt','a');
        fprintf(fileID,'%4.4f\n',r4);
        fclose(fileID);
        fileID=fopen('clus5_r5.txt','a');
        fprintf(fileID,'%4.4f\n',r5);
        fclose(fileID);
        fileID=fopen('clus5_std1.txt','a');
        fprintf(fileID,'%4.4f\n',std1);
        fclose(fileID);
        fileID=fopen('clus5_std2.txt','a');
        fprintf(fileID,'%4.4f\n',std2);
        fclose(fileID);
        fileID=fopen('clus5_std3.txt','a');
        fprintf(fileID,'%4.4f\n',std3);
        fclose(fileID);
        fileID=fopen('clus5_std4.txt','a');
        fprintf(fileID,'%4.4f\n',std4);
        fclose(fileID);
        fileID=fopen('clus5_std5.txt','a');
        fprintf(fileID,'%4.4f\n',std5);
        fclose(fileID);
    end    
end