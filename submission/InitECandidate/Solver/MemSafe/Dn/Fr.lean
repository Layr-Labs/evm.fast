import InitECandidate.Solver.MemSafe.Dn.StepTop

set_option autoImplicit false

/-!
# The decoder's record chain, typed

`FrG a Γ q M lo hi r`: the chain of scratch records from `r` (linked through `+0`, increasing
addresses in `[lo, hi)`): every record is a fresh 88-byte block outside `Γ` (`FrE`), and a branch
record (kind `≠ 1`) holds an `NBRANCH` object of `Γ` at `+16`. It mirrors the cost lane's `WChain`
(which carries the location facts).

* `frG_mem`: the chain reads only cells in `[lo, hi)`;
* `frG_ext`: it survives a call's extension of `Γ` (the records were allocated, the new objects
  are fresh);
* `frG_mono_lo`: lowering `lo`.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Dn
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type}

def FrG (a : Act σ) (Γ : Gam) (q : Ptrs) (M : Mem) (lo hi : Nat) (r : BitVec 64) : Prop :=
  r = 0 ∨ if h : lo ≤ r.toNat ∧ r.toNat + 88 ≤ hi then
    FrE a r Γ q ∧ heapEnd ≤ r.toNat ∧ (rd M (r + 8) ≠ 1 → BrO a.p0 Γ (rd M (r + 16))) ∧
      RecS Γ q M r ∧ FrG a Γ q M (r.toNat + 88) hi (rd M r) else False
termination_by hi - lo
decreasing_by omega

theorem frG_zero (a : Act σ) (Γ : Gam) (q : Ptrs) (M : Mem) (lo hi : Nat) : FrG a Γ q M lo hi 0 := by
  rw [FrG]; exact Or.inl rfl

theorem frG_unfold {a : Act σ} {Γ : Gam} {q : Ptrs} {M : Mem} {lo hi : Nat} {r : BitVec 64}
    (h : FrG a Γ q M lo hi r) (hr : r ≠ 0) : lo ≤ r.toNat ∧ r.toNat + 88 ≤ hi ∧ FrE a r Γ q ∧
      heapEnd ≤ r.toNat ∧ (rd M (r + 8) ≠ 1 → BrO a.p0 Γ (rd M (r + 16))) ∧ RecS Γ q M r ∧
      FrG a Γ q M (r.toNat + 88) hi (rd M r) := by
  rw [FrG] at h
  rcases h with h | h
  · exact absurd h hr
  · split at h
    · rename_i hh; exact ⟨hh.1, hh.2, h⟩
    · exact h.elim

