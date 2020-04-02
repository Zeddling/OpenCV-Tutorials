/**
 * Created by Zeddling on 4/2/20.
 *
 * Histogram Equalization
 * Histogram of an image is the graphical representation of the distribution of the pixels
 * Hence this concept deals with equalizing the intensity distribution thus enhancing contrast of the image
 *
 * This program produces an equalized gray-scaled garden picture
 *
 * */

#include <opencv2/opencv.hpp>
#include <iostream>
using namespace std;
using namespace cv;

int main(){
    Mat image = imread("/home/zeddling/Documents/Projects/OpenCV Tutorial/garden.jpg");

    if (image.empty()){
        cout << "Image has not been found" << endl;
        cin.get();
        return -1;
    }

    string original = "Original Image";
    namedWindow(original, WINDOW_NORMAL);
    imshow(original, image);

    // Convert image from BGR to YCrCb
    Mat equalized_image;
    cvtColor(image, equalized_image, COLOR_BGR2YCrCb);

    // Split image into 3 channels of (Y, Cr and Cb) and store them in a vector
    vector<Mat> vec_channels;
    split(equalized_image, vec_channels);

    // Equalize the histogram
    for (int i = 0; i < 3; i++){
        equalizeHist(vec_channels[i], vec_channels[i]);
    }

    // Merge the channels
    merge(vec_channels, equalized_image);

    // Convert YCbCr back to BGR
    cvtColor(equalized_image, equalized_image, COLOR_BGR2YCrCb);

    string equalized = "Equalized Image";
    namedWindow(equalized, WINDOW_NORMAL);
    imshow(equalized, equalized_image);
    imwrite("/home/zeddling/Documents/Projects/OpenCV Tutorial/img/histogram2.jpg", equalized_image);

    waitKey(0);
    destroyAllWindows();

    return 0;
}

