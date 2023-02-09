# Cycles

One simple yet useful observation of a particular longest path
in a graph is that all the neighbors of the terminus must
occur along the path. To be specific,
if $P = v_0 e_1 v_1 \cdots e_k v_k$ is one of the longest paths in $G$
then $P$ must contain all vertices in $N(v_k)$.
To prove this, we assume $P$ does not contain $v_{k+1} \in N(v_k)$.
(Suppose $\psi(e_{k+1}) = v_k v_{k+1}$.)
Then the path $P + e_{k+1}v_{k+1}$ is clearly longer than $P$,
which leads to a contradiction.
{numref}`fig:1` depicts such an example.
Note that if $8$ were a neighbor of $7$,
then path $12345678$ would be longer.


```{figure} /figures/g-001.png
---
name: fig:1
---
Path $1234567$ is one of the longest paths.

```

````{prf:proposition}

If $\delta(G) \geq 2$, then we can find a cycle starting from each vertex of $G$.

````

````{prf:proof}

The conclusion is trivial if $G$ has a loop. Now, we assume that $G$ contains no loops.

:::{note}

Note that there are cases where $G$ has no paths if we allow it to have loops. For example, if every vertex of $G$ is incident with just exactly one loop, then $G$ still satisfies the hypothesis. But there are no paths in $G$.

:::

Let $P = v_0 e_1 v_1 \cdots e_{k-1} v_{k-1} e_k v_k$ be one of the longest paths in $G$. Since $\deg(v_k) \geq 2$ and $v_k$ has no loops, $v_k$ has a neighbor, say $u$, other than $v_{k-1}$. As noted before, $u$ must occur in $P$. Therefore, there exists a cycle from $u$ to $u$.

````

In fact, we have an algorithm to find a cycle without knowing the longest path in $G$.


````{prf:algorithm} Finding a Cycle in $G$ With $\delta(G) \geq 2$
:label: alg:2
```{image} /alg-snippets/c3eb92b6e95997d4bd5c7ce2c81c1f26bc1b5b9ca6dc7292ab1eb575dc90b179.png
:alt: Finding a Cycle in $G$ With $\delta(G) \geq 2$
:align: center
```
````

````{prf:proof}

We need to show that {prf:ref}`alg:2` works correctly.

**Initialization:** Firstly, note that line 7 is possible
since $v_0$ has no loops and $\deg(v_0) \geq 2$.

We claim the loop invariants are
- ➀ $P$ has $j$ vertices assuming that
we are to execute the $j$-th iteration,
- ➁ $P$ has no duplicated vertices, i.e., $P$ is a path, and
- ➂ edge $e$ is incident with $v$.

**Maintenance:** Suppose we are in the $j$-th iteration.
After line 9, $P$ remains a path. Because $\deg(v) \geq 2$,
there exists an edge $f$ other than $e$ that is incident with $v$.
Hence, line 10 works correctly.
After executing line 12, we find that the number of vertices in $P$ is increased by one, i.e., $j+1$,
$P$ is still a path and $e$ is incident with $v$.

**Termination:** We can complete at most $n-1$ iterations
since $P$ can hold at most as many vertices as there are in $G$.
Upon termination,
we find $v$ is in $P$ and $e$ is incident with $v$.
By removing from $P$ all vertices and edges before $v$
and then append to it edge $e$ and vertex $v$,
we will obtain a cycle from $v$ to itself.

````

````{prf:theorem}
:label: thm:1

TODO

````

```{index} girth
```

The **girth** of a graph is defined as
the length of its shortest cycle.
We say the girth of $G$ is infinity if it contains no cycles.
Apparently, if $G$ has girth 1, then it contains a loop.
If it has girth 2, then there must be a parallel edge.
But it has no loops.
And if the girth of $G$ is greater than or equal to 3,
then it must be a simple graph.


````{prf:proposition}
:label: pro:3

A $k$-regular graph with girth 4 has at least $2k$ vertices.
Moreover, if it has exactly  $2k$ vertices,
then it must be $K_{k,k}$, i.e.,
a complete bipartite graph with both sides of
the bipartition having the same size $k$.
Conversely, $K_{k,k}$ is a $k$-regular graph with girth 4.

````
{numref}`fig:3` depicts several $K_{k,k}$ graphs.


```{figure} /figures/g-003.png
---
name: fig:3
---
(a) $K_{2,2}$. (b) $K_{3,3}$. (c)  $K_{5,5}$.
(d)  $K_{10,10}$.

```

````{prf:proof}

Take a pair of incident vertices $u$ and $v$ in $G$.
We have $N(u) \cap N(v) = \emptyset$.
Otherwise, a triangle would appear.
Because the degrees of $u$ and  $v$ are both $k$,
equivalently, the sizes of their neighbors are $k$,
$G$ must has at least $2k$ vertices
having these two disjoint sets $N(u)$ and $N(v)$.

Suppose $\abs{V} = 2k$.
Pick a pair of incident vertices $u$ and $v$ as before.
From the previous proof, we know
$\abs{N(u)} = \abs{N(v)} = k$ and they are disjoint.
Since  $G$ now only has  $2k$ vertices,
$V$ is composed of
these two neighbor sets, i.e., $V = N(u) \uplus N(v)$.
Observe that each pair of vertices in  $N(u)$
cannot be joined with each other for
there are no triangles.
The same conclusion also holds for $N(v)$.
Therefore, every vertex in
$N(u)$ is joined with every vertex in $N(v)$
because the degree of every vertex is $k$.
This shows that $G$ is  $K_{k,k}$.

We also need to show $K_{k,k}$ is a $k$-regular graph with girth 4.
Clearly, it is $k$-regular.
It contains no cycles with length 1 or 3 by {prf:ref}`thm:1`.
Of course, it does have any parallel edges,
hence no 2-cycles.
And we can easily find a 4-cycle in it.
For example, if we suppose
$X=\{x_1,\ldots,x_k\}$ and $Y=\{y_1,\ldots,y_k\}$
form a bipartition of $K_{k,k}$, then
$x_1 y_1 x_2 y_2 x_1$ is a 4-cycle.

````
