unit Meta.Test;

{ Metadata definition for table: %Database%.Test }

interface

{$WEAKLINKRTTI ON}  

uses
  Meta.Data;

type
  TTestField      = class(TBaseTableField);
  TTestFieldClass = class of TTestField;

  [TTableMeta('Test')]
  Test = class(TBaseTableAttribute)
  public
    constructor Create(const aField: TTestFieldClass);
  end;

  [TPKMetaField(True{autoinc})]
  [TTypedMetaField   ('ID', ftFieldID, False, '', 0, 2147483647, '', 0, '', '')]                 ID                    = class(TTestField);
  [TTypedMetaField   ('Datum', ftFieldDateTime, True{required}, '', 0)]                          Datum                 = class(TTestField);
  [TTypedMetaField   ('Tekst', ftFieldString, False, '', 0, 127, '', 0, '', '')]                 Tekst                 = class(TTestField);


implementation

constructor Test.Create(const aField: TTestFieldClass);
begin
  FField := aField;
end;


end.

