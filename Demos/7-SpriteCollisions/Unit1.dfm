object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'SE-SpriteCollisions'
  ClientHeight = 722
  ClientWidth = 1032
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SE_Theater1: SE_Theater
    Left = 0
    Top = 0
    Width = 1024
    Height = 600
    MouseScrollRate = 1.000000000000000000
    MouseWheelInvert = False
    MouseWheelValue = 10
    MouseWheelZoom = True
    MousePan = True
    MouseScroll = False
    BackColor = clBlack
    AnimationInterval = 20
    GridInfoCell = False
    GridVisible = False
    GridColor = clSilver
    GridCellWidth = 40
    GridCellHeight = 30
    GridCellsX = 30
    GridCellsY = 20
    GridHexSmallWidth = 10
    CollisionDelay = 300
    ShowPerformance = True
    VirtualWidth = 1200
    Virtualheight = 1920
    TabOrder = 0
    OnMouseDown = SE_Theater1MouseDown
  end
  object Panel1: TPanel
    Left = 647
    Top = 611
    Width = 185
    Height = 97
    Alignment = taLeftJustify
    Caption = 'Scroll'
    TabOrder = 1
    VerticalAlignment = taAlignTop
    object Label1: TLabel
      Left = 16
      Top = 70
      Width = 89
      Height = 13
      AutoSize = False
      Caption = 'MouseScrollRate'
    end
    object CheckBox1: TCheckBox
      Left = -1
      Top = 24
      Width = 97
      Height = 17
      Caption = 'MousePan'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = -1
      Top = 47
      Width = 97
      Height = 17
      Caption = 'MouseScroll'
      TabOrder = 1
      OnClick = CheckBox2Click
    end
    object Edit1: TEdit
      Left = 102
      Top = 67
      Width = 34
      Height = 21
      NumbersOnly = True
      TabOrder = 2
      Text = '1.00'
      OnChange = Edit1Change
    end
  end
  object Panel2: TPanel
    Left = 839
    Top = 611
    Width = 185
    Height = 97
    Alignment = taLeftJustify
    Caption = 'Zoom'
    TabOrder = 2
    VerticalAlignment = taAlignTop
    object Label2: TLabel
      Left = 16
      Top = 70
      Width = 89
      Height = 13
      AutoSize = False
      Caption = 'MouseWheelValue'
    end
    object CheckBox3: TCheckBox
      Left = -1
      Top = 24
      Width = 97
      Height = 17
      Caption = 'MouseWheelZoom'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = CheckBox3Click
    end
    object CheckBox4: TCheckBox
      Left = -1
      Top = 47
      Width = 97
      Height = 17
      Caption = 'Invert Wheel'
      TabOrder = 1
      OnClick = CheckBox4Click
    end
    object Edit2: TEdit
      Left = 102
      Top = 67
      Width = 34
      Height = 21
      NumbersOnly = True
      TabOrder = 2
      Text = '10'
      OnChange = Edit2Change
    end
  end
  object Button1: TButton
    Left = 520
    Top = 607
    Width = 105
    Height = 25
    Caption = 'DoCollision'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 32
    Top = 606
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 4
  end
  object CheckBox5: TCheckBox
    Left = 232
    Top = 608
    Width = 113
    Height = 17
    Caption = 'PixelCollision'
    Checked = True
    State = cbChecked
    TabOrder = 5
    OnClick = CheckBox5Click
  end
  object SE_Background: SE_Engine
    ClickSprites = False
    PixelCollision = False
    HiddenSpritesMouseMove = False
    IsoPriority = False
    Priority = 0
    Theater = SE_Theater1
    Left = 280
    Top = 656
  end
  object SE_Characters: SE_Engine
    PixelCollision = True
    HiddenSpritesMouseMove = False
    IsoPriority = True
    Priority = 1
    Theater = SE_Theater1
    OnCollision = SE_CharactersCollision
    OnSpriteDestinationReached = SE_CharactersSpriteDestinationReached
    Left = 472
    Top = 656
  end
end
