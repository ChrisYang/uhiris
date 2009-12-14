%%
close all
clear
global h20 h10 h01 h11 h02
h10 = sgsdf_2d2(-2:2,-2:2,2,2,1,0,1);
h20 = sgsdf_2d2(-2:2,-2:2,2,2,2,0,1);
h01 = sgsdf_2d2(-2:2,-2:2,2,2,0,1,1);
h11 = sgsdf_2d2(-2:2,-2:2,2,2,1,1,1);
h02 = sgsdf_2d2(-2:2,-2:2,2,2,0,2,1);

% rgb = imread('smallleye.jpg');
mov = aviread('out_frame_big.avi');
num_of_frames = length(mov);
% M(num_of_frames) = struct('cdata',[],'colormap',[]);

for i = 290:290
    rgb = mov(i).cdata;
    [labels eyes] = ProcessFrame(rgb);
%     figure; imshow(labels, []);
    SpitTraining(labels, eyes);
%     M(k) = getframe;

end
% movie(M);     