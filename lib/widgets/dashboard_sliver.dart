import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DashboardSliver extends SingleChildRenderObjectWidget  {
  DashboardSliver({Widget child, Key key}) : super(child:child, key:key);
  
  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderDashboardSliver();
  }

}

class RenderDashboardSliver extends RenderSliverSingleBoxAdapter {
  RenderDashboardSliver({
    RenderBox child,
  }) : super(child: child);

  
  @override
  void performLayout() {
    if (child == null) {
      geometry = SliverGeometry.zero;
      return;
    }
    child.layout(constraints.asBoxConstraints(), parentUsesSize: true);
    double childExtent;
    switch (constraints.axis) {
      case Axis.horizontal:
        childExtent = child.size.width;
        break;
      case Axis.vertical:
        childExtent = child.size.height;
        break;
    }
    assert(childExtent != null);
    final double paintedChildSize = calculatePaintOffset(constraints, from: 0.0, to: childExtent);
    final double cacheExtent = calculateCacheOffset(constraints, from: 0.0, to: childExtent);

    assert(paintedChildSize.isFinite);
    assert(paintedChildSize >= 0.0);
    geometry = SliverGeometry(
      scrollExtent: childExtent,
      paintExtent: paintedChildSize,
      cacheExtent: cacheExtent,
      maxPaintExtent: childExtent,
      hitTestExtent: paintedChildSize,
      hasVisualOverflow: childExtent > constraints.remainingPaintExtent || constraints.scrollOffset > 0.0,
    );
    setChildParentData(child, constraints, geometry);
  }
}