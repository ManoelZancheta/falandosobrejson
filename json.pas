
{================================================================================
 Descri��o     : C�digo Referente � V�deo Aula 94 - Falando Sobre JSON
 Local V�deo   : YouTube - Conte�do Delphi - Canal do Zanca
          Link : https://www.youtube.com/watch?v=WTpIFKI6dHg&t=19s
 Elaborado Por : Manoel Zancheta
================================================================================}

unit json;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.JSON, Vcl.StdCtrls, REST.JSON,
  Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    Memo4: TMemo;
    Memo5: TMemo;
    Button5: TButton;
    Memo3: TMemo;
    Button4: TButton;
    Button3: TButton;
    Memo2: TMemo;
    Button2: TButton;
    Memo1: TMemo;
    Button1: TButton;
    Panel2: TPanel;
    Button7: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TCarro = class
     private
        FMontadora : String;
        FNome      : String;

     protected
        function getMontadora : String;
        function getNome      : String;

        procedure setMontadora(const Value: String);
        procedure setNome     (const Value: String);
     public
        property strNome     : String read getNome      write setNome;
        property strMontadora: String read getMontadora write setMontadora;

        constructor create;
        destructor destroy; override;
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
   jsonFuncionarios : TJSONObject;
begin
   jsonFuncionarios := TJSONObject.Create;
   try
      //{
      //   "nome": "Maria",
      //   "cargo": "Programadora",
      //   "idade": 30,
      //   "salario": 6000.50,
      //   "ferias": true
      //}

      jsonFuncionarios.AddPair('nome',       'Maria');
      jsonFuncionarios.AddPair('cargo',      'Programadora');
      jsonFuncionarios.AddPair('idade',      TJSONNumber.Create(30));
      jsonFuncionarios.AddPair('salario',    TJSONNumber.Create(6500.5));
      jsonFuncionarios.AddPair('ferias',     TJSONBool.Create(true));


      memo1.Lines.Clear;
      memo1.Lines.Add(jsonFuncionarios.ToString);
   finally
      FreeAndNil(jsonfuncionarios);
   end;
end;

procedure TForm2.Button2Click(Sender: TObject);
var
   jsonFuncionarios, jsonDependentes : TJSONObject;
   arrDependentes : TJSONArray;
begin
   jsonFuncionarios := TJSONObject.Create;
   try
      {
         "nome": "Maria",
         "cargo": "Programadora",
         "idade": 30,
         "salario": 6000.50,
         "ferias": true
      }

      jsonFuncionarios.AddPair('nome',    'Maria');
      jsonFuncionarios.AddPair('cargo',   'Programadora');
      jsonFuncionarios.AddPair('idade',   TJSONNumber.Create(30));
      jsonFuncionarios.AddPair('salario', TJSONNumber.Create(6500.5));
      jsonFuncionarios.AddPair('ferias',  TJSONBool.Create(true));




      //"dependentes": [
      //            {"parentesco": "pai", "nome": "Jose"},
      //            {"parentesco": "mae", "nome": "Ana"}]



      //Cria��o do Array de Dependentes
      arrDependentes := TJSONArray.Create;

      //Cria��o do Primeiro Objeto Dependente
      jsonDependentes := TJSONObject.Create;
      jsonDependentes.AddPair('parentesco', 'pai');
      jsonDependentes.AddPair('nome', 'Jose');

      //Adicionando Objeto Dependente na Lista de Dependentes
      arrDependentes.Add(jsonDependentes);


      //Cria��o do Segundo Objeto Dependente
      jsonDependentes := TJSONObject.Create;
      jsonDependentes.AddPair('parentesco', 'mae');
      jsonDependentes.AddPair('nome', 'Ana');

      //Adicionando Objeto Dependente na Lista de Dependentes
      arrDependentes.Add(jsonDependentes);


      jsonFuncionarios.AddPair('dependentes', arrDependentes);

      memo2.Lines.Clear;
      memo2.Lines.Add(jsonFuncionarios.ToString);
   finally
      jsonfuncionarios.DisposeOf;
   end;
end;

procedure TForm2.Button3Click(Sender: TObject);
var
   objFuncionarios, objDependentes : TJSONObject;
   arrDependentes, arrFuncionarios : TJSONArray;