theorem frG_cons {a : Act σ} {Γ : Gam} {q : Ptrs} {M : Mem} {lo hi : Nat} {r : BitVec 64}
    (h1 : lo ≤ r.toNat) (h2 : r.toNat + 88 ≤ hi) (h3 : FrE a r Γ q) (h3' : heapEnd ≤ r.toNat)
    (h4 : rd M (r + 8) ≠ 1 → BrO a.p0 Γ (rd M (r + 16))) (h4' : RecS Γ q M r)
    (h5 : FrG a Γ q M (r.toNat + 88) hi (rd M r)) :
    FrG a Γ q M lo hi r := by
  rw [FrG]
  right
  rw [dif_pos ⟨h1, h2⟩]
  exact ⟨h3, h3', h4, h4', h5⟩

theorem frG_mono_lo {a : Act σ} {Γ : Gam} {q : Ptrs} {M : Mem} {lo lo' hi : Nat} {r : BitVec 64}
    (hl : lo' ≤ lo) (h : FrG a Γ q M lo hi r) : FrG a Γ q M lo' hi r := by
  by_cases hr : r = 0
  · subst hr; exact frG_zero _ _ _ _ _ _
  · obtain ⟨h1, h2, h3, h3', h4, h4', h5⟩ := frG_unfold h hr
    exact frG_cons (by omega) h2 h3 h3' h4 h4' h5

theorem rd_eq_of_mem {M M' : Mem} {x : BitVec 64} (h : M' x = M x) : rd M' x = rd M x := by
  unfold rd; rw [h]

/-- The chain reads only the record cells in `[lo0, hi)` and the free heap cells. -/
theorem frG_mem {a : Act σ} {Γ : Gam} {q : Ptrs} {M M' : Mem} {lo0 hi : Nat}
    (hhi : hi < 2 ^ 64)
    (hM : ∀ x : BitVec 64, (lo0 ≤ x.toNat ∧ x.toNat < hi) ∨
      (x.toNat < heapEnd ∧ ¬ InObj Γ x.toNat ∧ q.Allocated x.toNat) → M' x = M x) :
    ∀ n lo (r : BitVec 64), lo0 ≤ lo → hi - lo = n → FrG a Γ q M lo hi r → FrG a Γ q M' lo hi r := by
  intro n
  induction n using Nat.strongRecOn with
  | _ n ih =>
  intro lo r hl0 hn h
  by_cases hr : r = 0
  · subst hr; exact frG_zero _ _ _ _ _ _
  obtain ⟨h1, h2, h3, h3', h4, h4', h5⟩ := frG_unfold h hr
  have ec : ∀ k : Nat, k < 88 → (r + BitVec.ofNat 64 k).toNat = r.toNat + k := fun k hk =>
    Spec.Mpt.Dec.toNat_add_lt (k := k) (by omega)
  have mk : ∀ k : Nat, k < 88 → rd M' (r + BitVec.ofNat 64 k) = rd M (r + BitVec.ofNat 64 k) :=
    fun k hk => rd_eq_of_mem (hM _ (Or.inl ⟨by rw [ec k hk]; omega, by rw [ec k hk]; omega⟩))
  have m0 : rd M' r = rd M r := rd_eq_of_mem (hM r (Or.inl ⟨by omega, by omega⟩))
  have m8 : rd M' (r + 8) = rd M (r + 8) := mk 8 (by omega)
  have m16 : rd M' (r + 16) = rd M (r + 16) := mk 16 (by omega)
  refine frG_cons h1 h2 h3 h3' (by rw [m8, m16]; exact h4) ?_ ?_
  · exact recS_mem h4' m8 (mk 24 (by omega)) (mk 48 (by omega)) (mk 56 (by omega)) (mk 64 (by omega))
      (mk 72 (by omega)) (fun x hx1 hx2 hx3 => hM x (Or.inr ⟨hx1, hx2, hx3⟩))
  · rw [m0]
    exact ih (hi - (r.toNat + 88)) (by omega) _ _ (by omega) rfl h5

/-- The chain survives a call: `Γ` extended by fresh objects, the pointers moved monotonically. -/
theorem frG_ext {a : Act σ} {Γ Γ' : Gam} {q q' : Ptrs} {M : Mem} {hi : Nat}
    (he : Ext Γ Γ') (hnf : NewFresh Γ Γ' q q') (hmo : q.Mono q') (hord : q.Ordered)
    (hord' : q'.Ordered) :
    ∀ n lo (r : BitVec 64), hi - lo = n → FrG a Γ q M lo hi r → FrG a Γ' q' M lo hi r := by
  intro n
  induction n using Nat.strongRecOn with
  | _ n ih =>
  intro lo r hn h
  by_cases hr : r = 0
  · subst hr; exact frG_zero _ _ _ _ _ _
  obtain ⟨h1, h2, ⟨f8, f88, fc⟩, h3', h4, h4', h5⟩ := frG_unfold h hr
  refine frG_cons h1 h2 ⟨f8, f88, fun y hy => ?_⟩ h3' (fun hk => brO_ext he (h4 hk))
    (recS_ext_gam h4' he hnf hmo hord hord') (ih (hi - (r.toNat + 88)) (by omega) _ _ rfl h5)
  obtain ⟨hn0, hp0, hal⟩ := fc y hy
  refine ⟨fun ⟨o, ho, l, u⟩ => ?_, hp0, Spec.Mpt.Dec.allocated_mono hmo hal⟩
  rcases hnf o ho y l u with ⟨o0, ho0, -, -, l0, u0⟩ | hf
  · exact hn0 ⟨o0, ho0, l0, u0⟩
  · unfold Fresh at hf
    unfold Ptrs.Allocated at hal
    obtain ⟨m1, m2, m3⟩ := hmo
    obtain ⟨o1, o2, o3, o4, o5, -⟩ := hord
    obtain ⟨o1', o2', o3', o4', o5', -⟩ := hord'
    omega

end InitECandidate.Solver.MemSafe.Dn

#print axioms InitECandidate.Solver.MemSafe.Dn.frG_mem
#print axioms InitECandidate.Solver.MemSafe.Dn.frG_ext
