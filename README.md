# SIDE-trivium

SIDE-trivium compiles an equivalence between two seven-constructor enumerations. Statements at ec92d62:

    theorem trivium_theorem : Nonempty (MechanismClass ≃ QuadraticDiscriminant) ∧ Fintype.card MechanismClass = 7 ∧ Fintype.card QuadraticDiscriminant = 7 (Trivium/Bijection.lean :256)

Any two seven-element types carry such an equivalence. The enumerations are named for mechanism classes and discriminants; no statement names ξ, a zero, an exclusion or a field, so that they govern off-line zero exclusion is not compiled.

The **element-level** ↔ assignment between classes and discriminants is a canonical-order **convention, not canonical** — the map is basis-relative under GL(3,𝔽₂), and an element-level assignment is forbidden-as-canonical by the functorial-limit negative theorem (`SEVEN_DISCRIMINANTS_AND_TRIVIUM` §4). What is compiled here is the count identity, not a forced element pairing.

**Author:** J. York Seale (ORCID: [0009-0008-7993-0310](https://orcid.org/0009-0008-7993-0310))
**License:** MIT
**Programme:** PLACE TO STAND Research Programme
**Cite as:** Seale, J. York (2026). *SIDE-trivium v0.1.* Zenodo. DOI: [10.5281/zenodo.19938003](https://doi.org/10.5281/zenodo.19938003) (versioned), [10.5281/zenodo.19938002](https://doi.org/10.5281/zenodo.19938002) (concept). Software Heritage: `swh:1:dir:353279041c4b7dc82b7280fa81c7c211269b789d`.

---

## What this kernel proves

The bijection:

## v0.1 contents

A single Lean module, `Trivium/Bijection.lean`, containing:

- The pairing function `mechanismToDiscriminant` and its inverse.
- A proof that the pairing is a bijection (`triviumBijection : MechanismClass ≃ QuadraticDiscriminant`).
- The (ℤ/2)³ exponent-triple encoding, with proof that every discriminant maps to a non-zero element.
- The pairwise-distinctness theorem on the integer values of the seven discriminants.
- The main theorem `trivium_theorem`, asserting the bijection and the cardinality match.

| Metric | Value |
|:-------|:------|
| Files | 1 |
| Sorry | 0 |

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
| [SIDE-kernel](https://github.com/psinary-sketch/SIDE-kernel) | RH proof — cited by named terminal, not by count: the three route terminals at their pinned commits, each `{propext, Classical.choice, Quot.sound}`, 0 sorry. |
| [SIDE-cosmo](https://github.com/psinary-sketch/SIDE-cosmo) | Cosmological extension. Formation phase space, dark sector theorem. |
| [SIDE-effects](https://github.com/psinary-sketch/SIDE-effects) | Nine framework consequences. Yang-Mills, GRH, BSD, Artin, others. |
| **SIDE-trivium** | **The seven-fold bijection. (this repo)** |

## References

The bijection's mathematical content is developed in three papers from the PLACE TO STAND corpus:

- *The Trivium: The Third Identity Element*
- *Identity-Formation Bijection*
- *Formation Universality v3* (proves the bijection extends to all imaginary quadratic fields)

The papers are deposited as part of PLACE-papers v1.0.1 on Zenodo: [10.5281/zenodo.19675356](https://doi.org/10.5281/zenodo.19675356).

---

**:: → · ← ::**
