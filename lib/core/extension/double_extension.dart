
import 'package:food/ui/shared/size_fit.dart';

extension ItFitDouble on double {
  double get px {
    return ITSizeFit.setPx(this.toDouble());
  }

  double get rpx {
    return ITSizeFit.setRpx(this.toDouble());
  }
}