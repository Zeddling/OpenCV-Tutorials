//
// Created by zeddling on 3/27/20.
//  Capture Video from camera
#include <opencv2/opencv.hpp>
#include <iostream>
using namespace cv;
using namespace std;

int main(int argc, char* argv[]){
    //Open default video camera
    VideoCapture cap(0);

    // If not success exit
    if (!cap.isOpened()){
        cout << "Cannot open video camera \n";
        cin.get(); // Wait for any key press
        return -1;
    }

    // Get width and height of frames of the video
    double frame_width = cap.get(CAP_PROP_FRAME_WIDTH);
    double frame_height = cap.get(CAP_PROP_FRAME_HEIGHT);

    cout << "Resolution of video: " << frame_width << " x " << frame_height << endl;

    // Create camera window
    string window_name = "My Camera Feed";
    namedWindow(window_name);

    // Get camera footage
    while(true){
        Mat frame;
        bool on_success = cap.read(frame); // read new frame from video

        // Break loop if frame cannot be captured
        if(!on_success){
            cout << "Video camera is not connected \n";
            cin.get();
            break;
        }

        // Show frame in the created window
        imshow(window_name, frame);

        /**
         * Wait for 10ms until any key is pressed
         * If esc is pressed, break while loop
         * if any other key is pressed continue with loop
         * if any key is not pressed within 10ms, continue loop
         * */
         if(waitKey(10) == 27){
             cout << "Escape key has been pressed. Exiting video cam footage";
             break;
         }
    }
    return 0;
}