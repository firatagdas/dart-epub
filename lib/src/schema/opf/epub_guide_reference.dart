import 'package:quiver/core.dart';

class EpubGuideReference {
  String Type;
  String Title;
  String Href;

  String toString() {
    return "Type: ${Type}, Href: ${Href}";
  }

  bool operator ==(other) {
    var otherAs = other as EpubGuideReference;
    if (otherAs == null) {
      return false;
    }

    return Type == otherAs.Type &&
        Title == otherAs.Title &&
        Href == otherAs.Href;
  }

  @override
  int get hashCode => hash3(Type.hashCode, Title.hashCode, Href.hashCode);
}
