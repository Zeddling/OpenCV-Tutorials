#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <iostream>
#include <opencv2/imgproc.hpp>

using namespace cv;
using namespace std;

int main(){

    Mat image;

    // LOAD image
    image = imread("/home/zeddling/Documents/Projects/OpenCV Tutorial/garden.jpg", IMREAD_COLOR);   // Read the file "image.jpg".
    //This file "image.jpg" should be in the project folder.
    //Else provide full address : "D:/images/image.jpg"

    if(! image.data )  // Check for invalid input
    {
        cout <<  "Could not open or find the image" << std::endl ;
        return -1;
    }

    // Modify image
    Mat gray_image;
    cvtColor(image, gray_image, COLOR_BGR2GRAY);

    //SAVE image
    imwrite("/home/zeddling/Documents/Projects/OpenCV Tutorial/img/result.jpg",gray_image);// it will store the image in name "result.jpg"

    //DISPLAY image
    namedWindow( "Gray Image", WINDOW_AUTOSIZE ); // Create a window for display.
    imshow("Gray Image", gray_image);

    waitKey(0);                       // Wait for a keystroke in the window
    return 0;
}