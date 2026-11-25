import InitECandidate.Solver.Improvements.CompactChildEffects
import InitECandidate.Solver.Improvements.BuilderHeapCount
import InitECandidate.Solver.Improvements.ThirdMergeCallees
import InitECandidate.Solver.Improvements.BuilderTableLocalFacts
import InitECandidate.Solver.Band6.UbC1
import InitECandidate.Solver.MemSafe.Bal.Merge

/-! Charge the outer transaction-storage merge for the entry count recorded in
the typed source table. The five preliminary unions and the per-entry body
retain their existing prices. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace MergeTableBound
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Bal InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.HtabEntries
open ThirdMergeCore
open ThirdMergeCallees

variable {σ : Type}

private theorem costs : Costs σ guestCtx 0 110680466263323443733 getB 12 CompactChildEffects.unionPrice where
  item := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  set := CompactHtabPrices.set_cost
  get := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  new := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  union := CompactChildEffects.union_cost

def loopPrice : Nat := (BuilderHeapCount.cap) * (mergeLoopB 0 110680466263323443733 getB 12 CompactChildEffects.unionPrice + 1)

def bodyPrice : Nat := 5 * (1 + CompactChildEffects.unionPrice) + loopPrice

theorem bodyPrice_eq :
    bodyPrice = 8427340000453528502464090055817377111901392765 := by decide

theorem loop_cost : Inv.CostP σ guestCtx
    (fun s => AcceptedInitializedLoopCost.Nonneg (nm "i") s ∧
      BoundedInitializedLoop.LocalCap (nm "cap") (BuilderHeapCount.cap) s)
    (.while (.cmp .less (v "i") (v "cap")) mergeLoopBody) loopPrice := by
  refine Inv.CostP.pre
    (BoundedInitializedLoop.costP_while_local_cap (I := fun _ => True) (fun _ _ => trivial)
      (Inv.costP_of_cost (merge_loop_cost costs)) (fun _ _ _ _ _ => trivial)
      (noContB_sound _ (by rfl)) (stepsB_sound (nm "i") true _ (by rfl))
      (keepsB_sound (nm "cap") _ (by rfl))) (fun _ _ h => ⟨trivial, h⟩)

section
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {BB TB : BitVec 64}

