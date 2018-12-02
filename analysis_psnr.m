function [metrix_value] = analysis_psnr(reference_image, reference_image0 ,query_image)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% RGB to Gray
 if size(reference_image,3)~=1   % not gray
   org=rgb2gray(reference_image);
   org1=rgb2gray(reference_image0);
   test=rgb2gray(query_image);
   reference_image=org;
   reference_image0=org1;
   query_image=test;
   reference_image=double(reference_image);  % uint8 to double
   reference_image0=double(reference_image0);
   query_image=double(query_image);
 else              % is gray
     reference_image=double(reference_image);
     reference_image0=double(reference_image0);
     query_image=double(query_image);
 end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

mse_value = metrix_mse( reference_image, query_image );
mse_value0 = metrix_mse( reference_image0, query_image );
mse_value = (mse_value + mse_value0)/2;
metrix_value = 10*log10( 255*255 / mse_value );

end

