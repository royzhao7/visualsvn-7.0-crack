
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.0.30319.33440




// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly extern VisualSVN.Utils
{
  .ver 0:0:0:0
}
.assembly VisualSVN.Core.L
{
  .custom instance void [mscorlib]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 17 56 69 73 75 61 6C 53 56 4E 20 53 6F 66   // ...VisualSVN Sof
                                                                                                74 77 61 72 65 20 4C 74 64 2E 00 00 )             // tware Ltd...
  .custom instance void [mscorlib]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 09 56 69 73 75 61 6C 53 56 4E 00 00 )       // ...VisualSVN..
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 1C 2E 4E 45 54 46 72 61 6D 65 77 6F 72 6B   // ....NETFramework
                                                                                                        2C 56 65 72 73 69 6F 6E 3D 76 34 2E 37 2E 32 01   // ,Version=v4.7.2.
                                                                                                        00 54 0E 14 46 72 61 6D 65 77 6F 72 6B 44 69 73   // .T..FrameworkDis
                                                                                                        70 6C 61 79 4E 61 6D 65 14 2E 4E 45 54 20 46 72   // playName..NET Fr
                                                                                                        61 6D 65 77 6F 72 6B 20 34 2E 37 2E 32 )          // amework 4.7.2
  .custom instance void [mscorlib]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 08 37 2E 30 2E 31 2E 34 30 00 00 )          // ...7.0.1.40..
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .custom instance void [mscorlib]System.Reflection.AssemblyCopyrightAttribute::.ctor(string) = ( 01 00 3E 43 6F 70 79 72 69 67 68 74 20 C2 A9 20   // ..>Copyright .. 
                                                                                                  32 30 31 39 20 56 69 73 75 61 6C 53 56 4E 20 53   // 2019 VisualSVN S
                                                                                                  6F 66 74 77 61 72 65 20 4C 74 64 2E 20 41 6C 6C   // oftware Ltd. All
                                                                                                  20 72 69 67 68 74 73 20 72 65 73 65 72 76 65 64   //  rights reserved
                                                                                                  2E 00 00 )                                        // ...
  .custom instance void [mscorlib]System.Reflection.AssemblyInformationalVersionAttribute::.ctor(string) = ( 01 00 05 37 2E 30 2E 31 00 00 )                   // ...7.0.1..

  // --- 下列自定义特性会自动添加，不要取消注释 -------
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 02 00 00 00 00 00 ) 

  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module VisualSVN.Core.L.dll
// MVID: {24208891-9E52-496E-A3B0-417063E36302}
.imagebase 0x11000000
.file alignment 0x00001000
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000003    //  ILONLY 32BITREQUIRED
// Image base: 0x011B0000


// =============== CLASS MEMBERS DECLARATION ===================

.class public auto ansi beforefieldinit VisualSVN.Core.Licensing.Base32Decoder
       extends [mscorlib]System.Object
{
  .method public hidebysig static uint8[] 
          Decode(string str) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.5
    IL_0002:  call       uint8[] VisualSVN.Core.Licensing.Base32Decoder::ConvertFromKey(string,
                                                                                        uint8)
    IL_0007:  ret
  } // end of method Base32Decoder::Decode

  .method private hidebysig static uint8[] 
          ConvertFromKey(string key,
                         uint8 base2) cil managed
  {
    // 代码大小       174 (0xae)
    .maxstack  4
    .locals init (uint32 V_0,
             uint8[] V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             uint8 V_5,
             uint8 V_6,
             int32 V_7)
    IL_0000:  ldarg.0
    IL_0001:  call       bool VisualSVN.Core.Licensing.Base32Decoder::IsEmpty(string)
    IL_0006:  brfalse.s  IL_000a

    IL_0008:  ldnull
    IL_0009:  ret

    IL_000a:  ldarg.1
    IL_000b:  conv.r8
    IL_000c:  ldc.r8     8.
    IL_0015:  div
    IL_0016:  ldarg.0
    IL_0017:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_001c:  conv.r8
    IL_001d:  mul
    IL_001e:  call       float64 [mscorlib]System.Math::Floor(float64)
    IL_0023:  conv.u4
    IL_0024:  stloc.0
    IL_0025:  ldloc.0
    IL_0026:  conv.u
    IL_0027:  newarr     [mscorlib]System.Byte
    IL_002c:  stloc.1
    IL_002d:  ldloc.1
    IL_002e:  call       bool VisualSVN.Core.Licensing.Base32Decoder::IsEmpty(class [mscorlib]System.Array)
    IL_0033:  brfalse.s  IL_0037

    IL_0035:  ldnull
    IL_0036:  ret

    IL_0037:  ldc.i4.0
    IL_0038:  stloc.2
    IL_0039:  br.s       IL_0043

    IL_003b:  ldloc.1
    IL_003c:  ldloc.2
    IL_003d:  ldc.i4.0
    IL_003e:  stelem.i1
    IL_003f:  ldloc.2
    IL_0040:  ldc.i4.1
    IL_0041:  add
    IL_0042:  stloc.2
    IL_0043:  ldloc.2
    IL_0044:  ldloc.1
    IL_0045:  ldlen
    IL_0046:  conv.i4
    IL_0047:  blt.s      IL_003b

    IL_0049:  ldc.i4.0
    IL_004a:  stloc.3
    IL_004b:  ldarg.0
    IL_004c:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_0051:  ldc.i4.1
    IL_0052:  sub
    IL_0053:  stloc.s    V_4
    IL_0055:  ldc.i4.0
    IL_0056:  stloc.s    V_5
    IL_0058:  br.s       IL_009f

    IL_005a:  ldarg.0
    IL_005b:  ldloc.s    V_4
    IL_005d:  dup
    IL_005e:  ldc.i4.1
    IL_005f:  sub
    IL_0060:  stloc.s    V_4
    IL_0062:  callvirt   instance char [mscorlib]System.String::get_Chars(int32)
    IL_0067:  call       uint8 VisualSVN.Core.Licensing.Base32Decoder::CharToVal(char)
    IL_006c:  stloc.s    V_6
    IL_006e:  ldloc.1
    IL_006f:  ldloc.3
    IL_0070:  ldc.i4.8
    IL_0071:  div
    IL_0072:  ldelem.u1
    IL_0073:  ldloc.s    V_6
    IL_0075:  ldloc.3
    IL_0076:  ldc.i4.8
    IL_0077:  rem
    IL_0078:  ldc.i4.s   31
    IL_007a:  and
    IL_007b:  shl
    IL_007c:  add
    IL_007d:  ldloc.s    V_5
    IL_007f:  add
    IL_0080:  stloc.s    V_7
    IL_0082:  ldloc.s    V_7
    IL_0084:  ldc.i4     0x100
    IL_0089:  div
    IL_008a:  conv.u1
    IL_008b:  stloc.s    V_5
    IL_008d:  ldloc.1
    IL_008e:  ldloc.3
    IL_008f:  ldc.i4.8
    IL_0090:  div
    IL_0091:  ldloc.s    V_7
    IL_0093:  ldc.i4     0x100
    IL_0098:  rem
    IL_0099:  conv.u1
    IL_009a:  stelem.i1
    IL_009b:  ldloc.3
    IL_009c:  ldarg.1
    IL_009d:  add
    IL_009e:  stloc.3
    IL_009f:  ldloc.s    V_4
    IL_00a1:  ldc.i4.0
    IL_00a2:  blt.s      IL_00ac

    IL_00a4:  ldloc.3
    IL_00a5:  conv.i8
    IL_00a6:  ldloc.0
    IL_00a7:  ldc.i4.8
    IL_00a8:  mul
    IL_00a9:  conv.u8
    IL_00aa:  blt.s      IL_005a

    IL_00ac:  ldloc.1
    IL_00ad:  ret
  } // end of method Base32Decoder::ConvertFromKey

  .method private hidebysig static bool  IsEmpty(string 'value') cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  brfalse.s  IL_000d

    IL_0003:  ldarg.0
    IL_0004:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_0009:  ldc.i4.0
    IL_000a:  ceq
    IL_000c:  ret

    IL_000d:  ldc.i4.1
    IL_000e:  ret
  } // end of method Base32Decoder::IsEmpty

  .method private hidebysig static bool  IsEmpty(class [mscorlib]System.Array 'value') cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  brfalse.s  IL_000d

    IL_0003:  ldarg.0
    IL_0004:  callvirt   instance int32 [mscorlib]System.Array::get_Length()
    IL_0009:  ldc.i4.0
    IL_000a:  ceq
    IL_000c:  ret

    IL_000d:  ldc.i4.1
    IL_000e:  ret
  } // end of method Base32Decoder::IsEmpty

  .method private hidebysig static uint8 
          CharToVal(char c) cil managed
  {
    // 代码大小       45 (0x2d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       char [mscorlib]System.Char::ToLower(char)
    IL_0006:  starg.s    c
    IL_0008:  ldc.i4.s   48
    IL_000a:  ldarg.0
    IL_000b:  bgt.s      IL_0012

    IL_000d:  ldarg.0
    IL_000e:  ldc.i4.s   57
    IL_0010:  ble.s      IL_0021

    IL_0012:  ldarg.0
    IL_0013:  ldc.i4.s   97
    IL_0015:  sub
    IL_0016:  ldc.i4.s   10
    IL_0018:  add
    IL_0019:  conv.u1
    IL_001a:  call       int32 VisualSVN.Core.Licensing.Base32Decoder::TrimNegative(int32)
    IL_001f:  conv.u1
    IL_0020:  ret

    IL_0021:  ldarg.0
    IL_0022:  ldc.i4.s   48
    IL_0024:  sub
    IL_0025:  conv.u1
    IL_0026:  call       int32 VisualSVN.Core.Licensing.Base32Decoder::TrimNegative(int32)
    IL_002b:  conv.u1
    IL_002c:  ret
  } // end of method Base32Decoder::CharToVal

  .method private hidebysig static int32 
          TrimNegative(int32 x) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  bge.s      IL_0006

    IL_0004:  ldc.i4.0
    IL_0005:  ret

    IL_0006:  ldarg.0
    IL_0007:  ret
  } // end of method Base32Decoder::TrimNegative

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method Base32Decoder::.ctor

} // end of class VisualSVN.Core.Licensing.Base32Decoder

.class public auto ansi beforefieldinit VisualSVN.Core.Licensing.Base32Encoder
       extends [mscorlib]System.Object
{
  .method public hidebysig static string 
          Encode(uint8[] data) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.5
    IL_0002:  call       string VisualSVN.Core.Licensing.Base32Encoder::ConvertToNumber(uint8[],
                                                                                        uint8)
    IL_0007:  ret
  } // end of method Base32Encoder::Encode

  .method private hidebysig static string 
          ConvertToNumber(uint8[] longNumber,
                          uint8 base2) cil managed
  {
    // 代码大小       94 (0x5e)
    .maxstack  4
    .locals init (string V_0,
             int32 V_1,
             uint32 V_2,
             uint8 V_3)
    IL_0000:  ldsfld     string [mscorlib]System.String::Empty
    IL_0005:  stloc.0
    IL_0006:  ldc.i4.0
    IL_0007:  stloc.1
    IL_0008:  br.s       IL_0054

    IL_000a:  ldarg.0
    IL_000b:  ldloc.1
    IL_000c:  ldc.i4.8
    IL_000d:  div
    IL_000e:  ldelem.u1
    IL_000f:  stloc.2
    IL_0010:  ldloc.1
    IL_0011:  ldc.i4.8
    IL_0012:  rem
    IL_0013:  ldc.i4.8
    IL_0014:  ldarg.1
    IL_0015:  sub
    IL_0016:  ble.s      IL_002e

    IL_0018:  ldloc.1
    IL_0019:  ldc.i4.8
    IL_001a:  div
    IL_001b:  ldarg.0
    IL_001c:  ldlen
    IL_001d:  conv.i4
    IL_001e:  ldc.i4.1
    IL_001f:  sub
    IL_0020:  bge.s      IL_002e

    IL_0022:  ldloc.2
    IL_0023:  ldarg.0
    IL_0024:  ldloc.1
    IL_0025:  ldc.i4.8
    IL_0026:  div
    IL_0027:  ldc.i4.1
    IL_0028:  add
    IL_0029:  ldelem.u1
    IL_002a:  ldc.i4.8
    IL_002b:  shl
    IL_002c:  add
    IL_002d:  stloc.2
    IL_002e:  ldloc.2
    IL_002f:  ldloc.1
    IL_0030:  ldc.i4.8
    IL_0031:  rem
    IL_0032:  ldarg.1
    IL_0033:  add
    IL_0034:  ldloc.1
    IL_0035:  ldc.i4.8
    IL_0036:  rem
    IL_0037:  call       uint32 VisualSVN.Core.Licensing.Base32Encoder::Bits16(uint32,
                                                                               int32,
                                                                               int32)
    IL_003c:  conv.u1
    IL_003d:  stloc.3
    IL_003e:  ldloc.3
    IL_003f:  call       char VisualSVN.Core.Licensing.Base32Encoder::ValToDigit(uint8)
    IL_0044:  box        [mscorlib]System.Char
    IL_0049:  ldloc.0
    IL_004a:  call       string [mscorlib]System.String::Concat(object,
                                                                object)
    IL_004f:  stloc.0
    IL_0050:  ldloc.1
    IL_0051:  ldarg.1
    IL_0052:  add
    IL_0053:  stloc.1
    IL_0054:  ldloc.1
    IL_0055:  ldarg.0
    IL_0056:  ldlen
    IL_0057:  conv.i4
    IL_0058:  ldc.i4.8
    IL_0059:  mul
    IL_005a:  blt.s      IL_000a

    IL_005c:  ldloc.0
    IL_005d:  ret
  } // end of method Base32Encoder::ConvertToNumber

  .method private hidebysig static char  ValToDigit(uint8 b) cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   9
    IL_0003:  bgt.s      IL_000b

    IL_0005:  ldarg.0
    IL_0006:  ldc.i4.s   48
    IL_0008:  add
    IL_0009:  conv.u2
    IL_000a:  ret

    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.s   10
    IL_000e:  sub
    IL_000f:  ldc.i4.s   97
    IL_0011:  add
    IL_0012:  conv.u2
    IL_0013:  ret
  } // end of method Base32Encoder::ValToDigit

  .method private hidebysig static uint32 
          Bits16(uint32 number16,
                 int32 from,
                 int32 'to') cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.2
    IL_0002:  ldc.i4.s   31
    IL_0004:  and
    IL_0005:  shr.un
    IL_0006:  ldc.r8     2.
    IL_000f:  ldarg.1
    IL_0010:  ldarg.2
    IL_0011:  sub
    IL_0012:  conv.r8
    IL_0013:  call       float64 [mscorlib]System.Math::Pow(float64,
                                                            float64)
    IL_0018:  conv.u4
    IL_0019:  ldc.i4.1
    IL_001a:  sub
    IL_001b:  and
    IL_001c:  ret
  } // end of method Base32Encoder::Bits16

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method Base32Encoder::.ctor

} // end of class VisualSVN.Core.Licensing.Base32Encoder

.class interface public abstract auto ansi VisualSVN.Core.IDecoder
{
  .method public hidebysig newslot abstract virtual 
          instance uint8[]  Decode(uint8[] data) cil managed
  {
  } // end of method IDecoder::Decode

} // end of class VisualSVN.Core.IDecoder

.class public auto ansi beforefieldinit VisualSVN.Core.Licensing.DecoderSequence
       extends [mscorlib]System.Object
       implements VisualSVN.Core.IDecoder
{
  .field private class VisualSVN.Core.IDecoder[] decoders
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class VisualSVN.Core.IDecoder[] decoders) cil managed
  {
    .param [1]
    .custom instance void [mscorlib]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      class VisualSVN.Core.IDecoder[] VisualSVN.Core.Licensing.DecoderSequence::decoders
    IL_000d:  ret
  } // end of method DecoderSequence::.ctor

  .method public hidebysig newslot virtual final 
          instance uint8[]  Decode(uint8[] data) cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  2
    .locals init (uint8[] V_0,
             int32 V_1)
    IL_0000:  ldarg.1
    IL_0001:  stloc.0
    IL_0002:  ldarg.0
    IL_0003:  ldfld      class VisualSVN.Core.IDecoder[] VisualSVN.Core.Licensing.DecoderSequence::decoders
    IL_0008:  ldlen
    IL_0009:  conv.i4
    IL_000a:  ldc.i4.1
    IL_000b:  sub
    IL_000c:  stloc.1
    IL_000d:  br.s       IL_0022

    IL_000f:  ldarg.0
    IL_0010:  ldfld      class VisualSVN.Core.IDecoder[] VisualSVN.Core.Licensing.DecoderSequence::decoders
    IL_0015:  ldloc.1
    IL_0016:  ldelem.ref
    IL_0017:  ldloc.0
    IL_0018:  callvirt   instance uint8[] VisualSVN.Core.IDecoder::Decode(uint8[])
    IL_001d:  stloc.0
    IL_001e:  ldloc.1
    IL_001f:  ldc.i4.1
    IL_0020:  sub
    IL_0021:  stloc.1
    IL_0022:  ldloc.1
    IL_0023:  ldc.i4.0
    IL_0024:  bge.s      IL_000f

    IL_0026:  ldloc.0
    IL_0027:  ret
  } // end of method DecoderSequence::Decode

} // end of class VisualSVN.Core.Licensing.DecoderSequence

.class interface public abstract auto ansi VisualSVN.Core.IEncoder
{
  .method public hidebysig newslot abstract virtual 
          instance uint8[]  Encode(uint8[] data) cil managed
  {
  } // end of method IEncoder::Encode

} // end of class VisualSVN.Core.IEncoder

.class public auto ansi beforefieldinit VisualSVN.Core.Licensing.EncoderSequence
       extends [mscorlib]System.Object
       implements VisualSVN.Core.IEncoder
{
  .field private class VisualSVN.Core.IEncoder[] encoders
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class VisualSVN.Core.IEncoder[] encoders) cil managed
  {
    .param [1]
    .custom instance void [mscorlib]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      class VisualSVN.Core.IEncoder[] VisualSVN.Core.Licensing.EncoderSequence::encoders
    IL_000d:  ret
  } // end of method EncoderSequence::.ctor

  .method public hidebysig newslot virtual final 
          instance uint8[]  Encode(uint8[] data) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  2
    .locals init (uint8[] V_0,
             int32 V_1)
    IL_0000:  ldarg.1
    IL_0001:  stloc.0
    IL_0002:  ldc.i4.0
    IL_0003:  stloc.1
    IL_0004:  br.s       IL_0019

    IL_0006:  ldarg.0
    IL_0007:  ldfld      class VisualSVN.Core.IEncoder[] VisualSVN.Core.Licensing.EncoderSequence::encoders
    IL_000c:  ldloc.1
    IL_000d:  ldelem.ref
    IL_000e:  ldloc.0
    IL_000f:  callvirt   instance uint8[] VisualSVN.Core.IEncoder::Encode(uint8[])
    IL_0014:  stloc.0
    IL_0015:  ldloc.1
    IL_0016:  ldc.i4.1
    IL_0017:  add
    IL_0018:  stloc.1
    IL_0019:  ldloc.1
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class VisualSVN.Core.IEncoder[] VisualSVN.Core.Licensing.EncoderSequence::encoders
    IL_0020:  ldlen
    IL_0021:  conv.i4
    IL_0022:  blt.s      IL_0006

    IL_0024:  ldloc.0
    IL_0025:  ret
  } // end of method EncoderSequence::Encode

} // end of class VisualSVN.Core.Licensing.EncoderSequence

