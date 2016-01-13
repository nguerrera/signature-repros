// csc.exe with reference to cyclical signature
//
// Repro:
//    build.bat
//    csc.exe UseSignatureCycle2.cs /r:SignatureCycle2.exe
//
// Expected result:
//   Compilation fails with suitable error message.

// Actual result:
//   Roslyn -> crashes (stack overflow)
//   Native CSC -> crashes (stack overflow)

class P
{
    static void Main()
    {
        User.X(new Extender());
    }
}