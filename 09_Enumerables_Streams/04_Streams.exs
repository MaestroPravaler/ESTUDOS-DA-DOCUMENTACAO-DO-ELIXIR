# Como alternativa ao Enum, Elixir fornece o Stream módulo que suporta operações lazy
1..100_000 |> Stream.map(&(&1 * 3)) |> Stream.filter(odd?) |> Enum.sum #=> 7500000000

# Em vez de gerar listas intermediárias, os fluxos criam uma série de cálculos que são
# invocados apenas quando passamos o fluxo subjacente para o Enum. Os fluxos são úteis
# ao trabalhar com coleções grandes, possivelmente infinitas

# Ele também fornece funções para a criação de fluxos. Por exemplo, Stream.cycle/1 pode
# ser usado para criar um fluxo que circula um determinado enumerável infinitamente.
# Tenha cuidado para não chamar uma função como Enum.map/2 em tais streams, pois eles
# girariam para sempre:

stream = Stream.cycle([1, 2, 3])
Enum.take(stream, 10) #=> [1, 2, 3, 1, 2, 3, 1, 2, 3, 1]

# Stream.unfold/2 pode ser usado para gerar valores a partir de um determinado valor inicial
stream = Stream.unfold("hełło", &String.next_codepoint/1)
Enum.take(stream, 3) #=> ["h", "e", "ł"]

# O Stream.resource/3 pode ser usado para contornar recursos, garantindo que sejam abertos
# logo antes da enumeração e fechados posteriormente, mesmo em caso de falha. Por exemplo,
# File.stream!/1 baseia-se em Stream.resource/3
stream = File.stream!("path/to/file")
  %File.Stream{
    line_or_bytes: :line,
    modes: [:raw, :read_ahead, :binary],
    path: "path/to/file",
    raw: true
}
Enum.take(stream, 10)

# O exemplo acima irá buscar as primeiras 10 linhas do arquivo que você selecionou. Isso
# significa que os fluxos podem ser muito úteis para lidar com arquivos grandes ou até mesmo
# recursos lentos, como recursos de rede.
