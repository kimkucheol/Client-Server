unit Project1_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 27.01.2016 18:47:04 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Users\Dima\Documents\Delphi\Серв Раз\Сервер\Project1.tlb (1)
// LIBID: {611C64BE-48BD-4961-9368-D95BDCC5247F}
// LCID: 0
// Helpfile: 
// HelpString: Project1 Library
// DepndLst: 
//   (1) v1.0 Midas, (C:\WINDOWS\SysWow64\midas.dll)
//   (2) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, Midas, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  Project1MajorVersion = 1;
  Project1MinorVersion = 0;

  LIBID_Project1: TGUID = '{611C64BE-48BD-4961-9368-D95BDCC5247F}';

  IID_Irdmw: TGUID = '{11B3C7D0-BF55-405E-A302-E91EDC868331}';
  CLASS_rdmw: TGUID = '{5F6EF2FB-E384-4D8D-85ED-0DC833C96EAF}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  Irdmw = interface;
  IrdmwDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  rdmw = Irdmw;


// *********************************************************************//
// Interface: Irdmw
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {11B3C7D0-BF55-405E-A302-E91EDC868331}
// *********************************************************************//
  Irdmw = interface(IAppServer)
    ['{11B3C7D0-BF55-405E-A302-E91EDC868331}']
  end;

// *********************************************************************//
// DispIntf:  IrdmwDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {11B3C7D0-BF55-405E-A302-E91EDC868331}
// *********************************************************************//
  IrdmwDisp = dispinterface
    ['{11B3C7D0-BF55-405E-A302-E91EDC868331}']
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; 
                             out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; 
                           Options: Integer; const CommandText: WideString; var Params: OleVariant; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// The Class Cordmw provides a Create and CreateRemote method to          
// create instances of the default interface Irdmw exposed by              
// the CoClass rdmw. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  Cordmw = class
    class function Create: Irdmw;
    class function CreateRemote(const MachineName: string): Irdmw;
  end;

implementation

uses ComObj;

class function Cordmw.Create: Irdmw;
begin
  Result := CreateComObject(CLASS_rdmw) as Irdmw;
end;

class function Cordmw.CreateRemote(const MachineName: string): Irdmw;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_rdmw) as Irdmw;
end;

end.
