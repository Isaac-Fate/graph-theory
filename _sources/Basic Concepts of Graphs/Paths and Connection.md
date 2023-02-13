
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
:label: pro:7

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

Imagine removing one edge from the original graph $G$.
Then we can obtain at most one more component
by cutting in half one of $G$'s components.
See {numref}`fig:5`.


```{figure} /figures/g-005.png
---
name: fig:5
---

The graph $G$ has 2 components.
If we remove edge $56$,
then $G-56$ still has 2 components.
But if we remove edge $24$, then
the remaining graph $G-24$ has 3 components.


```

````{prf:proposition}
:label: pro:6

If $e \in E$, then we have

```{math}
:label: eq:11
\begin{align}\omega(G) \leq\omega(G-e)
\leq\omega(G) + 1
\end{align}
```

````

Inequalities {eq}`eq:11` describe this idea in a compact way.
The first inequality $\omega(G) \leq \omega(G-e)$
says the number of components may increase by cutting an edge.
While the second inequality says this number will be increased
by at most one.


````{prf:proof}

If $e$ is a loop, then the conclusion is trivial.
We assume $e = uv$ is not a loop, i.e.,
$u$ and  $v$ are distinct,
in the rest of the proof.
Suppose that the components of $G$
are  $G[V_1], \ldots, G[V_\omega]$.
Without loss of generality,
we may also assume that $u, v \in V_1$.

(Case 1) Suppose that there exists a $(u,v)$-path in $G-e$,
then $u$ is still connected to $v$ in $G-e$,
i.e., $u \sim v$ in $G-e$.
Pick an arbitrary vertex $x \in V_1$.
Suppose that $x$ is originally connected to $u$
by a path $P$ containing $e$,
then $P$ is of the form

```{math}
\begin{align*}
P = x \cdots v e u
\end{align*}
```

Hence, $x$ must be connected to $v$ in $G-e$,
i.e., $x \sim v$,
since the $(x,v)$-section
in $P$ does not involve  $e$.
But $x \sim v$.
By the transitivity, we have $x \sim u$.
Therefore,

```{math}
\begin{align*}
x \sim u
\quad\forall x \in V_1
\end{align*}
```

This means $V_1$ remains a equivalent class in  $G-e$.
In this case,  $\omega(G-e) = \omega(G)$.

(Case 2) We now consider the case where
$u$ is disconnected from  $v$ in $G-e$.
For any vertex $x \in V_1$,
if $x$ is disconnected from $u$ in  $G-e$,
then $x$ must be originally connected to $u$ in $G$
by a path containing edge $e$.
Applying a similar argument as before,
we conclude that $x \sim v$ in $G-e$.
Therefore, for every  $x \in V_1$,
in graph $G-e$, we have either
- ➀ $x \sim u$, or
- ➁ $x \sim v$


But $x$ cannot be connected to both  $u$ and  $v$
since  $u$ and  $v$ are
assumed disconnected from each other.
It then follows that  $V_1$ can be partitioned into
two equivalent classed, $[u]$ and  $[v]$, that is,

```{math}
\begin{align*}
V_1 = [u]\uplus[v]\end{align*}
```

Therefore, $G-e$ has one more component than that of $G$,
and hence  $\omega(G-e) = \omega(G) + 1$.

````

Consider a path graph $P_n$ on $n$ vertices.
It is connected and it has altogether $n-1$ edges.
Apparently, if we remove any edge from it,
then we will end up with a disconnected graph.
This somehow tells us that
for a graph to be connected,
it cannot have too few edges,
which leads to the question that
what is the minimum number of edges
of a connected graph of order $n$?


````{prf:proposition}
:label: pro:8

The minimum number of edges of
a connected graph on $n$ vertices
is $n-1$.

````

````{prf:proof}

We shall prove by induction on the order.
The induction hypothesis is that
if $G$ is a connected graph $G$ with minimum number of edges
and its order is less than or equal to $n$,
then it has exactly $n-1$ edges.

**Base Case:**
If $G$ is a trivial graph,
then clearly it has no edges.

**Inductive Step:**
Assume the hypothesis holds for $n = k$.
Note that we only need to show
$G$ has $k$ edges under the case where
$G$ is of order $k+1$.
Because $G$ is a connected graph with minimum number
of edges.
By removing any edge, say $e$, from $G$
will result in a disconnected graph $G-e$.
And by {prf:ref}`pro:6`,
we know $G-e$ has two components, say $G_1$ and $G_2$.
Note that both $G_1$ and $G_2$ are of
orders less than or equal to $k$,
say $n_1$ and $n_2$, respectively.
Moreover, both $G_1$ and $G_2$ are connected graphs
with minimum number of edges.
Hence, applying the induction hypothesis
to both $G_1$ and $G_2$,
we conclude that

```{math}
\begin{align*}\abs{E(G_1)} = n_1 - 1
\quad\text{and}\quad\abs{E(G_2)} = n_2 - 1
\end{align*}
```

Therefore, the total number of edges of $G$ is

```{math}
\begin{align*}\abs{E(G)} = \abs{E(G_1)} + \abs{E(G_2)} + 1
= n_1 - 1 + n_2 - 1 + 1
= n_1 + n_2 - 1
= \abs{V(G)} - 1
= k
\end{align*}
```

The second last equality follows from the fact that
the vertices of $G$ is partitioned into
vertices of $G_1$ and $G_2$, respectively,
since $G_1$ and $G_2$ are complements.
This completes the proof.

````

Apart from the path graph $P_n$,
{numref}`fig:6` also depicts several other
connected graphs of order 6
with minimum number of edges,
in this case, 5 edges.
Such graphs are called trees,
as we will formally introduce in {doc}`/Trees/index`.


```{figure} /figures/g-006.png
---
name: fig:6
---

Connected graphs on 6 vertices
with minimum number of edges,
i.e., 5 edges.


```

````{prf:proposition}
:label: pro:7

Let $G$ be a simple and connected graph
with order greater than or equal to 3.
If $G$ is not complete,
then there exist three vertices $u$, $v$ and $w$ such that
$uv, vw \in E$ but $uw \notin E$.

````

````{prf:proof}

Because $G$ is not complete,
there exist two vertices $u$ and $w$ that are not incident.
Let $P$ be a shortest path from $u$ to $w$.

If $P$ is of length 2, then we can write
$P = u v w$.
Edges $uv$ and $vw$ exist in $G$.
But the edge $uw$ does not, which is as desired.

If the length of $P$ is greater than or equal to $3$,
then $P$ is of the form

```{math}
\begin{align*}
P = u x v \cdots w
\end{align*}
```

Note that $uv \notin E$.
Otherwise, $u v \cdots w$ would be
a shorter $(u,w)$-path than $P$.
In this case the vertices $u$, $x$ and $v$ are as desired.

````
