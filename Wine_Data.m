function Wine_Data( )
    clear all;
    fcmdata = xlsread('Wine_Data.xlsx');           % Read Wine_Data.xlsx file
    data1_2 = [fcmdata(:, 1) fcmdata(:, 2)];
    data1_3 = [fcmdata(:, 1) fcmdata(:, 3)];
    data1_4 = [fcmdata(:, 1) fcmdata(:, 4)];
    data1_5 = [fcmdata(:, 1) fcmdata(:, 5)];
    data1_6 = [fcmdata(:, 1) fcmdata(:, 6)];
    data1_7 = [fcmdata(:, 1) fcmdata(:, 7)];
    data1_8 = [fcmdata(:, 1) fcmdata(:, 8)];
    data1_9 = [fcmdata(:, 1) fcmdata(:, 9)];
    data1_10 = [fcmdata(:, 1) fcmdata(:, 10)];
    data1_11 = [fcmdata(:, 1) fcmdata(:, 11)];
    data1_12 = [fcmdata(:, 1) fcmdata(:, 12)];
    data1_13 = [fcmdata(:, 1) fcmdata(:, 13)];
    
    data2_3 = [fcmdata(:, 2) fcmdata(:, 3)];
    data2_4 = [fcmdata(:, 2) fcmdata(:, 4)];
    data2_5 = [fcmdata(:, 2) fcmdata(:, 5)];
    data2_6 = [fcmdata(:, 2) fcmdata(:, 6)];
    data2_7 = [fcmdata(:, 2) fcmdata(:, 7)];
    data2_8 = [fcmdata(:, 2) fcmdata(:, 8)];
    data2_9 = [fcmdata(:, 2) fcmdata(:, 9)];
    data2_10 = [fcmdata(:, 2) fcmdata(:, 10)];
    data2_11 = [fcmdata(:, 2) fcmdata(:, 11)];
    data2_12 = [fcmdata(:, 2) fcmdata(:, 12)];
    data2_13 = [fcmdata(:, 2) fcmdata(:, 13)];
    
    data3_4 = [fcmdata(:, 3) fcmdata(:, 4)];
    data3_5 = [fcmdata(:, 3) fcmdata(:, 5)];
    data3_6 = [fcmdata(:, 3) fcmdata(:, 6)];
    data3_7 = [fcmdata(:, 3) fcmdata(:, 7)];
    data3_8 = [fcmdata(:, 3) fcmdata(:, 8)];
    data3_9 = [fcmdata(:, 3) fcmdata(:, 9)];
    data3_10 = [fcmdata(:, 3) fcmdata(:, 10)];
    data3_11 = [fcmdata(:, 3) fcmdata(:, 11)];
    data3_12 = [fcmdata(:, 3) fcmdata(:, 12)];
    data3_13 = [fcmdata(:, 3) fcmdata(:, 13)];
    
    data4_5 = [fcmdata(:, 4) fcmdata(:, 5)];
    data4_6 = [fcmdata(:, 4) fcmdata(:, 6)];
    data4_7 = [fcmdata(:, 4) fcmdata(:, 7)];
    data4_8 = [fcmdata(:, 4) fcmdata(:, 8)];
    data4_9 = [fcmdata(:, 4) fcmdata(:, 9)];
    data4_10 = [fcmdata(:, 4) fcmdata(:, 10)];
    data4_11 = [fcmdata(:, 4) fcmdata(:, 11)];
    data4_12 = [fcmdata(:, 4) fcmdata(:, 12)];
    data4_13 = [fcmdata(:, 4) fcmdata(:, 13)];
    
    data5_6 = [fcmdata(:, 5) fcmdata(:, 6)];
    data5_7 = [fcmdata(:, 5) fcmdata(:, 7)];
    data5_8 = [fcmdata(:, 5) fcmdata(:, 8)];
    data5_9 = [fcmdata(:, 5) fcmdata(:, 9)];
    data5_10 = [fcmdata(:, 5) fcmdata(:, 10)];
    data5_11 = [fcmdata(:, 5) fcmdata(:, 11)];
    data5_12 = [fcmdata(:, 5) fcmdata(:, 12)];
    data5_13 = [fcmdata(:, 5) fcmdata(:, 13)];
    
    data6_7 = [fcmdata(:, 6) fcmdata(:, 7)];
    data6_8 = [fcmdata(:, 6) fcmdata(:, 8)];
    data6_9 = [fcmdata(:, 6) fcmdata(:, 9)];
    data6_10 = [fcmdata(:, 6) fcmdata(:, 10)];
    data6_11 = [fcmdata(:, 6) fcmdata(:, 11)];
    data6_12 = [fcmdata(:, 6) fcmdata(:, 12)];
    data6_13 = [fcmdata(:, 6) fcmdata(:, 13)];
    
    data7_8 = [fcmdata(:, 7) fcmdata(:, 8)];
    data7_9 = [fcmdata(:, 7) fcmdata(:, 9)];
    data7_10 = [fcmdata(:, 7) fcmdata(:, 10)];
    data7_11 = [fcmdata(:, 7) fcmdata(:, 11)];
    data7_12 = [fcmdata(:, 7) fcmdata(:, 12)];
    data7_13 = [fcmdata(:, 7) fcmdata(:, 13)];
    
    data8_9 = [fcmdata(:, 8) fcmdata(:, 9)];
    data8_10 = [fcmdata(:, 8) fcmdata(:, 10)];
    data8_11 = [fcmdata(:, 8) fcmdata(:, 11)];
    data8_12 = [fcmdata(:, 8) fcmdata(:, 12)];
    data8_13 = [fcmdata(:, 8) fcmdata(:, 13)];
    
    data9_10 = [fcmdata(:, 9) fcmdata(:, 10)];
    data9_11 = [fcmdata(:, 9) fcmdata(:, 11)];
    data9_12 = [fcmdata(:, 9) fcmdata(:, 12)];
    data9_13 = [fcmdata(:, 9) fcmdata(:, 13)];
    
    data10_11 = [fcmdata(:, 10) fcmdata(:, 11)];
    data10_12 = [fcmdata(:, 10) fcmdata(:, 12)];
    data10_13 = [fcmdata(:, 10) fcmdata(:, 13)];
    
    data11_12 = [fcmdata(:, 11) fcmdata(:, 12)];
    data11_13 = [fcmdata(:, 11) fcmdata(:, 13)];
    
    data12_13 = [fcmdata(:, 12) fcmdata(:, 13)];
end