.class public auto ansi beforefieldinit VisualSVN.Core.Licensing.KeyStringFormatter
       extends [mscorlib]System.Object
{
  .field public static literal int32 KeyLineWidth = int32(0x00000032)
  .field public static initonly string OpeningKeySymbols
  .field public static initonly string ClosingKeySymbols
  .field public static initonly char[] ReplaceSymbols
  .method public hidebysig static string 
          FormatKey(string pureKey) cil managed
  {
    // 代码大小       139 (0x8b)
    .maxstack  5
    .locals init (class [mscorlib]System.Text.StringBuilder V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_0006:  newobj     instance void [mscorlib]System.Text.StringBuilder::.ctor(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldsfld     string VisualSVN.Core.Licensing.KeyStringFormatter::OpeningKeySymbols
    IL_0012:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_0017:  pop
    IL_0018:  ldloc.0
    IL_0019:  ldstr      "\r\n"
    IL_001e:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_0023:  pop
    IL_0024:  ldc.i4.0
    IL_0025:  stloc.1
    IL_0026:  br.s       IL_0049

    IL_0028:  ldloc.0
    IL_0029:  ldarg.0
    IL_002a:  ldloc.1
    IL_002b:  ldc.i4.s   50
    IL_002d:  callvirt   instance string [mscorlib]System.String::Substring(int32,
                                                                            int32)
    IL_0032:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_0037:  pop
    IL_0038:  ldloc.0
    IL_0039:  ldstr      "\r\n"
    IL_003e:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_0043:  pop
    IL_0044:  ldloc.1
    IL_0045:  ldc.i4.s   50
    IL_0047:  add
    IL_0048:  stloc.1
    IL_0049:  ldloc.1
    IL_004a:  ldc.i4.s   50
    IL_004c:  add
    IL_004d:  ldarg.0
    IL_004e:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_0053:  ble.s      IL_0028

    IL_0055:  ldloc.0
    IL_0056:  ldarg.0
    IL_0057:  ldloc.1
    IL_0058:  ldarg.0
    IL_0059:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_005e:  ldc.i4.s   50
    IL_0060:  rem
    IL_0061:  callvirt   instance string [mscorlib]System.String::Substring(int32,
                                                                            int32)
    IL_0066:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_006b:  pop
    IL_006c:  ldloc.0
    IL_006d:  ldstr      "\r\n"
    IL_0072:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_0077:  pop
    IL_0078:  ldloc.0
    IL_0079:  ldsfld     string VisualSVN.Core.Licensing.KeyStringFormatter::ClosingKeySymbols
    IL_007e:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_0083:  pop
    IL_0084:  ldloc.0
    IL_0085:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_008a:  ret
  } // end of method KeyStringFormatter::FormatKey

  .method private hidebysig static string 
          RemoveChars(string str,
                      char[] charsToRemove) cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  3
    .locals init (class [mscorlib]System.Text.StringBuilder V_0,
             char V_1,
             char[] V_2,
             int32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void [mscorlib]System.Text.StringBuilder::.ctor(string)
    IL_0006:  stloc.0
    IL_0007:  ldarg.1
    IL_0008:  stloc.2
    IL_0009:  ldc.i4.0
    IL_000a:  stloc.3
    IL_000b:  br.s       IL_0028

    IL_000d:  ldloc.2
    IL_000e:  ldloc.3
    IL_000f:  ldelem.u2
    IL_0010:  stloc.1
    IL_0011:  ldloc.0
    IL_0012:  ldloca.s   V_1
    IL_0014:  call       instance string [mscorlib]System.Char::ToString()
    IL_0019:  ldstr      ""
    IL_001e:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Replace(string,
                                                                                                                         string)
    IL_0023:  pop
    IL_0024:  ldloc.3
    IL_0025:  ldc.i4.1
    IL_0026:  add
    IL_0027:  stloc.3
    IL_0028:  ldloc.3
    IL_0029:  ldloc.2
    IL_002a:  ldlen
    IL_002b:  conv.i4
    IL_002c:  blt.s      IL_000d

    IL_002e:  ldloc.0
    IL_002f:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_0034:  ret
  } // end of method KeyStringFormatter::RemoveChars

  .method public hidebysig static string 
          ParseKey(string formattedKey) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     char[] VisualSVN.Core.Licensing.KeyStringFormatter::ReplaceSymbols
    IL_0006:  call       string VisualSVN.Core.Licensing.KeyStringFormatter::RemoveChars(string,
                                                                                         char[])
    IL_000b:  ret
  } // end of method KeyStringFormatter::ParseKey

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method KeyStringFormatter::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       51 (0x33)
    .maxstack  8
    IL_0000:  ldc.i4.s   45
    IL_0002:  ldc.i4.s   50
    IL_0004:  newobj     instance void [mscorlib]System.String::.ctor(char,
                                                                      int32)
    IL_0009:  stsfld     string VisualSVN.Core.Licensing.KeyStringFormatter::OpeningKeySymbols
    IL_000e:  ldc.i4.s   45
    IL_0010:  ldc.i4.s   50
    IL_0012:  newobj     instance void [mscorlib]System.String::.ctor(char,
                                                                      int32)
    IL_0017:  stsfld     string VisualSVN.Core.Licensing.KeyStringFormatter::ClosingKeySymbols
    IL_001c:  ldc.i4.5
    IL_001d:  newarr     [mscorlib]System.Char
    IL_0022:  dup
    IL_0023:  ldtoken    field valuetype '<PrivateImplementationDetails>{24208891-9E52-496E-A3B0-417063E36302}'/'__StaticArrayInitTypeSize=10' '<PrivateImplementationDetails>{24208891-9E52-496E-A3B0-417063E36302}'::'$$method0x6000056-1'
    IL_0028:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_002d:  stsfld     char[] VisualSVN.Core.Licensing.KeyStringFormatter::ReplaceSymbols
    IL_0032:  ret
  } // end of method KeyStringFormatter::.cctor

} // end of class VisualSVN.Core.Licensing.KeyStringFormatter

.class public auto ansi beforefieldinit VisualSVN.Core.Licensing.License
       extends [mscorlib]System.Object
{
  .field public uint8 Version
  .field public valuetype [mscorlib]System.Guid LicenseId
  .field public string PurchaseId
  .field public valuetype VisualSVN.Core.Licensing.LicenseType Type
  .field public valuetype VisualSVN.Core.Licensing.LicenseBinding Binding
  .field public string LicensedTo
  .field public int32 Capacity
  .field public valuetype [mscorlib]System.DateTime StartTime
  .field public valuetype [mscorlib]System.DateTime EndTime
  .field public valuetype [mscorlib]System.DateTime PurchaseDate
  .field public bool UpgradeEvaluation
  .field public bool IsPregenerated
  .method public hidebysig static class VisualSVN.Core.Licensing.License 
          CreatePregeneratedLicense(valuetype [mscorlib]System.DateTime startTime) cil managed
  {
    // 代码大小       80 (0x50)
    .maxstack  3
    .locals init (class VisualSVN.Core.Licensing.License V_0)
    IL_0000:  newobj     instance void VisualSVN.Core.Licensing.License::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.License::StartTime
    IL_000d:  ldloc.0
    IL_000e:  ldloc.0
    IL_000f:  ldflda     valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.License::StartTime
    IL_0014:  ldc.r8     3600.
    IL_001d:  call       instance valuetype [mscorlib]System.DateTime [mscorlib]System.DateTime::AddDays(float64)
    IL_0022:  stfld      valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.License::EndTime
    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.0
    IL_0029:  stfld      valuetype VisualSVN.Core.Licensing.LicenseType VisualSVN.Core.Licensing.License::Type
    IL_002e:  ldloc.0
    IL_002f:  ldstr      "Evaluation User"
    IL_0034:  stfld      string VisualSVN.Core.Licensing.License::LicensedTo
    IL_0039:  ldloc.0
    IL_003a:  ldc.i4.1
    IL_003b:  stfld      bool VisualSVN.Core.Licensing.License::IsPregenerated
    IL_0040:  ldloc.0
    IL_0041:  ldc.i4.1
    IL_0042:  stfld      int32 VisualSVN.Core.Licensing.License::Capacity
    IL_0047:  ldloc.0
    IL_0048:  ldc.i4.1
    IL_0049:  stfld      valuetype VisualSVN.Core.Licensing.LicenseBinding VisualSVN.Core.Licensing.License::Binding
    IL_004e:  ldloc.0
    IL_004f:  ret
  } // end of method License::CreatePregeneratedLicense

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       39 (0x27)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldc.i4.2
    IL_0008:  stfld      uint8 VisualSVN.Core.Licensing.License::Version
    IL_000d:  ldarg.0
    IL_000e:  call       valuetype [mscorlib]System.Guid [mscorlib]System.Guid::NewGuid()
    IL_0013:  stfld      valuetype [mscorlib]System.Guid VisualSVN.Core.Licensing.License::LicenseId
    IL_0018:  ldarg.0
    IL_0019:  ldc.i4.0
    IL_001a:  stfld      bool VisualSVN.Core.Licensing.License::UpgradeEvaluation
    IL_001f:  ldarg.0
    IL_0020:  ldc.i4.0
    IL_0021:  stfld      bool VisualSVN.Core.Licensing.License::IsPregenerated
    IL_0026:  ret
  } // end of method License::.ctor

} // end of class VisualSVN.Core.Licensing.License

.class public auto ansi sealed VisualSVN.Core.Licensing.LicenseType
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype VisualSVN.Core.Licensing.LicenseType Evaluation = int32(0x00000000)
  .field public static literal valuetype VisualSVN.Core.Licensing.LicenseType Personal = int32(0x00000001)
  .field public static literal valuetype VisualSVN.Core.Licensing.LicenseType Corporate = int32(0x00000002)
  .field public static literal valuetype VisualSVN.Core.Licensing.LicenseType Classroom = int32(0x00000003)
  .field public static literal valuetype VisualSVN.Core.Licensing.LicenseType OpenSource = int32(0x00000004)
  .field public static literal valuetype VisualSVN.Core.Licensing.LicenseType Student = int32(0x00000005)
  .field public static literal valuetype VisualSVN.Core.Licensing.LicenseType Professional = int32(0x00000006)
  .field public static literal valuetype VisualSVN.Core.Licensing.LicenseType Site = int32(0x00000007)
  .field public static literal valuetype VisualSVN.Core.Licensing.LicenseType Community = int32(0x00000008)
} // end of class VisualSVN.Core.Licensing.LicenseType

.class public auto ansi sealed VisualSVN.Core.Licensing.LicenseBinding
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype VisualSVN.Core.Licensing.LicenseBinding User = int32(0x00000000)
  .field public static literal valuetype VisualSVN.Core.Licensing.LicenseBinding Seat = int32(0x00000001)
  .field public static literal valuetype VisualSVN.Core.Licensing.LicenseBinding Site = int32(0x00000002)
} // end of class VisualSVN.Core.Licensing.LicenseBinding

.class public abstract auto ansi sealed beforefieldinit VisualSVN.Core.Licensing.LicenseConverter
       extends [mscorlib]System.Object
{
  .field private static literal char PlainLicenseKeySymbol = char(0x0050)
  .field private static literal char OldLicenseKeySymbol = char(0x0043)
  .field private static literal char NewLicenseKeySymbol = char(0x004E)
  .method public hidebysig static string 
          LicenseToKey(class VisualSVN.Core.IEncoder encoder,
                       class VisualSVN.Core.Licensing.License license) cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  2
    .locals init (string V_0)
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  call       string VisualSVN.Core.Licensing.NewLicenseSerializer::Serialize(class VisualSVN.Core.Licensing.License,
                                                                                         class VisualSVN.Core.IEncoder)
    IL_0007:  stloc.0
    IL_0008:  ldc.i4.s   78
    IL_000a:  box        [mscorlib]System.Char
    IL_000f:  ldloc.0
    IL_0010:  call       string [mscorlib]System.String::Concat(object,
                                                                object)
    IL_0015:  ret
  } // end of method LicenseConverter::LicenseToKey

  .method public hidebysig static string 
          LicenseToKeyOld(class VisualSVN.Core.IEncoder encoder,
                          class VisualSVN.Core.Licensing.License license) cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  2
    .locals init (string V_0)
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  call       string VisualSVN.Core.Licensing.OldLicenseSerializer::Serialize(class VisualSVN.Core.Licensing.License,
                                                                                         class VisualSVN.Core.IEncoder)
    IL_0007:  stloc.0
    IL_0008:  ldc.i4.s   67
    IL_000a:  box        [mscorlib]System.Char
    IL_000f:  ldloc.0
    IL_0010:  call       string [mscorlib]System.String::Concat(object,
                                                                object)
    IL_0015:  ret
  } // end of method LicenseConverter::LicenseToKeyOld

  .method public hidebysig static string 
          MakePlainLicenseKey(valuetype [mscorlib]System.DateTime startTime) cil managed
  {
    // 代码大小       279 (0x117)
    .maxstack  4
    .locals init (class [mscorlib]System.Random V_0,
             class [mscorlib]System.Text.StringBuilder V_1,
             char[] V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10)
    IL_0000:  newobj     instance void [mscorlib]System.Random::.ctor()
    IL_0005:  stloc.0
    IL_0006:  newobj     instance void [mscorlib]System.Text.StringBuilder::.ctor()
    IL_000b:  stloc.1
    IL_000c:  ldloc.1
    IL_000d:  ldloc.0
    IL_000e:  ldc.i4     0xffff
    IL_0013:  callvirt   instance int32 [mscorlib]System.Random::Next(int32)
    IL_0018:  stloc.s    V_4
    IL_001a:  ldloca.s   V_4
    IL_001c:  ldstr      "x4"
    IL_0021:  call       instance string [mscorlib]System.Int32::ToString(string)
    IL_0026:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_002b:  pop
    IL_002c:  ldloc.1
    IL_002d:  ldarga.s   startTime
    IL_002f:  call       instance int32 [mscorlib]System.DateTime::get_Day()
    IL_0034:  stloc.s    V_5
    IL_0036:  ldloca.s   V_5
    IL_0038:  ldstr      "00"
    IL_003d:  call       instance string [mscorlib]System.Int32::ToString(string)
    IL_0042:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_0047:  pop
    IL_0048:  ldloc.1
    IL_0049:  ldloc.0
    IL_004a:  ldc.i4     0xffff
    IL_004f:  callvirt   instance int32 [mscorlib]System.Random::Next(int32)
    IL_0054:  stloc.s    V_6
    IL_0056:  ldloca.s   V_6
    IL_0058:  ldstr      "x4"
    IL_005d:  call       instance string [mscorlib]System.Int32::ToString(string)
    IL_0062:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_0067:  pop
    IL_0068:  ldloc.1
    IL_0069:  ldarga.s   startTime
    IL_006b:  call       instance int32 [mscorlib]System.DateTime::get_Year()
    IL_0070:  stloc.s    V_7
    IL_0072:  ldloca.s   V_7
    IL_0074:  ldstr      "0000"
    IL_0079:  call       instance string [mscorlib]System.Int32::ToString(string)
    IL_007e:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_0083:  pop
    IL_0084:  ldloc.1
    IL_0085:  ldloc.0
    IL_0086:  ldc.i4     0xffff
    IL_008b:  callvirt   instance int32 [mscorlib]System.Random::Next(int32)
    IL_0090:  stloc.s    V_8
    IL_0092:  ldloca.s   V_8
    IL_0094:  ldstr      "x4"
    IL_0099:  call       instance string [mscorlib]System.Int32::ToString(string)
    IL_009e:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_00a3:  pop
    IL_00a4:  ldloc.1
    IL_00a5:  ldarga.s   startTime
    IL_00a7:  call       instance int32 [mscorlib]System.DateTime::get_Month()
    IL_00ac:  stloc.s    V_9
    IL_00ae:  ldloca.s   V_9
    IL_00b0:  ldstr      "00"
    IL_00b5:  call       instance string [mscorlib]System.Int32::ToString(string)
    IL_00ba:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_00bf:  pop
    IL_00c0:  ldloc.1
    IL_00c1:  ldloc.0
    IL_00c2:  ldc.i4     0xffff
    IL_00c7:  callvirt   instance int32 [mscorlib]System.Random::Next(int32)
    IL_00cc:  stloc.s    V_10
    IL_00ce:  ldloca.s   V_10
    IL_00d0:  ldstr      "x4"
    IL_00d5:  call       instance string [mscorlib]System.Int32::ToString(string)
    IL_00da:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_00df:  pop
    IL_00e0:  ldloc.1
    IL_00e1:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_00e6:  callvirt   instance char[] [mscorlib]System.String::ToCharArray()
    IL_00eb:  stloc.2
    IL_00ec:  ldc.i4.0
    IL_00ed:  stloc.3
    IL_00ee:  br.s       IL_00fe

    IL_00f0:  ldloc.2
    IL_00f1:  ldloc.3
    IL_00f2:  ldloc.2
    IL_00f3:  ldloc.3
    IL_00f4:  ldelem.u2
    IL_00f5:  ldc.i4.s   10
    IL_00f7:  add
    IL_00f8:  conv.u2
    IL_00f9:  stelem.i2
    IL_00fa:  ldloc.3
    IL_00fb:  ldc.i4.1
    IL_00fc:  add
    IL_00fd:  stloc.3
    IL_00fe:  ldloc.3
    IL_00ff:  ldloc.2
    IL_0100:  ldlen
    IL_0101:  conv.i4
    IL_0102:  blt.s      IL_00f0

    IL_0104:  ldc.i4.s   80
    IL_0106:  box        [mscorlib]System.Char
    IL_010b:  ldloc.2
    IL_010c:  newobj     instance void [mscorlib]System.String::.ctor(char[])
    IL_0111:  call       string [mscorlib]System.String::Concat(object,
                                                                object)
    IL_0116:  ret
  } // end of method LicenseConverter::MakePlainLicenseKey

  .method public hidebysig static class VisualSVN.Core.Licensing.License 
          KeyToLicenseUnsafe(class VisualSVN.Core.IDecoder decoder,
                             string key) cil managed
  {
    // 代码大小       69 (0x45)
    .maxstack  2
    .locals init (char V_0,
             string V_1,
             char V_2)
    IL_0000:  ldarg.1
    IL_0001:  ldloca.s   V_0
    IL_0003:  call       string VisualSVN.Core.Licensing.LicenseConverter::ExtractKeyBody(string,
                                                                                          char&)
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  brtrue.s   IL_000e

    IL_000c:  ldnull
    IL_000d:  ret

    IL_000e:  ldloc.0
    IL_000f:  stloc.2
    IL_0010:  ldloc.2
    IL_0011:  ldc.i4.s   67
    IL_0013:  beq.s      IL_0033

    IL_0015:  ldloc.2
    IL_0016:  ldc.i4.s   78
    IL_0018:  sub
    IL_0019:  switch     ( 
                          IL_003b,
                          IL_0043,
                          IL_002c)
    IL_002a:  br.s       IL_0043

    IL_002c:  ldloc.1
    IL_002d:  call       class VisualSVN.Core.Licensing.License VisualSVN.Core.Licensing.PlainLicenseSerializer::Deserialize(string)
    IL_0032:  ret

    IL_0033:  ldloc.1
    IL_0034:  ldarg.0
    IL_0035:  call       class VisualSVN.Core.Licensing.License VisualSVN.Core.Licensing.OldLicenseSerializer::Deserialize(string,
                                                                                                                           class VisualSVN.Core.IDecoder)
    IL_003a:  ret

    IL_003b:  ldloc.1
    IL_003c:  ldarg.0
    IL_003d:  call       class VisualSVN.Core.Licensing.License VisualSVN.Core.Licensing.NewLicenseSerializer::Deserialize(string,
                                                                                                                           class VisualSVN.Core.IDecoder)
    IL_0042:  ret

    IL_0043:  ldnull
    IL_0044:  ret
  } // end of method LicenseConverter::KeyToLicenseUnsafe

  .method public hidebysig static class VisualSVN.Core.Licensing.License 
          KeyToLicense(class VisualSVN.Core.IDecoder decoder,
                       string key) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  2
    .locals init (class [mscorlib]System.Exception V_0,
             class VisualSVN.Core.Licensing.License V_1)
    .try
    {
      IL_0000:  ldarg.0
      IL_0001:  ldarg.1
      IL_0002:  call       class VisualSVN.Core.Licensing.License VisualSVN.Core.Licensing.LicenseConverter::KeyToLicenseUnsafe(class VisualSVN.Core.IDecoder,
                                                                                                                                string)
      IL_0007:  stloc.1
      IL_0008:  leave.s    IL_0015

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_000a:  stloc.0
      IL_000b:  ldloc.0
      IL_000c:  call       void [VisualSVN.Utils]VisualSVN.Utils.Log::ReportException(class [mscorlib]System.Exception)
      IL_0011:  leave.s    IL_0013

    }  // end handler
    IL_0013:  ldnull
    IL_0014:  ret

    IL_0015:  ldloc.1
    IL_0016:  ret
  } // end of method LicenseConverter::KeyToLicense

  .method private hidebysig static string 
          ExtractKeyBody(string key,
                         [out] char& keyType) cil managed
  {
    // 代码大小       52 (0x34)
    .maxstack  3
    .locals init (string V_0)
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.s   32
    IL_0003:  stind.i2
    IL_0004:  ldarg.0
    IL_0005:  brfalse.s  IL_0010

    IL_0007:  ldarg.0
    IL_0008:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_000d:  ldc.i4.1
    IL_000e:  bge.s      IL_0012

    IL_0010:  ldnull
    IL_0011:  ret

    IL_0012:  ldarg.1
    IL_0013:  ldarg.0
    IL_0014:  ldc.i4.0
    IL_0015:  callvirt   instance char [mscorlib]System.String::get_Chars(int32)
    IL_001a:  call       char [mscorlib]System.Char::ToUpper(char)
    IL_001f:  stind.i2
    IL_0020:  ldarg.0
    IL_0021:  ldc.i4.1
    IL_0022:  callvirt   instance string [mscorlib]System.String::Substring(int32)
    IL_0027:  stloc.0
    IL_0028:  ldloc.0
    IL_0029:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_002e:  brtrue.s   IL_0032

    IL_0030:  ldnull
    IL_0031:  ret

    IL_0032:  ldloc.0
    IL_0033:  ret
  } // end of method LicenseConverter::ExtractKeyBody

} // end of class VisualSVN.Core.Licensing.LicenseConverter

