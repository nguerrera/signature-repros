// csc.exe with reference to type spec following (CLASS | VALUETYPE)
//
// Repro:
//    build.bat
//    csc.exe UseTypeSpecInWrongPlace.cs /r:TypeSpecInWrongPlace.exe
//
// Expected result:
//   Compilation fails with suitable error message.
//
// Actual result:
//   Roslyn:
//      compilation succeeds without warnings
//      run fails:
//         System.MissingMethodException: Method not found:  'Void User.X(System.Collections.Generic.List`1<Int32>)'.
//   
//   Native CSC:
//      compilation fails as expected:
//         UseTypeSpecInWrongPlace.cs(19,9): error CS0570: 'X' is not supported by the language

class P
{
    static void Main()
    {
        User.X(new System.Collections.Generic.List<int>());
    }
}