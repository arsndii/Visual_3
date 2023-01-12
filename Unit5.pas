unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  TForm5 = class(TForm)
    qckrp1: TQuickRep;
    qrbndPageHeaderBand1: TQRBand;
    qrbndColumnHeaderBand1: TQRBand;
    qrbndDetailBand1: TQRBand;
    qrlbl1: TQRLabel;
    qrshp1: TQRShape;
    qrshp2: TQRShape;
    qrshp3: TQRShape;
    qrshp4: TQRShape;
    qrdbtxtnim: TQRDBText;
    qrdbtxtnama_mhs: TQRDBText;
    qrdbtxttgl_lahir: TQRDBText;
    qrdbtxtalamat: TQRDBText;
    qrlbl2: TQRLabel;
    qrlbl3: TQRLabel;
    qrlbl4: TQRLabel;
    qrlbl5: TQRLabel;
    qckrp2: TQuickRep;
    qrbnd1: TQRBand;
    qrlbl6: TQRLabel;
    qrbnd2: TQRBand;
    qrshp6: TQRShape;
    qrshp7: TQRShape;
    qrlbl7: TQRLabel;
    qrlbl8: TQRLabel;
    qrbnd3: TQRBand;
    qrdbtxtnim1: TQRDBText;
    qrdbtxtnip: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses
  Unit4, Unit3;

{$R *.dfm}

end.
