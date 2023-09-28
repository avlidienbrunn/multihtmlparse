Mix.install([
    {:floki, "~> 0.34.3"},
    {:fast_html, "~> 2.0"}
], config: [
    floki: [html_parser: Floki.HTMLParser.FastHtml]
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
          IO.puts "floki/fasthtml: #{Floki.raw_html(elements) |> Base.encode64}"
      {:error, _} ->
          IO.puts "ELIXIR ERROR!"
    end
  end
end

System.argv()
  |> Run.main