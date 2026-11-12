import InitECandidate.Solver.MemSafe.Ptx.PtD19

/-!
# F3e: ghost facts (`hghostF`), chunk 5b
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-- Adding a fact that holds in every run state the precondition describes. -/
theorem hghostF {E : PtE σ} {En : Env} {S : FS} {c : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop} (f : Fct)
    (hf : ∀ s : State σ, PA E En S s → ∀ D Γ p, PtRun D E.Γ0 E.s0 E.p0 Γ s p →
      HoldsAll E.p0 Γ p s S → f.holds E.p0 Γ p s)
    (h : Hoare σ guestCtx (PA E En (addF S [f])) c Q) : Hoare σ guestCtx (PA E En S) c Q := by
  refine hoare_pre h (fun t _ ht => ?_)
  obtain ⟨⟨D, Γ, p, hr, hD, hL⟩, hk⟩ := ht
  have ht' : PA E En S t := ⟨⟨D, Γ, p, hr, hD, hL⟩, hk⟩
  refine ⟨⟨D, Γ, p, hr, hD, fun g hg => ?_⟩, hk⟩
  rcases hg with hg | hg
  · exact hL g hg
  · rw [List.mem_singleton] at hg
    subst hg
    exact hf t ht' D Γ p hr hL

theorem arr0_holds {p0 : Ptrs} {Γ : Gam} {p : Ptrs} {u : State σ} {S : FS} {wa : BitVec 64} {nblk n : Nat}
    (hL : HoldsAll p0 Γ p u S) (hprop : S (Fct.prop (BlkP wa nblk))) :
    (Fct.arrbuf wa nblk 0 n).holds p0 Γ p u := by
  obtain ⟨h8, hwb, hwe⟩ := hL _ hprop
  have hb64 : heapEnd < 2 ^ 64 := by unfold heapEnd; norm_num
  exact ⟨by omega, by omega, h8, fun j hj => absurd hj (Nat.not_lt_zero j), fun j hj => absurd hj (Nat.not_lt_zero j)⟩

theorem nal_n {nv : BitVec 64} (h : nv.toNat < 2 ^ 58) :
    ((nv + BitVec.ofNat 64 1) * BitVec.ofNat 64 8).toNat = (nv.toNat + 1) * 8 := by
  rw [BitVec.toNat_mul, BitVec.toNat_add]
  simp only [BitVec.toNat_ofNat]
  rw [Nat.mod_eq_of_lt (a := 1) (by norm_num), Nat.mod_eq_of_lt (a := 8) (by norm_num),
    Nat.mod_eq_of_lt (a := nv.toNat + 1) (by omega), Nat.mod_eq_of_lt (a := (nv.toNat + 1) * 8) (by omega)]

theorem nalOK_lt {E : PtE σ} (hP : PtPre E) {nv : BitVec 64} (h : NalOK E nv) : nv.toNat < 2 ^ 58 := by
  rcases h with rfl | rfl
  · simp
  · exact (tx_bounds0 hP).1

end InitECandidate.Solver.MemSafe.Ptx
