class ModelTextTile {
  TextTileData? textTileData;

  ModelTextTile({this.textTileData});

  ModelTextTile.fromJson(Map<String, dynamic> json) {
    textTileData = json['textTileData'] != null
        ? new TextTileData.fromJson(json['textTileData'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.textTileData != null) {
      data['textTileData'] = this.textTileData!.toJson();
    }
    return data;
  }
}

class TextTileData {
  String? containerColor;
  double? margin;
  double? padding;
  double? textFontSize;
  double? wholeViewRadius;
  String? textFontColor;
  List<TextTileItems>? textTileItems;

  TextTileData(
      {this.containerColor,
      this.margin,
      this.padding,
      this.textFontSize,
      this.wholeViewRadius,
      this.textFontColor,
      this.textTileItems});

  TextTileData.fromJson(Map<String, dynamic> json) {
    containerColor = json['ContainerColor'];
    margin = json['Margin'];
    padding = json['Padding'];
    textFontSize = json['textFontSize'];
    wholeViewRadius = json['wholeViewRadius'];
    textFontColor = json['textFontColor'];
    if (json['textTileItems'] != null) {
      textTileItems = <TextTileItems>[];
      json['textTileItems'].forEach((v) {
        textTileItems!.add(new TextTileItems.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ContainerColor'] = this.containerColor;
    data['Margin'] = this.margin;
    data['Padding'] = this.padding;
    data['textFontSize'] = this.textFontSize;
    data['wholeViewRadius'] = this.wholeViewRadius;
    data['textFontColor'] = this.textFontColor;
    if (this.textTileItems != null) {
      data['textTileItems'] =
          this.textTileItems!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TextTileItems {
  String? iconData;
  String? text;

  TextTileItems({this.iconData, this.text});

  TextTileItems.fromJson(Map<String, dynamic> json) {
    iconData = json['IconData'];
    text = json['Text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['IconData'] = this.iconData;
    data['Text'] = this.text;
    return data;
  }
}