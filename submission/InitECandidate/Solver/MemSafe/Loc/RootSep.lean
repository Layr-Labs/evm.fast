import InitECandidate.Solver.MemSafe.Loc.LeafLoc

set_option autoImplicit false

/-!
# `RootSep` from `G` (sonnet-loc)

The state-trie root slot `ws + 24` is a cell of the `ws` object (a live heap object of type `tWSR`, of at
least 32 bytes), hence allocated, and disjoint from the keccak sponge/pad objects.
-/

set_option maxRecDepth 1000000
set_option linter.unusedTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Loc
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
  InitECandidate.Solver.MemSafe.Stor
open InitECandidate.Solver.MemSafe.St2 (Staged)
open InitECandidate.Solver.Spec.Mpt (gKst gKpad)
open InitECandidate.Solver.MemSafe.Types (guestC tWSR)

variable {σ : Type}

theorem rootSep_of_G {H : Hooks σ} {tV : Nat} (hS : Staged σ H tV)
    (hWSz : 32 ≤ (guestC.ty tWSR).minSz) {Γ : Gam} {s : State σ} (hG : G guestC H Γ s)
    {p : Ptrs} (hp : ptrsOf s = some p) (hns : ∀ x, s.memaddrs x → heapBase ≤ x.toNat) :
    RootSep s p := by
  intro wp hgw hmem
  have hG0 := hG
  obtain ⟨p', hp', hord, hL, -, -, hGl, -⟩ := hG0
  rw [hp] at hp'
  cases hp'
  obtain ⟨v, hv, hf⟩ := hGl (nm "ws") _ hS.hGT
  rw [hgw] at hv
  cases hv
  have hE : p.hp ≤ heapEnd := hord.2.1
  have hE2 : heapEnd < 2 ^ 62 := by decide
  rcases hf with hnull | ⟨o, ho, hb, ht⟩
  · exfalso
    have h1 := hns _ hmem
    have h2 : (wp + 24).toNat = wp.toNat + 24 := by
      have := wp.isLt
      unfold nullMax at hnull
      exact Spec.Inv.add_ofNat_toNat (B := wp) (j := 24) (by omega)
    unfold nullMax at hnull
    unfold heapBase at h1
    omega
  · obtain ⟨hal, hsz8, -, hmin, hlive⟩ := hL.1 o ho
    have hreg := Types.recIdWs_facts.1
    rw [ht, hreg] at hlive
    rw [ht] at hmin
    obtain ⟨hl1, hl2⟩ := hlive
    unfold Obj.lo at hl1 hl2
    rw [hb] at hl1 hl2
    have hc : (wp + 24).toNat = wp.toNat + 24 :=
      Spec.Inv.add_ofNat_toNat (B := wp) (j := 24) (by omega)
    refine ⟨Or.inl ⟨by omega, by omega⟩, ?_⟩
    rintro (⟨w, hw, h1, h2⟩ | ⟨w, hw, h1, h2⟩)
    · obtain ⟨vk, hvk, x, hx, hxb, hxt⟩ := hGl (nm "keccak_st") _ Types.gt_keccak_st
      have hvk' : gword s gKst = some vk := hvk
      rw [hw] at hvk'
      cases hvk'
      have hne : o ≠ x := fun e => by
        rw [← e, ht] at hxt
        exact absurd hxt (by decide)
      obtain ⟨-, -, -, hminx, -⟩ := hL.1 x hx
      rw [hxt] at hminx
      have h200 : 200 ≤ (guestC.ty Types.tB200).minSz := by decide
      rcases layout_disj hL ho hx hne with h | h <;> unfold Obj.hi Obj.lo at h <;> rw [hb] at h <;>
        rw [hxb] at h <;> omega
    · obtain ⟨vk, hvk, x, hx, hxb, hxt⟩ := hGl (nm "keccak_pad") _ Types.gt_keccak_pad
      have hvk' : gword s gKpad = some vk := hvk
      rw [hw] at hvk'
      cases hvk'
      have hne : o ≠ x := fun e => by
        rw [← e, ht] at hxt
        exact absurd hxt (by decide)
      obtain ⟨-, -, -, hminx, -⟩ := hL.1 x hx
      rw [hxt] at hminx
      have h136 : 136 ≤ (guestC.ty Types.tB136).minSz := by decide
      rcases layout_disj hL ho hx hne with h | h <;> unfold Obj.hi Obj.lo at h <;> rw [hb] at h <;>
        rw [hxb] at h <;> omega

end InitECandidate.Solver.MemSafe.Loc

#print axioms InitECandidate.Solver.MemSafe.Loc.rootSep_of_G
