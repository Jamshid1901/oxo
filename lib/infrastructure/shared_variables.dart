


class ConstVariables{
  static int avatarId =-1;
  static int backgroundId =-1;
  static bool isLinkExist = true;
  static bool isBioExist = true;
  static bool sameUserName = false;

  static double calculateAppbarHeight(bool link, bool bio){
    if(link && bio ){
      return 457;
    }else if( link && !bio ){
      return 408;
    }else if(bio && !link){
      return 440;
    }else if(!link && !bio){
      return 388;
    }else {
      return 457;
    }

  }
}