.class public abstract auto ansi sealed beforefieldinit VisualSVN.Core.Licensing.LicenseInformationFormatter
       extends [mscorlib]System.Object
{
  .method public hidebysig static string 
          FormatTabbed(class VisualSVN.Core.Licensing.License license,
                       valuetype [mscorlib]System.DateTime now) cil managed
  {
    // 代码大小       129 (0x81)
    .maxstack  4
    .locals init (class [mscorlib]System.Text.StringBuilder V_0,
             char[] V_1)
    IL_0000:  ldarg.0
    IL_0001:  brtrue.s   IL_0009

    IL_0003:  ldstr      "No license"
    IL_0008:  ret

    IL_0009:  ldarg.0
    IL_000a:  call       bool VisualSVN.Core.Licensing.LicenseVerificator::IsCorrect(class VisualSVN.Core.Licensing.License)
    IL_000f:  brtrue.s   IL_0017

    IL_0011:  ldstr      "Unknown license"
    IL_0016:  ret

    IL_0017:  newobj     instance void [mscorlib]System.Text.StringBuilder::.ctor()
    IL_001c:  stloc.0
    IL_001d:  ldarg.0
    IL_001e:  ldfld      bool VisualSVN.Core.Licensing.License::UpgradeEvaluation
    IL_0023:  brfalse.s  IL_0035

    IL_0025:  ldloc.0
    IL_0026:  call       void VisualSVN.Core.Licensing.LicenseInformationFormatter::AppendLicenseOutdatedInfo(class [mscorlib]System.Text.StringBuilder)
    IL_002b:  ldloc.0
    IL_002c:  ldarg.0
    IL_002d:  ldarg.1
    IL_002e:  call       void VisualSVN.Core.Licensing.LicenseInformationFormatter::AppendUpgradeEvaluationExpirationInfo(class [mscorlib]System.Text.StringBuilder,
                                                                                                                          class VisualSVN.Core.Licensing.License,
                                                                                                                          valuetype [mscorlib]System.DateTime)
    IL_0033:  br.s       IL_0063

    IL_0035:  ldarg.0
    IL_0036:  call       bool VisualSVN.Core.Licensing.LicenseVerificator::IsOutdatedForCurrentVersion(class VisualSVN.Core.Licensing.License)
    IL_003b:  brfalse.s  IL_0045

    IL_003d:  ldloc.0
    IL_003e:  call       void VisualSVN.Core.Licensing.LicenseInformationFormatter::AppendLicenseOutdatedInfo(class [mscorlib]System.Text.StringBuilder)
    IL_0043:  br.s       IL_0063

    IL_0045:  ldloc.0
    IL_0046:  ldarg.0
    IL_0047:  call       void VisualSVN.Core.Licensing.LicenseInformationFormatter::AppendLicenseTypeInfo(class [mscorlib]System.Text.StringBuilder,
                                                                                                          class VisualSVN.Core.Licensing.License)
    IL_004c:  ldloc.0
    IL_004d:  ldarg.0
    IL_004e:  call       void VisualSVN.Core.Licensing.LicenseInformationFormatter::AppendLicensedToInfo(class [mscorlib]System.Text.StringBuilder,
                                                                                                         class VisualSVN.Core.Licensing.License)
    IL_0053:  ldarg.0
    IL_0054:  call       bool VisualSVN.Core.Licensing.LicenseVerificator::IsTimeLimited(class VisualSVN.Core.Licensing.License)
    IL_0059:  brfalse.s  IL_0063

    IL_005b:  ldloc.0
    IL_005c:  ldarg.0
    IL_005d:  ldarg.1
    IL_005e:  call       void VisualSVN.Core.Licensing.LicenseInformationFormatter::AppendLicenseExpirationInfo(class [mscorlib]System.Text.StringBuilder,
                                                                                                                class VisualSVN.Core.Licensing.License,
                                                                                                                valuetype [mscorlib]System.DateTime)
    IL_0063:  ldloc.0
    IL_0064:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_0069:  ldc.i4.2
    IL_006a:  newarr     [mscorlib]System.Char
    IL_006f:  stloc.1
    IL_0070:  ldloc.1
    IL_0071:  ldc.i4.0
    IL_0072:  ldc.i4.s   13
    IL_0074:  stelem.i2
    IL_0075:  ldloc.1
    IL_0076:  ldc.i4.1
    IL_0077:  ldc.i4.s   10
    IL_0079:  stelem.i2
    IL_007a:  ldloc.1
    IL_007b:  callvirt   instance string [mscorlib]System.String::TrimEnd(char[])
    IL_0080:  ret
  } // end of method LicenseInformationFormatter::FormatTabbed

  .method public hidebysig static string 
          Format(class VisualSVN.Core.Licensing.License license,
                 valuetype [mscorlib]System.DateTime now) cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       string VisualSVN.Core.Licensing.LicenseInformationFormatter::FormatTabbed(class VisualSVN.Core.Licensing.License,
                                                                                                   valuetype [mscorlib]System.DateTime)
    IL_0007:  ldc.i4.s   9
    IL_0009:  ldc.i4.s   32
    IL_000b:  callvirt   instance string [mscorlib]System.String::Replace(char,
                                                                          char)
    IL_0010:  ret
  } // end of method LicenseInformationFormatter::Format

  .method private hidebysig static void  AppendLicenseTypeInfo(class [mscorlib]System.Text.StringBuilder builder,
                                                               class VisualSVN.Core.Licensing.License license) cil managed
  {
    // 代码大小       176 (0xb0)
    .maxstack  2
    .locals init (valuetype VisualSVN.Core.Licensing.LicenseType V_0)
    IL_0000:  ldarg.1
    IL_0001:  ldfld      valuetype VisualSVN.Core.Licensing.LicenseType VisualSVN.Core.Licensing.License::Type
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  switch     ( 
                          IL_0032,
                          IL_003f,
                          IL_0055,
                          IL_0062,
                          IL_007c,
                          IL_006f,
                          IL_0096,
                          IL_0089,
                          IL_00a3)
    IL_0031:  ret

    IL_0032:  ldarg.0
    IL_0033:  ldstr      "License type:\tEvaluation\r\n"
    IL_0038:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_003d:  pop
    IL_003e:  ret

    IL_003f:  ldarg.1
    IL_0040:  ldfld      uint8 VisualSVN.Core.Licensing.License::Version
    IL_0045:  ldc.i4.1
    IL_0046:  ble.s      IL_00af

    IL_0048:  ldarg.0
    IL_0049:  ldstr      "License type:\tPersonal\r\n"
    IL_004e:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_0053:  pop
    IL_0054:  ret

    IL_0055:  ldarg.0
    IL_0056:  ldstr      "License type:\tCorporate\r\n"
    IL_005b:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_0060:  pop
    IL_0061:  ret

    IL_0062:  ldarg.0
    IL_0063:  ldstr      "License type:\tClassroom\r\n"
    IL_0068:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_006d:  pop
    IL_006e:  ret

    IL_006f:  ldarg.0
    IL_0070:  ldstr      "License type:\tStudent\r\n"
    IL_0075:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_007a:  pop
    IL_007b:  ret

    IL_007c:  ldarg.0
    IL_007d:  ldstr      "License type:\tOpen Source Developer\r\n"
    IL_0082:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_0087:  pop
    IL_0088:  ret

    IL_0089:  ldarg.0
    IL_008a:  ldstr      "License type:\tSite\r\n"
    IL_008f:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_0094:  pop
    IL_0095:  ret

    IL_0096:  ldarg.0
    IL_0097:  ldstr      "License type:\tProfessional\r\n"
    IL_009c:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_00a1:  pop
    IL_00a2:  ret

    IL_00a3:  ldarg.0
    IL_00a4:  ldstr      "License type:\tCommunity\r\n"
    IL_00a9:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_00ae:  pop
    IL_00af:  ret
  } // end of method LicenseInformationFormatter::AppendLicenseTypeInfo

  .method private hidebysig static string 
          FormatNumeral(int32 number,
                        string single,
                        string multiple) cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  box        [mscorlib]System.Int32
    IL_0006:  ldstr      " "
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.1
    IL_000d:  beq.s      IL_0012

    IL_000f:  ldarg.2
    IL_0010:  br.s       IL_0013

    IL_0012:  ldarg.1
    IL_0013:  call       string [mscorlib]System.String::Concat(object,
                                                                object,
                                                                object)
    IL_0018:  ret
  } // end of method LicenseInformationFormatter::FormatNumeral

  .method private hidebysig static void  AppendLicensedToInfo(class [mscorlib]System.Text.StringBuilder builder,
                                                              class VisualSVN.Core.Licensing.License license) cil managed
  {
    // 代码大小       281 (0x119)
    .maxstack  6
    .locals init (valuetype VisualSVN.Core.Licensing.LicenseType V_0)
    IL_0000:  ldarg.1
    IL_0001:  ldfld      valuetype VisualSVN.Core.Licensing.LicenseType VisualSVN.Core.Licensing.License::Type
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  switch     ( 
                          IL_0045,
                          IL_0032,
                          IL_006d,
                          IL_006d,
                          IL_00d7,
                          IL_0032,
                          IL_008b,
                          IL_0032,
                          IL_0106)
    IL_0031:  ret

    IL_0032:  ldarg.0
    IL_0033:  ldstr      "Licensed to:\t{0}\r\n"
    IL_0038:  ldarg.1
    IL_0039:  ldfld      string VisualSVN.Core.Licensing.License::LicensedTo
    IL_003e:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::AppendFormat(string,
                                                                                                                              object)
    IL_0043:  pop
    IL_0044:  ret

    IL_0045:  ldarg.1
    IL_0046:  ldfld      string VisualSVN.Core.Licensing.License::LicensedTo
    IL_004b:  ldstr      "Evaluation User"
    IL_0050:  call       bool [mscorlib]System.String::op_Inequality(string,
                                                                     string)
    IL_0055:  brfalse    IL_0118

    IL_005a:  ldarg.0
    IL_005b:  ldstr      "Licensed to:\t{0}\r\n"
    IL_0060:  ldarg.1
    IL_0061:  ldfld      string VisualSVN.Core.Licensing.License::LicensedTo
    IL_0066:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::AppendFormat(string,
                                                                                                                              object)
    IL_006b:  pop
    IL_006c:  ret

    IL_006d:  ldarg.0
    IL_006e:  ldstr      "Licensed to:\t{0} ({1} seats)\r\n"
    IL_0073:  ldarg.1
    IL_0074:  ldfld      string VisualSVN.Core.Licensing.License::LicensedTo
    IL_0079:  ldarg.1
    IL_007a:  ldfld      int32 VisualSVN.Core.Licensing.License::Capacity
    IL_007f:  box        [mscorlib]System.Int32
    IL_0084:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::AppendFormat(string,
                                                                                                                              object,
                                                                                                                              object)
    IL_0089:  pop
    IL_008a:  ret

    IL_008b:  ldarg.1
    IL_008c:  ldfld      valuetype VisualSVN.Core.Licensing.LicenseBinding VisualSVN.Core.Licensing.License::Binding
    IL_0091:  ldc.i4.1
    IL_0092:  bne.un.s   IL_00bc

    IL_0094:  ldarg.0
    IL_0095:  ldstr      "Licensed to:\t{0} ({1})\r\n"
    IL_009a:  ldarg.1
    IL_009b:  ldfld      string VisualSVN.Core.Licensing.License::LicensedTo
    IL_00a0:  ldarg.1
    IL_00a1:  ldfld      int32 VisualSVN.Core.Licensing.License::Capacity
    IL_00a6:  ldstr      "user"
    IL_00ab:  ldstr      "users"
    IL_00b0:  call       string VisualSVN.Core.Licensing.LicenseInformationFormatter::FormatNumeral(int32,
                                                                                                    string,
                                                                                                    string)
    IL_00b5:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::AppendFormat(string,
                                                                                                                              object,
                                                                                                                              object)
    IL_00ba:  pop
    IL_00bb:  ret

    IL_00bc:  ldarg.1
    IL_00bd:  ldfld      valuetype VisualSVN.Core.Licensing.LicenseBinding VisualSVN.Core.Licensing.License::Binding
    IL_00c2:  brtrue.s   IL_0118

    IL_00c4:  ldarg.0
    IL_00c5:  ldstr      "Licensed to:\t{0}\r\n"
    IL_00ca:  ldarg.1
    IL_00cb:  ldfld      string VisualSVN.Core.Licensing.License::LicensedTo
    IL_00d0:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::AppendFormat(string,
                                                                                                                              object)
    IL_00d5:  pop
    IL_00d6:  ret

    IL_00d7:  ldarg.1
    IL_00d8:  ldfld      int32 VisualSVN.Core.Licensing.License::Capacity
    IL_00dd:  ldc.i4.1
    IL_00de:  bne.un.s   IL_00f3

    IL_00e0:  ldarg.0
    IL_00e1:  ldstr      "Licensed to:\t{0}\r\n"
    IL_00e6:  ldarg.1
    IL_00e7:  ldfld      string VisualSVN.Core.Licensing.License::LicensedTo
    IL_00ec:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::AppendFormat(string,
                                                                                                                              object)
    IL_00f1:  pop
    IL_00f2:  ret

    IL_00f3:  ldarg.0
    IL_00f4:  ldstr      "Licensed to:\t{0} (all members)\r\n"
    IL_00f9:  ldarg.1
    IL_00fa:  ldfld      string VisualSVN.Core.Licensing.License::LicensedTo
    IL_00ff:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::AppendFormat(string,
                                                                                                                              object)
    IL_0104:  pop
    IL_0105:  ret

    IL_0106:  ldarg.0
    IL_0107:  ldstr      "Licensed to:\t{0}\r\n"
    IL_010c:  ldarg.1
    IL_010d:  ldfld      string VisualSVN.Core.Licensing.License::LicensedTo
    IL_0112:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::AppendFormat(string,
                                                                                                                              object)
    IL_0117:  pop
    IL_0118:  ret
  } // end of method LicenseInformationFormatter::AppendLicensedToInfo

  .method private hidebysig static void  AppendLicenseExpirationInfo(class [mscorlib]System.Text.StringBuilder builder,
                                                                     class VisualSVN.Core.Licensing.License license,
                                                                     valuetype [mscorlib]System.DateTime now) cil managed
  {
    // 代码大小       122 (0x7a)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  ldarg.2
    IL_0002:  call       bool VisualSVN.Core.Licensing.LicenseVerificator::IsExpired(class VisualSVN.Core.Licensing.License,
                                                                                     valuetype [mscorlib]System.DateTime)
    IL_0007:  brfalse.s  IL_0021

    IL_0009:  ldarg.0
    IL_000a:  ldstr      "License expired on {0:d}\r\n"
    IL_000f:  ldarg.1
    IL_0010:  ldfld      valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.License::EndTime
    IL_0015:  box        [mscorlib]System.DateTime
    IL_001a:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::AppendFormat(string,
                                                                                                                              object)
    IL_001f:  pop
    IL_0020:  ret

    IL_0021:  ldarg.1
    IL_0022:  ldarg.2
    IL_0023:  call       bool VisualSVN.Core.Licensing.LicenseVerificator::IsStarted(class VisualSVN.Core.Licensing.License,
                                                                                     valuetype [mscorlib]System.DateTime)
    IL_0028:  brtrue.s   IL_0042

    IL_002a:  ldarg.0
    IL_002b:  ldstr      "License will be valid from {0:d}\r\n"
    IL_0030:  ldarg.1
    IL_0031:  ldfld      valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.License::StartTime
    IL_0036:  box        [mscorlib]System.DateTime
    IL_003b:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::AppendFormat(string,
                                                                                                                              object)
    IL_0040:  pop
    IL_0041:  ret

    IL_0042:  ldarg.1
    IL_0043:  ldarg.2
    IL_0044:  call       int32 VisualSVN.Core.Licensing.LicenseVerificator::DaysToExpire(class VisualSVN.Core.Licensing.License,
                                                                                         valuetype [mscorlib]System.DateTime)
    IL_0049:  stloc.0
    IL_004a:  ldloc.0
    IL_004b:  ldc.i4.s   30
    IL_004d:  bgt.s      IL_0062

    IL_004f:  ldarg.0
    IL_0050:  ldstr      "License expires in {0} day(s)\r\n"
    IL_0055:  ldloc.0
    IL_0056:  box        [mscorlib]System.Int32
    IL_005b:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::AppendFormat(string,
                                                                                                                              object)
    IL_0060:  pop
    IL_0061:  ret

    IL_0062:  ldarg.0
    IL_0063:  ldstr      "License expires on {0:d}\r\n"
    IL_0068:  ldarg.1
    IL_0069:  ldfld      valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.License::EndTime
    IL_006e:  box        [mscorlib]System.DateTime
    IL_0073:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::AppendFormat(string,
                                                                                                                              object)
    IL_0078:  pop
    IL_0079:  ret
  } // end of method LicenseInformationFormatter::AppendLicenseExpirationInfo

  .method private hidebysig static void  AppendLicenseOutdatedInfo(class [mscorlib]System.Text.StringBuilder builder) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "Your license is not valid for VisualSVN 7.x."
    IL_0006:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::AppendLine(string)
    IL_000b:  pop
    IL_000c:  ret
  } // end of method LicenseInformationFormatter::AppendLicenseOutdatedInfo

  .method private hidebysig static void  AppendUpgradeEvaluationExpirationInfo(class [mscorlib]System.Text.StringBuilder builder,
                                                                               class VisualSVN.Core.Licensing.License license,
                                                                               valuetype [mscorlib]System.DateTime now) cil managed
  {
    // 代码大小       65 (0x41)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  ldarg.2
    IL_0002:  call       bool VisualSVN.Core.Licensing.LicenseVerificator::IsExpired(class VisualSVN.Core.Licensing.License,
                                                                                     valuetype [mscorlib]System.DateTime)
    IL_0007:  brtrue.s   IL_0040

    IL_0009:  ldarg.1
    IL_000a:  ldarg.2
    IL_000b:  call       int32 VisualSVN.Core.Licensing.LicenseVerificator::DaysToExpire(class VisualSVN.Core.Licensing.License,
                                                                                         valuetype [mscorlib]System.DateTime)
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.s   30
    IL_0014:  bgt.s      IL_0029

    IL_0016:  ldarg.0
    IL_0017:  ldstr      "Temporary evaluation license expires in {0} day(s)\r\n"
    IL_001c:  ldloc.0
    IL_001d:  box        [mscorlib]System.Int32
    IL_0022:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::AppendFormat(string,
                                                                                                                              object)
    IL_0027:  pop
    IL_0028:  ret

    IL_0029:  ldarg.0
    IL_002a:  ldstr      "Temporary evaluation license expires on {0:d}\r\n"
    IL_002f:  ldarg.1
    IL_0030:  ldfld      valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.License::EndTime
    IL_0035:  box        [mscorlib]System.DateTime
    IL_003a:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::AppendFormat(string,
                                                                                                                              object)
    IL_003f:  pop
    IL_0040:  ret
  } // end of method LicenseInformationFormatter::AppendUpgradeEvaluationExpirationInfo

} // end of class VisualSVN.Core.Licensing.LicenseInformationFormatter

