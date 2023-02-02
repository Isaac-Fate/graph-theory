# Isomorphism

Two graphs $G$ and $H$ are identical, written as $G = H$, if all their components are the same, that is, $V(G) = V(H)$, $E(G) = E(H)$ and $\psi_G = \psi_H$. Identical graphs of course share the same properties. However, a graph $H$ does not necessarily have to be exactly $G$ to preserve all its properties. The labels of the vertices and edges are immaterial.


````{prf:definition}

Two graphs $G$ and $H$ are said to be isomorphic, written as $G \cong H$, if there exist bijections $\theta: V(G) \to V(H)$ and $\phi: E(G) \to E(H)$ such that

```{math}
:label: eq:1
\begin{align}\psi_G(e) = u v
\implies\psi_H(\phi(e)) = \theta(u) \theta(v)
\end{align}
```

```{index} isomorphism
```

The ordered pair $(\theta, \phi)$ is called an **isomorphism** between $G$ and $H$.

````
{cite}`bondyGraphTheoryApplications1976` includes the reverse direction of {eq}`eq:1` in the definition, that is,

```{math}
\begin{align*}\psi_G(e) = u v
\iff\psi_H(\phi(e)) = \theta(u) \theta(v)
\end{align*}
```

But the reverse direction is redundant. To see this, we suppose that $\psi_H(\phi(e)) = \theta(u) \theta(v)$ and $\psi_G(e) = xy$. By {eq}`eq:1`, we have $\psi_H(e) = \theta(x) \theta(y)$. It then follows that $\theta(u) \theta(v) = \theta(x) \theta(y)$. We have either $\theta(u) = \theta(x)$, $\theta(v) = \theta(y)$, or $\theta(u) \theta(y)$, $\theta(v) = \theta(x)$. Because $\theta$ is a bijection, either $u=x$, $v=y$, or $u=y$, $v=x$. Either way, we have $uv = xy$. Therefore, $\psi_G(e) = x y = u v$, which proves the reverse direction $\Leftarrow$.

For simple graphs, there is no need to find a bijection between edges once the bijection $\theta$ between vertices is established.


````{prf:proposition}
:label: pro:1

Let $G$ and $H$ be simple graphs. Then $G \cong H$ if and only if there exists a bijection $\theta: V(G) \to V(H)$ such that

```{math}
:label: eq:2
\begin{align}
u v \in E(G)
\implies\theta(u) \theta(v) \in E(H)
\end{align}
```

````

````{prf:proof}
(Necessity) Suppose that there exist $\theta$ and $\phi$ satisfying {eq}`eq:1`. If $e = u v \in E(G)$, then by {eq}`eq:1`, $\psi_H(\phi(e)) = \theta(u) \theta(v)$, which implies $\theta(u) \theta(v) \in E(H)$.

(Sufficiency) Define $\phi: E(G) \to E(H)$ by

```{math}
\begin{align*}\phi(u v) = \theta(u) \theta(v)
\end{align*}
```

We need to show $\phi$ is bijective. Suppose $\phi(u v) = \phi(x y)$. We have $\theta(u) \theta(v) = \theta(x) \theta(y)$. Applying a similar argument we used in the previous comments, we will finally obtain $u v = x y$, which means $\phi$ is injective. On the other hand, for any edge $f \in H$. Write $f = ij$(i.e., $\psi_H(f) = ij$). Then because $\theta$ is bijective, there exist $u, v \in V(G)$ such that $\theta(u) = i$ and $\theta(v) = j$. Hence, $\phi(u v) = ij$, which implies $\phi$ is surjective.

If $\psi(e) = uv$, i.e., $e = uv \in E(G)$, then we have $\theta(u) \theta(v) \in E(H)$ by {eq}`eq:2`. Equivalently, $\psi_H(\phi(e)) = \theta(u) \theta(v)$.

````

```{index} complete bipartite graph
```

A **complete bipartite graph** is a *simple* bipartite graph with bipartition $(X, Y)$ in which each vertex in $X$ is incident with each vertex in $Y$. That is, if $x \in X$ and $y \in Y$, then $xy \in E$. If $\abs{X} = m$ and $\abs{Y} = n$, we often use the symbol $K_{m,n}$ to denote this complete bipartite graph. (See {numref}`fig:2`.) Note that this implicitly implies that the complete bipartite graph is unique in some way since we can represent it with a common symbol. Indeed, it is unique up to isomorphism, as we will show in the next proposition.


```{figure} /figures/g-002.png
---
name: fig:2
---
Both (a) and (b) are $K_{5,3}$.

```

````{prf:proposition}

Let $G[X, Y]$ and $H[U, V]$ be two complete bipartite graphs with $\abs{X} = \abs{U}$ and $\abs{Y} = \abs{V}$. Then $G \cong H$. In other words, a complete bipartite graph is unique up to isomorphism if the sizes of its two vertex sets in bipartition are determined.

````

````{prf:proof}

Since $\abs{X} = \abs{U}$ and $\abs{Y} = \abs{V}$, we can find a bijection $\theta: V(G) \to V(H)$ in such a way that $\theta$ maps each point in $X$ onto $U$, and each point in $Y$ onto $V$. Then for an edge $xy \in E(G)$, we have $\theta(x)\theta(y) \in E(H)$ since there has to be an edge connecting $\theta(x) \in U$ and $\theta(y) \in V$ by the definition of complete bipartite graphs. This proves $G \cong H$ by {prf:ref}`pro:1`.

````
