Mix.install([
    {:floki, "~> 0.34.3"},
    {:html5ever, "~> 0.14.0"}
], config: [
    floki: [html_parser: Floki.HTMLParser.Html5ever]
])

defmodule Flokiparse do
  def call(html_raw) do
    {:ok, html} = Floki.parse_document(html_raw)
      {:ok, html}
  end
end

defmodule Run do
  def main(args) do
    string = hd(args)
    case Flokiparse.call(string) do
      {:ok, elements} ->
          IO.puts "floki/html5ever: #{Floki.raw_html(elements) |> Base.encode64}"
      {:error, _} ->
          IO.puts "ELIXIR ERROR!"
    end
  end
end

System.argv()
  |> Run.main