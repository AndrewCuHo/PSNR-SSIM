fileName_source_ir  = ['C:\Users\ZCH\PycharmProjects\my_fir\imagefusion_densefuse\images\MF_images\gray\clock1.png'];
fileName_source_vis = ['C:\Users\ZCH\PycharmProjects\my_fir\imagefusion_densefuse\images\MF_images\gray\clock2.png'];
fileName_fused      = ['C:\Users\ZCH\PycharmProjects\my_fir\imagefusion_densefuse\outputs\fused1_densefuse_l1norm_340.png'];

source_image1 = imread(fileName_source_ir);
source_image2 = imread(fileName_source_vis);
fused_image   = imread(fileName_fused);

disp('Start');
disp('---------------------------Analysis---------------------------');
[EN,MI,Qabf,FMI_pixel,FMI_dct,FMI_w,Nabf,SCD,SSIM, MS_SSIM] = analysis_Reference(fused_image,source_image1,source_image2);
[PSNR] = analysis_Reference(source_image2,source_image1,fused_image);
disp('Done');