.class public abstract auto ansi sealed beforefieldinit VisualSVN.Core.Licensing.LicenseVerificator
       extends [mscorlib]System.Object
{
  .method public hidebysig static bool  IsValid(class VisualSVN.Core.Licensing.License license,
                                                valuetype [mscorlib]System.DateTime now) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  brfalse.s  IL_0027

    IL_0003:  ldarg.0
    IL_0004:  call       bool VisualSVN.Core.Licensing.LicenseVerificator::IsCorrect(class VisualSVN.Core.Licensing.License)
    IL_0009:  brfalse.s  IL_0027

    IL_000b:  ldarg.0
    IL_000c:  ldarg.1
    IL_000d:  call       bool VisualSVN.Core.Licensing.LicenseVerificator::IsStarted(class VisualSVN.Core.Licensing.License,
                                                                                     valuetype [mscorlib]System.DateTime)
    IL_0012:  brfalse.s  IL_0027

    IL_0014:  ldarg.0
    IL_0015:  ldarg.1
    IL_0016:  call       bool VisualSVN.Core.Licensing.LicenseVerificator::IsExpired(class VisualSVN.Core.Licensing.License,
                                                                                     valuetype [mscorlib]System.DateTime)
    IL_001b:  brtrue.s   IL_0027

    IL_001d:  ldarg.0
    IL_001e:  call       bool VisualSVN.Core.Licensing.LicenseVerificator::IsOutdatedForCurrentVersion(class VisualSVN.Core.Licensing.License)
    IL_0023:  ldc.i4.0
    IL_0024:  ceq
    IL_0026:  ret

    IL_0027:  ldc.i4.0
    IL_0028:  ret
  } // end of method LicenseVerificator::IsValid

  .method public hidebysig static bool  IsCorrect(class VisualSVN.Core.Licensing.License license) cil managed
  {
    // 代码大小       360 (0x168)
    .maxstack  2
    .locals init (valuetype VisualSVN.Core.Licensing.LicenseType V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      uint8 VisualSVN.Core.Licensing.License::Version
    IL_0006:  ldc.i4.1
    IL_0007:  blt.s      IL_0012

    IL_0009:  ldarg.0
    IL_000a:  ldfld      uint8 VisualSVN.Core.Licensing.License::Version
    IL_000f:  ldc.i4.2
    IL_0010:  ble.s      IL_0014

    IL_0012:  ldc.i4.0
    IL_0013:  ret

    IL_0014:  ldarg.0
    IL_0015:  ldfld      valuetype VisualSVN.Core.Licensing.LicenseType VisualSVN.Core.Licensing.License::Type
    IL_001a:  stloc.0
    IL_001b:  ldloc.0
    IL_001c:  switch     ( 
                          IL_004a,
                          IL_0061,
                          IL_0079,
                          IL_0096,
                          IL_00cb,
                          IL_00b3,
                          IL_0106,
                          IL_00f0,
                          IL_013b)
    IL_0045:  br         IL_0164

    IL_004a:  ldarg.0
    IL_004b:  ldfld      valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.License::EndTime
    IL_0050:  ldsfld     valuetype [mscorlib]System.DateTime [mscorlib]System.DateTime::MaxValue
    IL_0055:  call       bool [mscorlib]System.DateTime::op_Equality(valuetype [mscorlib]System.DateTime,
                                                                     valuetype [mscorlib]System.DateTime)
    IL_005a:  brfalse    IL_0166

    IL_005f:  ldc.i4.0
    IL_0060:  ret

    IL_0061:  ldarg.0
    IL_0062:  ldfld      valuetype VisualSVN.Core.Licensing.LicenseBinding VisualSVN.Core.Licensing.License::Binding
    IL_0067:  brfalse.s  IL_006b

    IL_0069:  ldc.i4.0
    IL_006a:  ret

    IL_006b:  ldarg.0
    IL_006c:  ldfld      int32 VisualSVN.Core.Licensing.License::Capacity
    IL_0071:  ldc.i4.1
    IL_0072:  beq        IL_0166

    IL_0077:  ldc.i4.0
    IL_0078:  ret

    IL_0079:  ldarg.0
    IL_007a:  ldfld      valuetype VisualSVN.Core.Licensing.LicenseBinding VisualSVN.Core.Licensing.License::Binding
    IL_007f:  ldc.i4.1
    IL_0080:  beq.s      IL_0084

    IL_0082:  ldc.i4.0
    IL_0083:  ret

    IL_0084:  ldarg.0
    IL_0085:  ldfld      int32 VisualSVN.Core.Licensing.License::Capacity
    IL_008a:  ldc.i4     0x7fffffff
    IL_008f:  bne.un     IL_0166

    IL_0094:  ldc.i4.0
    IL_0095:  ret

    IL_0096:  ldarg.0
    IL_0097:  ldfld      valuetype VisualSVN.Core.Licensing.LicenseBinding VisualSVN.Core.Licensing.License::Binding
    IL_009c:  ldc.i4.1
    IL_009d:  beq.s      IL_00a1

    IL_009f:  ldc.i4.0
    IL_00a0:  ret

    IL_00a1:  ldarg.0
    IL_00a2:  ldfld      int32 VisualSVN.Core.Licensing.License::Capacity
    IL_00a7:  ldc.i4     0x7fffffff
    IL_00ac:  bne.un     IL_0166

    IL_00b1:  ldc.i4.0
    IL_00b2:  ret

    IL_00b3:  ldarg.0
    IL_00b4:  ldfld      valuetype VisualSVN.Core.Licensing.LicenseBinding VisualSVN.Core.Licensing.License::Binding
    IL_00b9:  brfalse.s  IL_00bd

    IL_00bb:  ldc.i4.0
    IL_00bc:  ret

    IL_00bd:  ldarg.0
    IL_00be:  ldfld      int32 VisualSVN.Core.Licensing.License::Capacity
    IL_00c3:  ldc.i4.1
    IL_00c4:  beq        IL_0166

    IL_00c9:  ldc.i4.0
    IL_00ca:  ret

    IL_00cb:  ldarg.0
    IL_00cc:  ldfld      valuetype VisualSVN.Core.Licensing.LicenseBinding VisualSVN.Core.Licensing.License::Binding
    IL_00d1:  brfalse.s  IL_00d5

    IL_00d3:  ldc.i4.0
    IL_00d4:  ret

    IL_00d5:  ldarg.0
    IL_00d6:  ldfld      int32 VisualSVN.Core.Licensing.License::Capacity
    IL_00db:  ldc.i4.1
    IL_00dc:  beq        IL_0166

    IL_00e1:  ldarg.0
    IL_00e2:  ldfld      int32 VisualSVN.Core.Licensing.License::Capacity
    IL_00e7:  ldc.i4     0x7fffffff
    IL_00ec:  beq.s      IL_0166

    IL_00ee:  ldc.i4.0
    IL_00ef:  ret

    IL_00f0:  ldarg.0
    IL_00f1:  ldfld      valuetype VisualSVN.Core.Licensing.LicenseBinding VisualSVN.Core.Licensing.License::Binding
    IL_00f6:  ldc.i4.2
    IL_00f7:  beq.s      IL_00fb

    IL_00f9:  ldc.i4.0
    IL_00fa:  ret

    IL_00fb:  ldarg.0
    IL_00fc:  ldfld      int32 VisualSVN.Core.Licensing.License::Capacity
    IL_0101:  ldc.i4.1
    IL_0102:  beq.s      IL_0166

    IL_0104:  ldc.i4.0
    IL_0105:  ret

    IL_0106:  ldarg.0
    IL_0107:  ldfld      valuetype VisualSVN.Core.Licensing.LicenseBinding VisualSVN.Core.Licensing.License::Binding
    IL_010c:  ldc.i4.1
    IL_010d:  beq.s      IL_0119

    IL_010f:  ldarg.0
    IL_0110:  ldfld      valuetype VisualSVN.Core.Licensing.LicenseBinding VisualSVN.Core.Licensing.License::Binding
    IL_0115:  brfalse.s  IL_0119

    IL_0117:  ldc.i4.0
    IL_0118:  ret

    IL_0119:  ldarg.0
    IL_011a:  ldfld      int32 VisualSVN.Core.Licensing.License::Capacity
    IL_011f:  ldc.i4     0x7fffffff
    IL_0124:  bne.un.s   IL_0128

    IL_0126:  ldc.i4.0
    IL_0127:  ret

    IL_0128:  ldarg.0
    IL_0129:  ldfld      valuetype VisualSVN.Core.Licensing.LicenseBinding VisualSVN.Core.Licensing.License::Binding
    IL_012e:  brtrue.s   IL_0166

    IL_0130:  ldarg.0
    IL_0131:  ldfld      int32 VisualSVN.Core.Licensing.License::Capacity
    IL_0136:  ldc.i4.1
    IL_0137:  beq.s      IL_0166

    IL_0139:  ldc.i4.0
    IL_013a:  ret

    IL_013b:  ldarg.0
    IL_013c:  ldfld      valuetype VisualSVN.Core.Licensing.LicenseBinding VisualSVN.Core.Licensing.License::Binding
    IL_0141:  brfalse.s  IL_0145

    IL_0143:  ldc.i4.0
    IL_0144:  ret

    IL_0145:  ldarg.0
    IL_0146:  ldfld      int32 VisualSVN.Core.Licensing.License::Capacity
    IL_014b:  ldc.i4.1
    IL_014c:  beq.s      IL_0150

    IL_014e:  ldc.i4.0
    IL_014f:  ret

    IL_0150:  ldarg.0
    IL_0151:  ldfld      valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.License::EndTime
    IL_0156:  ldsfld     valuetype [mscorlib]System.DateTime [mscorlib]System.DateTime::MaxValue
    IL_015b:  call       bool [mscorlib]System.DateTime::op_Inequality(valuetype [mscorlib]System.DateTime,
                                                                       valuetype [mscorlib]System.DateTime)
    IL_0160:  brfalse.s  IL_0166

    IL_0162:  ldc.i4.0
    IL_0163:  ret

    IL_0164:  ldc.i4.0
    IL_0165:  ret

    IL_0166:  ldc.i4.1
    IL_0167:  ret
  } // end of method LicenseVerificator::IsCorrect

  .method public hidebysig static bool  IsExpired(class VisualSVN.Core.Licensing.License license,
                                                  valuetype [mscorlib]System.DateTime now) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.License::EndTime
    IL_0006:  ldarg.1
    IL_0007:  call       bool [mscorlib]System.DateTime::op_LessThan(valuetype [mscorlib]System.DateTime,
                                                                     valuetype [mscorlib]System.DateTime)
    IL_000c:  ret
  } // end of method LicenseVerificator::IsExpired

  .method public hidebysig static bool  IsOutdatedForLicensingMilestone(class VisualSVN.Core.Licensing.License license,
                                                                        int32 licensingMilestone) cil managed
  {
    // 代码大小       77 (0x4d)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.License::PurchaseDate
    IL_0006:  ldsfld     valuetype [mscorlib]System.DateTime [mscorlib]System.DateTime::MinValue
    IL_000b:  call       bool [mscorlib]System.DateTime::op_Equality(valuetype [mscorlib]System.DateTime,
                                                                     valuetype [mscorlib]System.DateTime)
    IL_0010:  brtrue.s   IL_0024

    IL_0012:  ldarg.0
    IL_0013:  ldfld      valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.License::PurchaseDate
    IL_0018:  ldsfld     valuetype [mscorlib]System.DateTime [mscorlib]System.DateTime::MaxValue
    IL_001d:  call       bool [mscorlib]System.DateTime::op_Equality(valuetype [mscorlib]System.DateTime,
                                                                     valuetype [mscorlib]System.DateTime)
    IL_0022:  brfalse.s  IL_0026

    IL_0024:  ldc.i4.0
    IL_0025:  ret

    IL_0026:  ldarg.0
    IL_0027:  ldfld      valuetype VisualSVN.Core.Licensing.LicenseType VisualSVN.Core.Licensing.License::Type
    IL_002c:  ldc.i4.4
    IL_002d:  bne.un.s   IL_0031

    IL_002f:  ldc.i4.0
    IL_0030:  ret

    IL_0031:  ldarg.0
    IL_0032:  call       bool VisualSVN.Core.Licensing.LicenseVerificator::IsTimeLimited(class VisualSVN.Core.Licensing.License)
    IL_0037:  brfalse.s  IL_003b

    IL_0039:  ldc.i4.0
    IL_003a:  ret

    IL_003b:  ldarg.0
    IL_003c:  ldfld      valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.License::PurchaseDate
    IL_0041:  ldarg.1
    IL_0042:  call       valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.LicensingMilestone::GetGracePeriodDate(int32)
    IL_0047:  call       bool [mscorlib]System.DateTime::op_LessThan(valuetype [mscorlib]System.DateTime,
                                                                     valuetype [mscorlib]System.DateTime)
    IL_004c:  ret
  } // end of method LicenseVerificator::IsOutdatedForLicensingMilestone

  .method public hidebysig static bool  IsOutdatedForCurrentVersion(class VisualSVN.Core.Licensing.License license) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.7
    IL_0002:  call       bool VisualSVN.Core.Licensing.LicenseVerificator::IsOutdatedForLicensingMilestone(class VisualSVN.Core.Licensing.License,
                                                                                                           int32)
    IL_0007:  ret
  } // end of method LicenseVerificator::IsOutdatedForCurrentVersion

  .method public hidebysig static bool  IsExpiringSoon(class VisualSVN.Core.Licensing.License license,
                                                       valuetype [mscorlib]System.DateTime now) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       int32 VisualSVN.Core.Licensing.LicenseVerificator::DaysToExpire(class VisualSVN.Core.Licensing.License,
                                                                                         valuetype [mscorlib]System.DateTime)
    IL_0007:  ldc.i4.7
    IL_0008:  cgt
    IL_000a:  ldc.i4.0
    IL_000b:  ceq
    IL_000d:  ret
  } // end of method LicenseVerificator::IsExpiringSoon

  .method public hidebysig static int32  DaysToExpire(class VisualSVN.Core.Licensing.License license,
                                                      valuetype [mscorlib]System.DateTime now) cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  2
    .locals init (valuetype [mscorlib]System.TimeSpan V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.License::EndTime
    IL_0006:  ldarg.1
    IL_0007:  call       valuetype [mscorlib]System.TimeSpan [mscorlib]System.DateTime::op_Subtraction(valuetype [mscorlib]System.DateTime,
                                                                                                       valuetype [mscorlib]System.DateTime)
    IL_000c:  stloc.0
    IL_000d:  ldloca.s   V_0
    IL_000f:  call       instance float64 [mscorlib]System.TimeSpan::get_TotalDays()
    IL_0014:  conv.i4
    IL_0015:  ret
  } // end of method LicenseVerificator::DaysToExpire

  .method public hidebysig static bool  IsStarted(class VisualSVN.Core.Licensing.License license,
                                                  valuetype [mscorlib]System.DateTime now) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.License::StartTime
    IL_0006:  ldarg.1
    IL_0007:  call       bool [mscorlib]System.DateTime::op_LessThanOrEqual(valuetype [mscorlib]System.DateTime,
                                                                            valuetype [mscorlib]System.DateTime)
    IL_000c:  ret
  } // end of method LicenseVerificator::IsStarted

  .method public hidebysig static bool  IsTimeLimited(class VisualSVN.Core.Licensing.License license) cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.License::StartTime
    IL_0006:  ldsfld     valuetype [mscorlib]System.DateTime [mscorlib]System.DateTime::MinValue
    IL_000b:  call       bool [mscorlib]System.DateTime::op_Inequality(valuetype [mscorlib]System.DateTime,
                                                                       valuetype [mscorlib]System.DateTime)
    IL_0010:  brfalse.s  IL_0023

    IL_0012:  ldarg.0
    IL_0013:  ldfld      valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.License::EndTime
    IL_0018:  ldsfld     valuetype [mscorlib]System.DateTime [mscorlib]System.DateTime::MaxValue
    IL_001d:  call       bool [mscorlib]System.DateTime::op_Inequality(valuetype [mscorlib]System.DateTime,
                                                                       valuetype [mscorlib]System.DateTime)
    IL_0022:  ret

    IL_0023:  ldc.i4.0
    IL_0024:  ret
  } // end of method LicenseVerificator::IsTimeLimited

  .method public hidebysig static bool  IsPregenerated(class VisualSVN.Core.Licensing.License license) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool VisualSVN.Core.Licensing.License::IsPregenerated
    IL_0006:  ret
  } // end of method LicenseVerificator::IsPregenerated

} // end of class VisualSVN.Core.Licensing.LicenseVerificator

.class public auto ansi beforefieldinit VisualSVN.Core.Licensing.LicensingException
       extends [mscorlib]System.Exception
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string message,
                               class [mscorlib]System.Exception inner) cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void [mscorlib]System.Exception::.ctor(string,
                                                                         class [mscorlib]System.Exception)
    IL_0008:  ret
  } // end of method LicensingException::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string message) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void [mscorlib]System.Exception::.ctor(string)
    IL_0007:  ret
  } // end of method LicensingException::.ctor

} // end of class VisualSVN.Core.Licensing.LicensingException

