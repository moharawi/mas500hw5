#include "testApp.h"

//--------------------------------------------------------------
void testApp::setup(){
    ofRegisterTouchEvents(this);
    ofCircle( 100.0,100.0,100.0);
    
}

//--------------------------------------------------------------
void testApp::update(){

}

//--------------------------------------------------------------
void testApp::draw(){
    ofSetColor(255,255,255,50);
	ofCircle(locx,locy,20);
}

//--------------------------------------------------------------
void testApp::exit(){

}

//--------------------------------------------------------------
void testApp::touchDown(ofTouchEventArgs & touch){
    ofLog(OF_LOG_NOTICE, "coordinates are %f and %f", touch[0], touch[1]);
    locx = touch.x;
    locy = touch.y;
}

//--------------------------------------------------------------
void testApp::touchMoved(ofTouchEventArgs & touch){
    locx = touch.x;
    locy = touch.y;
    ofBackground(locx,locy,100);
    
}

//--------------------------------------------------------------
void testApp::touchUp(ofTouchEventArgs & touch){
    ofLog(OF_LOG_NOTICE, "coordinates are %f and %f", touch[0], touch[1]);
    
}

//--------------------------------------------------------------
void testApp::touchDoubleTap(ofTouchEventArgs & touch){
    ofBackground(touch[0], touch[1],100);
    locx = touch.x;
    locy = touch.y;
}

//--------------------------------------------------------------
void testApp::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void testApp::lostFocus(){

}

//--------------------------------------------------------------
void testApp::gotFocus(){

}

//--------------------------------------------------------------
void testApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void testApp::deviceOrientationChanged(int newOrientation){

}

