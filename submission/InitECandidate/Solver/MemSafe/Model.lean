import InitECandidate.Solver.Spec.CostInv
import InitECandidate.Solver.Spec.Code

/-!
# Typed-heap model (memory-safety framework, prototype)

The global heap invariant is stated over a *ghost heap typing* `Γ : Gam`, a list of
objects `(base, type index)`. A type is a list of 8-byte slot kinds (`FK`):

* `scalar`: any word may be stored (no other code relies on the contents);
* `ptr t`: holds the base address of a `Γ` object of type `t`;
* `prot`: protected — only hand-verified functions may store here (the `run_frames`
  measure fields, structure-invariant fields such as `EV_SP`, the hash-table internals).

`G T GT Γ s` (for type table `T` and global typing `GT`):

1. `Layout`: objects do not wrap and are pairwise disjoint (by list position);
2. `Fields`: every `ptr t` slot of every object holds the base of a `Γ` object of type `t`;
3. `Globs`: every typed global holds the base of a `Γ` object of its type.

`G` depends only on `memory` and `globals`. `fields_store` is the locality lemma behind
the checker's store rule: writing one cell of a `Γ` object, a scalar into a scalar slot or a
well-typed pointer into a pointer slot, keeps `Fields` *whatever the aliasing* — the
written cell belongs to exactly one object (`cell_inj`), and only that slot changes.
-/

namespace InitECandidate.Solver.MemSafe.Proto
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

abbrev Mem := BitVec 64 → HolWordLab 64

/-- The word in cell `a` (memory cells are words). -/
def rd (m : Mem) (a : BitVec 64) : BitVec 64 :=
  match m a with
  | .word w => w

/-- Kind of an 8-byte slot. -/
inductive FK where
  | scalar
  | ptr (t : Nat)
  | prot
  deriving DecidableEq, Repr

/-- Type table: type index ↦ slot kinds (size `8 * length`). -/
abbrev TyTab := List (List FK)

/-- Ghost heap typing: `(base, type index)`. -/
abbrev Gam := List (BitVec 64 × Nat)

def slots (T : TyTab) (t : Nat) : List FK := T.getD t []

def sz (T : TyTab) (t : Nat) : Nat := 8 * (slots T t).length

/-- Objects do not wrap and are pairwise disjoint. -/
def Layout (T : TyTab) (Γ : Gam) : Prop :=
  (∀ o ∈ Γ, o.1.toNat + sz T o.2 ≤ 2 ^ 64) ∧
  ∀ (i j : Nat) (hi : i < Γ.length) (hj : j < Γ.length), i ≠ j →
    Γ[i].1.toNat + sz T Γ[i].2 ≤ Γ[j].1.toNat ∨ Γ[j].1.toNat + sz T Γ[j].2 ≤ Γ[i].1.toNat

/-- Pointer slots hold bases of objects of their type. -/
def Fields (T : TyTab) (Γ : Gam) (m : Mem) : Prop :=
  ∀ o ∈ Γ, ∀ k t, (slots T o.2)[k]? = some (.ptr t) →
    (rd m (o.1 + BitVec.ofNat 64 (8 * k)), t) ∈ Γ

/-- Typed globals hold bases of objects of their type. -/
def Globs {σ : Type} (GT : List (MlS × Nat)) (Γ : Gam) (s : PanSemStateFiniteExact 64 σ) :
    Prop :=
  ∀ g t, GT.lookup g = some t → ∃ b, s.globals.lookup g = some (.val (.word b)) ∧ (b, t) ∈ Γ

/-- The global heap invariant. -/
def G {σ : Type} (T : TyTab) (GT : List (MlS × Nat)) (Γ : Gam)
    (s : PanSemStateFiniteExact 64 σ) : Prop :=
  Layout T Γ ∧ Fields T Γ s.memory ∧ Globs GT Γ s

/-! ## Cells -/