.class public abstract auto ansi sealed beforefieldinit VisualSVN.Core.Licensing.LicensingMilestone
       extends [mscorlib]System.Object
{
  .field public static literal int32 CurrentMilestone = int32(0x00000007)
  .field public static literal int32 PreviousMilestone = int32(0x00000006)
  .field private static initonly valuetype [mscorlib]System.DateTime VisualStudio2010Beta2ReleaseDate
  .field private static initonly valuetype [mscorlib]System.DateTime VisualStudio11DeveloperPreviewReleaseDate
  .field private static initonly valuetype [mscorlib]System.DateTime VisualStudio2013PreviewReleaseDate
  .field private static initonly valuetype [mscorlib]System.DateTime Milestone5GracePeriod
  .field private static initonly valuetype [mscorlib]System.DateTime Milestone6GracePeriod
  .field private static initonly valuetype [mscorlib]System.DateTime Milestone7GracePeriod
  .field private static initonly valuetype [mscorlib]System.DateTime[] GracePeriodMilestoneDates
  .method public hidebysig static valuetype [mscorlib]System.DateTime 
          GetGracePeriodDate(int32 licensingMilestone) cil managed
  {
    // 代码大小       52 (0x34)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.2
    IL_0002:  sub
    IL_0003:  stloc.0
    IL_0004:  ldloc.0
    IL_0005:  ldc.i4.0
    IL_0006:  bge.s      IL_0013

    IL_0008:  ldstr      "licensingMilestone"
    IL_000d:  newobj     instance void [mscorlib]System.ArgumentOutOfRangeException::.ctor(string)
    IL_0012:  throw

    IL_0013:  ldloc.0
    IL_0014:  ldsfld     valuetype [mscorlib]System.DateTime[] VisualSVN.Core.Licensing.LicensingMilestone::GracePeriodMilestoneDates
    IL_0019:  ldlen
    IL_001a:  conv.i4
    IL_001b:  blt.s      IL_0023

    IL_001d:  ldsfld     valuetype [mscorlib]System.DateTime [mscorlib]System.DateTime::MaxValue
    IL_0022:  ret

    IL_0023:  ldsfld     valuetype [mscorlib]System.DateTime[] VisualSVN.Core.Licensing.LicensingMilestone::GracePeriodMilestoneDates
    IL_0028:  ldloc.0
    IL_0029:  ldelema    [mscorlib]System.DateTime
    IL_002e:  ldobj      [mscorlib]System.DateTime
    IL_0033:  ret
  } // end of method LicensingMilestone::GetGracePeriodDate

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       225 (0xe1)
    .maxstack  3
    .locals init (valuetype [mscorlib]System.DateTime[] V_0)
    IL_0000:  ldc.i4     0x7d9
    IL_0005:  ldc.i4.s   10
    IL_0007:  ldc.i4.s   15
    IL_0009:  newobj     instance void [mscorlib]System.DateTime::.ctor(int32,
                                                                        int32,
                                                                        int32)
    IL_000e:  stsfld     valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.LicensingMilestone::VisualStudio2010Beta2ReleaseDate
    IL_0013:  ldc.i4     0x7db
    IL_0018:  ldc.i4.s   9
    IL_001a:  ldc.i4.s   16
    IL_001c:  newobj     instance void [mscorlib]System.DateTime::.ctor(int32,
                                                                        int32,
                                                                        int32)
    IL_0021:  stsfld     valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.LicensingMilestone::VisualStudio11DeveloperPreviewReleaseDate
    IL_0026:  ldc.i4     0x7dc
    IL_002b:  ldc.i4.s   12
    IL_002d:  ldc.i4.1
    IL_002e:  newobj     instance void [mscorlib]System.DateTime::.ctor(int32,
                                                                        int32,
                                                                        int32)
    IL_0033:  stsfld     valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.LicensingMilestone::VisualStudio2013PreviewReleaseDate
    IL_0038:  ldc.i4     0x7de
    IL_003d:  ldc.i4.6
    IL_003e:  ldc.i4.3
    IL_003f:  newobj     instance void [mscorlib]System.DateTime::.ctor(int32,
                                                                        int32,
                                                                        int32)
    IL_0044:  stsfld     valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.LicensingMilestone::Milestone5GracePeriod
    IL_0049:  ldc.i4     0x7e0
    IL_004e:  ldc.i4.3
    IL_004f:  ldc.i4.s   30
    IL_0051:  newobj     instance void [mscorlib]System.DateTime::.ctor(int32,
                                                                        int32,
                                                                        int32)
    IL_0056:  stsfld     valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.LicensingMilestone::Milestone6GracePeriod
    IL_005b:  ldc.i4     0x7e2
    IL_0060:  ldc.i4.s   12
    IL_0062:  ldc.i4.4
    IL_0063:  newobj     instance void [mscorlib]System.DateTime::.ctor(int32,
                                                                        int32,
                                                                        int32)
    IL_0068:  stsfld     valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.LicensingMilestone::Milestone7GracePeriod
    IL_006d:  ldc.i4.6
    IL_006e:  newarr     [mscorlib]System.DateTime
    IL_0073:  stloc.0
    IL_0074:  ldloc.0
    IL_0075:  ldc.i4.0
    IL_0076:  ldelema    [mscorlib]System.DateTime
    IL_007b:  ldsfld     valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.LicensingMilestone::VisualStudio2010Beta2ReleaseDate
    IL_0080:  stobj      [mscorlib]System.DateTime
    IL_0085:  ldloc.0
    IL_0086:  ldc.i4.1
    IL_0087:  ldelema    [mscorlib]System.DateTime
    IL_008c:  ldsfld     valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.LicensingMilestone::VisualStudio11DeveloperPreviewReleaseDate
    IL_0091:  stobj      [mscorlib]System.DateTime
    IL_0096:  ldloc.0
    IL_0097:  ldc.i4.2
    IL_0098:  ldelema    [mscorlib]System.DateTime
    IL_009d:  ldsfld     valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.LicensingMilestone::VisualStudio2013PreviewReleaseDate
    IL_00a2:  stobj      [mscorlib]System.DateTime
    IL_00a7:  ldloc.0
    IL_00a8:  ldc.i4.3
    IL_00a9:  ldelema    [mscorlib]System.DateTime
    IL_00ae:  ldsfld     valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.LicensingMilestone::Milestone5GracePeriod
    IL_00b3:  stobj      [mscorlib]System.DateTime
    IL_00b8:  ldloc.0
    IL_00b9:  ldc.i4.4
    IL_00ba:  ldelema    [mscorlib]System.DateTime
    IL_00bf:  ldsfld     valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.LicensingMilestone::Milestone6GracePeriod
    IL_00c4:  stobj      [mscorlib]System.DateTime
    IL_00c9:  ldloc.0
    IL_00ca:  ldc.i4.5
    IL_00cb:  ldelema    [mscorlib]System.DateTime
    IL_00d0:  ldsfld     valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.LicensingMilestone::Milestone7GracePeriod
    IL_00d5:  stobj      [mscorlib]System.DateTime
    IL_00da:  ldloc.0
    IL_00db:  stsfld     valuetype [mscorlib]System.DateTime[] VisualSVN.Core.Licensing.LicensingMilestone::GracePeriodMilestoneDates
    IL_00e0:  ret
  } // end of method LicensingMilestone::.cctor

} // end of class VisualSVN.Core.Licensing.LicensingMilestone

.class public abstract auto ansi sealed beforefieldinit VisualSVN.Core.Licensing.NewLicenseSerializer
       extends [mscorlib]System.Object
{
  .method public hidebysig static class VisualSVN.Core.Licensing.License 
          Deserialize(string key,
                      class VisualSVN.Core.IDecoder decoder) cil managed
  {
    // 代码大小       47 (0x2f)
    .maxstack  2
    .locals init (uint8[] V_0,
             uint8[] V_1,
             class [mscorlib]System.IO.MemoryStream V_2,
             class VisualSVN.Core.Licensing.License V_3,
             class VisualSVN.Core.Licensing.License V_4)
    IL_0000:  ldarg.0
    IL_0001:  call       uint8[] VisualSVN.Core.Licensing.Base32Decoder::Decode(string)
    IL_0006:  stloc.0
    IL_0007:  ldarg.1
    IL_0008:  ldloc.0
    IL_0009:  callvirt   instance uint8[] VisualSVN.Core.IDecoder::Decode(uint8[])
    IL_000e:  stloc.1
    IL_000f:  ldloc.1
    IL_0010:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor(uint8[])
    IL_0015:  stloc.2
    .try
    {
      IL_0016:  ldloc.2
      IL_0017:  call       class VisualSVN.Core.Licensing.License VisualSVN.Core.Licensing.NewLicenseSerializer::ReadLicenseFromStream(class [mscorlib]System.IO.Stream)
      IL_001c:  stloc.3
      IL_001d:  ldloc.3
      IL_001e:  stloc.s    V_4
      IL_0020:  leave.s    IL_002c

    }  // end .try
    finally
    {
      IL_0022:  ldloc.2
      IL_0023:  brfalse.s  IL_002b

      IL_0025:  ldloc.2
      IL_0026:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_002b:  endfinally
    }  // end handler
    IL_002c:  ldloc.s    V_4
    IL_002e:  ret
  } // end of method NewLicenseSerializer::Deserialize

  .method public hidebysig static string 
          Serialize(class VisualSVN.Core.Licensing.License license,
                    class VisualSVN.Core.IEncoder encoder) cil managed
  {
    // 代码大小       47 (0x2f)
    .maxstack  2
    .locals init (uint8[] V_0,
             class [mscorlib]System.IO.MemoryStream V_1,
             uint8[] V_2)
    IL_0000:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor()
    IL_0005:  stloc.1
    .try
    {
      IL_0006:  ldarg.0
      IL_0007:  ldloc.1
      IL_0008:  call       void VisualSVN.Core.Licensing.NewLicenseSerializer::WriteLicenseToStream(class VisualSVN.Core.Licensing.License,
                                                                                                    class [mscorlib]System.IO.Stream)
      IL_000d:  ldloc.1
      IL_000e:  callvirt   instance uint8[] [mscorlib]System.IO.MemoryStream::ToArray()
      IL_0013:  stloc.0
      IL_0014:  leave.s    IL_0020

    }  // end .try
    finally
    {
      IL_0016:  ldloc.1
      IL_0017:  brfalse.s  IL_001f

      IL_0019:  ldloc.1
      IL_001a:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_001f:  endfinally
    }  // end handler
    IL_0020:  ldarg.1
    IL_0021:  ldloc.0
    IL_0022:  callvirt   instance uint8[] VisualSVN.Core.IEncoder::Encode(uint8[])
    IL_0027:  stloc.2
    IL_0028:  ldloc.2
    IL_0029:  call       string VisualSVN.Core.Licensing.Base32Encoder::Encode(uint8[])
    IL_002e:  ret
  } // end of method NewLicenseSerializer::Serialize

  .method private hidebysig static void  WriteLicenseToStream(class VisualSVN.Core.Licensing.License license,
                                                              class [mscorlib]System.IO.Stream 'stream') cil managed
  {
    // 代码大小       146 (0x92)
    .maxstack  2
    .locals init (class [mscorlib]System.IO.BinaryWriter V_0)
    IL_0000:  ldarg.1
    IL_0001:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_UTF8()
    IL_0006:  newobj     instance void [mscorlib]System.IO.BinaryWriter::.ctor(class [mscorlib]System.IO.Stream,
                                                                               class [mscorlib]System.Text.Encoding)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldarg.0
    IL_000e:  ldfld      uint8 VisualSVN.Core.Licensing.License::Version
    IL_0013:  callvirt   instance void [mscorlib]System.IO.BinaryWriter::Write(uint8)
    IL_0018:  ldloc.0
    IL_0019:  ldarg.0
    IL_001a:  ldfld      valuetype VisualSVN.Core.Licensing.LicenseType VisualSVN.Core.Licensing.License::Type
    IL_001f:  conv.u1
    IL_0020:  callvirt   instance void [mscorlib]System.IO.BinaryWriter::Write(uint8)
    IL_0025:  ldloc.0
    IL_0026:  ldarg.0
    IL_0027:  ldfld      valuetype VisualSVN.Core.Licensing.LicenseBinding VisualSVN.Core.Licensing.License::Binding
    IL_002c:  conv.u1
    IL_002d:  callvirt   instance void [mscorlib]System.IO.BinaryWriter::Write(uint8)
    IL_0032:  ldloc.0
    IL_0033:  ldarg.0
    IL_0034:  ldfld      int32 VisualSVN.Core.Licensing.License::Capacity
    IL_0039:  callvirt   instance void [mscorlib]System.IO.BinaryWriter::Write(int32)
    IL_003e:  ldloc.0
    IL_003f:  ldarg.0
    IL_0040:  ldfld      string VisualSVN.Core.Licensing.License::LicensedTo
    IL_0045:  call       void VisualSVN.Core.Licensing.NewLicenseSerializer::WriteBytePrefixedString(class [mscorlib]System.IO.BinaryWriter,
                                                                                                     string)
    IL_004a:  ldloc.0
    IL_004b:  ldarg.0
    IL_004c:  ldfld      valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.License::StartTime
    IL_0051:  call       void VisualSVN.Core.Licensing.NewLicenseSerializer::WriteDateTime(class [mscorlib]System.IO.BinaryWriter,
                                                                                           valuetype [mscorlib]System.DateTime)
    IL_0056:  ldloc.0
    IL_0057:  ldarg.0
    IL_0058:  ldfld      valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.License::EndTime
    IL_005d:  call       void VisualSVN.Core.Licensing.NewLicenseSerializer::WriteDateTime(class [mscorlib]System.IO.BinaryWriter,
                                                                                           valuetype [mscorlib]System.DateTime)
    IL_0062:  ldloc.0
    IL_0063:  ldarg.0
    IL_0064:  ldflda     valuetype [mscorlib]System.Guid VisualSVN.Core.Licensing.License::LicenseId
    IL_0069:  constrained. [mscorlib]System.Guid
    IL_006f:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_0074:  call       void VisualSVN.Core.Licensing.NewLicenseSerializer::WriteBytePrefixedString(class [mscorlib]System.IO.BinaryWriter,
                                                                                                     string)
    IL_0079:  ldloc.0
    IL_007a:  ldarg.0
    IL_007b:  ldfld      string VisualSVN.Core.Licensing.License::PurchaseId
    IL_0080:  call       void VisualSVN.Core.Licensing.NewLicenseSerializer::WriteBytePrefixedString(class [mscorlib]System.IO.BinaryWriter,
                                                                                                     string)
    IL_0085:  ldloc.0
    IL_0086:  ldarg.0
    IL_0087:  ldfld      valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.License::PurchaseDate
    IL_008c:  call       void VisualSVN.Core.Licensing.NewLicenseSerializer::WriteDateTime(class [mscorlib]System.IO.BinaryWriter,
                                                                                           valuetype [mscorlib]System.DateTime)
    IL_0091:  ret
  } // end of method NewLicenseSerializer::WriteLicenseToStream

  .method private hidebysig static class VisualSVN.Core.Licensing.License 
          ReadLicenseFromStream(class [mscorlib]System.IO.Stream 'stream') cil managed
  {
    // 代码大小       145 (0x91)
    .maxstack  2
    .locals init (class [mscorlib]System.IO.BinaryReader V_0,
             class VisualSVN.Core.Licensing.License V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_UTF8()
    IL_0006:  newobj     instance void [mscorlib]System.IO.BinaryReader::.ctor(class [mscorlib]System.IO.Stream,
                                                                               class [mscorlib]System.Text.Encoding)
    IL_000b:  stloc.0
    IL_000c:  newobj     instance void VisualSVN.Core.Licensing.License::.ctor()
    IL_0011:  stloc.1
    IL_0012:  ldloc.1
    IL_0013:  ldloc.0
    IL_0014:  callvirt   instance uint8 [mscorlib]System.IO.BinaryReader::ReadByte()
    IL_0019:  stfld      uint8 VisualSVN.Core.Licensing.License::Version
    IL_001e:  ldloc.1
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance uint8 [mscorlib]System.IO.BinaryReader::ReadByte()
    IL_0025:  stfld      valuetype VisualSVN.Core.Licensing.LicenseType VisualSVN.Core.Licensing.License::Type
    IL_002a:  ldloc.1
    IL_002b:  ldloc.0
    IL_002c:  callvirt   instance uint8 [mscorlib]System.IO.BinaryReader::ReadByte()
    IL_0031:  stfld      valuetype VisualSVN.Core.Licensing.LicenseBinding VisualSVN.Core.Licensing.License::Binding
    IL_0036:  ldloc.1
    IL_0037:  ldloc.0
    IL_0038:  callvirt   instance int32 [mscorlib]System.IO.BinaryReader::ReadInt32()
    IL_003d:  stfld      int32 VisualSVN.Core.Licensing.License::Capacity
    IL_0042:  ldloc.1
    IL_0043:  ldloc.0
    IL_0044:  call       string VisualSVN.Core.Licensing.NewLicenseSerializer::ReadBytePrefixedString(class [mscorlib]System.IO.BinaryReader)
    IL_0049:  stfld      string VisualSVN.Core.Licensing.License::LicensedTo
    IL_004e:  ldloc.1
    IL_004f:  ldloc.0
    IL_0050:  call       valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.NewLicenseSerializer::ReadDateTime(class [mscorlib]System.IO.BinaryReader)
    IL_0055:  stfld      valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.License::StartTime
    IL_005a:  ldloc.1
    IL_005b:  ldloc.0
    IL_005c:  call       valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.NewLicenseSerializer::ReadDateTime(class [mscorlib]System.IO.BinaryReader)
    IL_0061:  stfld      valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.License::EndTime
    IL_0066:  ldloc.1
    IL_0067:  ldloc.0
    IL_0068:  call       string VisualSVN.Core.Licensing.NewLicenseSerializer::ReadBytePrefixedString(class [mscorlib]System.IO.BinaryReader)
    IL_006d:  newobj     instance void [mscorlib]System.Guid::.ctor(string)
    IL_0072:  stfld      valuetype [mscorlib]System.Guid VisualSVN.Core.Licensing.License::LicenseId
    IL_0077:  ldloc.1
    IL_0078:  ldloc.0
    IL_0079:  call       string VisualSVN.Core.Licensing.NewLicenseSerializer::ReadBytePrefixedString(class [mscorlib]System.IO.BinaryReader)
    IL_007e:  stfld      string VisualSVN.Core.Licensing.License::PurchaseId
    IL_0083:  ldloc.1
    IL_0084:  ldloc.0
    IL_0085:  call       valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.NewLicenseSerializer::ReadDateTime(class [mscorlib]System.IO.BinaryReader)
    IL_008a:  stfld      valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.License::PurchaseDate
    IL_008f:  ldloc.1
    IL_0090:  ret
  } // end of method NewLicenseSerializer::ReadLicenseFromStream

  .method private hidebysig static void  WriteDateTime(class [mscorlib]System.IO.BinaryWriter writer,
                                                       valuetype [mscorlib]System.DateTime 'date') cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarga.s   'date'
    IL_0003:  call       instance int64 [mscorlib]System.DateTime::get_Ticks()
    IL_0008:  callvirt   instance void [mscorlib]System.IO.BinaryWriter::Write(int64)
    IL_000d:  ret
  } // end of method NewLicenseSerializer::WriteDateTime

  .method private hidebysig static valuetype [mscorlib]System.DateTime 
          ReadDateTime(class [mscorlib]System.IO.BinaryReader reader) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance int64 [mscorlib]System.IO.BinaryReader::ReadInt64()
    IL_0006:  newobj     instance void [mscorlib]System.DateTime::.ctor(int64)
    IL_000b:  ret
  } // end of method NewLicenseSerializer::ReadDateTime

  .method private hidebysig static void  WriteBytePrefixedString(class [mscorlib]System.IO.BinaryWriter writer,
                                                                 string str) cil managed
  {
    // 代码大小       56 (0x38)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_0006:  ldc.i4     0xff
    IL_000b:  ble.s      IL_001e

    IL_000d:  ldstr      "str"
    IL_0012:  ldarg.1
    IL_0013:  ldstr      "String is too long."
    IL_0018:  newobj     instance void [mscorlib]System.ArgumentOutOfRangeException::.ctor(string,
                                                                                           object,
                                                                                           string)
    IL_001d:  throw

    IL_001e:  ldarg.0
    IL_001f:  ldarg.1
    IL_0020:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_0025:  conv.u1
    IL_0026:  callvirt   instance void [mscorlib]System.IO.BinaryWriter::Write(uint8)
    IL_002b:  ldarg.0
    IL_002c:  ldarg.1
    IL_002d:  callvirt   instance char[] [mscorlib]System.String::ToCharArray()
    IL_0032:  callvirt   instance void [mscorlib]System.IO.BinaryWriter::Write(char[])
    IL_0037:  ret
  } // end of method NewLicenseSerializer::WriteBytePrefixedString

  .method private hidebysig static string 
          ReadBytePrefixedString(class [mscorlib]System.IO.BinaryReader reader) cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  2
    .locals init (int32 V_0,
             char[] V_1)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance uint8 [mscorlib]System.IO.BinaryReader::ReadByte()
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldloc.0
    IL_0009:  callvirt   instance char[] [mscorlib]System.IO.BinaryReader::ReadChars(int32)
    IL_000e:  stloc.1
    IL_000f:  ldloc.1
    IL_0010:  ldlen
    IL_0011:  conv.i4
    IL_0012:  ldloc.0
    IL_0013:  beq.s      IL_001b

    IL_0015:  newobj     instance void [mscorlib]System.IO.EndOfStreamException::.ctor()
    IL_001a:  throw

    IL_001b:  ldloc.1
    IL_001c:  newobj     instance void [mscorlib]System.String::.ctor(char[])
    IL_0021:  ret
  } // end of method NewLicenseSerializer::ReadBytePrefixedString

} // end of class VisualSVN.Core.Licensing.NewLicenseSerializer

