// No bugs found here, just taking notes

// Repro #1: compile against modopt([mscorlib]System.Int32) [type ref], compiles and runs fine, emits modopt([mscorlib]System.Int32) [type ref]
// csc.exe /r:ModoptBox.dll UseModoptBox.cs

// Repro #1: compile against modopt(int32) [type spec], compiles and runs fine, emits modopt([mscorlib]System.Int32) [type ref]
// csc.exe /r:ModoptBox2.dll UseModoptBox.cs

class P
{
    static void Main()
    {
        ModoptBox.Box(42);
    }
}