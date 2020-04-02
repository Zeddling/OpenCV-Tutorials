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

    // Change image to gray
    cvtColor(image, image, COLOR_BGR2GRAY);

    // Display original image
    string original = "Original Image";
    namedWindow(original, WINDOW_NORMAL);
    imshow(original, image);

    // Equalize the histogram
    Mat equalized_image;
    equalizeHist(image, equalized_image);

    string equalized = "Equalized Image";
    namedWindow(equalized, WINDOW_NORMAL);
    imshow(equalized, equalized_image);

    waitKey(0);
    destroyAllWindows();

    return 0;
}