theorem rest_cost (E : MgEnt Γ0 s0 p0 BB TB) :
    Inv.CostP σ guestCtx (fun s => ∃ Γ, PI mgc Γ0 s0 p0 (fun _ _ => True) Γ s)
      mergeRest loopPrice := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  unfold mergeRest
  refine Inv.costP_dec (fun s hs ⟨Γ, hIV, _⟩ value hv hshape => ?_)
  have F := mg_facts E hIV
  obtain ⟨T, hT, hTb, hTt, hTs⟩ := F.T
  have hout := lp_ev_ld (ev_add2 (ev_gv F.gt) (ev_cw _ 32)) hv
  obtain ⟨To, hTo, hTob, hTot⟩ := slot_ptr (Struct.trk_G hIV.1) hT (k := 4) (by omega)
    (show (guestC.ty T.ty).slot 4 = .ptr tHTt20 by rw [hTt]; decide)
  rw [cell_eq_off T (k := 32) rfl, hTb] at hTob
  subst value
  refine Inv.costP_dec (fun s1 hs1 h1 bouter hbouter hshape1 => ?_)
  subst h1
  refine Inv.costP_dec (fun s2 hs2 h2 cap hcap hshape2 => ?_)
  subst h2
  let localState := setVarHOLFinite (nm "bouter") bouter
    (setVarHOLFinite (nm "outer") (.val (.word (rd s.memory (TB + BitVec.ofNat 64 32)))) s)
  have hlo : localState.locals.lookup (nm "outer") = some (.val (.word To.base)) := by
    rw [hTob]
    exact (lk_set_ne _ _ (by decide)).trans (lk_set_self _ _ _)
  have hg : G guestC (guestHooksR (σ := σ)) Γ localState :=
    G_congr (s := s) hH rfl rfl rfl rfl (Struct.trk_G hIV.1)
  obtain ⟨count, hc, hcount⟩ := BuilderHeapCount.count_load hg hTo
    (by rw [hTot]; decide) (Mpt.Leaves.ev_lv' hlo) hcap
  subst cap
  refine Inv.costP_dec (fun s3 hs3 h3 i hi hshape3 => ?_)
  subst h3
  have hi0 := Option.some.inj ((ev_cw _ 0).symm.trans hi)
  subst i
  have hp := Inv.costP_seq (R := fun _ => True) (loop_cost (σ := σ))
    (fun _ _ _ _ _ => trivial) (Inv.costP_of_cost (P := fun _ => True) (cost_return (cw 0)))
  refine Inv.CostP.pre hp (fun t _ ht => ?_)
  subst ht
  exact ⟨⟨0, lk_set_self _ _ _, by decide⟩,
    count, (lk_set_ne _ _ (by decide)).trans (lk_set_self _ _ _), hcount⟩

theorem body_cost (E : MgEnt Γ0 s0 p0 BB TB)
    (hG : G guestC (guestHooksR (σ := σ)) Γ0 s0) (hp : ptrsOf s0 = some p0) :
    Inv.CostP σ guestCtx (fun s => s = s0) mergeBody bodyPrice := by
  let P : State σ → Prop := fun s => ∃ Γ, PI mgc Γ0 s0 p0 (fun _ _ => True) Γ s
  have cu (k : Nat) : Inv.CostP σ guestCtx P (mergeU k) (1 + CompactChildEffects.unionPrice) :=
    Inv.costP_of_cost (callD_cost CompactChildEffects.union_cost)
  have walk : Inv.CostP σ guestCtx P mergeBody
      ((1 + CompactChildEffects.unionPrice) + ((1 + CompactChildEffects.unionPrice) + ((1 + CompactChildEffects.unionPrice) + ((1 + CompactChildEffects.unionPrice) + ((1 + CompactChildEffects.unionPrice) + loopPrice))))) := by
    unfold mergeBody
    refine Inv.costP_seq (cu 24) (Band6.inv_of_hoareG (mg_union E (j := 3) (th := tHTb52) (tt := tHTh52)
      (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide))) ?_
    refine Inv.costP_seq (cu 8) (Band6.inv_of_hoareG (mg_union E (j := 1) (th := tHTb20) (tt := tHTh20)
      (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide))) ?_
    refine Inv.costP_seq (cu 40) (Band6.inv_of_hoareG (mg_union E (j := 5) (th := tHTb52) (tt := tHTh52)
      (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide))) ?_
    refine Inv.costP_seq (cu 16) (Band6.inv_of_hoareG (mg_union E (j := 2) (th := tHTb20) (tt := tHTh20)
      (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide))) ?_
    refine Inv.costP_seq (cu 48) (Band6.inv_of_hoareG (mg_union E (j := 6) (th := tHTbc32) (tt := tHTc32)
      (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide))) ?_
    exact rest_cost E
  have eq : (1 + CompactChildEffects.unionPrice) + ((1 + CompactChildEffects.unionPrice) + ((1 + CompactChildEffects.unionPrice) + ((1 + CompactChildEffects.unionPrice) + ((1 + CompactChildEffects.unionPrice) + loopPrice))))
      = bodyPrice := by unfold bodyPrice; omega
  rw [eq] at walk
  refine Inv.CostP.pre walk (fun s _ hs => ?_)
  subst hs
  exact ⟨Γ0, ⟨Struct.trk_refl hG hp, fun _ _ => rfl⟩, trivial⟩

end

theorem callee_cost :
    CondCost σ guestCtx guestC (guestHooksR (σ := σ)) (nm "merge_tx_into_block") biSig MgPre bodyPrice := by
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, -⟩ := Struct.lookupCode_zero ThirdMergeCallees.code_merge hl
  rintro s hs ⟨hloc, Γ, p, hG, hp, hargs, hpre⟩ hg
  obtain ⟨-, ⟨B, hB, hBt, hBg⟩, ⟨T, hT, hTt, hTg⟩⟩ := hpre
  obtain ⟨q, hq, hord, hL, -⟩ := id hG
  rw [hp] at hq
  cases hq
  have E : MgEnt Γ s p B.base T.base :=
    ⟨hord, hL, ⟨B, hB, rfl, hBt⟩, AllocImpl.lookup_of_gword hBg,
      ⟨T, hT, rfl, hTt⟩, AllocImpl.lookup_of_gword hTg⟩
  exact body_cost E hG hp s hs rfl hg

#print axioms callee_cost
end MergeTableBound
