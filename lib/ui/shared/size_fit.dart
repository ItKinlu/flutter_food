import 'dart:ui';

// flutter_screenutil 的第三方库
class ITSizeFit{
  static double dpr; // 像素点比例
  static double physicalHeight; // 物理高度
  static double physicalWidth; // 物理宽度
  static double screenHeight; // 屏幕高度
  static double screenWidth; // 屏幕宽度
  static double statusHeight; // 屏幕状态栏的高度
  static double rpx; // (屏幕的宽度/750)和小程序是一种设计思路
  static double px; //

  // 需要在APP启动的时候初始化(标准尺寸是750)
  static void initialize({standarSize = 750.0}) {
    dpr = window.devicePixelRatio;
    physicalHeight = window.physicalSize.height;
    physicalWidth = window.physicalSize.width;
    screenHeight = physicalHeight / dpr;
    screenWidth = physicalWidth / dpr;
    statusHeight = window.padding.top / dpr;
    rpx = screenWidth / standarSize;
    px = rpx * 2;
  }

  static setRpx(double d) {
    return d * rpx;
  }

  static setPx(double d) {
    return d * px;
  }
}


