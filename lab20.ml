open Image ;;

(* Display versions of a sample image, 8-bit Mona Lisa of size 250
   columns x 360 rows *)
let mona = create 250 360 Monalisa.image in
    (* show the original grayscale *)
    depict mona;
    (* ...and thresholded at 75% *)
    depict (threshold 0.75 mona);
    (* ...and dithered *)
    depict (dither mona);
    (* ...and error-diffused *)
    depict (error_diffuse mona) ;;
