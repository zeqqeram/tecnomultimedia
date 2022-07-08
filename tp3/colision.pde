boolean colision 
  (
  float platX_, float platY_, float platW_, float platH_, 
  float comelonX_, float comelonY_, float comelonW_, float comelonH_) {

  if  (comelonX_+comelonW_>platX_ && comelonX_<platX_+ platW_ &&
    comelonY_+comelonH_>platY_ && comelonY_<platY_+platH_)
  {
    return true;
  }
  return false;
}
