#!/bin/bash
read -p "Enter your first number:" num1
read -p "Enter your second number:" num2
add=$(echo "$num1 + $num2" | bc)
sub=$(echo "$num1 - $num2" | bc)
mul=$(echo "$num1 * $num2" | bc)
echo
echo "Results:"
echo "$num1 + $num2 = $add"
echo "$num1 - $num2 = $sub"
echo "$num1 × $num2 = $mul"
if [ "$num2" == "0" ]; then
    echo "$num1 ÷ $num2 = Undefined (division by zero)"
else
    div=$(echo "scale=2; $num1 / $num2" | bc)
    echo "$num1 ÷ $num2 = $div"
fi
