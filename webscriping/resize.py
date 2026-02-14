import cv2 as cv
cap=cv.VideoCapture()
def rescale(frame,scale=0.75):
   width=int(frame.shape[0]*scale)
   heiht=int(frame.shape[1]*scale)