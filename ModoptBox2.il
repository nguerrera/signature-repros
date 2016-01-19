// ildasm of ModoptBox.dll from C++, change modopt([mscorlib]System.Int32) to modopt(int32): type ref -> type spec

.assembly extern mscorlib {}
.assembly ModoptBox2 {}
.module ModoptBox2.dll

.class public sequential ansi sealed beforefieldinit S`1<T>
       extends [mscorlib]System.ValueType
{
    .size 1
}

.class public abstract auto ansi sealed beforefieldinit ModoptBox
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  Box(valuetype S`1<valuetype S`1<valuetype S`1<int32>>> x) cil managed
  {
     ret
  }

  .method public hidebysig static void  Box(class [mscorlib]System.ValueType modopt(int32) modopt([mscorlib]System.Runtime.CompilerServices.IsBoxed) x) cil managed
  {
  }

}
