
```{index} acyclic graphs
```

```{index} tree
```
# Definition of Trees

We call a graph **acyclic**
if it contains no cycles.
A **tree** is a connected acyclic graph.
A tree is clearly a simple graph for there cannot be any loops (1-cycles)
or parallel edges (2-cycles).

If a tree is nontrivial, then the degree of every vertex
must greater than or equal to 1 since a tree is connected.
Moreover, there always exists at least one vertex with degree 1.
If this is not the case, then we end up with a graph with
$\delta \geq 2$.
But this further implies that there exists a cycle
in the graph by {prf:ref}`pro:5`,
contradicting the definition of a tree.




````{prf:theorem}
:label: thm:2

In a tree $T$, any two distinct vertices are connected by
a **unique** path.

````

````{prf:proof}

Assume there are two distinct $(u,v)$-paths,
$P_1$ and  $P_2$(regraded as path graphs).
Then there exists at least one distinct edge
in these two, say $e=xy$.
Without loss of generality,
we may assume  $e \in V(P_1)$.


Consider the graph $P_1 \cup P_2 - e$.
We claim that it contains a $(x,y)$-path.
To see this, we note that there exist a $(x,u)$-path
and a $(v,y)$-path in  $P_1$,
and also a  $(u,v)$-path in $P_2$.
By concatenating all these three paths,
we will obtain a $(x,y)$-walk (not necessarily a path).
But by {prf:ref}`pro:1`,
we can always extract a $(x,y)$-path from it, say $P_3$.

Now, we have two distinct paths from $x$ to $y$ in $T$.
One is $xy$ and the other is  $P_3$,
which contradicts the hypothesis.

````

The graph in {numref}`fig:4` is certainly not a tree.
But any two distinct vertices are indeed connected by
a unique path.
Therefore, for the converse of {prf:ref}`thm:2` to hold,
we need to exclude the cases where graphs contain loops.


```{figure} /figures/g-004.png
---
name: fig:4
---
It will become a tree if the loops are removed.

```

````{prf:theorem}
:label: thm:3

If graph $T$ is loopless and
there exists one and only one path
connecting each pair of distinct vertices,
then $T$ is a tree.

````

````{prf:proof}

First, note that $T$ is connected.
Assume, on the contrary,
there exists a cycle $C$ in  $G$.
Let  $e$ be an edge in  $C$.
Since  $T$ is assumed loopless,
the two ends of  $e$ must be distinct, say  $x$ and $y$.

Note that there exists a $(x,y)$-path in  $C - e$,
which is different from the path $xy$.
(In fact, this path is $C-e$ itself.)
This leads to a contradiction.

````

````{prf:theorem}
:label: thm:4

Let $T$ be a tree. Then we have

```{math}
:label: eq:10
\begin{align}\abs{E} = \abs{V} - 1
\end{align}
```

````

````{prf:proof}

We shall prove by induction on the order $\abs{V}$.

**Base Case:** If $\abs{V} = 1$,
then $T$ is a trivial graph without any edges,
and hence {eq}`eq:10` holds.

**Inductive Step:** Assume this theorem
holds for any trees with order $k$.
Suppose now $\abs{V(T)} = k+1$.
Pick a vertex $v$ with $\deg(v) = 1$, and then remove it from $T$.
This is always possible as we have noted.
Observe that  $T - v$ remains a tree.
And by removing $v$,
we only remove a single edge from  $T$ since  $\deg(v) = 1$.
Therefore, $\abs{E(T-v)} = \abs{E(T)} - 1$.
But by the induction hypothesis,
we know $\abs{E(T-v)} = \abs{V(T-v)} - 1 = k - 1$.
It then follows that

```{math}
\begin{align*}\abs{E(T)} = \abs{E(T-v)} + 1
= k-1+1
= (k+1)-1
= \abs{V(T)} - 1
\end{align*}
```

This completes the proof.

````
