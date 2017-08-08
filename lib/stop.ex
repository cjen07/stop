defmodule Stop do
  
  def run() do
    case f() do
      "" -> 
        IO.puts("finished")
      _ -> 
        IO.puts("bingo")
        g()
        run()
    end
  end

  def f() do
    IO.puts("ready")
    System.cmd("python", ["sphinx.py"], cd: "script", stderr_to_stdout: true)
    |> elem(0) 
  end

  def g() do
    System.cmd("python", ["press.py"], cd: "script", stderr_to_stdout: true)
  end

  def h() do
    System.cmd("sh", ["./press"], cd: "script", stderr_to_stdout: true)
  end

end
