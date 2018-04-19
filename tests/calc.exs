defmodule Calc do
# função de soma
    def sum(a, b) when is_integer(a) and is_integer(b) do
    a + b
    end

    def sum(_,_) do
      "Só operamos com numeros inteiros"
    end

# função de subtração
    def sub(a,b) when is_integer(a) and is_integer(b) do
     a - b
    end

    def sub(_,_) do
      "Só operamos com numeros inteiros"
    end

# função de multiplicação
    def mul(a,b) when is_integer(a) and is_integer(b) do
     a * b
    end

    def mul(_,_) do
    "Só operamos com numeros inteiros"
    end

# função de divisão
    def div(a,b) when is_integer(a) and is_integer(b) do
     a / b
    end

    def div(_,b) when b==0 do
     "Não é possível dividir um numero por zero"
    end

    def div(_,_) do
      "Só operamos com numeros inteiros"
    end

# função de potenciação
    def exp(a ,b) when is_integer(a) and is_integer(b) do
      :math.pow(a,b)
    end

    def exp(_ ,_) do
       "Tente usar inteiros"
    end
end

# entrada dos operandos
num1 = IO.gets("Entre com o primeiro operando:\n")
   |> String.replace("\n","")
   |> String.to_integer


num2 = IO.gets("Entre com a operação (- , +, /, *, ^):\n")
   |> String.replace("\n","")

num3 = IO.gets("Entre com o segundo operando:\n")
   |> String.replace("\n","")
   |> String.to_integer


# condionando chamada das funções
case {num1,num2, num3} do
   {num1, num2, num3} when num2 == "+" -> IO.puts Calc.sum(num1, num3)
   {num1, num2, num3} when num2 == "-" -> IO.puts Calc.sub(num1, num3)
   {num1, num2, num3} when num2 == "*" -> IO.puts Calc.mul(num1, num3)
   {num1, num2, num3} when num2 == "/" -> IO.puts Calc.div(num1, num3)
   {num1, num2, num3} when num2 == "^" -> IO.puts Calc.exp(num1, num3)
   {_, num2, _} when num2 != "^" or "/" or "*" or "+" or "-" -> IO.puts "Operação invalida! Use - , +, /, *, ^ "
 end
