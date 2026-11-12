import InitECandidate.Solver.MemSafe.Bal.Get
import InitECandidate.Solver.MemSafe.HtabEntries.SetK

set_option maxRecDepth 100000
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

/-- **A key that lies in an array of a table of another header type than `th`** (e.g. an entry of the
transaction's or the block state's tables, passed on by `htab_item`). -/
def SrcKey (Γ : Gam) (K : BitVec 64) (n th : Nat) : Prop :=
  K.toNat + n ≤ 2 ^ 64 ∧ ∃ S ∈ Γ, hkOf S.ty = .tab ∧ S.ty ≠ th ∧
    ∀ a : Nat, K.toNat ≤ a → a < K.toNat + n →
      ∃ y ∈ Γ, (y.base = S.base ∨ y.ty = tOwn S.base) ∧ y.lo ≤ a ∧ a < y.hi

theorem srcKey_ext {Γ Γ' : Gam} (hx : Ext Γ Γ') {K : BitVec 64} {n th : Nat} (h : SrcKey Γ K n th) :
    SrcKey Γ' K n th := by
  obtain ⟨h0, S, hS, hk, hne, hy⟩ := h
  obtain ⟨S', hS', hSb, hSt, -⟩ := hx S hS
  refine ⟨h0, S', hS', by rw [hSt]; exact hk, by rw [hSt]; exact hne, fun a h1 h2 => ?_⟩
  obtain ⟨y, hy, hyo, hy1, hy2⟩ := hy a h1 h2
  obtain ⟨y', hy', hyb, hyt', hys⟩ := hx y hy
  refine ⟨y', hy', ?_, by unfold Obj.lo at *; rw [hyb]; exact hy1, ?_⟩
  · rcases hyo with h | h
    · exact Or.inl (by rw [hyb, h, hSb])
    · exact Or.inr (by rw [hyt', h, hSb])
  · unfold Obj.hi at hy2 ⊢
    rw [hyb]
    omega

/-- A source key avoids the region of a table of header type `th` and the free heap. -/
theorem keyOut_of_srcKey {Γ : Gam} {s : State σ} {p : Ptrs} {T : Obj} (hord : p.Ordered)
    (hL : Layout guestC p Γ) (hw : tabW Γ s T) (hkT : hkOf T.ty = .tab) {th : Nat}
    (hth : T.ty = th) {K : BitVec 64} {n : Nat} (hK : SrcKey Γ K n th) :
    KeyOut s T.base K n p.hp := by
  obtain ⟨h0, S, hS, hkS, hne, hy⟩ := hK
  refine ⟨h0, fun a ha1 ha2 => ⟨fun hr => ?_, fun ⟨f1, f2⟩ => ?_⟩⟩
  · obtain ⟨x, hx, hOwn, -, x1, x2⟩ := tab_obj hw hkT hr
    obtain ⟨y, hy, hyo, hy1, hy2⟩ := hy a.toNat ha1 ha2
    have hxy := gam_eq hw.2.1 hx hy x1 x2 hy1 hy2
    subst hxy
    have := own_unique hw.2.1 hw.1 hS hkT hkS hx hOwn
      (by rcases hyo with h | h; exact Or.inl h; exact Or.inr (Or.inl h))
    subst this
    exact hne hth
  · obtain ⟨y, hy, hyo, hy1, hy2⟩ := hy a.toNat ha1 ha2
    exact alloc_not_free hord f1 f2 (alloc_of_in hord hL (a := a) ⟨y, hy, hy1, hy2⟩)

end InitECandidate.Solver.MemSafe.Bal
