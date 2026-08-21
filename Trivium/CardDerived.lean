/-
  CardDerived.lean — THE CARD REWIRING (the census series' first completed conversion)
  ====================================================================================

  2026-08-20, the Yang–Mills sitting's component 3 (bounded; no new mathematical
  claims). The fourth declared-count catch (the census series) found
  `mechanism_class_card` / `quadratic_discriminant_card` reading their 7 off the
  declarations. This module REROUTES the counts through the kernel's own proved
  content, using ONLY statements already present:

  · `discriminant_values_distinct` (present) — contraposed to injectivity of `value`;
  · the image Finset {−1, 2, −2, 3, −3, 6, −6} counted as DERIVED integer arithmetic
    (a computation on ℤ, not a declaration-read);
  · `triviumBijection` (present) — transporting the derived count to MechanismClass.

  The original card theorems stay in place (additive edit); the loom's series entry
  records ENCODES → DERIVES for this catch. Expected profile: the repository's own bar
  ({propext, Classical.choice, Quot.sound} — the Mathlib-core target its header states).
-/

import Trivium.Bijection
import Mathlib.Data.Finset.Image

namespace Trivium

/-- injectivity of the discriminant value map — the CONTRAPOSITIVE of the present
    `discriminant_values_distinct`; assembly, not new mathematics -/
theorem value_injective : Function.Injective QuadraticDiscriminant.value := by
  intro d1 d2 h
  by_contra hne
  exact discriminant_values_distinct d1 d2 hne h

/-- THE DERIVED COUNT: the seven discriminants number exactly the derived cardinality
    of their integer image {−1, 2, −2, 3, −3, 6, −6} — the 7 is a computation on ℤ
    through the proved injection, not a declaration-read -/
theorem quadratic_discriminant_card_derived :
    Fintype.card QuadraticDiscriminant =
      ({-1, 2, -2, 3, -3, 6, -6} : Finset Int).card := by
  have himg : (Finset.univ.image QuadraticDiscriminant.value) =
      ({-1, 2, -2, 3, -3, 6, -6} : Finset Int) := by decide
  rw [← himg, Finset.card_image_of_injective _ value_injective, Finset.card_univ]

/-- the derived count evaluates to 7 by integer arithmetic -/
theorem quadratic_discriminant_card_value :
    ({-1, 2, -2, 3, -3, 6, -6} : Finset Int).card = 7 := by decide

/-- MechanismClass inherits the derived count through the PRESENT bijection -/
theorem mechanism_class_card_derived :
    Fintype.card MechanismClass = ({-1, 2, -2, 3, -3, 6, -6} : Finset Int).card := by
  rw [Fintype.card_congr triviumBijection]
  exact quadratic_discriminant_card_derived

end Trivium
