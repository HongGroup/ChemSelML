function [mean_percent_3A,mean_percent_4A,mean_percent_5A,var_percent_3A,var_percent_4A,var_percent_5A] = BV(coordinate,Atom_label)
format short
clc
%clear
%%[sx,sy,sz]=sphere(100);%������Ļ�������
% coordinate=...;
% [6                  0.00000000    0.00000000    0.00000000
% 6                  -2.55424174    2.32441573    -1.68380683
% 7                  -3.55459729    2.80182891    -2.02580891
% 1                  3.38562414    1.81399164    -1.35738610
% 1                  2.13164641    0.09241345    -0.08492054
% 1                  3.39002526    3.79993327    -2.81362814
% 1                  -0.01120744    -1.02044283    -0.32166886
% 1                  1.24697536    4.82052513    -3.54472325
% 1                  -0.89886110    3.85442012    -2.81903428
% 6                  1.23278089    1.67987556    -1.24170374
% 6                  2.45032790    2.26033709    -1.67713573
% 6                  1.19534762    0.53738107    -0.40366172
% 6                  2.45192774    3.36623223    -2.48805742
% 6                  -0.00000001    2.26695120    -1.66225102
% 6                  1.23277596    3.94682928    -2.90396400
% 6                  -1.21755975    1.68649293    -1.22682131
% 6                  0.03743246    3.40944200    -2.50028907
% 6                  -1.21915077    0.58059902    -0.41590680
% 1                  -2.14776427    0.15550885    -0.09672769];%����ԭ�����������

%% ��ת��������
AN=size(coordinate,1);%��÷�����ԭ����
x=coordinate(1:1:AN,2);%��÷���������ԭ�ӵ�x����
y=coordinate(1:1:AN,3);%��÷���������ԭ�ӵ�y����
z=coordinate(1:1:AN,4);%��÷���������ԭ�ӵ�z����
%���з�������ƽ��
    move_x=x(Atom_label);
    move_y=y(Atom_label);
    move_z=z(Atom_label);
    x=x-move_x;
    y=y-move_y;
    z=z-move_z;
    xyz_new=[x,y,z];
%���з�����z����ת
%     cent_x=mean(x);%�ҵ�����x����ļ�������
%     cent_y=mean(y);%�ҵ�����y����ļ�������
%cent_z=mean(z);%�ҵ�����z����ļ�������
%     angle_z=-asind(abs(cent_x)/sqrt(cent_x^2+cent_y^2));%�ҵ���z����ת�ĽǶ�
%     rot_z=...
%         [cosd(angle_z),sind(angle_z),0;-sind(angle_z),cosd(angle_z),0;0,0,1];%������z�����ת����
%     xyz_new=[x,y,z]*(rot_z);%�����µķ�������
%     x=xyz_new(1:1:AN,1);%���·��ӵ�x����
%     y=xyz_new(1:1:AN,2);%���·��ӵ�y����
%     z=xyz_new(1:1:AN,3);%���·��ӵ�z����
%���з�����x����ת
%     %cent_x=mean(x);%�ҵ������µ�x����ļ�������
%     cent_y=mean(y);%�ҵ������µ�y����ļ�������
%     cent_z=mean(z);%�ҵ������µ�z����ļ�������
%     angle_x=-asind(abs(cent_y)/sqrt(cent_y^2+cent_z^2));%�ҵ���y����ת�ĽǶ�
%     rot_x=...
%         [1,0,0;0,cosd(angle_x),sind(angle_x);0,-sind(angle_x),cosd(angle_x)];%������z�����ת����
%     xyz_new=[x,y,z]*rot_x;%�����µķ�������

