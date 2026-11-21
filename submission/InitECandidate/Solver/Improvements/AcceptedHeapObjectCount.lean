import InitECandidate.Solver.Improvements.AcceptedPayloadCountCap
import InitECandidate.Solver.MemSafe.Frames.Marks
import InitECandidate.Solver.MemSafe.Types

/-!
# Count caps from actual laid-out guest objects

This isolates the heap proof from `Eb.Cost16`, transaction summaries and the
large accepted cost-table closure. The only inputs are the actual accepted
`Layout`, ordered heap pointer, object memberships, guest types, object sizes
and distinct output bases. All region bounds and six pairwise separations are
derived here, then the pure interval arithmetic supplies the numerical cap.
-/
set_option autoImplicit false

namespace AcceptedHeapObjectCount
open Flapjack
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames

private theorem heap_obj_bounds {Γ : Gam} {q : Ptrs} {o : Obj}
    (hord : q.Ordered) (hLayout : Layout guestC q Γ) (ho : o ∈ Γ)
    (hheap : (guestC.ty o.ty).region = .heap) :
    heapBase ≤ o.lo ∧ o.lo + o.size ≤ heapEnd := by
  have hlive := (hLayout.1 o ho).2.2.2.2
  rw [hheap] at hlive
  change heapBase ≤ o.lo ∧ o.lo + o.size ≤ q.hp at hlive
  exact ⟨hlive.1, le_trans hlive.2 hord.2.1⟩

private theorem obj_ne_of_ty_ne {a b : Obj} {tyA tyB : Nat}
    (ha : a.ty = tyA) (hb : b.ty = tyB) (hne : tyA ≠ tyB) : a ≠ b := by
  intro he
  exact hne (ha.symm.trans ((congrArg Obj.ty he).trans hb))

/-- Simpler fallback using just the full-capacity output arrays. -/
theorem two_output_objects_count {Γ : Gam} {q : Ptrs} {txObj rcObj : Obj} {N : Nat}
    (hord : q.Ordered) (hLayout : Layout guestC q Γ)
    (hTxMem : txObj ∈ Γ) (hRcMem : rcObj ∈ Γ)
    (hTxTy : txObj.ty = tBOS) (hRcTy : rcObj.ty = tBOS)
    (hTxSize : 16 * N + 16 ≤ txObj.size)
    (hRcSize : 16 * N + 16 ≤ rcObj.size)
    (hne : txObj.base ≠ rcObj.base) : N ≤ 7864319 := by
  have hTxBounds := heap_obj_bounds hord hLayout hTxMem (by rw [hTxTy]; rfl)
  have hRcBounds := heap_obj_bounds hord hLayout hRcMem (by rw [hRcTy]; rfl)
  have hsep := Frames.lay_disj hLayout hTxMem hRcMem
    (fun he => hne (congrArg Obj.base he))
  simp only [Obj.hi] at hsep
  exact AcceptedPayloadCountCap.two_output_arrays_count_le
    hTxBounds.1 hTxBounds.2 hRcBounds.1 hRcBounds.2 hsep hTxSize hRcSize

/-- Payload, input slices and both output arrays coexist in the same heap. -/
theorem transaction_objects_count
    {Γ : Gam} {q : Ptrs} {plObj arrObj txObj rcObj : Obj} {N : Nat}
    (hord : q.Ordered) (hLayout : Layout guestC q Γ)
    (hPlMem : plObj ∈ Γ) (hArrMem : arrObj ∈ Γ)
    (hTxMem : txObj ∈ Γ) (hRcMem : rcObj ∈ Γ)
    (hPlTy : plObj.ty = tPL) (hArrTy : arrObj.ty = tSLA)
    (hTxTy : txObj.ty = tBOS) (hRcTy : rcObj.ty = tBOS)
    (hPlSize : 136 ≤ plObj.size) (hArrSize : 16 * N ≤ arrObj.size)
    (hTxSize : 16 * N + 16 ≤ txObj.size)
    (hRcSize : 16 * N + 16 ≤ rcObj.size)
    (hne : txObj.base ≠ rcObj.base) : N ≤ 5242876 := by
  have hPlBounds := heap_obj_bounds hord hLayout hPlMem (by rw [hPlTy]; rfl)
  have hArrBounds := heap_obj_bounds hord hLayout hArrMem (by rw [hArrTy]; rfl)
  have hTxBounds := heap_obj_bounds hord hLayout hTxMem (by rw [hTxTy]; rfl)
  have hRcBounds := heap_obj_bounds hord hLayout hRcMem (by rw [hRcTy]; rfl)
  have hPlArr := Frames.lay_disj hLayout hPlMem hArrMem
    (obj_ne_of_ty_ne hPlTy hArrTy (by decide))
  have hPlTx := Frames.lay_disj hLayout hPlMem hTxMem
    (obj_ne_of_ty_ne hPlTy hTxTy (by decide))
  have hPlRc := Frames.lay_disj hLayout hPlMem hRcMem
    (obj_ne_of_ty_ne hPlTy hRcTy (by decide))
  have hArrTx := Frames.lay_disj hLayout hArrMem hTxMem
    (obj_ne_of_ty_ne hArrTy hTxTy (by decide))
  have hArrRc := Frames.lay_disj hLayout hArrMem hRcMem
    (obj_ne_of_ty_ne hArrTy hRcTy (by decide))
  have hTxRc := Frames.lay_disj hLayout hTxMem hRcMem
    (fun he => hne (congrArg Obj.base he))
  simp only [Obj.hi] at hPlArr hPlTx hPlRc hArrTx hArrRc hTxRc
  exact AcceptedPayloadCountCap.transaction_arrays_count_le
    hPlBounds.1 hPlBounds.2 hArrBounds.1 hArrBounds.2
    hTxBounds.1 hTxBounds.2 hRcBounds.1 hRcBounds.2
    hPlArr hPlTx hPlRc hArrTx hArrRc hTxRc
    hPlSize hArrSize hTxSize hRcSize