.class public abstract auto ansi sealed beforefieldinit VisualSVN.Core.Licensing.OldLicenseSerializer
       extends [mscorlib]System.Object
{
  .class auto ansi sealed nested private OldLicenseType
         extends [mscorlib]System.Enum
  {
    .field public specialname rtspecialname int32 value__
    .field public static literal valuetype VisualSVN.Core.Licensing.OldLicenseSerializer/OldLicenseType Evaluation = int32(0x00000000)
    .field public static literal valuetype VisualSVN.Core.Licensing.OldLicenseSerializer/OldLicenseType Real = int32(0x00000001)
  } // end of class OldLicenseType

  .field private static literal int32 EvaluationPeriod = int32(0x0000001E)
  .method public hidebysig static class VisualSVN.Core.Licensing.License 
          Deserialize(string key,
                      class VisualSVN.Core.IDecoder decoder) cil managed
  {
    // 代码大小       67 (0x43)
    .maxstack  2
    .locals init (uint8[] V_0,
             uint8[] V_1,
             class [mscorlib]System.IO.MemoryStream V_2,
             class VisualSVN.Core.Licensing.License V_3,
             class VisualSVN.Core.Licensing.License V_4)
    IL_0000:  ldarg.0
    IL_0001:  call       uint8[] VisualSVN.Core.Licensing.Base32Decoder::Decode(string)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  call       bool VisualSVN.Core.Licensing.OldLicenseSerializer::IsEmpty(class [mscorlib]System.Array)
    IL_000d:  brfalse.s  IL_0011

    IL_000f:  ldnull
    IL_0010:  ret

    IL_0011:  ldarg.1
    IL_0012:  ldloc.0
    IL_0013:  callvirt   instance uint8[] VisualSVN.Core.IDecoder::Decode(uint8[])
    IL_0018:  stloc.1
    IL_0019:  ldloc.1
    IL_001a:  call       bool VisualSVN.Core.Licensing.OldLicenseSerializer::IsEmpty(class [mscorlib]System.Array)
    IL_001f:  brfalse.s  IL_0023

    IL_0021:  ldnull
    IL_0022:  ret

    IL_0023:  ldloc.1
    IL_0024:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor(uint8[])
    IL_0029:  stloc.2
    .try
    {
      IL_002a:  ldloc.2
      IL_002b:  call       class VisualSVN.Core.Licensing.License VisualSVN.Core.Licensing.OldLicenseSerializer::ReadLicenseFromStream(class [mscorlib]System.IO.Stream)
      IL_0030:  stloc.3
      IL_0031:  ldloc.3
      IL_0032:  stloc.s    V_4
      IL_0034:  leave.s    IL_0040

    }  // end .try
    finally
    {
      IL_0036:  ldloc.2
      IL_0037:  brfalse.s  IL_003f

      IL_0039:  ldloc.2
      IL_003a:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_003f:  endfinally
    }  // end handler
    IL_0040:  ldloc.s    V_4
    IL_0042:  ret
  } // end of method OldLicenseSerializer::Deserialize

  .method public hidebysig static string 
          Serialize(class VisualSVN.Core.Licensing.License license,
                    class VisualSVN.Core.IEncoder encoder) cil managed
  {
    // 代码大小       47 (0x2f)
    .maxstack  2
    .locals init (uint8[] V_0,
             class [mscorlib]System.IO.MemoryStream V_1,
             uint8[] V_2)
    IL_0000:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor()
    IL_0005:  stloc.1
    .try
    {
      IL_0006:  ldarg.0
      IL_0007:  ldloc.1
      IL_0008:  call       void VisualSVN.Core.Licensing.OldLicenseSerializer::WriteLicenseToStream(class VisualSVN.Core.Licensing.License,
                                                                                                    class [mscorlib]System.IO.Stream)
      IL_000d:  ldloc.1
      IL_000e:  callvirt   instance uint8[] [mscorlib]System.IO.MemoryStream::ToArray()
      IL_0013:  stloc.0
      IL_0014:  leave.s    IL_0020

    }  // end .try
    finally
    {
      IL_0016:  ldloc.1
      IL_0017:  brfalse.s  IL_001f

      IL_0019:  ldloc.1
      IL_001a:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_001f:  endfinally
    }  // end handler
    IL_0020:  ldarg.1
    IL_0021:  ldloc.0
    IL_0022:  callvirt   instance uint8[] VisualSVN.Core.IEncoder::Encode(uint8[])
    IL_0027:  stloc.2
    IL_0028:  ldloc.2
    IL_0029:  call       string VisualSVN.Core.Licensing.Base32Encoder::Encode(uint8[])
    IL_002e:  ret
  } // end of method OldLicenseSerializer::Serialize

  .method private hidebysig static bool  IsEmpty(class [mscorlib]System.Array 'value') cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  brfalse.s  IL_000d

    IL_0003:  ldarg.0
    IL_0004:  callvirt   instance int32 [mscorlib]System.Array::get_Length()
    IL_0009:  ldc.i4.0
    IL_000a:  ceq
    IL_000c:  ret

    IL_000d:  ldc.i4.1
    IL_000e:  ret
  } // end of method OldLicenseSerializer::IsEmpty

  .method private hidebysig static void  WriteLicenseToStream(class VisualSVN.Core.Licensing.License license,
                                                              class [mscorlib]System.IO.Stream 'stream') cil managed
  {
    // 代码大小       117 (0x75)
    .maxstack  2
    .locals init (string V_0,
             string V_1,
             class [mscorlib]System.IO.BinaryWriter V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string VisualSVN.Core.Licensing.License::LicensedTo
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  brtrue.s   IL_0010

    IL_000a:  ldstr      ""
    IL_000f:  stloc.0
    IL_0010:  ldstr      ""
    IL_0015:  stloc.1
    IL_0016:  ldarg.1
    IL_0017:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_Unicode()
    IL_001c:  newobj     instance void [mscorlib]System.IO.BinaryWriter::.ctor(class [mscorlib]System.IO.Stream,
                                                                               class [mscorlib]System.Text.Encoding)
    IL_0021:  stloc.2
    IL_0022:  ldloc.2
    IL_0023:  ldarg.0
    IL_0024:  ldfld      valuetype VisualSVN.Core.Licensing.LicenseType VisualSVN.Core.Licensing.License::Type
    IL_0029:  conv.u1
    IL_002a:  callvirt   instance void [mscorlib]System.IO.BinaryWriter::Write(uint8)
    IL_002f:  ldloc.2
    IL_0030:  ldc.i4.0
    IL_0031:  conv.i8
    IL_0032:  callvirt   instance void [mscorlib]System.IO.BinaryWriter::Write(int64)
    IL_0037:  ldloc.2
    IL_0038:  ldarg.0
    IL_0039:  ldfld      uint8 VisualSVN.Core.Licensing.License::Version
    IL_003e:  callvirt   instance void [mscorlib]System.IO.BinaryWriter::Write(uint8)
    IL_0043:  ldarg.0
    IL_0044:  ldfld      valuetype VisualSVN.Core.Licensing.LicenseType VisualSVN.Core.Licensing.License::Type
    IL_0049:  ldc.i4.1
    IL_004a:  bne.un.s   IL_005a

    IL_004c:  ldloc.2
    IL_004d:  ldarg.0
    IL_004e:  ldfld      valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.License::PurchaseDate
    IL_0053:  call       void VisualSVN.Core.Licensing.OldLicenseSerializer::WriteDateTime(class [mscorlib]System.IO.BinaryWriter,
                                                                                           valuetype [mscorlib]System.DateTime)
    IL_0058:  br.s       IL_0066

    IL_005a:  ldloc.2
    IL_005b:  ldarg.0
    IL_005c:  ldfld      valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.License::StartTime
    IL_0061:  call       void VisualSVN.Core.Licensing.OldLicenseSerializer::WriteDateTime(class [mscorlib]System.IO.BinaryWriter,
                                                                                           valuetype [mscorlib]System.DateTime)
    IL_0066:  ldloc.2
    IL_0067:  ldloc.0
    IL_0068:  call       void VisualSVN.Core.Licensing.OldLicenseSerializer::WriteBytePrefixedString(class [mscorlib]System.IO.BinaryWriter,
                                                                                                     string)
    IL_006d:  ldloc.2
    IL_006e:  ldloc.1
    IL_006f:  call       void VisualSVN.Core.Licensing.OldLicenseSerializer::WriteBytePrefixedString(class [mscorlib]System.IO.BinaryWriter,
                                                                                                     string)
    IL_0074:  ret
  } // end of method OldLicenseSerializer::WriteLicenseToStream

  .method private hidebysig static class VisualSVN.Core.Licensing.License 
          ReadLicenseFromStream(class [mscorlib]System.IO.Stream 'stream') cil managed
  {
    // 代码大小       292 (0x124)
    .maxstack  4
    .locals init (class VisualSVN.Core.Licensing.License V_0,
             class [mscorlib]System.IO.BinaryReader V_1,
             valuetype VisualSVN.Core.Licensing.OldLicenseSerializer/OldLicenseType V_2,
             valuetype [mscorlib]System.DateTime V_3,
             string V_4,
             string V_5,
             class [mscorlib]System.Exception V_6,
             class VisualSVN.Core.Licensing.License V_7,
             int64 V_8)
    .try
    {
      IL_0000:  newobj     instance void VisualSVN.Core.Licensing.License::.ctor()
      IL_0005:  stloc.0
      IL_0006:  ldarg.0
      IL_0007:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_Unicode()
      IL_000c:  newobj     instance void [mscorlib]System.IO.BinaryReader::.ctor(class [mscorlib]System.IO.Stream,
                                                                                 class [mscorlib]System.Text.Encoding)
      IL_0011:  stloc.1
      IL_0012:  ldloc.1
      IL_0013:  callvirt   instance uint8 [mscorlib]System.IO.BinaryReader::ReadByte()
      IL_0018:  stloc.2
      IL_0019:  ldloc.0
      IL_001a:  ldstr      "shareit:"
      IL_001f:  ldloc.1
      IL_0020:  callvirt   instance int64 [mscorlib]System.IO.BinaryReader::ReadInt64()
      IL_0025:  stloc.s    V_8
      IL_0027:  ldloca.s   V_8
      IL_0029:  call       instance string [mscorlib]System.Int64::ToString()
      IL_002e:  call       string [mscorlib]System.String::Concat(string,
                                                                  string)
      IL_0033:  stfld      string VisualSVN.Core.Licensing.License::PurchaseId
      IL_0038:  ldloc.0
      IL_0039:  ldloc.1
      IL_003a:  callvirt   instance uint8 [mscorlib]System.IO.BinaryReader::ReadByte()
      IL_003f:  stfld      uint8 VisualSVN.Core.Licensing.License::Version
      IL_0044:  ldloc.1
      IL_0045:  call       valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.OldLicenseSerializer::ReadDateTime(class [mscorlib]System.IO.BinaryReader)
      IL_004a:  stloc.3
      IL_004b:  ldloc.1
      IL_004c:  call       string VisualSVN.Core.Licensing.OldLicenseSerializer::ReadBytePrefixedString(class [mscorlib]System.IO.BinaryReader)
      IL_0051:  stloc.s    V_4
      IL_0053:  ldloc.1
      IL_0054:  call       string VisualSVN.Core.Licensing.OldLicenseSerializer::ReadBytePrefixedString(class [mscorlib]System.IO.BinaryReader)
      IL_0059:  stloc.s    V_5
      IL_005b:  ldloc.0
      IL_005c:  ldloc.s    V_4
      IL_005e:  stfld      string VisualSVN.Core.Licensing.License::LicensedTo
      IL_0063:  ldloc.s    V_5
      IL_0065:  callvirt   instance int32 [mscorlib]System.String::get_Length()
      IL_006a:  ldc.i4.0
      IL_006b:  ble.s      IL_0090

      IL_006d:  ldloc.s    V_5
      IL_006f:  ldloc.s    V_4
      IL_0071:  call       bool [mscorlib]System.String::op_Inequality(string,
                                                                       string)
      IL_0076:  brfalse.s  IL_0090

      IL_0078:  ldloc.0
      IL_0079:  dup
      IL_007a:  ldfld      string VisualSVN.Core.Licensing.License::LicensedTo
      IL_007f:  ldstr      ", "
      IL_0084:  ldloc.s    V_5
      IL_0086:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string)
      IL_008b:  stfld      string VisualSVN.Core.Licensing.License::LicensedTo
      IL_0090:  ldloc.0
      IL_0091:  ldc.i4.1
      IL_0092:  stfld      int32 VisualSVN.Core.Licensing.License::Capacity
      IL_0097:  ldloc.0
      IL_0098:  ldc.i4.0
      IL_0099:  stfld      valuetype VisualSVN.Core.Licensing.LicenseBinding VisualSVN.Core.Licensing.License::Binding
      IL_009e:  ldloc.2
      IL_009f:  ldc.i4.1
      IL_00a0:  bne.un.s   IL_00e2

      IL_00a2:  ldloc.s    V_5
      IL_00a4:  callvirt   instance int32 [mscorlib]System.String::get_Length()
      IL_00a9:  ldc.i4.0
      IL_00aa:  ble.s      IL_00bc

      IL_00ac:  ldloc.0
      IL_00ad:  ldc.i4.2
      IL_00ae:  stfld      valuetype VisualSVN.Core.Licensing.LicenseType VisualSVN.Core.Licensing.License::Type
      IL_00b3:  ldloc.0
      IL_00b4:  ldc.i4.1
      IL_00b5:  stfld      valuetype VisualSVN.Core.Licensing.LicenseBinding VisualSVN.Core.Licensing.License::Binding
      IL_00ba:  br.s       IL_00c3

      IL_00bc:  ldloc.0
      IL_00bd:  ldc.i4.1
      IL_00be:  stfld      valuetype VisualSVN.Core.Licensing.LicenseType VisualSVN.Core.Licensing.License::Type
      IL_00c3:  ldloc.0
      IL_00c4:  ldsfld     valuetype [mscorlib]System.DateTime [mscorlib]System.DateTime::MinValue
      IL_00c9:  stfld      valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.License::StartTime
      IL_00ce:  ldloc.0
      IL_00cf:  ldsfld     valuetype [mscorlib]System.DateTime [mscorlib]System.DateTime::MaxValue
      IL_00d4:  stfld      valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.License::EndTime
      IL_00d9:  ldloc.0
      IL_00da:  ldloc.3
      IL_00db:  stfld      valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.License::PurchaseDate
      IL_00e0:  br.s       IL_010d

      IL_00e2:  ldloc.0
      IL_00e3:  ldc.i4.0
      IL_00e4:  stfld      valuetype VisualSVN.Core.Licensing.LicenseType VisualSVN.Core.Licensing.License::Type
      IL_00e9:  ldloc.0
      IL_00ea:  ldloc.3
      IL_00eb:  stfld      valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.License::StartTime
      IL_00f0:  ldloc.0
      IL_00f1:  ldloca.s   V_3
      IL_00f3:  ldc.r8     30.
      IL_00fc:  call       instance valuetype [mscorlib]System.DateTime [mscorlib]System.DateTime::AddDays(float64)
      IL_0101:  stfld      valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.License::EndTime
      IL_0106:  ldloc.0
      IL_0107:  ldloc.3
      IL_0108:  stfld      valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.License::PurchaseDate
      IL_010d:  ldloc.0
      IL_010e:  stloc.s    V_7
      IL_0110:  leave.s    IL_0121

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_0112:  stloc.s    V_6
      IL_0114:  ldstr      "Can not parse license."
      IL_0119:  ldloc.s    V_6
      IL_011b:  newobj     instance void VisualSVN.Core.Licensing.LicensingException::.ctor(string,
                                                                                            class [mscorlib]System.Exception)
      IL_0120:  throw

    }  // end handler
    IL_0121:  ldloc.s    V_7
    IL_0123:  ret
  } // end of method OldLicenseSerializer::ReadLicenseFromStream

  .method private hidebysig static void  WriteDateTime(class [mscorlib]System.IO.BinaryWriter writer,
                                                       valuetype [mscorlib]System.DateTime 'date') cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarga.s   'date'
    IL_0003:  call       instance int64 [mscorlib]System.DateTime::get_Ticks()
    IL_0008:  callvirt   instance void [mscorlib]System.IO.BinaryWriter::Write(int64)
    IL_000d:  ret
  } // end of method OldLicenseSerializer::WriteDateTime

  .method private hidebysig static valuetype [mscorlib]System.DateTime 
          ReadDateTime(class [mscorlib]System.IO.BinaryReader reader) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance int64 [mscorlib]System.IO.BinaryReader::ReadInt64()
    IL_0006:  newobj     instance void [mscorlib]System.DateTime::.ctor(int64)
    IL_000b:  ret
  } // end of method OldLicenseSerializer::ReadDateTime

  .method private hidebysig static void  WriteBytePrefixedString(class [mscorlib]System.IO.BinaryWriter writer,
                                                                 string str) cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_0007:  conv.u1
    IL_0008:  callvirt   instance void [mscorlib]System.IO.BinaryWriter::Write(uint8)
    IL_000d:  ldarg.0
    IL_000e:  ldarg.1
    IL_000f:  callvirt   instance char[] [mscorlib]System.String::ToCharArray()
    IL_0014:  callvirt   instance void [mscorlib]System.IO.BinaryWriter::Write(char[])
    IL_0019:  ret
  } // end of method OldLicenseSerializer::WriteBytePrefixedString

  .method private hidebysig static string 
          ReadBytePrefixedString(class [mscorlib]System.IO.BinaryReader reader) cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  2
    .locals init (int32 V_0,
             char[] V_1)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance uint8 [mscorlib]System.IO.BinaryReader::ReadByte()
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldloc.0
    IL_0009:  callvirt   instance char[] [mscorlib]System.IO.BinaryReader::ReadChars(int32)
    IL_000e:  stloc.1
    IL_000f:  ldloc.1
    IL_0010:  ldlen
    IL_0011:  conv.i4
    IL_0012:  ldloc.0
    IL_0013:  beq.s      IL_001b

    IL_0015:  newobj     instance void [mscorlib]System.IO.EndOfStreamException::.ctor()
    IL_001a:  throw

    IL_001b:  ldloc.1
    IL_001c:  newobj     instance void [mscorlib]System.String::.ctor(char[])
    IL_0021:  ret
  } // end of method OldLicenseSerializer::ReadBytePrefixedString

} // end of class VisualSVN.Core.Licensing.OldLicenseSerializer

