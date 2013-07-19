**Presenter:** Dave Thomas

## Bio
This is a training session @ 2013 [Lone Star Ruby Conference](http://www.lonestarruby.org/2013/)

## Abstract
* introduction of elixir: Ruby-like formatted functional language

## Summary


## Memorable Quotes
* If you don't keep up with what's going on, you will eventually get out of date.
* The future is functional, the future is concurrent.

## Notes
Syntax for Exilir is a lot like Ruby, with different meaning..

    defmodule Sequence do

      def hello do
        IO.puts "hello"
      end

      # This is equivalent in Exilir
      def hello, do: IO.puts "Hello"
    end

    Sequence.hello

Functional language is all about pattern-matching

    defmodule Sequence do
      def len([]), do: 0
      def len([head | tail]), do: 1 + len(tail)
    end

Demonstration of Fibonacci numbers

    defmodule Sequence do
      def fib(0), do: 1
      def fib(1), do: 1
      def fib(n), do: fib(n-1) + fib(n-2)
    end

    IO.puts Sequence.fib(20)

    def map([], fun), do: []
    def map([head|tail], fun), do: [fun.(head) | map(tail, )]

Define test framework

    Extest.start
    defmodule TestIt do
      use Extest
      import Sequence

      test "basic fib function works" do
        assert fib(10) == 89
      end
    end


## External Links
* [Some related website](http://www.lonestarruby.org/2013/)