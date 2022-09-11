double mapBetween(double value,  double start, double end,double from, double to){
  return start + (end - start) * ((value - from) / (to - from));
}