.class public abstract auto ansi sealed beforefieldinit VisualSVN.Core.Licensing.PlainLicenseSerializer
       extends [mscorlib]System.Object
{
  .field private static literal int32 DayIndex = int32(0x00000004)
  .field private static literal int32 MonthIndex = int32(0x00000012)
  .field private static literal int32 YearIndex = int32(0x0000000A)
  .field private static literal int32 Xxx = int32(0x0000000A)
  .method public hidebysig static class VisualSVN.Core.Licensing.License 
          Deserialize(string key) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  1
    .locals init (valuetype [mscorlib]System.DateTime V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       valuetype [mscorlib]System.DateTime VisualSVN.Core.Licensing.PlainLicenseSerializer::ParsePlainDate(string)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  call       class VisualSVN.Core.Licensing.License VisualSVN.Core.Licensing.License::CreatePregeneratedLicense(valuetype [mscorlib]System.DateTime)
    IL_000d:  ret
  } // end of method PlainLicenseSerializer::Deserialize

  .method private hidebysig static valuetype [mscorlib]System.DateTime 
          ParsePlainDate(string plainKey) cil managed
  {
    // 代码大小       158 (0x9e)
    .maxstack  3
    .locals init (string V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             class [mscorlib]System.FormatException V_5,
             class [mscorlib]System.OverflowException V_6,
             valuetype [mscorlib]System.DateTime V_7)
    .try
    {
      IL_0000:  ldarg.0
      IL_0001:  callvirt   instance int32 [mscorlib]System.String::get_Length()
      IL_0006:  ldc.i4.s   10
      IL_0008:  bge.s      IL_0015

      IL_000a:  ldstr      "Cannot parse license date."
      IL_000f:  newobj     instance void VisualSVN.Core.Licensing.LicensingException::.ctor(string)
      IL_0014:  throw

      IL_0015:  ldstr      ""
      IL_001a:  stloc.0
      IL_001b:  ldc.i4.0
      IL_001c:  stloc.1
      IL_001d:  br.s       IL_003a

      IL_001f:  ldloc.0
      IL_0020:  ldarg.0
      IL_0021:  ldloc.1
      IL_0022:  callvirt   instance char [mscorlib]System.String::get_Chars(int32)
      IL_0027:  ldc.i4.s   10
      IL_0029:  sub
      IL_002a:  conv.u2
      IL_002b:  box        [mscorlib]System.Char
      IL_0030:  call       string [mscorlib]System.String::Concat(object,
                                                                  object)
      IL_0035:  stloc.0
      IL_0036:  ldloc.1
      IL_0037:  ldc.i4.1
      IL_0038:  add
      IL_0039:  stloc.1
      IL_003a:  ldloc.1
      IL_003b:  ldarg.0
      IL_003c:  callvirt   instance int32 [mscorlib]System.String::get_Length()
      IL_0041:  blt.s      IL_001f

      IL_0043:  ldloc.0
      IL_0044:  ldc.i4.4
      IL_0045:  ldc.i4.2
      IL_0046:  callvirt   instance string [mscorlib]System.String::Substring(int32,
                                                                              int32)
      IL_004b:  call       int32 [mscorlib]System.Int32::Parse(string)
      IL_0050:  stloc.2
      IL_0051:  ldloc.0
      IL_0052:  ldc.i4.s   18
      IL_0054:  ldc.i4.2
      IL_0055:  callvirt   instance string [mscorlib]System.String::Substring(int32,
                                                                              int32)
      IL_005a:  call       int32 [mscorlib]System.Int32::Parse(string)
      IL_005f:  stloc.3
      IL_0060:  ldloc.0
      IL_0061:  ldc.i4.s   10
      IL_0063:  ldc.i4.4
      IL_0064:  callvirt   instance string [mscorlib]System.String::Substring(int32,
                                                                              int32)
      IL_0069:  call       int32 [mscorlib]System.Int32::Parse(string)
      IL_006e:  stloc.s    V_4
      IL_0070:  ldloc.s    V_4
      IL_0072:  ldloc.3
      IL_0073:  ldloc.2
      IL_0074:  newobj     instance void [mscorlib]System.DateTime::.ctor(int32,
                                                                          int32,
                                                                          int32)
      IL_0079:  stloc.s    V_7
      IL_007b:  leave.s    IL_009b

    }  // end .try
    catch [mscorlib]System.FormatException 
    {
      IL_007d:  stloc.s    V_5
      IL_007f:  ldstr      "Cannot parse license date. Date format is invalid."
      IL_0084:  ldloc.s    V_5
      IL_0086:  newobj     instance void VisualSVN.Core.Licensing.LicensingException::.ctor(string,
                                                                                            class [mscorlib]System.Exception)
      IL_008b:  throw

    }  // end handler
    catch [mscorlib]System.OverflowException 
    {
      IL_008c:  stloc.s    V_6
      IL_008e:  ldstr      "Cannot parse license date. Date is not in correct "
      + "range."
      IL_0093:  ldloc.s    V_6
      IL_0095:  newobj     instance void VisualSVN.Core.Licensing.LicensingException::.ctor(string,
                                                                                            class [mscorlib]System.Exception)
      IL_009a:  throw

    }  // end handler
    IL_009b:  ldloc.s    V_7
    IL_009d:  ret
  } // end of method PlainLicenseSerializer::ParsePlainDate

} // end of class VisualSVN.Core.Licensing.PlainLicenseSerializer

.class public auto ansi beforefieldinit VisualSVN.Core.Licensing.RSALicenseCodec
       extends [mscorlib]System.Object
       implements VisualSVN.Core.IEncoder,
                  VisualSVN.Core.IDecoder
{
  .field private static literal int32 KeyLen = int32(0x00000400)
  .field private static literal int32 KeyByteLen = int32(0x00000080)
  .field private static literal int32 MaxRSABlockSize = int32(0x00000056)
  .field private static literal string hname = "MD5"
  .field private class [mscorlib]System.Security.Cryptography.RSACryptoServiceProvider rsaProvider
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [mscorlib]System.Security.Cryptography.RSACryptoServiceProvider rsaProvider) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      class [mscorlib]System.Security.Cryptography.RSACryptoServiceProvider VisualSVN.Core.Licensing.RSALicenseCodec::rsaProvider
    IL_000d:  ret
  } // end of method RSALicenseCodec::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(valuetype [mscorlib]System.Security.Cryptography.RSAParameters rsaParameters) cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  call       instance class [mscorlib]System.Security.Cryptography.RSACryptoServiceProvider VisualSVN.Core.Licensing.RSALicenseCodec::CreateRSAProvider(valuetype [mscorlib]System.Security.Cryptography.RSAParameters)
    IL_000e:  stfld      class [mscorlib]System.Security.Cryptography.RSACryptoServiceProvider VisualSVN.Core.Licensing.RSALicenseCodec::rsaProvider
    IL_0013:  ret
  } // end of method RSALicenseCodec::.ctor

  .method public hidebysig newslot virtual final 
          instance uint8[]  Encode(uint8[] data) cil managed
  {
    // 代码大小       83 (0x53)
    .maxstack  4
    .locals init (class [mscorlib]System.IO.MemoryStream V_0,
             class [mscorlib]System.Security.Cryptography.HashAlgorithm V_1,
             uint8[] V_2,
             uint8[] V_3)
    IL_0000:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor()
    IL_0005:  stloc.0
    .try
    {
      IL_0006:  newobj     instance void [mscorlib]System.Security.Cryptography.MD5CryptoServiceProvider::.ctor()
      IL_000b:  stloc.1
      IL_000c:  ldloc.1
      IL_000d:  ldarg.1
      IL_000e:  callvirt   instance uint8[] [mscorlib]System.Security.Cryptography.HashAlgorithm::ComputeHash(uint8[])
      IL_0013:  pop
      IL_0014:  ldarg.0
      IL_0015:  ldfld      class [mscorlib]System.Security.Cryptography.RSACryptoServiceProvider VisualSVN.Core.Licensing.RSALicenseCodec::rsaProvider
      IL_001a:  ldarg.1
      IL_001b:  ldloc.1
      IL_001c:  callvirt   instance uint8[] [mscorlib]System.Security.Cryptography.RSACryptoServiceProvider::SignData(uint8[],
                                                                                                                      object)
      IL_0021:  stloc.2
      IL_0022:  ldloc.0
      IL_0023:  ldarg.1
      IL_0024:  ldc.i4.0
      IL_0025:  ldarg.1
      IL_0026:  ldlen
      IL_0027:  conv.i4
      IL_0028:  callvirt   instance void [mscorlib]System.IO.Stream::Write(uint8[],
                                                                           int32,
                                                                           int32)
      IL_002d:  ldloc.0
      IL_002e:  ldloc.2
      IL_002f:  ldc.i4.0
      IL_0030:  ldloc.2
      IL_0031:  ldlen
      IL_0032:  conv.i4
      IL_0033:  callvirt   instance void [mscorlib]System.IO.Stream::Write(uint8[],
                                                                           int32,
                                                                           int32)
      IL_0038:  ldloc.0
      IL_0039:  callvirt   instance void [mscorlib]System.IO.Stream::Flush()
      IL_003e:  ldloc.0
      IL_003f:  callvirt   instance uint8[] [mscorlib]System.IO.MemoryStream::ToArray()
      IL_0044:  stloc.3
      IL_0045:  leave.s    IL_0051

    }  // end .try
    finally
    {
      IL_0047:  ldloc.0
      IL_0048:  brfalse.s  IL_0050

      IL_004a:  ldloc.0
      IL_004b:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0050:  endfinally
    }  // end handler
    IL_0051:  ldloc.3
    IL_0052:  ret
  } // end of method RSALicenseCodec::Encode

  .method public hidebysig newslot virtual final 
          instance uint8[]  Decode(uint8[] data) cil managed
  {
    // 代码大小       166 (0xa6)
    .maxstack  4
    .locals init (class [mscorlib]System.IO.Stream V_0,
             class [mscorlib]System.IO.BinaryReader V_1,
             uint8[] V_2,
             uint8[] V_3,
             class [mscorlib]System.Security.Cryptography.HashAlgorithm V_4,
             uint8[] V_5,
             class [mscorlib]System.Exception V_6,
             uint8[] V_7)
    IL_0000:  ldarg.1
    IL_0001:  ldlen
    IL_0002:  conv.i4
    IL_0003:  ldc.i4     0x80
    IL_0008:  bge.s      IL_0016

    IL_000a:  ldstr      "License key has invalid length."
    IL_000f:  ldnull
    IL_0010:  newobj     instance void VisualSVN.Core.Licensing.LicensingException::.ctor(string,
                                                                                          class [mscorlib]System.Exception)
    IL_0015:  throw

    IL_0016:  ldarg.1
    IL_0017:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor(uint8[])
    IL_001c:  stloc.0
    IL_001d:  ldloc.0
    IL_001e:  newobj     instance void [mscorlib]System.IO.BinaryReader::.ctor(class [mscorlib]System.IO.Stream)
    IL_0023:  stloc.1
    .try
    {
      IL_0024:  ldloc.1
      IL_0025:  ldarg.1
      IL_0026:  ldlen
      IL_0027:  conv.i4
      IL_0028:  ldc.i4     0x80
      IL_002d:  sub
      IL_002e:  callvirt   instance uint8[] [mscorlib]System.IO.BinaryReader::ReadBytes(int32)
      IL_0033:  stloc.2
      IL_0034:  ldloc.1
      IL_0035:  ldc.i4     0x80
      IL_003a:  callvirt   instance uint8[] [mscorlib]System.IO.BinaryReader::ReadBytes(int32)
      IL_003f:  stloc.3
      IL_0040:  newobj     instance void [VisualSVN.Utils]VisualSVN.Utils.MD5Managed::.ctor()
      IL_0045:  stloc.s    V_4
      IL_0047:  ldloc.s    V_4
      IL_0049:  ldloc.2
      IL_004a:  callvirt   instance uint8[] [mscorlib]System.Security.Cryptography.HashAlgorithm::ComputeHash(uint8[])
      IL_004f:  stloc.s    V_5
      .try
      {
        IL_0051:  ldarg.0
        IL_0052:  ldfld      class [mscorlib]System.Security.Cryptography.RSACryptoServiceProvider VisualSVN.Core.Licensing.RSALicenseCodec::rsaProvider
        IL_0057:  ldloc.s    V_5
        IL_0059:  ldstr      "MD5"
        IL_005e:  ldloc.3
        IL_005f:  callvirt   instance bool [mscorlib]System.Security.Cryptography.RSACryptoServiceProvider::VerifyHash(uint8[],
                                                                                                                       string,
                                                                                                                       uint8[])
        IL_0064:  brtrue.s   IL_0072

        IL_0066:  ldstr      "License key has invalid signature."
        IL_006b:  ldnull
        IL_006c:  newobj     instance void VisualSVN.Core.Licensing.LicensingException::.ctor(string,
                                                                                              class [mscorlib]System.Exception)
        IL_0071:  throw

        IL_0072:  leave.s    IL_0094

      }  // end .try
      catch [mscorlib]System.Exception 
      {
        IL_0074:  stloc.s    V_6
        IL_0076:  ldstr      "License decode error ("
        IL_007b:  ldloc.s    V_6
        IL_007d:  callvirt   instance string [mscorlib]System.Exception::get_Message()
        IL_0082:  ldstr      ")"
        IL_0087:  call       string [mscorlib]System.String::Concat(string,
                                                                    string,
                                                                    string)
        IL_008c:  ldloc.s    V_6
        IL_008e:  newobj     instance void VisualSVN.Core.Licensing.LicensingException::.ctor(string,
                                                                                              class [mscorlib]System.Exception)
        IL_0093:  throw

      }  // end handler
      IL_0094:  ldloc.2
      IL_0095:  stloc.s    V_7
      IL_0097:  leave.s    IL_00a3

    }  // end .try
    finally
    {
      IL_0099:  ldloc.1
      IL_009a:  brfalse.s  IL_00a2

      IL_009c:  ldloc.1
      IL_009d:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_00a2:  endfinally
    }  // end handler
    IL_00a3:  ldloc.s    V_7
    IL_00a5:  ret
  } // end of method RSALicenseCodec::Decode

  .method private hidebysig instance class [mscorlib]System.Security.Cryptography.RSACryptoServiceProvider 
          CreateRSAProvider(valuetype [mscorlib]System.Security.Cryptography.RSAParameters rsaParameters) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  2
    .locals init (class [mscorlib]System.Security.Cryptography.RSACryptoServiceProvider V_0,
             valuetype [mscorlib]System.Security.Cryptography.RSAParameters V_1)
    IL_0000:  ldc.i4     0x400
    IL_0005:  newobj     instance void [mscorlib]System.Security.Cryptography.RSACryptoServiceProvider::.ctor(int32)
    IL_000a:  stloc.0
    IL_000b:  ldarg.0
    IL_000c:  ldarg.1
    IL_000d:  call       instance valuetype [mscorlib]System.Security.Cryptography.RSAParameters VisualSVN.Core.Licensing.RSALicenseCodec::DeepCopyRSAParameters(valuetype [mscorlib]System.Security.Cryptography.RSAParameters)
    IL_0012:  stloc.1
    IL_0013:  ldloc.0
    IL_0014:  ldloc.1
    IL_0015:  callvirt   instance void [mscorlib]System.Security.Cryptography.RSA::ImportParameters(valuetype [mscorlib]System.Security.Cryptography.RSAParameters)
    IL_001a:  ldloc.0
    IL_001b:  ret
  } // end of method RSALicenseCodec::CreateRSAProvider

  .method private hidebysig instance uint8[] 
          CloneByteArray(uint8[] original) cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  brtrue.s   IL_0005

    IL_0003:  ldnull
    IL_0004:  ret

    IL_0005:  ldarg.1
    IL_0006:  callvirt   instance object [mscorlib]System.Array::Clone()
    IL_000b:  castclass  uint8[]
    IL_0010:  ret
  } // end of method RSALicenseCodec::CloneByteArray

  .method private hidebysig instance valuetype [mscorlib]System.Security.Cryptography.RSAParameters 
          DeepCopyRSAParameters(valuetype [mscorlib]System.Security.Cryptography.RSAParameters original) cil managed
  {
    // 代码大小       170 (0xaa)
    .maxstack  3
    .locals init (valuetype [mscorlib]System.Security.Cryptography.RSAParameters V_0)
    IL_0000:  ldloca.s   V_0
    IL_0002:  initobj    [mscorlib]System.Security.Cryptography.RSAParameters
    IL_0008:  ldloca.s   V_0
    IL_000a:  ldarg.0
    IL_000b:  ldarga.s   original
    IL_000d:  ldfld      uint8[] [mscorlib]System.Security.Cryptography.RSAParameters::D
    IL_0012:  call       instance uint8[] VisualSVN.Core.Licensing.RSALicenseCodec::CloneByteArray(uint8[])
    IL_0017:  stfld      uint8[] [mscorlib]System.Security.Cryptography.RSAParameters::D
    IL_001c:  ldloca.s   V_0
    IL_001e:  ldarg.0
    IL_001f:  ldarga.s   original
    IL_0021:  ldfld      uint8[] [mscorlib]System.Security.Cryptography.RSAParameters::DP
    IL_0026:  call       instance uint8[] VisualSVN.Core.Licensing.RSALicenseCodec::CloneByteArray(uint8[])
    IL_002b:  stfld      uint8[] [mscorlib]System.Security.Cryptography.RSAParameters::DP
    IL_0030:  ldloca.s   V_0
    IL_0032:  ldarg.0
    IL_0033:  ldarga.s   original
    IL_0035:  ldfld      uint8[] [mscorlib]System.Security.Cryptography.RSAParameters::DQ
    IL_003a:  call       instance uint8[] VisualSVN.Core.Licensing.RSALicenseCodec::CloneByteArray(uint8[])
    IL_003f:  stfld      uint8[] [mscorlib]System.Security.Cryptography.RSAParameters::DQ
    IL_0044:  ldloca.s   V_0
    IL_0046:  ldarg.0
    IL_0047:  ldarga.s   original
    IL_0049:  ldfld      uint8[] [mscorlib]System.Security.Cryptography.RSAParameters::Exponent
    IL_004e:  call       instance uint8[] VisualSVN.Core.Licensing.RSALicenseCodec::CloneByteArray(uint8[])
    IL_0053:  stfld      uint8[] [mscorlib]System.Security.Cryptography.RSAParameters::Exponent
    IL_0058:  ldloca.s   V_0
    IL_005a:  ldarg.0
    IL_005b:  ldarga.s   original
    IL_005d:  ldfld      uint8[] [mscorlib]System.Security.Cryptography.RSAParameters::InverseQ
    IL_0062:  call       instance uint8[] VisualSVN.Core.Licensing.RSALicenseCodec::CloneByteArray(uint8[])
    IL_0067:  stfld      uint8[] [mscorlib]System.Security.Cryptography.RSAParameters::InverseQ
    IL_006c:  ldloca.s   V_0
    IL_006e:  ldarg.0
    IL_006f:  ldarga.s   original
    IL_0071:  ldfld      uint8[] [mscorlib]System.Security.Cryptography.RSAParameters::Modulus
    IL_0076:  call       instance uint8[] VisualSVN.Core.Licensing.RSALicenseCodec::CloneByteArray(uint8[])
    IL_007b:  stfld      uint8[] [mscorlib]System.Security.Cryptography.RSAParameters::Modulus
    IL_0080:  ldloca.s   V_0
    IL_0082:  ldarg.0
    IL_0083:  ldarga.s   original
    IL_0085:  ldfld      uint8[] [mscorlib]System.Security.Cryptography.RSAParameters::P
    IL_008a:  call       instance uint8[] VisualSVN.Core.Licensing.RSALicenseCodec::CloneByteArray(uint8[])
    IL_008f:  stfld      uint8[] [mscorlib]System.Security.Cryptography.RSAParameters::P
    IL_0094:  ldloca.s   V_0
    IL_0096:  ldarg.0
    IL_0097:  ldarga.s   original
    IL_0099:  ldfld      uint8[] [mscorlib]System.Security.Cryptography.RSAParameters::Q
    IL_009e:  call       instance uint8[] VisualSVN.Core.Licensing.RSALicenseCodec::CloneByteArray(uint8[])
    IL_00a3:  stfld      uint8[] [mscorlib]System.Security.Cryptography.RSAParameters::Q
    IL_00a8:  ldloc.0
    IL_00a9:  ret
  } // end of method RSALicenseCodec::DeepCopyRSAParameters

} // end of class VisualSVN.Core.Licensing.RSALicenseCodec