theorem transaction_block_objects_count
    {Γ : Gam} {q : Ptrs} {plObj arrObj txObj rcObj beObj : Obj} {N : Nat}
    (hord : q.Ordered) (hLayout : Layout guestC q Γ)
    (hPlMem : plObj ∈ Γ) (hArrMem : arrObj ∈ Γ)
    (hTxMem : txObj ∈ Γ) (hRcMem : rcObj ∈ Γ) (hBeMem : beObj ∈ Γ)
    (hPlTy : plObj.ty = tPL) (hArrTy : arrObj.ty = tSLA)
    (hTxTy : txObj.ty = tBOS) (hRcTy : rcObj.ty = tBOS) (hBeTy : beObj.ty = tBOS)
    (hPlSize : 136 ≤ plObj.size) (hArrSize : 16 * N ≤ arrObj.size)
    (hTxSize : 16 * N + 16 ≤ txObj.size)
    (hRcSize : 16 * N + 16 ≤ rcObj.size)
    (hBeSize : 120 ≤ beObj.size)
    (hne : txObj.base ≠ rcObj.base) (hneTxBe : txObj.base ≠ beObj.base)
    (hneRcBe : rcObj.base ≠ beObj.base) : N ≤ 5242874 := by
  have hPlBounds := heap_obj_bounds hord hLayout hPlMem (by rw [hPlTy]; rfl)
  have hArrBounds := heap_obj_bounds hord hLayout hArrMem (by rw [hArrTy]; rfl)
  have hTxBounds := heap_obj_bounds hord hLayout hTxMem (by rw [hTxTy]; rfl)
  have hRcBounds := heap_obj_bounds hord hLayout hRcMem (by rw [hRcTy]; rfl)
  have hBeBounds := heap_obj_bounds hord hLayout hBeMem (by rw [hBeTy]; rfl)
  have hPlArr := Frames.lay_disj hLayout hPlMem hArrMem
    (obj_ne_of_ty_ne hPlTy hArrTy (by decide))
  have hPlTx := Frames.lay_disj hLayout hPlMem hTxMem
    (obj_ne_of_ty_ne hPlTy hTxTy (by decide))
  have hPlRc := Frames.lay_disj hLayout hPlMem hRcMem
    (obj_ne_of_ty_ne hPlTy hRcTy (by decide))
  have hPlBe := Frames.lay_disj hLayout hPlMem hBeMem
    (obj_ne_of_ty_ne hPlTy hBeTy (by decide))
  have hArrTx := Frames.lay_disj hLayout hArrMem hTxMem
    (obj_ne_of_ty_ne hArrTy hTxTy (by decide))
  have hArrRc := Frames.lay_disj hLayout hArrMem hRcMem
    (obj_ne_of_ty_ne hArrTy hRcTy (by decide))
  have hArrBe := Frames.lay_disj hLayout hArrMem hBeMem
    (obj_ne_of_ty_ne hArrTy hBeTy (by decide))
  have hTxRc := Frames.lay_disj hLayout hTxMem hRcMem
    (fun he => hne (congrArg Obj.base he))
  have hTxBe := Frames.lay_disj hLayout hTxMem hBeMem
    (fun he => hneTxBe (congrArg Obj.base he))
  have hRcBe := Frames.lay_disj hLayout hRcMem hBeMem
    (fun he => hneRcBe (congrArg Obj.base he))
  simp only [Obj.hi] at hPlArr hPlTx hPlRc hPlBe hArrTx hArrRc hArrBe hTxRc hTxBe hRcBe
  exact AcceptedPayloadCountCap.transaction_block_count_le
    hPlBounds.1 hPlBounds.2 hArrBounds.1 hArrBounds.2
    hTxBounds.1 hTxBounds.2 hRcBounds.1 hRcBounds.2 hBeBounds.1 hBeBounds.2
    hPlArr hPlTx hPlRc hPlBe hArrTx hArrRc hArrBe hTxRc hTxBe hRcBe
    hPlSize hArrSize hTxSize hRcSize hBeSize

end AcceptedHeapObjectCount

#print axioms AcceptedHeapObjectCount.two_output_objects_count
#print axioms AcceptedHeapObjectCount.transaction_objects_count
#print axioms AcceptedHeapObjectCount.transaction_block_objects_count
