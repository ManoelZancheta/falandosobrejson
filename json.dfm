object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 773
  ClientWidth = 1537
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 569
    Top = 2
    Width = 399
    Height = 33
    Caption = 'JSON - Javascript Object Notation'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuHighlight
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Panel2: TPanel
    Left = 112
    Top = 48
    Width = 1313
    Height = 717
    TabOrder = 1
    OnClick = Panel1Click
    object Label2: TLabel
      Left = 49
      Top = 58
      Width = 266
      Height = 25
      Caption = '-> Independe de linguagem'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuHighlight
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 49
      Top = 125
      Width = 518
      Height = 25
      Caption = '-> Utilizado principalmente entre client/server em APIs'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuHighlight
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 49
      Top = 192
      Width = 407
      Height = 25
      Caption = '-> Possui formato leve para troca de dados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuHighlight
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 49
      Top = 260
      Width = 1032
      Height = 25
      Caption = 
        '-> '#201' o formato utilizado em bancos NoSQL (modelo de dados n'#227'o re' +
        'lacionais), como o mongoDB por exemplo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuHighlight
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 49
      Top = 327
      Width = 515
      Height = 25
      Caption = '-> Basicamente '#233' formado pelo conjunto chave x valor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuHighlight
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 49
      Top = 395
      Width = 262
      Height = 25
      Caption = '-> Exemplos | Validar JSON'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuHighlight
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Button7: TButton
      Left = 496
      Top = 544
      Width = 75
      Height = 25
      Caption = 'Exemplos'
      TabOrder = 0
      OnClick = Button7Click
    end
  end
  object Panel1: TPanel
    Left = 112
    Top = 48
    Width = 1313
    Height = 717
    TabOrder = 0
    OnClick = Panel1Click
    object Memo4: TMemo
      Left = 840
      Top = 48
      Width = 389
      Height = 471
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Memo5: TMemo
      Left = 127
      Top = 550
      Width = 362
      Height = 153
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Button5: TButton
      Left = 8
      Top = 616
      Width = 113
      Height = 25
      Caption = 'Objeto p/ JSONObject'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button5Click
    end
    object Memo3: TMemo
      Left = 127
      Top = 366
      Width = 710
      Height = 153
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Button4: TButton
      Left = 8
      Top = 400
      Width = 113
      Height = 25
      Caption = 'Ler JSON Array'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button4Click
    end
    object Button3: TButton
      Left = 8
      Top = 369
      Width = 113
      Height = 25
      Caption = 'JSON Array'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button3Click
    end
    object Memo2: TMemo
      Left = 127
      Top = 207
      Width = 710
      Height = 153
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object Button2: TButton
      Left = 8
      Top = 207
      Width = 113
      Height = 25
      Caption = 'JSON Campo Array'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = Button2Click
    end
    object Memo1: TMemo
      Left = 127
      Top = 48
      Width = 710
      Height = 153
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object Button1: TButton
      Left = 8
      Top = 48
      Width = 113
      Height = 25
      Caption = 'JSON Simples'
      TabOrder = 9
      OnClick = Button1Click
    end
  end
end
