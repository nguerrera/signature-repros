// C++ emits boxed value types as System.ValueType modopt(<strong value type>) modopt(IsBoxed)
// <strong value type> can be constructed type.
// when <strong value type> is a primitive, it is emitted as a typeref token, not typespec with e.g. I4

generic<typename T>
public value struct S
{
};

public ref struct ModoptBox abstract sealed
{
  static void Box(int^ x)
  {
  }
  
  static void Box(S<S<S<int>>> x)
  {
  }
};

