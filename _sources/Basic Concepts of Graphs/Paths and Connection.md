# Paths and Connection

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
