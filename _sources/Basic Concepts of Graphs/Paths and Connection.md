
```{index} walk in a graph
```
# Paths and Connection

A **walk** in a graph is a sequence of edges $e_1 \cdots e_k$ joining a *nonempty* sequence of vertices $v_0 v_1 \cdots v_k$, which is denoted by

```{math}
:label: eq:3
\begin{align}
v_0 e_1 v_1 \cdots e_k v_k
\end{align}
```

```{index} trivial walk
```

with each edge written after one of its end and followed by its other end. Note that though the sequence of vertices in a walk is required to be nonempty, the sequence of edges may be empty. And in that case, the walk contains only one vertex, say $v_0$, and it is called the **trivial walk**.

:::{note}

The term **sequence** in mathematics often means an infinite sequence, which is essentially a function defined on $\N^\ast$. However, in graph theory, we usually refer to sequence as a **finite** list of ordered elements.

:::

```{index} origin of a walk
```

```{index} terminus of a walk
```

```{index} trail in a graph
```

```{index} path in a graph
```

```{index} connected and disconnected vertices
```

We call a walk $W$ from $v_0$ to $v_k$ a $(v_0, v_k)$-walk. The vertices $v_0$ and $v_k$ are referred to as the **origin** and the **terminus** of that walk, respectively.

It should be emphasized that neither the edges nor the vertices in a walk are necessarily distinct. However, if all edges of walk $W$ are distinct, we call $W$ a **trail**. And if all vertices in $W$ are distinct, it is then called a **path**. Of course, all edges in a path are also distinct since the vertices are.

Two vertices are said to be **connected** if there exists a path joining them. Otherwise, they are **disconnected**.

The length of a path $P$, written as $\abs{P}$, is defined as the number of edges along it. Note that the length of a trivial path is zero since there are no edges.

If $G$ is a simple graph, then we may write a walk simply as a sequence of vertices since there is one and only one edge joining each pair of consecutive vertices in the walk. For example, we write the $(v_0, v_k)$-walk in {eq}`eq:3` as

```{math}
\begin{align*}
v_0 v_1 \cdots v_k
\end{align*}
```

with edges dropped.



````{prf:proposition}

If there is a $(u, v)$-walk in $G$, then there is also a $(u, v)$-path in $G$.

````

This can be proved easily using the following algorithm ({prf:ref}`alg:1`).


````{prf:algorithm} Extracting a Path From a Walk
:label: alg:1
```{image} /alg-snippets/4b83e256ea5d3d488c963b85de9f4ade16fd805175f2c46a009cc7e32000318d.png
:alt: Extracting a Path From a Walk
:align: center
```
````

````{prf:proposition}

The number $(v_i, v_j)$-walks of length $k$ in $G$ is the $(i,j)$-th entry of the $k$-th power of the adjacency matrix $A$, i.e., $A^k$.

````

````{prf:proof}

TODO

````