begin
   objFuncionarios := TJSONObject.Create;
   try
      //{
      //   "nome": "Maria",
      //   "cargo": "Programadora",
      //   "idade": 30,
      //   "salario": 6000.50,
      //   "ferias": true
      //   "dependentes": [
      //                     {"parentesco": "pai", "nome": "Jose"},
      //                     {"parentesco": "mae", "nome": "Ana"}
      //                  ]
      //}

      objFuncionarios.AddPair('nome',    'Maria');
      objFuncionarios.AddPair('cargo',   'Programadora');
      objFuncionarios.AddPair('idade',   TJSONNumber.Create(30));
      objFuncionarios.AddPair('salario', TJSONNumber.Create(6500.5));
      objFuncionarios.AddPair('ferias',  TJSONBool.Create(true));


      //Cria��o do Array de Dependentes
      arrDependentes := TJSONArray.Create;

      //Cria��o do Primeiro Objeto Dependente
      objDependentes := TJSONObject.Create;
      objDependentes.AddPair('parentesco', 'pai');
      objDependentes.AddPair('nome', 'Jose');

      //Adicionando Objeto Dependente na Lista de Dependentes
      arrDependentes.Add(objDependentes);


      //Cria��o do Segundo Objeto Dependente
      objDependentes := TJSONObject.Create;
      objDependentes.AddPair('parentesco', 'mae');
      objDependentes.AddPair('nome', 'Ana');

      //Adicionando Objeto Dependente na Lista de Dependentes
      arrDependentes.Add(objDependentes);


      objFuncionarios.AddPair('dependentes', arrDependentes);

      //Adicionando o Objeto Funcion�rio ao Array de Funcion�rios
      arrFuncionarios := TJSONArray.Create;

      arrFuncionarios.Add(objFuncionarios);

      //=======================================================
      // { "nome": "Joana",
      // "cargo": "Programadora",
      // "idade": 25,
      // "salario": 5000,
      // "ferias": false,
      // "dependentes": [
      //                   {"parentesco": "filho", "nome": "Pedro"},
      //                   {"parentesco": "neto", "nome": "Benedito"}
      //                ]
      //}
      objFuncionarios := TJSONObject.Create;
      objFuncionarios.AddPair('nome',    'Joana');
      objFuncionarios.AddPair('cargo',   'Programadora');
      objFuncionarios.AddPair('idade',   TJSONNumber.Create(25));
      objFuncionarios.AddPair('salario', TJSONNumber.Create(5000));
      objFuncionarios.AddPair('ferias',  TJSONBool.Create(false));

      //Cria��o do Array de Dependentes
      arrDependentes := TJSONArray.Create;


      //Cria��o do Primeiro Objeto Dependente
      objDependentes := TJSONObject.Create;
      objDependentes.AddPair('parentesco', 'filho');
      objDependentes.AddPair('nome', 'Pedro');

      //Adicionando Objeto Dependente na Lista de Dependentes
      arrDependentes.Add(objDependentes);

      //Cria��o do Segundo Objeto Dependente
      objDependentes := TJSONObject.Create;
      objDependentes.AddPair('parentesco', 'neto');
      objDependentes.AddPair('nome', 'Benedito');

      //Adicionando Objeto Dependente na Lista de Dependentes
      arrDependentes.Add(objDependentes);


      objFuncionarios.AddPair('dependentes', arrDependentes);

      //Adicionando o Objeto Funcion�rio ao Array de Funcion�rios
      arrFuncionarios.Add(objFuncionarios);



      memo3.Lines.Clear;
      memo3.Lines.Add(arrFuncionarios.ToString);
   finally
      arrFuncionarios.DisposeOf;
   end;
end;

procedure TForm2.Button4Click(Sender: TObject);
var
   objFuncionarios, objDependentes : TJSONObject;
   arrDependentes, arrFuncionarios : TJSONArray;
   i, z : Integer;
begin
   memo4.Lines.Clear;

   arrFuncionarios := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(memo3.Text), 0) as TJSONArray;

   for i:= 0 to pred(arrFuncionarios.Count) do
      begin
        memo4.Lines.Add('Nome: '     + arrFuncionarios.Get(i).GetValue<string>('nome', ''));
        memo4.Lines.Add('Cargo: '    + arrFuncionarios.Get(i).GetValue<string>('cargo', ''));
        memo4.Lines.Add('Idade: '    + arrFuncionarios.Get(i).GetValue<integer>('idade', 0).ToString);
        memo4.Lines.Add('Sal�rio: '  + arrFuncionarios.Get(i).GetValue<double>('salario', 0).ToString);
        memo4.Lines.Add('F�rias ?: ' + arrFuncionarios.Get(i).GetValue<string>('ferias'));

        arrDependentes := arrFuncionarios.Get(i).GetValue<TJSONArray>('dependentes');

        for z:= 0 to pred(arrDependentes.Count) do
           begin
              memo4.Lines.Add('      Parentesco: ' + arrDependentes.Get(z).GetValue<string>('parentesco', ''));
              memo4.Lines.Add('      Nome: '    + arrdependentes.Get(z).GetValue<string>('nome', ''));
              memo4.Lines.Add('');
        end;

        memo4.Lines.Add('===============================');
   end;

   arrFuncionarios.DisposeOf;
end;

procedure TForm2.Button5Click(Sender: TObject);
var
   carro, carro2 : Tcarro;
   strJSON       : String;
begin
   carro := TCarro.create;
   try
      carro.strNome      := 'Cruze';
      carro.strMontadora := 'GM';

      Memo5.Lines.Add(TJson.ObjectToJsonString(carro));

      try
         carro2 := TJson.JsonToObject<TCarro>(Memo5.Lines.Text);

         showmessage(carro2.strNome);
         showmessage(carro2.strMontadora);
      finally
         FreeAndnil(carro2);
      end;
   finally

      FreeAndNil(carro);
   end;
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
   panel2.Visible := false;
end;

procedure TForm2.Panel1Click(Sender: TObject);
begin

end;

{ TCarro }
constructor TCarro.create;
begin
   inherited Create;
end;

destructor TCarro.destroy;
begin
   inherited;
end;

function TCarro.getMontadora: String;
begin
   result := FMontadora;
end;

function TCarro.getNome: String;
begin
   result := FNome;
end;

procedure TCarro.setMontadora(const Value: String);
begin
   FMontadora := Value;
end;

procedure TCarro.setNome(const Value: String);
begin
   FNome := Value;
end;

end.
