# SIDE-trivium

**Lean 4 formalization of the Trivium bijection: seven mechanism classes ↔ seven quadratic discriminants.**

**Author:** J. York Seale (ORCID: [0009-0008-7993-0310](https://orcid.org/0009-0008-7993-0310))
**License:** MIT
**Programme:** PLACE TO STAND Research Programme

---

## What this kernel proves

The seven mechanism classes that govern off-line zero exclusion for the completed Riemann zeta function ξ(s) correspond exactly to the seven nontrivial quadratic field discriminants in the (ℤ/2)³ structure over the discriminant set {−1, 2, 3}.

The bijection:

| Class | Discriminant | Quadratic field |
|:--|:--|:--|
| C₁ Schwarz | d = −1 | ℚ(i) |
| C₂ Euler balance | d = 2 | ℚ(√2) |
| C₃ Functional equation | d = −2 | ℚ(√−2) |
| C₄ Modular | d = 3 | ℚ(√3) |
| C₅ Spectral | d = −3 | ℚ(√−3) |
| C₆ Cauchy-Riemann | d = 6 | ℚ(√6) |
| C₇ Hadamard | d = −6 | ℚ(√−6) |

The seven discriminants are exactly the seven nontrivial elements of (ℤ/2)³ when the three coordinates are interpreted as exponents of {−1, 2, 3} in the squarefree part of d.

## v0.1 contents

A single Lean module, `Trivium/Bijection.lean`, containing:

- The `MechanismClass` finite type (7 inhabitants, canonical kernel numbering).
- The `QuadraticDiscriminant` finite type (7 inhabitants, the squarefree values listed above).
- The pairing function `mechanismToDiscriminant` and its inverse.
- A proof that the pairing is a bijection (`triviumBijection : MechanismClass ≃ QuadraticDiscriminant`).
- The (ℤ/2)³ exponent-triple encoding, with proof that every discriminant maps to a non-zero element.
- The pairwise-distinctness theorem on the integer values of the seven discriminants.
- A squarefreeness witness for each discriminant.
- The main theorem `trivium_theorem`, asserting the bijection and the cardinality match.

| Metric | Value |
|:-------|:------|
| Files | 1 |
| Theorems | 12 |
| Sorry | 0 |
| Axioms | 0 (beyond Lean core: `propext`, `Quot.sound`, `Classical.choice`) |

## Building

```
lake update          # one-time, fetches Mathlib
lake build
```

The first `lake update` may take 10-30 minutes depending on connection speed (Mathlib is large). Subsequent builds are incremental and fast.

## Roadmap

**v0.1** (this release) — structural bijection on finite types, with the (ℤ/2)³ encoding.

**v0.2** (planned) — connection to Mathlib's `NumberField` infrastructure: each discriminant adjoined to ℚ via `Polynomial.X^2 - C d`, the seven fields proved pairwise non-isomorphic, the unit-group structure recorded.

**v0.3** (planned) — bridge module to SIDE-kernel, proving SIDE-trivium's `MechanismClass` is isomorphic to the kernel's `Kernel.Formation.MechanismClass`.

## Relation to other repositories

SIDE-trivium is one of four public Lean repositories in the PLACE TO STAND programme:

| Repository | Role |
|:-----------|:-----|
| [SIDE-kernel](https://github.com/psinary-sketch/SIDE-kernel) | RH proof. 365 theorems, 0 sorry, 0 axioms. |
| [SIDE-cosmo](https://github.com/psinary-sketch/SIDE-cosmo) | Cosmological extension. Formation phase space, dark sector theorem. |
| [SIDE-effects](https://github.com/psinary-sketch/SIDE-effects) | Nine framework consequences. Yang-Mills, GRH, BSD, Artin, others. |
| **SIDE-trivium** | **The seven-fold bijection. (this repo)** |

SIDE-trivium crystallizes one of the deepest structural findings of the programme into a single auditable artifact. The pairing of mechanism classes with quadratic discriminants is what makes "the seven is not a coincidence" formally precise.

## References

The bijection's mathematical content is developed in three papers from the PLACE TO STAND corpus:

- *The Trivium: The Third Identity Element*
- *Identity-Formation Bijection*
- *Formation Universality v3* (proves the bijection extends to all imaginary quadratic fields)

The papers are deposited as part of PLACE-papers v1.0.1 on Zenodo: [10.5281/zenodo.19675356](https://doi.org/10.5281/zenodo.19675356).

---

**:: → · ← ::**
