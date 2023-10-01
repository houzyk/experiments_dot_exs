defmodule Basics do
  def basic_data_types do
    # integers
    _some_deci_int = 1 # base 10
    _some_binary_int = 0b0110 # base 2
    _some_octal_init = 0o11 # base 8
    _some_hexa_int = 0x11 # base 16

    # floats double precision up to 64 bit
    _some_float = 0.12
    _some_exponent_float = 2.0e10 # 2 x (10 ^ 10) = 20000000000
    # ? (n.z)eX <=> (n.z) x (10 ^ X)

    # booleans
    _true = true
    _false = false
    _nil = nil
    # ? is_boolean/1
    # ! everything is truthy except false and nil

    # atoms
    _atomic_hello = :hello
    # ? is_atom/1
    # ! :true === true
    # ! :false === true
    # ! :nil === nil
    # for symbols with special characters, use :"symbol name here"
    # the name of a module is an atom My.Module == :"Elixir.My.Module"
    # names of erlang built-in libraries are also atoms

    # string - double quotes
    _some_string = "string"
  end

  def basic_operations do
    # arithmetic
    # + - * /
    # ! / => float
    # ! div/2 => integer

    # boolean arithmetic
      # boolean only
      # and, or, not

      # all types
      # ? !/1 !x => takes any x type, if x is truthy -> false else true
      # ? ||/n, x || z || y || ... => takes n-ary arguments of any type,
      #                              will return the first truthy value
      #                              if no truthy found, will return last falsy value
      # so, || keeps on iterating until a truthy value is found

      # ? &&/n, x && y && z, takes n-ary arguments of any type
      #                     will erturn the first falsy value
      #                     if no falsy found, will return the last truthy value
      # so, && keeps on iterating until a falsy value is found

  # comparison
  # >, <. <=, >=, !=, !==
  # == , non-strict comparison of all types
  # ===, strict comparison of floats and integers

  # ! sorting occurs across al types
  # number < atom < reference < function < port < pid < tuple < map < list < bitstring

  # interpolation
  string_to_interpolate = "hello"
  some_interpolation = "#{string_to_interpolate} world"
  _string_concat = string_to_interpolate <> some_interpolation

  end
end
