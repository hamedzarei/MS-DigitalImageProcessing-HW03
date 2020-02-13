function zout = adaptive_median_level_a_b( padded_image, i, j, side_pad, s_start, s_max )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
z_xy = padded_image(i, j);
s_xy = padded_image(i-side_pad:i+side_pad, j-side_pad:j+side_pad);
z_min = min(s_xy(:));
z_max = max(s_xy(:));
z_median = median(s_xy(:));
A1 = z_median - z_min;
A2 = z_median - z_max;
if ( A1 > 0 && A2 < 0)
    % level B
    B1 = z_xy-z_min;
    B2 = z_xy-z_max;
    if ( B1 > 0 && B2 < 0)
        zout = z_xy;
        return;
    else
        zout = z_median;
        return;
    end
else
	s_start = s_start + 2;
    if ( s_start <= s_max)
        zout = adaptive_median_level_a_b(padded_image, i, j, side_pad, s_start, s_max);
        return;
    else
        zout = z_median;
        return;
    end
end

end

