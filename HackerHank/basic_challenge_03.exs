defmodule Solution do
    def solve(:eof) do
    end

    def solve(line) do
        IO.puts obs(String.to_interger(String.trim(line)))
        solve()
    end

    def solve() do
        solve(IO.gets(""))
    end
    
end