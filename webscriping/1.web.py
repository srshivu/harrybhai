# import cv2 as cv
# text=cv.imread(r"C:\Users\shiva\Pictures\comedy-funny-humor-joke-wallpaper-preview.jpg")
# cv.imshow("this thsi funny images",text)
# cv.waitKey(0)               
import cv2 as cv

# Step 1: Load the video
video = cv.VideoCapture(r"C:\Users\shiva\Videos\The Mechanic (2011) 1080p BluRay H264 DolbyD 5.1 + nickarad.mp4")

# Step 2: Check if video opened successfully
if not video.isOpened():
    print("Error: Cannot open video file")
    exit()