.class public auto ansi beforefieldinit VisualSVN.Core.Licensing.RSAParametersLoader
       extends [mscorlib]System.Object
{
  .field public static literal string CSP_CONTAINER_NAME = "OSTY"
  .method public hidebysig static valuetype [mscorlib]System.Security.Cryptography.RSAParameters 
          LoadFromResource(class [mscorlib]System.Reflection.Assembly 'assembly',
                           string resourceName,
                           string password) cil managed
  {
    // 代码大小       39 (0x27)
    .maxstack  4
    .locals init (string V_0,
             class [mscorlib]System.IO.Stream V_1)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance class [mscorlib]System.Reflection.AssemblyName [mscorlib]System.Reflection.Assembly::GetName()
    IL_0006:  callvirt   instance string [mscorlib]System.Reflection.AssemblyName::get_Name()
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldloc.0
    IL_000e:  ldstr      "."
    IL_0013:  ldarg.1
    IL_0014:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string)
    IL_0019:  callvirt   instance class [mscorlib]System.IO.Stream [mscorlib]System.Reflection.Assembly::GetManifestResourceStream(string)
    IL_001e:  stloc.1
    IL_001f:  ldloc.1
    IL_0020:  ldarg.2
    IL_0021:  call       valuetype [mscorlib]System.Security.Cryptography.RSAParameters VisualSVN.Core.Licensing.RSAParametersLoader::DeserializeRSAKeyFromStream(class [mscorlib]System.IO.Stream,
                                                                                                                                                                  string)
    IL_0026:  ret
  } // end of method RSAParametersLoader::LoadFromResource

  .method public hidebysig static valuetype [mscorlib]System.Security.Cryptography.RSAParameters 
          LoadFromFile(string fileName,
                       string password) cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  3
    .locals init (class [mscorlib]System.IO.Stream V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.3
    IL_0002:  ldc.i4.1
    IL_0003:  newobj     instance void [mscorlib]System.IO.FileStream::.ctor(string,
                                                                             valuetype [mscorlib]System.IO.FileMode,
                                                                             valuetype [mscorlib]System.IO.FileAccess)
    IL_0008:  stloc.0
    IL_0009:  ldloc.0
    IL_000a:  ldarg.1
    IL_000b:  call       valuetype [mscorlib]System.Security.Cryptography.RSAParameters VisualSVN.Core.Licensing.RSAParametersLoader::DeserializeRSAKeyFromStream(class [mscorlib]System.IO.Stream,
                                                                                                                                                                  string)
    IL_0010:  ret
  } // end of method RSAParametersLoader::LoadFromFile

  .method private hidebysig static valuetype [mscorlib]System.Security.Cryptography.RSAParameters 
          DeserializeRSAKeyFromStream(class [mscorlib]System.IO.Stream 'stream',
                                      string password) cil managed
  {
    // 代码大小       362 (0x16a)
    .maxstack  4
    .locals init (valuetype [mscorlib]System.Security.Cryptography.RSAParameters V_0,
             class [mscorlib]System.Runtime.Serialization.Formatters.Binary.BinaryFormatter V_1,
             int64 V_2,
             uint8[] V_3,
             class [mscorlib]System.Security.Cryptography.PasswordDeriveBytes V_4,
             class [mscorlib]System.Security.Cryptography.Rijndael V_5,
             class [mscorlib]System.Security.Cryptography.ICryptoTransform V_6,
             class [mscorlib]System.IO.MemoryStream V_7,
             valuetype [mscorlib]System.Security.Cryptography.RSAParameters V_8,
             class [mscorlib]System.IO.Stream V_9)
    IL_0000:  ldloca.s   V_0
    IL_0002:  initobj    [mscorlib]System.Security.Cryptography.RSAParameters
    IL_0008:  ldarg.0
    IL_0009:  stloc.s    V_9
    .try
    {
      IL_000b:  newobj     instance void [mscorlib]System.Runtime.Serialization.Formatters.Binary.BinaryFormatter::.ctor()
      IL_0010:  stloc.1
      IL_0011:  ldloca.s   V_0
      IL_0013:  ldloc.1
      IL_0014:  ldarg.0
      IL_0015:  callvirt   instance object [mscorlib]System.Runtime.Serialization.Formatters.Binary.BinaryFormatter::Deserialize(class [mscorlib]System.IO.Stream)
      IL_001a:  castclass  uint8[]
      IL_001f:  stfld      uint8[] [mscorlib]System.Security.Cryptography.RSAParameters::Exponent
      IL_0024:  ldloca.s   V_0
      IL_0026:  ldloc.1
      IL_0027:  ldarg.0
      IL_0028:  callvirt   instance object [mscorlib]System.Runtime.Serialization.Formatters.Binary.BinaryFormatter::Deserialize(class [mscorlib]System.IO.Stream)
      IL_002d:  castclass  uint8[]
      IL_0032:  stfld      uint8[] [mscorlib]System.Security.Cryptography.RSAParameters::Modulus
      IL_0037:  ldarg.1
      IL_0038:  brfalse    IL_0150

      IL_003d:  ldarg.0
      IL_003e:  callvirt   instance int64 [mscorlib]System.IO.Stream::get_Length()
      IL_0043:  ldarg.0
      IL_0044:  callvirt   instance int64 [mscorlib]System.IO.Stream::get_Position()
      IL_0049:  sub
      IL_004a:  stloc.2
      IL_004b:  ldloc.2
      IL_004c:  conv.ovf.i
      IL_004d:  newarr     [mscorlib]System.Byte
      IL_0052:  stloc.3
      IL_0053:  ldarg.0
      IL_0054:  ldloc.3
      IL_0055:  ldc.i4.0
      IL_0056:  ldloc.2
      IL_0057:  conv.i4
      IL_0058:  callvirt   instance int32 [mscorlib]System.IO.Stream::Read(uint8[],
                                                                           int32,
                                                                           int32)
      IL_005d:  conv.i8
      IL_005e:  stloc.2
      IL_005f:  ldarg.1
      IL_0060:  ldnull
      IL_0061:  newobj     instance void [mscorlib]System.Security.Cryptography.PasswordDeriveBytes::.ctor(string,
                                                                                                           uint8[])
      IL_0066:  stloc.s    V_4
      IL_0068:  ldloc.s    V_4
      IL_006a:  ldstr      "SHA256"
      IL_006f:  callvirt   instance void [mscorlib]System.Security.Cryptography.PasswordDeriveBytes::set_HashName(string)
      IL_0074:  newobj     instance void [mscorlib]System.Security.Cryptography.RijndaelManaged::.ctor()
      IL_0079:  stloc.s    V_5
      IL_007b:  ldloc.s    V_5
      IL_007d:  ldc.i4     0x100
      IL_0082:  callvirt   instance void [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::set_KeySize(int32)
      IL_0087:  ldloc.s    V_5
      IL_0089:  ldloc.s    V_4
      IL_008b:  ldc.i4.s   32
      IL_008d:  callvirt   instance uint8[] [mscorlib]System.Security.Cryptography.DeriveBytes::GetBytes(int32)
      IL_0092:  callvirt   instance void [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::set_Key(uint8[])
      IL_0097:  ldloc.s    V_5
      IL_0099:  ldloc.s    V_5
      IL_009b:  callvirt   instance int32 [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::get_BlockSize()
      IL_00a0:  ldc.i4.8
      IL_00a1:  div
      IL_00a2:  newarr     [mscorlib]System.Byte
      IL_00a7:  callvirt   instance void [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::set_IV(uint8[])
      IL_00ac:  ldloc.s    V_5
      IL_00ae:  callvirt   instance class [mscorlib]System.Security.Cryptography.ICryptoTransform [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::CreateDecryptor()
      IL_00b3:  stloc.s    V_6
      IL_00b5:  ldloc.s    V_6
      IL_00b7:  ldloc.3
      IL_00b8:  ldc.i4.0
      IL_00b9:  ldloc.2
      IL_00ba:  conv.i4
      IL_00bb:  callvirt   instance uint8[] [mscorlib]System.Security.Cryptography.ICryptoTransform::TransformFinalBlock(uint8[],
                                                                                                                         int32,
                                                                                                                         int32)
      IL_00c0:  stloc.3
      IL_00c1:  ldloc.s    V_5
      IL_00c3:  callvirt   instance void [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::Clear()
      IL_00c8:  ldloc.3
      IL_00c9:  ldc.i4.0
      IL_00ca:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor(uint8[],
                                                                                 bool)
      IL_00cf:  stloc.s    V_7
      IL_00d1:  ldloca.s   V_0
      IL_00d3:  ldloc.1
      IL_00d4:  ldloc.s    V_7
      IL_00d6:  callvirt   instance object [mscorlib]System.Runtime.Serialization.Formatters.Binary.BinaryFormatter::Deserialize(class [mscorlib]System.IO.Stream)
      IL_00db:  castclass  uint8[]
      IL_00e0:  stfld      uint8[] [mscorlib]System.Security.Cryptography.RSAParameters::P
      IL_00e5:  ldloca.s   V_0
      IL_00e7:  ldloc.1
      IL_00e8:  ldloc.s    V_7
      IL_00ea:  callvirt   instance object [mscorlib]System.Runtime.Serialization.Formatters.Binary.BinaryFormatter::Deserialize(class [mscorlib]System.IO.Stream)
      IL_00ef:  castclass  uint8[]
      IL_00f4:  stfld      uint8[] [mscorlib]System.Security.Cryptography.RSAParameters::Q
      IL_00f9:  ldloca.s   V_0
      IL_00fb:  ldloc.1
      IL_00fc:  ldloc.s    V_7
      IL_00fe:  callvirt   instance object [mscorlib]System.Runtime.Serialization.Formatters.Binary.BinaryFormatter::Deserialize(class [mscorlib]System.IO.Stream)
      IL_0103:  castclass  uint8[]
      IL_0108:  stfld      uint8[] [mscorlib]System.Security.Cryptography.RSAParameters::D
      IL_010d:  ldloca.s   V_0
      IL_010f:  ldloc.1
      IL_0110:  ldloc.s    V_7
      IL_0112:  callvirt   instance object [mscorlib]System.Runtime.Serialization.Formatters.Binary.BinaryFormatter::Deserialize(class [mscorlib]System.IO.Stream)
      IL_0117:  castclass  uint8[]
      IL_011c:  stfld      uint8[] [mscorlib]System.Security.Cryptography.RSAParameters::InverseQ
      IL_0121:  ldloca.s   V_0
      IL_0123:  ldloc.1
      IL_0124:  ldloc.s    V_7
      IL_0126:  callvirt   instance object [mscorlib]System.Runtime.Serialization.Formatters.Binary.BinaryFormatter::Deserialize(class [mscorlib]System.IO.Stream)
      IL_012b:  castclass  uint8[]
      IL_0130:  stfld      uint8[] [mscorlib]System.Security.Cryptography.RSAParameters::DP
      IL_0135:  ldloca.s   V_0
      IL_0137:  ldloc.1
      IL_0138:  ldloc.s    V_7
      IL_013a:  callvirt   instance object [mscorlib]System.Runtime.Serialization.Formatters.Binary.BinaryFormatter::Deserialize(class [mscorlib]System.IO.Stream)
      IL_013f:  castclass  uint8[]
      IL_0144:  stfld      uint8[] [mscorlib]System.Security.Cryptography.RSAParameters::DQ
      IL_0149:  ldloc.s    V_7
      IL_014b:  callvirt   instance void [mscorlib]System.IO.Stream::Close()
      IL_0150:  ldarg.0
      IL_0151:  callvirt   instance void [mscorlib]System.IO.Stream::Close()
      IL_0156:  ldloc.0
      IL_0157:  stloc.s    V_8
      IL_0159:  leave.s    IL_0167

    }  // end .try
    finally
    {
      IL_015b:  ldloc.s    V_9
      IL_015d:  brfalse.s  IL_0166

      IL_015f:  ldloc.s    V_9
      IL_0161:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0166:  endfinally
    }  // end handler
    IL_0167:  ldloc.s    V_8
    IL_0169:  ret
  } // end of method RSAParametersLoader::DeserializeRSAKeyFromStream

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method RSAParametersLoader::.ctor

} // end of class VisualSVN.Core.Licensing.RSAParametersLoader

.class public auto ansi beforefieldinit VisualSVN.Core.XorLicenseCodec
       extends [mscorlib]System.Object
       implements VisualSVN.Core.IEncoder,
                  VisualSVN.Core.IDecoder
{
  .field private uint8[] xorKey
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(uint8[] xorKey) cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.5
    IL_0002:  newarr     [mscorlib]System.Byte
    IL_0007:  dup
    IL_0008:  ldtoken    field valuetype '<PrivateImplementationDetails>{24208891-9E52-496E-A3B0-417063E36302}'/'__StaticArrayInitTypeSize=5' '<PrivateImplementationDetails>{24208891-9E52-496E-A3B0-417063E36302}'::'$$method0x6000052-1'
    IL_000d:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0012:  stfld      uint8[] VisualSVN.Core.XorLicenseCodec::xorKey
    IL_0017:  ldarg.0
    IL_0018:  call       instance void [mscorlib]System.Object::.ctor()
    IL_001d:  ldarg.0
    IL_001e:  ldarg.1
    IL_001f:  stfld      uint8[] VisualSVN.Core.XorLicenseCodec::xorKey
    IL_0024:  ret
  } // end of method XorLicenseCodec::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.5
    IL_0002:  newarr     [mscorlib]System.Byte
    IL_0007:  dup
    IL_0008:  ldtoken    field valuetype '<PrivateImplementationDetails>{24208891-9E52-496E-A3B0-417063E36302}'/'__StaticArrayInitTypeSize=5' '<PrivateImplementationDetails>{24208891-9E52-496E-A3B0-417063E36302}'::'$$method0x6000053-1'
    IL_000d:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0012:  stfld      uint8[] VisualSVN.Core.XorLicenseCodec::xorKey
    IL_0017:  ldarg.0
    IL_0018:  call       instance void [mscorlib]System.Object::.ctor()
    IL_001d:  ret
  } // end of method XorLicenseCodec::.ctor

  .method public hidebysig newslot virtual final 
          instance uint8[]  Encode(uint8[] data) cil managed
  {
    // 代码大小       50 (0x32)
    .maxstack  6
    .locals init (uint8[] V_0,
             int32 V_1)
    IL_0000:  ldarg.1
    IL_0001:  ldlen
    IL_0002:  conv.i4
    IL_0003:  newarr     [mscorlib]System.Byte
    IL_0008:  stloc.0
    IL_0009:  ldc.i4.0
    IL_000a:  stloc.1
    IL_000b:  br.s       IL_002a

    IL_000d:  ldloc.0
    IL_000e:  ldloc.1
    IL_000f:  ldarg.1
    IL_0010:  ldloc.1
    IL_0011:  ldelem.u1
    IL_0012:  ldarg.0
    IL_0013:  ldfld      uint8[] VisualSVN.Core.XorLicenseCodec::xorKey
    IL_0018:  ldloc.1
    IL_0019:  ldarg.0
    IL_001a:  ldfld      uint8[] VisualSVN.Core.XorLicenseCodec::xorKey
    IL_001f:  ldlen
    IL_0020:  conv.i4
    IL_0021:  rem
    IL_0022:  ldelem.u1
    IL_0023:  xor
    IL_0024:  conv.u1
    IL_0025:  stelem.i1
    IL_0026:  ldloc.1
    IL_0027:  ldc.i4.1
    IL_0028:  add
    IL_0029:  stloc.1
    IL_002a:  ldloc.1
    IL_002b:  ldarg.1
    IL_002c:  ldlen
    IL_002d:  conv.i4
    IL_002e:  blt.s      IL_000d

    IL_0030:  ldloc.0
    IL_0031:  ret
  } // end of method XorLicenseCodec::Encode

  .method public hidebysig newslot virtual final 
          instance uint8[]  Decode(uint8[] data) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance uint8[] VisualSVN.Core.XorLicenseCodec::Encode(uint8[])
    IL_0007:  ret
  } // end of method XorLicenseCodec::Decode

} // end of class VisualSVN.Core.XorLicenseCodec

.class private auto ansi '<PrivateImplementationDetails>{24208891-9E52-496E-A3B0-417063E36302}'
       extends [mscorlib]System.Object
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .class explicit ansi sealed nested private '__StaticArrayInitTypeSize=10'
         extends [mscorlib]System.ValueType
  {
    .pack 1
    .size 10
  } // end of class '__StaticArrayInitTypeSize=10'

  .class explicit ansi sealed nested private '__StaticArrayInitTypeSize=5'
         extends [mscorlib]System.ValueType
  {
    .pack 1
    .size 5
  } // end of class '__StaticArrayInitTypeSize=5'

  .field static assembly valuetype '<PrivateImplementationDetails>{24208891-9E52-496E-A3B0-417063E36302}'/'__StaticArrayInitTypeSize=10' '$$method0x6000056-1' at I_00002398
  .field static assembly valuetype '<PrivateImplementationDetails>{24208891-9E52-496E-A3B0-417063E36302}'/'__StaticArrayInitTypeSize=5' '$$method0x6000052-1' at I_00003860
  .field static assembly valuetype '<PrivateImplementationDetails>{24208891-9E52-496E-A3B0-417063E36302}'/'__StaticArrayInitTypeSize=5' '$$method0x6000053-1' at I_00003890
} // end of class '<PrivateImplementationDetails>{24208891-9E52-496E-A3B0-417063E36302}'


// =============================================================

.data cil I_00002398 = bytearray (
                 0A 00 0D 00 09 00 20 00 2D 00)                   // ...... .-.
.data cil I_000023A2 = int8[30]
.data cil I_00003860 = bytearray (
                 14 B1 7E 2F 31)                                  // ..~/1
.data cil I_00003865 = int8[11]
.data cil I_00003890 = bytearray (
                 14 B1 7E 2F 31)                                  // ..~/1
// *********** 反汇编完成 ***********************
// 警告: 创建了 Win32 资源文件 C:\Users\31425\AppData\Local\Microsoft\VisualStudio\16.0_26f35786\Extensions\tvwhqa3g.qud\VisualSVN.Core.L.res
