
```{index} degree sequence
```
# Graph Realization Problem

Let $G$ be a graph with vertices $v_1, \ldots, v_n$.
The **degree sequence** of $G$,
as the name suggests,
is a list of integers consists of vertex degrees.
It is denoted by

```{math}
\begin{align*}\mathbf{d} = (\deg(v_1), \ldots, \deg(v_n))
\end{align*}
```

And it is often written in non-increasing order.

Given an arbitrary list of non-negative integers
$\mathbf{d}^\prime = (d_1^\prime, \ldots, d_n^\prime)$,
it is possible that
we cannot find any graphs whose degree sequence
is $\mathbf{d}^\prime$.
For example, no graphs have the following degree sequence:

```{math}
\begin{align*}(2, 2, 1, 1, 1)
\end{align*}
```

Why? Note that $2+2+2+1+1+1 = 9$.
Hence, by {prf:ref}`thm:5`, we see that is is impossible to
find such a graph since the sum of degrees should be an even number.
Alternatively, one may also argue by {prf:ref}`cor:2`
that the number of odd vertices (the last three vertices)
is 3, which is an odd number.

So, what conditions must a list of non-negative integers
must satisfy so that it is a degree sequence?
The answer is simple,
as the next proposition will show,
the provided list of integers only need to satisfy
condition given in {prf:ref}`thm:5`, that is,
all the integers need to sum up to an even number.


````{prf:proposition}
:label: pro:10

A sequence $(d_1, \ldots, d_n)$ of non-negative integers
is a degree sequence if and only if
$\sum_{i=1}^n d_i$ is even.

````

````{prf:proof}

TODO

````

```{index} graphical degree sequence
```

```{index} graph realization problem
```

From the above proof, we see that
the graph we construct is a multigraph
since we mainly increase the vertex degrees by adding loops.
This invites us to think can we
construct a *simple graph*
out of the given sequence of integers?
This question is much more complecated.
And we say that a sequence of integers
is **graphical**
if it is a degree sequence of some simple graph.
The problem of finding such a simple graph
is referred to as
the **graph realization problem**.


## Havel-Hakimi Theorem

The algorithm {cite}`hakimiRealizabilitySetIntegers1962`
constructs a simple graph
through a recursive procedure.
The theorem it based on is referred to
as Havel-Hakimi theorem.
Before proving this theorem,
we first introduce a lemma,
which will be helpful in the later proof.


````{prf:lemma}
:label: lem:2

Let $G$ be a simple graph.
If
- ➀ $u_1 v_1, u_2 v_2 \in E$ and
- ➁ $u_1 v_2, u_2 v_1 \notin E$,


then the graph

```{math}
\begin{align*}
G^\prime = G - \{u_1 v_1, u_2 v_2\}
+ \{u_1 v_2, u_2 v_1\}\end{align*}
```

has the same degree sequence as $G$.

````

This lemma mainly says we can move two
non-incident edges in $G$ in a way that
the degree sequence remains unchanged.
Refer to {numref}`fig:7` to get more insight.


```{figure} /figures/g-007.png
---
name: fig:7
---

Dash lines are removed edges while
solid lines are newly added.


```

````{prf:proof}

This result is evident.
We note that the degrees of vertices
$u_1$, $v_1$, $u_2$ and $v_2$ remain unchanged
in $G^\prime$ since from the perspective of
each of these four vertices,
one incident edge is removed but a new one is added.
And the degrees of all the other vertices in $G^\prime$
are also the same as in $G$.
Hence, the degree sequence of $G^\prime$ is the same as $G$.

````
