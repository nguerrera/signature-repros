//
// Example #3 -- call across assemblies to cyclical signature
//
// NOTE: build.bat creates the cycle by modifying the ilasm output
//
// From:
//   List`1<int32 modopt([TypeSpec #1])>
//                             |
//                             v
//                           int32
//
// To:
//   List`1<int32 modopt([TypeSpec #2])
//       ^---------------------|
//
// Symptoms: 
//   * peverify crashes (stack overflow)
//   * program crashes (stack overflow)
//   * ildasm crashes (likely stack overflow)
//

.assembly extern mscorlib {}
.assembly extern SignatureCycle2 {}
.assembly SignatureCycle3 {}
.module SignatureCycle3.exe

.class public Extender extends class [mscorlib]System.Collections.Generic.List`1<int32 modopt(int32)>
{
    .method public specialname rtspecialname instance void .ctor()
    {
        ldarg.0
        call instance void class [mscorlib]System.Collections.Generic.List`1<int32 modopt(int32)>::.ctor()
        ldstr "hello world"
        call void [mscorlib]System.Console::WriteLine(object)
        ret
    }

    .method public static void Main()
    {
        .entrypoint
        newobj instance void Extender::.ctor()
        call void [SignatureCycle2]User::X(class [mscorlib]System.Collections.Generic.List`1<int32 modopt(int32)>)
        ret
    }
}

 