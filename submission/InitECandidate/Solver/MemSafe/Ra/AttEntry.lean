import InitECandidate.Solver.MemSafe.Ra.AttPart1d

/-!
# `run_attempt`: the entry facts, from `G` and a `tSI` object
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Att
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

theorem plCell_of {Γ : Gam} {o : Obj} (ho : o ∈ Γ) (hty : o.ty ∈ PlTys) {k : Nat} (hk : o.HasSlot k)
    (hp : (guestC.ty o.ty).slot k = .prot) {b : BitVec 64} (hb : o.base = b) :
    PlCell Γ (b + BitVec.ofNat 64 (8 * k)) :=
  ⟨o, ho, hty, k, hk, hp, by unfold Obj.cell; rw [hb]⟩

theorem entry_facts {Γ : Gam} {s : State σ} {p0 p : Ptrs} {si0 : BitVec 64} {o : Obj}
    (hG : G guestC (HR σ) Γ s) (ho : o ∈ Γ) (hb : o.base = si0) (ht : o.ty = tSI) :
    ∃ pl0 ptxs0 ntx0 nwd0 T1 T2 z : BitVec 64, ntx0.toNat < 2 ^ 24 ∧ nwd0.toNat < 2 ^ 32 ∧
      HoldsAll p0 Γ p s (S1a si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z) := by
  obtain ⟨q, hq, hord, hL, hF, -, hGl, hW⟩ := id hG
  obtain ⟨-, -, hsz, -, hSub, -, -⟩ := Hooks.siW_of_wf ht (hW o ho)
  rcases hSub with h0 | ⟨x, hx, hxb, hxt, hxs, -⟩
  · exact absurd h0 (by decide)
  obtain ⟨-, -, hpl⟩ := Hooks.plW_of_wf hxt (hW x hx)
  obtain ⟨hpsz, -, hsla, -, hwd, -⟩ := hpl
  have hg : ∀ (g : MlS) (ty : Nat), guestC.GT.lookup g = some (.ptr ty) →
      ∃ v : BitVec 64, gword s g = some v ∧ ∃ o' ∈ Γ, o'.base = v ∧ o'.ty = ty := by
    intro g ty hgt
    obtain ⟨v, hv, hf⟩ := hGl g _ hgt
    exact ⟨v, hv, hf⟩
  obtain ⟨T1, hT1, hT1o⟩ := hg (nm "beacon_roots_address") tB24 (by decide)
  obtain ⟨T2, hT2, hT2o⟩ := hg (nm "history_storage_address") tB24 (by decide)
  obtain ⟨z, hz, hzo⟩ := hg (nm "zero32") tB32 (by decide)
  refine ⟨Hooks.txF s.memory o 0, Hooks.txF s.memory x 4, Hooks.txF s.memory x 5, Hooks.txF s.memory x 7, T1, T2, z,
    subArr_lt hL hsla.1, by omega, ?_⟩
  have hsiPl : o.ty ∈ PlTys := by rw [ht]; simp [PlTys]
  have hplPl : x.ty ∈ PlTys := by rw [hxt]; simp [PlTys]
  intro f hf
  simp only [S1a] at hf
  rcases hf with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact ⟨o, ho, hb, ht, by omega⟩
  · refine ⟨(Exb.txF_eq hb 0).symm, plCell_of ho hsiPl (k := 0) (by unfold Obj.HasSlot; omega) (by rw [ht]; exact Hooks.si_prot 0) hb⟩
  · exact ⟨x, hx, hxb, hxt, by omega⟩
  · refine ⟨(Exb.txF_eq hxb 4).symm, plCell_of hx hplPl (k := 4) (by unfold Obj.HasSlot; omega) (by rw [hxt]; exact Hooks.pl_prot 4) hxb⟩
  · refine ⟨(Exb.txF_eq hxb 5).symm, plCell_of hx hplPl (k := 5) (by unfold Obj.HasSlot; omega) (by rw [hxt]; exact Hooks.pl_prot 5) hxb⟩
  · refine ⟨(Exb.txF_eq hxb 7).symm, plCell_of hx hplPl (k := 7) (by unfold Obj.HasSlot; omega) (by rw [hxt]; exact Hooks.pl_prot 7) hxb⟩
  · exact ⟨hT1, hT1o⟩
  · exact ⟨hT2, hT2o⟩
  · exact ⟨hz, hzo⟩

end InitECandidate.Solver.MemSafe.Att
