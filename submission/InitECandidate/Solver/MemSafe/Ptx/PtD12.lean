import InitECandidate.Solver.MemSafe.Ptx.PtD11

/-!
# F3e: entry cells of non-block `Γ0` objects keep their value (`rd_nonblock_keep`, `rd_tx`)
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

/-- A `prot` cell of a non-state, non-block object of `Γ0` keeps its entry value. -/
theorem rd_nonblock_keep {E : PtE σ} (hP : PtPre E) {D Γ u p} (h : PtRun D E.Γ0 E.s0 E.p0 Γ u p)
    (hD : ∀ a, D a ≠ none → E.WSet a) {o : Obj} (ho : o ∈ E.Γ0) (hty : o.ty ∉ blockTys)
    (hnst : guestSt o.ty = false) {k : Nat} (hk : o.HasSlot k) (hp : (guestC.ty o.ty).slot k = .prot) :
    rd u.memory (o.cell k) = rd E.s0.memory (o.cell k) := by
  have hmem : o ∈ nst guestSt E.Γ0 := mem_nst.mpr ⟨ho, hnst⟩
  refine ptRun_rd_keep h hD ⟨o, hmem, k, hk, hp, rfl⟩ ?_
  intro hW
  obtain ⟨M, hM, hMt, k', hk', hp', hc⟩ := wset_cell hP (ptRun_ext h) hW
  obtain ⟨o', ho', hb, ht, hs⟩ := ptRun_ext h o ho
  obtain ⟨q, hq, hord, hLay, -⟩ := ptRun_G h
  obtain rfl : q = p := Option.some.inj (hq.symm.trans (ptRun_ptrs h))
  have hk2 : o'.HasSlot k := by unfold Obj.HasSlot at *; omega
  have hce : o'.cell k = M.cell k' := by unfold Obj.cell at *; rw [hb]; exact hc
  obtain ⟨rfl, -⟩ := cell_inj hord hLay ho' hM hk2 hk' hce
  exact hty (ht ▸ hMt)

theorem tx_size {E : PtE σ} (hP : PtPre E) : ∃ o ∈ E.Γ0, o.base = E.tx ∧ o.ty = tTX ∧ 400 ≤ o.size := by
  obtain ⟨q, hq, hord, hL⟩ := pre_layout hP
  obtain ⟨o, ho, hb, ht⟩ := hP.tx
  have hmin := (hL.1 o ho).2.2.2.1
  rw [ht] at hmin
  exact ⟨o, ho, hb, ht, le_trans (by decide) hmin⟩

/-- **A transaction cell keeps its entry value.** -/
theorem rd_tx {E : PtE σ} (hP : PtPre E) {D Γ u p} (h : PtRun D E.Γ0 E.s0 E.p0 Γ u p)
    (hD : ∀ a, D a ≠ none → E.WSet a) {off : Nat} (ho8 : off % 8 = 0) (hoN : off + 8 ≤ 400) :
    rd u.memory (E.tx + BitVec.ofNat 64 off) = rd E.s0.memory (E.tx + BitVec.ofNat 64 off) := by
  obtain ⟨o, ho, hb, ht, hs⟩ := tx_size hP
  have hk : o.HasSlot (off / 8) := by unfold Obj.HasSlot; omega
  have hcell : E.tx + BitVec.ofNat 64 off = o.cell (off / 8) := by
    unfold Obj.cell; rw [hb]; congr 2; omega
  rw [hcell]
  exact rd_nonblock_keep hP h hD ho (by rw [ht]; simp [blockTys]) (by rw [ht]; decide) hk (by rw [ht]; exact Hooks.tx_prot _)

end InitECandidate.Solver.MemSafe.Ptx
