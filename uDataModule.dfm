object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 525
  Width = 793
  object FDPhysPgDriverLink: TFDPhysPgDriverLink
    VendorHome = 'C:\Users\matte\Documents\Github\Delphi_Project\Win32\Debug'
    VendorLib = 'libpq.dll'
    Left = 264
    Top = 184
  end
  object FDConnection: TFDConnection
    ConnectionName = 'POSTGRES'
    Params.Strings = (
      'Database=db_app'
      'Password=Fe1005'
      'Server=localhost'
      'User_Name=postgres'
      'DriverID=PG')
    Left = 512
    Top = 144
  end
  object AppConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=app')
    Connected = True
    LoginPrompt = False
    Left = 477
    Top = 263
  end
  object Tbl_testeTable: TFDQuery
    Active = True
    Connection = AppConnection
    SQL.Strings = (
      'SELECT * FROM tbl_teste')
    Left = 328
    Top = 338
  end
end