%% ��ʼ���������꣬���Ե��������Դ���
%���յ��з����Եķ�������
x=xyz_new(1:1:AN,1);%���շ��ӵ�x����
y=xyz_new(1:1:AN,2);%���շ��ӵ�y����
z=xyz_new(1:1:AN,3);%���շ��ӵ�z����
%cent_x=mean(x);%�������յ�x����ļ�������
%cent_y=mean(y);%�������յ�y����ļ�������
%cent_z=mean(z);%�������յ�z����ļ�������
atom=coordinate(1:1:AN,1);%��÷���������ԭ�ӵ�����
atom_rad=atom;%���ɷ���������ԭ�ӵķ��»��뾶�ĳ�ʼ����
for i=1:1:AN
    if atom(i)==1
        atom_rad(i)=1.2;
    elseif atom(i)==2
        atom_rad(i)=1.4;
    elseif atom(i)==3
        atom_rad(i)=1.82;
    elseif atom(i)==4
        atom_rad(i)=1.53;
    elseif atom(i)==5
        atom_rad(i)=1.92;
    elseif atom(i)==6
        atom_rad(i)=1.7;
    elseif atom(i)==7
        atom_rad(i)=1.55;
    elseif atom(i)==8
        atom_rad(i)=1.52;
    elseif atom(i)==9
        atom_rad(i)=1.47;
    elseif atom(i)==10
        atom_rad(i)=1.54;
    elseif atom(i)==11
        atom_rad(i)=2.27;
    elseif atom(i)==12
        atom_rad(i)=1.73;
    elseif atom(i)==13
        atom_rad(i)=1.84;
    elseif atom(i)==14
        atom_rad(i)=2.1;
    elseif atom(i)==15
        atom_rad(i)=1.8;
    elseif atom(i)==16
        atom_rad(i)=1.8;
    elseif atom(i)==17
        atom_rad(i)=1.75;
    elseif atom(i)==18
        atom_rad(i)=1.88;
    elseif atom(i)==19
        atom_rad(i)=2.75;
    elseif atom(i)==20
        atom_rad(i)=2.31;
    elseif atom(i)==35
        atom_rad(i)=1.85;
    end
end%��÷���������ԭ�ӵķ��»��뾶
%SSS=cell(AN,5);
%for n=1:1:AN
    %SSS{n,1}=n;
    %SSS{n,2}=atom(n);
    %SSS{n,3}= [sx.*atom_rad(n)+x(n)];
    %SSS{n,4}= [sy.*atom_rad(n)+y(n)];
    %SSS{n,5}= [sz.*atom_rad(n)+z(n)];
%end%��÷���������ԭ�ӵ�ԭ�ӱ߽����귶Χ
pointnumber=500000;%�����ܲ��Ե���Ŀ
n_test = 10;%testһ������10��

%% ��������İ뾶=3A
test_radius_3=3;%�����������İ뾶
    percent_list_3A = zeros(1,n_test);
    for j=1:1:n_test
        percent_list_3A(j) = Test(test_radius_3,pointnumber,AN,x,y,z,atom_rad);
    end
    mean_percent_3A = mean(percent_list_3A);%��10��test�õ��İٷֱ����ݽ���ƽ���������Ϊ������
    var_percent_3A = var(percent_list_3A);%��10��test�õ��ķ������

%% ��������İ뾶=4A    
test_radius_4=4;%�����������İ뾶
    percent_list_4A = zeros(1,n_test);
    for j=1:1:n_test
        percent_list_4A(j) = Test(test_radius_4,pointnumber,AN,x,y,z,atom_rad);
    end
    mean_percent_4A = mean(percent_list_4A);%��10��test�õ��İٷֱ����ݽ���ƽ���������Ϊ������
    var_percent_4A = var(percent_list_4A);%��10��test�õ��ķ������

%% ��������İ뾶=5A    
test_radius_5=5;%�����������İ뾶
    percent_list_5A = zeros(1,n_test);
    for j=1:1:n_test
        percent_list_5A(j) = Test(test_radius_5,pointnumber,AN,x,y,z,atom_rad);
    end
    mean_percent_5A = mean(percent_list_5A);%��10��test�õ��İٷֱ����ݽ���ƽ���������Ϊ������
    var_percent_5A = var(percent_list_5A);%��10��test�õ��ķ������

%% �Ӻ������壬�������ؿ��巽��ʵ��
    function percent = Test(test_radius,pointnumber,AN,x,y,z,atom_rad)
        phi = 2*pi.*rand(pointnumber,1);
        costheta = -1 + 2.*rand(pointnumber,1);
        u = 1.*rand(pointnumber,1);

        theta = acos( costheta );
        r = test_radius .* u.^(1/3);
    
        test_x = x(1) - + r .* sin( theta) .* cos( phi );
        test_y = r .* sin( theta) .* sin( phi );
        test_z = r .* cos( theta );
        
        count = zeros(pointnumber,1);
        for n=1:1:pointnumber
            for t=1:1:AN
                if (test_x(n)-x(t))^2+(test_y(n)-y(t))^2+(test_z(n)-z(t))^2<=atom_rad(t)^2%�жϵ��Ƿ���ԭ�Ӱ뾶��Χ��
                    count(n) = count(n) | 1;
                    break;
                end
            end
        end
        percent=sum(count)/pointnumber;
    end


end



