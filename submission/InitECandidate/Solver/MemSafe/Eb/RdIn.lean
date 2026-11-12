import InitECandidate.Solver.MemSafe.Eb.Stm2
import InitECandidate.Solver.MemSafe.Eb.MzStep

/-!
# `execute_block`: which cells the facts of a set read (`RdIn`) and the freedom obligations of block stores
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-- The non-`pcv` facts of `S'` read only cells read by `S0` or listed in `A`. -/
def RdIn (S0 : FS) (A : List (BitVec 64)) (S' : FS) : Prop :=
  ∀ f, S' f → (∀ a v, f ≠ Fct.pcv a v) → ∀ y, f.reads y → (∃ f0, S0 f0 ∧ (∀ a v, f0 ≠ Fct.pcv a v) ∧ f0.reads y) ∨ y ∈ A

theorem rdIn_refl (S0 : FS) : RdIn S0 [] S0 := fun f hf hnp y hy => Or.inl ⟨f, hf, hnp, hy⟩

theorem adoptNF_noread {S : FS} {w : BitVec 64} {ty n : Nat} {f : Fct} (h : AdoptNF S w ty n f) (y : BitVec 64) :
    ¬ f.reads y := by
  rcases h with rfl | ⟨b, ty', n', -, rfl⟩ | ⟨g, b, ty', -, rfl⟩ | rfl <;> exact fun h => h

theorem rdIn_adopt {S0 : FS} {A : List (BitVec 64)} {S : FS} (h : RdIn S0 A S) (w : BitVec 64) (ty n : Nat) :
    RdIn S0 A (fun f => S f ∨ AdoptNF S w ty n f) := by
  intro f hf hnp y hy
  rcases hf with hf | hf
  · exact h f hf hnp y hy
  · exact absurd hy (adoptNF_noread hf y)

theorem rdIn_add {S0 : FS} {A : List (BitVec 64)} {S : FS} (h : RdIn S0 A S) (a v : BitVec 64) :
    RdIn S0 (a :: A) (fun f => S f ∨ f = Fct.cellv a v) := by
  intro f hf hnp y hy
  rcases hf with hf | rfl
  · rcases h f hf hnp y hy with h1 | h1
    · exact Or.inl h1
    · exact Or.inr (List.mem_cons_of_mem _ h1)
  · exact Or.inr (by obtain rfl : y = a := hy; exact List.mem_cons_self ..)

theorem rdIn_noread {S0 : FS} {A : List (BitVec 64)} {S : FS} (h : RdIn S0 A S) (f0 : Fct)
    (hf0 : ∀ y, ¬ f0.reads y) : RdIn S0 A (fun f => S f ∨ f = f0) := by
  intro f hf hnp y hy
  rcases hf with hf | rfl
  · exact h f hf hnp y hy
  · exact absurd hy (hf0 y)

theorem rdIn_mono {S0 : FS} {A A' : List (BitVec 64)} {S : FS} (h : RdIn S0 A S) (hA : ∀ a ∈ A, a ∈ A') :
    RdIn S0 A' S := fun f hf hnp y hy => (h f hf hnp y hy).imp id (hA y)

theorem rdIn_hs1 {S0 : FS} {A : List (BitVec 64)} {S : FS} (h : RdIn S0 A S) (w : BitVec 64) (ty n : Nat) (g : MlS) :
    RdIn S0 A (fun f => S f ∨ AdoptNF S w ty n f ∨ f = Fct.gobj g w ty) := by
  intro f hf hnp y hy
  rcases hf with hf | hf | rfl
  · exact h f hf hnp y hy
  · exact absurd hy (adoptNF_noread hf y)
  · exact absurd hy (fun h => h)

/-- Memzero freedom: nothing the facts read lies in the block. -/
theorem memz_of {E : EbE σ} {En : Env} {S0 S : FS} {w : BitVec 64} {n : Nat} {ty m : Nat} (hobj : S (Fct.obj w ty m))
    (hR : RdIn S0 [] S)
    (hP : S (Fct.prop (∀ y : BitVec 64, (∃ f0, S0 f0 ∧ f0.reads y) → ¬ (w.toNat ≤ y.toNat ∧ y.toNat < w.toNat + n)))) :
    ∀ s : State σ, PA E En S s → ∀ (Γ : Gam) (p : Ptrs), EbRun E.Γ0 E.s0 E.p0 Γ s p →
      HoldsAll E.p0 Γ p s S → ∀ f, S f → (∀ a v, f ≠ Fct.pcv a v) → ∀ y, f.reads y →
        ¬ Overlap w.toNat n y := by
  intro s hs Γ p hr hL f hf hnp y hy hov
  obtain ⟨o, ho, hob, -⟩ := hL _ hobj
  obtain ⟨q, hq, hord, hL0, -⟩ := ebRun_G hr
  have hw8 : w.toNat % 8 = 0 := by
    have := (hL0.1 o ho).1
    unfold Obj.lo at this; rw [hob] at this; exact this
  rcases hR f hf hnp y hy with h1 | h1
  · obtain ⟨f1, hf1, -, hr1⟩ := h1
    exact hL _ hP y ⟨f1, hf1, hr1⟩ ⟨by have := hov.2.1; have := hov.1; omega, hov.2.2⟩
  · cases h1

/-- The store-freedom obligation of a store into the new block `[w, w + n)`. -/
theorem frees_of {E : EbE σ} {En : Env} {S0 S : FS} {A : List (BitVec 64)} {w : BitVec 64} {n off : Nat}
    {ty m : Nat} (hobj : S (Fct.obj w ty m)) (hnm : n ≤ m) (hR : RdIn S0 A S) (hA : ∀ a ∈ A, a ≠ w + BitVec.ofNat 64 off)
    (hP : S (Fct.prop (∀ y : BitVec 64, (∃ f0, S0 f0 ∧ f0.reads y) → ¬ (w.toNat ≤ y.toNat ∧ y.toNat < w.toNat + n))))
    (hoff : off < n) :
    ∀ s : State σ, PA E En S s → ∀ (Γ : Gam) (p : Ptrs), EbRun E.Γ0 E.s0 E.p0 Γ s p →
      HoldsAll E.p0 Γ p s S → ∀ f, S f → (∀ a v, f ≠ Fct.pcv a v) → ∀ y, f.reads y →
        y ≠ w + BitVec.ofNat 64 off := by
  intro s hs Γ p hr hL f hf hnp y hy hyc
  obtain ⟨o, ho, hob, -, hos⟩ := hL _ hobj
  obtain ⟨q, hq, hord, hL0, -⟩ := ebRun_G hr
  obtain rfl : q = p := Option.some.inj (hq.symm.trans (ebRun_ptrs hr))
  have hhi := obj_hi hord hL0 ho
  have hwn : w.toNat + n < 2 ^ 64 := by
    unfold Obj.hi at hhi; rw [hob] at hhi
    have : scratchEnd < 2 ^ 64 := by decide
    omega
  rcases hR f hf hnp y hy with h1 | h1
  · have hP' := hL _ hP
    have : (w + BitVec.ofNat 64 off).toNat = w.toNat + off := by
      rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega : off < 2 ^ 64), Nat.mod_eq_of_lt (by omega)]
    obtain ⟨f1, hf1, -, hr1⟩ := h1
    exact hP' y ⟨f1, hf1, hr1⟩ (by rw [hyc, this]; omega)
  · exact hA y h1 hyc

end InitECandidate.Solver.MemSafe.Eb
