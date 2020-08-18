#!/bin/bash

echo "Testing FizzBuzz from 1 to 100"

for i in {1..100}
do
    # Get the current output
    read test

    # Compute expected
    if [[ $(($i % 3)) == 0 && $(($i % 5)) == 0 ]]
    then
        if [ "$test" != "FizzBuzz" ]
        then
            echo "FAIL: Number $i, Expected FizzBuzz, got $test"
        fi
    elif [ $((i % 5)) == 0 ]
    then
        if [ "$test" != "Buzz" ]
        then
            echo "FAIL: Number $i, Expected Buzz, got $test"
        fi
    elif [ $((i % 3)) == 0 ]
    then
        if [ "$test" != "Fizz" ]
        then
            echo "FAIL: Number $i, Expected Fizz, got $test"
        fi
    else
        if [ "$test" != "$i" ]
        then
            echo "FAIL: Number $i, Expected $i, got $test"
        fi
    fi
done

echo "Test Completed"
