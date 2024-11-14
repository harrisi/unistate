# Uniwhat

testing state in unifex

## Use

```sh
$ git clone https://github.com/harrisi/unistate
$ cd unistate
$ mix deps.get
$ iex -S mix
```

```elixir
iex(1)> {:ok, state} = Uniwhat.init()
{:ok, #Reference<0.1243177624.2685009926.61832>}
iex(2)> Uniwhat.do_work_on_state(state)
state->data = foo
                 {:ok, #Reference<0.1243177624.2685009926.61832>}
```
