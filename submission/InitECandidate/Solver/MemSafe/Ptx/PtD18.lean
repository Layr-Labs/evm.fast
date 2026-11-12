import InitECandidate.Solver.MemSafe.Ptx.PtD17

/-!
# F3e: the block environment `be` keeps its entry value
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

/-- The extra entry facts (the three array/environment bases are pairwise distinct). -/
structure PtPreX (E : PtE σ) extends PtPre E : Prop where
  dis1 : E.be ≠ E.txs
  dis2 : E.be ≠ E.rcs
  dis3 : E.txs ≠ E.rcs

/-- A cell of the `be` object is not a written cell. -/
theorem not_wset_be {E : PtE σ} (hP : PtPre E) (hd1 : E.be ≠ E.txs) (hd2 : E.be ≠ E.rcs) {o : Obj} (ho : o ∈ E.Γ0)
    (hb : o.base = E.be) (ht : o.ty = tBOS) {k : Nat} (hk : o.HasSlot k) : ¬ E.WSet (o.cell k) := by
  obtain ⟨q, hq, hord, hL⟩ := pre_layout hP
  obtain ⟨ob, hob, hobb, hobt⟩ := hP.boObj
  have hmin := (hL.1 ob hob).2.2.2.1
  rw [hobt] at hmin
  have h88 : (guestC.ty tBO).minSz = 88 := rfl
  rw [h88] at hmin
  have hbo : ∀ j : Nat, j < 11 → ob.HasSlot j := fun j hj => by unfold Obj.HasSlot; omega
  have hcell : ∀ j', E.bo + BitVec.ofNat 64 (8 * j') = ob.cell j' := fun j' => by unfold Obj.cell; rw [hobb]
  have arr : ∀ A, (∃ o ∈ E.Γ0, o.base = A ∧ o.ty = tBOS ∧ E.idx.toNat * 16 + 16 ≤ o.size) → A ≠ E.be →
      ∀ j', j' < 2 → o.cell k ≠ A + E.idx * BitVec.ofNat 64 16 + BitVec.ofNat 64 (8 * j') := by
    intro A hA hne j' hj'
    obtain ⟨oA, hoA, hbA, htA, hsz⟩ := hA
    have hkA : oA.HasSlot (2 * E.idx.toNat + j') := by unfold Obj.HasSlot; omega
    have he : A + E.idx * BitVec.ofNat 64 16 + BitVec.ofNat 64 (8 * j') = oA.cell (2 * E.idx.toNat + j') := by
      unfold Obj.cell; rw [hbA, BitVec.add_assoc, bv_idx16]
    rw [he]
    intro hc
    obtain ⟨hMo, -⟩ := cell_inj hord hL ho hoA hk hkA hc
    subst hMo
    exact hne (hbA.symm.trans hb)
  rintro (h | h | h | h | h | h | h | h)
  · have e : E.bo = ob.cell 0 := by rw [← hcell 0]; simp
    rw [e] at h
    exact cell_ne_ty hord hL ho hob (by rw [ht, hobt]; decide) hk (hbo 0 (by omega)) h
  · have e : E.bo + 8 = ob.cell 1 := hcell 1
    rw [e] at h
    exact cell_ne_ty hord hL ho hob (by rw [ht, hobt]; decide) hk (hbo 1 (by omega)) h
  · have e : E.bo + 16 = ob.cell 2 := hcell 2
    rw [e] at h
    exact cell_ne_ty hord hL ho hob (by rw [ht, hobt]; decide) hk (hbo 2 (by omega)) h
  · have e : E.bo + 48 = ob.cell 6 := hcell 6
    rw [e] at h
    exact cell_ne_ty hord hL ho hob (by rw [ht, hobt]; decide) hk (hbo 6 (by omega)) h
  · exact arr E.txs hP.txsObj (Ne.symm hd1) 0 (by omega) (by rw [h]; simp)
  · exact arr E.txs hP.txsObj (Ne.symm hd1) 1 (by omega) (by rw [h]; rfl)
  · exact arr E.rcs hP.rcsObj (Ne.symm hd2) 0 (by omega) (by rw [h]; simp)
  · exact arr E.rcs hP.rcsObj (Ne.symm hd2) 1 (by omega) (by rw [h]; rfl)

end InitECandidate.Solver.MemSafe.Ptx
