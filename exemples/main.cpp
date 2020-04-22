#include <iostream>

template<typename T>
concept function_c = requires(T a) {
  a();
};

class FuncOK
{
public:
  void operator()()
  {

  }
};
class FuncKO
{

};

template<function_c T>
void f(T); // constrained C++20 function template

// Alternative ways to apply the same constraint:
// template<typename T>
//    requires Hashable<T>
// void f(T);
//
// template<typename T>
// void f(T) requires Hashable<T>;

int main() {
  std::cout<<"main"<<std::endl;
  f(int{}); // Error: int does not satisfy function_c
  f(FuncOK{}); // OK, FuncOK satisfies function_c
  f(FuncOK{}); // OK, FuncOK satisfies function_c
  f(FuncKO{}); // Error: FuncKO does not satisfy function_c
}
