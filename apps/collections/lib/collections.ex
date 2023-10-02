defmodule Collections do
  def lists do
    # singly linked list
    # type invariant collection

    # syntax: [ , , ...]
    # properties: head?, tail?, lenght
    some_list = [1.618, "golden", :ratio]

    _some_list_pre_prended = ["new value" | some_list]
    # takes one val only
    # ! prefer prepend over append

    # list concat
    _some_list_appended = some_list ++ ["new value"]
    _some_list_concated = some_list ++ ["new value", "another new value"]

    # list substraction
    _some_list_substracted = some_list -- [1.618]
    # ! substracting missing values is safe
    # ! substraction occurs on first element to be substracted
    # ! substraction uses strict comparison

    # head
    _some_head = hd some_list

    # tail - list containing all the last elements
    _some_tails = tl some_list

    # pattern matchin
    # _head is head of some list
    # _tail is remaining element of some list
    [_head | _tail] = some_list

  end

  def tuples do
    # stored contiguously in memory
    # length -> fast
    # modification -> slow
    # type irrespective
    _some_tuple = {1, 2, 3, "4", :five}
  end

  def keywords_list do
    # list of two elements tuple
    # first element has to be an atom
    # keys are atoms
    #  a keyword list is a special list of two-element tuples whose first element is an atom
    # ! ordered keys as specified by the developer., non-unique keys
    _some_keywords_list = [foo: "foo", bar: "bar", foo: "foo"]
    _same_some_keywords_lsit = [{:foo, "foo"}, {:bar, "bar"}, {:foo, "foo"}]
  end

  def maps do
    # "objects" - kv
    # any type of keys
    # un ordered as specified by developer
    some_map = %{:foo => "bar", "hello" => :world}
    _v = some_map[:foo]
    __v = some_map["hello"]

    # variables can be keys
    key = "hello"
    _some_other_map = %{key => "world"}

    atom_only_keys_map = %{foo: "foo", bar: "bar", baz: "baz"}
    ___v = atom_only_keys_map.foo # read only

    # update map
    map_to_update = %{foo: "bar", hello: "world"}
    _updated_map = %{map_to_update | foo: "foofoo"} # ! only works if key is present. keyerror is raised if not

    Map.put(map_to_update, :baz, "baz")
  end
end