theorem cell_toNat {T : TyTab} {Γ : Gam} (hL : Layout T Γ) {o : BitVec 64 × Nat} (ho : o ∈ Γ)
    {k : Nat} (hk : k < (slots T o.2).length) :
    (o.1 + BitVec.ofNat 64 (8 * k)).toNat = o.1.toNat + 8 * k := by
  have h1 := hL.1 o ho
  unfold sz at h1
  have hlt : 8 * k < 2 ^ 64 := by omega
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt hlt, Nat.mod_eq_of_lt (by omega)]

/-- A cell belongs to exactly one object and slot. -/
theorem cell_inj {T : TyTab} {Γ : Gam} (hL : Layout T Γ) {o o' : BitVec 64 × Nat}
    (ho : o ∈ Γ) (ho' : o' ∈ Γ) {k k' : Nat} (hk : k < (slots T o.2).length)
    (hk' : k' < (slots T o'.2).length)
    (h : o.1 + BitVec.ofNat 64 (8 * k) = o'.1 + BitVec.ofNat 64 (8 * k')) : o = o' ∧ k = k' := by
  have e := congrArg BitVec.toNat h
  rw [cell_toNat hL ho hk, cell_toNat hL ho' hk'] at e
  obtain ⟨i, hi, rfl⟩ := List.mem_iff_getElem.mp ho
  obtain ⟨j, hj, rfl⟩ := List.mem_iff_getElem.mp ho'
  by_cases hij : i = j
  · subst hij
    exact ⟨rfl, by omega⟩
  · have hd := hL.2 i j hi hj hij
    unfold sz at hd
    omega

/-- **Store locality.** Writing cell `k` of a `Γ` object keeps `Fields`, provided the word
fits the slot: a pointer slot gets the base of an object of its type (a scalar slot takes
anything). -/
theorem fields_store {T : TyTab} {Γ : Gam} {m : Mem} (hL : Layout T Γ) (hF : Fields T Γ m)
    {o : BitVec 64 × Nat} (ho : o ∈ Γ) {k : Nat} (hk : k < (slots T o.2).length)
    (w : BitVec 64) (hw : ∀ t, (slots T o.2)[k]? = some (.ptr t) → (w, t) ∈ Γ) :
    Fields T Γ (fun a => if a = o.1 + BitVec.ofNat 64 (8 * k) then .word w else m a) := by
  intro o' ho' k' t hs
  have hk' : k' < (slots T o'.2).length := (List.getElem?_eq_some_iff.mp hs).1
  by_cases heq : o'.1 + BitVec.ofNat 64 (8 * k') = o.1 + BitVec.ofNat 64 (8 * k)
  · obtain ⟨rfl, rfl⟩ := cell_inj hL ho' ho hk' hk heq
    have hr : rd (fun a => if a = o'.1 + BitVec.ofNat 64 (8 * k') then HolWordLab.word w
        else m a) (o'.1 + BitVec.ofNat 64 (8 * k')) = w := by
      simp only [rd, if_true]
    rw [hr]
    exact hw t hs
  · have hr : rd (fun a => if a = o.1 + BitVec.ofNat 64 (8 * k) then HolWordLab.word w
        else m a) (o'.1 + BitVec.ofNat 64 (8 * k')) = rd m (o'.1 + BitVec.ofNat 64 (8 * k')) := by
      simp only [rd, if_neg heq]
    rw [hr]
    exact hF o' ho' k' t hs

/-- `G` depends only on memory and globals. -/
theorem G_of_eq {σ : Type} {T : TyTab} {GT : List (MlS × Nat)} {Γ : Gam}
    {s t : PanSemStateFiniteExact 64 σ} (hm : t.memory = s.memory) (hg : t.globals = s.globals)
    (h : G T GT Γ s) : G T GT Γ t := by
  refine ⟨h.1, hm ▸ h.2.1, fun g ty hl => ?_⟩
  obtain ⟨b, hb, hm'⟩ := h.2.2 g ty hl
  exact ⟨b, hg ▸ hb, hm'⟩

end InitECandidate.Solver.MemSafe.Proto
