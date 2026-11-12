import InitECandidate.Solver.MemSafe.Init.Main3

/-!
# Init: `main`'s walk, part 4 (the `decode_host_input` step)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Init
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Eb InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Aw

variable {σ : Type}

theorem live_lt {C : Cfg} {p : Ptrs} (hord : p.Ordered) {rg : Region} {b n : Nat} (h : rg.Live p b n) :
    b + n ≤ scratchEnd := by
  simp only [Ptrs.Ordered, heapEnd, scratchEnd, heapBase] at hord ⊢
  cases rg <;> simp only [Region.Live, scratchEnd, heapEnd, heapBase] at h <;> omega

/-- New objects end below the new heap pointer when the frame and scratch pointers are kept. -/
theorem below_of_fresh {Γ Γ' : Gam} {p p' : Ptrs} (hL : Layout guestC p Γ) (hbt : ∀ o ∈ Γ, o.ty ∈ BTys)
    (hL' : Layout guestC p' Γ') (hord' : p'.Ordered) (hmono : p.Mono p') (hnf : NewFresh Γ Γ' p p')
    (hfp : p'.fp = p.fp) (hsp : p'.sp = p.sp) : Below Γ' p'.hp := by
  intro o ho
  obtain ⟨-, -, hsz, -, hlive⟩ := hL'.1 o ho
  have hle := live_lt (C := guestC) hord' hlive
  have hlt : o.hi - 1 < 2 ^ 64 := by simp only [Obj.hi, Obj.lo, scratchEnd] at hle ⊢; omega
  have hto : (BitVec.ofNat 64 (o.hi - 1)).toNat = o.hi - 1 := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt hlt]
  have hlo : o.lo ≤ o.hi - 1 := by simp only [Obj.lo, Obj.hi] at hsz ⊢; omega
  have hhi : o.hi - 1 < o.hi := by simp only [Obj.lo, Obj.hi] at hsz ⊢; omega
  rcases hnf o ho (BitVec.ofNat 64 (o.hi - 1)) (by rw [hto]; exact hlo) (by rw [hto]; exact hhi) with
    ⟨o0, ho0, -, -, -, h2⟩ | hf
  · rw [hto] at h2
    obtain ⟨-, -, -, -, hl0⟩ := hL.1 o0 ho0
    rw [(BTys_facts _ (hbt o0 ho0)).2.2.2.2.2.1] at hl0
    simp only [Region.Live, Obj.lo, Obj.hi, heapBase] at hl0 h2 hsz hto ⊢
    have := hmono.1
    omega
  · unfold Fresh at hf
    rw [hto] at hf
    simp only [Ptrs.Mono] at hmono
    simp only [Obj.hi, Obj.lo] at hsz hto hf ⊢
    omega

end InitECandidate.Solver.MemSafe.Init
