using Graphs
using Plots, GraphRecipes
using LaTeXStrings
using Random

begin
    Random.seed!(12)

    G = [[1,1,2,2],[3],[1]]

    plt = plot(
        dpi=300
    )

    graphplot!(
        G, 
        names=[L"v_1", L"v_2", L"v_3"],
        nodeshape=:circle,
        arrow=nothing,
        markercolor=:lightblue,
        markersize=0.03
    )

    display("image/png", plt)  
end

begin
    Random.seed!(0)

    G = Graph(5)
    add_edge!(G, 1, 2)
    add_edge!(G, 1, 3)
    add_edge!(G, 1, 4)
    add_edge!(G, 2, 5)
    add_edge!(G, 3, 5)
    add_edge!(G, 4, 5)
    add_edge!(G, 2, 4)

    plt = plot(
        dpi=300
    )

    graphplot!(
        G,
        names=1:nv(G),
        nodeshape=:circle,
        markercolor=:lightblue
    )

    display("image/png", plt)  

    for v in vertices(G)
        println(v)
    end

    for e in edges(G)
        println(e)
    end
end