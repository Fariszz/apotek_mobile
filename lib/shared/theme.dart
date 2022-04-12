part of 'shared.dart';

const double defaultMargin = 24;

Color mainColor = "00cc33".toColor();
Color greyColor = "4c5267".toColor();
Color whiteColor = Colors.white;

Color darkGreenColor = "008000".toColor();

TextStyle greyFontStyle = GoogleFonts.poppins().copyWith(color: greyColor);
TextStyle whiteFontStyle = GoogleFonts.poppins().copyWith(color: whiteColor);
TextStyle blackFontStyle1 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500);
TextStyle blackFontStyle2 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500);
TextStyle blackFontStyle3 = GoogleFonts.poppins().copyWith(
  color: Colors.black,
);

TextStyle header1List = GoogleFonts.openSans()
    .copyWith(color: darkGreenColor, fontSize: 16, fontWeight: FontWeight.w700);

TextStyle headerCard1 = GoogleFonts.openSans()
    .copyWith(color: Colors.black87, fontSize: 14, fontWeight: FontWeight.w900);

// Color = https://www.color-hex.com/color-palette/67608
// https://www.color-hex.com/color-palette/718