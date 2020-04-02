//
// Created by zeddling on 4/1/20.
//
#include <opencv2/opencv.hpp>
#include <iostream>
using namespace std;
using namespace cv;

int main(int argc, char** argv){
    //Read image file
    Mat image = imread("/home/zeddling/Documents/Projects/OpenCV Tutorial/garden.jpg");

    // Check for failure
    if (image.empty()){
        cout << "Image not found" << endl;
        cin.get();
        return -1;
    }

    /**
     * .convertTo(OutputImage m, rtype, alpha, beta)
     *
     * concept::  pixel_value_of_output_image(x, y) = pixel_value_of_input_image(x, y) * alpha + beta;
     *
     * m -> Output Image
     * rtype -> Type of output image. -1 rtype means both input and output image are of the same type
     * alpha -> Each pixels in the input image will be multiplied by this number before assigning to the output image
     * beta -> This value will be added to each pixels in the input image and assigned to the output image
     *
     * beta == change brightness
     * alpha == change contrast
     * */

    // Increasing brightness
    Mat b_image; // Brighter image
    image.convertTo(b_image, -1, 1, 100); // Increase brightness by 100

    Mat d_image; // Darker image
    image.convertTo(d_image, -1, 1, -100); // Decrease brightness by 100

    string original = "Original Image";
    string brighter = "Brighter Image";
    string darker = "Darker Image";

    namedWindow(original, WINDOW_NORMAL);
    imshow(original, image);

    namedWindow(brighter, WINDOW_NORMAL);
    imshow(brighter, b_image);

    namedWindow(darker, WINDOW_NORMAL);
    imshow(darker, d_image);

    waitKey(0);
    destroyAllWindows();

    return 0;
}