import InitECandidate.Solver.Band4.Inst

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

/-!
# `mpt_set`: the cost on the insert path (Band7)

`ms7_condCost`: `mpt_set` with a nonempty value (`vptr ≠ 0`, `vlen ≠ 0`) costs at most `msB`; the delete branch
is dead, so neither the handle record nor the root slot is needed.
-/

namespace InitECandidate.Solver.Band7
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe (State Ptrs ptrsOf gword heapBase heapEnd nullMax AllocOK rd Gam
  Obj Fits InObj G Hooks Sig SumCore Ext CondCost ArgsOK ArgCells WCell ProtCell FoldOK CSumm)
open InitECandidate.Solver.MemSafe.Types (guestC nodeU tB40)
open InitECandidate.Solver.Band4

variable {σ : Type}

/-- `mpt_set`'s precondition on the insert path. -/
def MsPre7 (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ m key klen vptr vlen : BitVec 64,
    vs = [.val (.word m), .val (.word key), .val (.word klen), .val (.word vptr), .val (.word vlen)] ∧
    2 * klen.toNat < 2 ^ 64 ∧ vptr ≠ 0 ∧ vlen ≠ 0

theorem ms7_condCost {H : Hooks σ} (hF : FoldOK σ guestCtx guestC H)
    (hK : CSumm σ guestCtx guestC H (nm "keccak256") (MemSafe.WaveHelpers.sigKeccak 32 false) []) :
    CondCost σ guestCtx guestC H (nm "mpt_set") msSig MsPre7 msB := by
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, -, hbind⟩ := MemSafe.lookupCode_gen code_ms hl
  unfold msBody msB
  refine Band.costP_decCall (Pre := fun _ _ => True)
    (Inv.calleeCostP_of_calleeCost (MemSafe.Wire.calleeCost_guest (f := nm "mpt_nibble_key")
      (B := bMnk) rfl)) (fun _ _ _ _ _ _ => trivial)
    ((MemSafe.MptH.sumSpec_mpt_nibble_key hF hK).and ret_mpt_nibble_key) ?_
  rintro s _ ⟨hloc, Γ, p, hG, hp, -, m, key, klen, vptr, vlen, rfl, hkl2, hvp0, hvl0⟩ vs' hvs'
    callee' v st ⟨hS, hRet⟩ _ _
  have hm : s.locals.lookup (nm "m") = some (.val (.word m)) := by
    rw [hloc]; exact (hbind 0 (by decide) (by simp)).1
  have hkey : s.locals.lookup (nm "key") = some (.val (.word key)) := by
    rw [hloc]; exact (hbind 1 (by decide) (by simp)).1
  have hklen : s.locals.lookup (nm "klen") = some (.val (.word klen)) := by
    rw [hloc]; exact (hbind 2 (by decide) (by simp)).1
  have hvp : s.locals.lookup (nm "vptr") = some (.val (.word vptr)) := by
    rw [hloc]; exact (hbind 3 (by decide) (by simp)).1
  have hvl : s.locals.lookup (nm "vlen") = some (.val (.word vlen)) := by
    rw [hloc]; exact (hbind 4 (by decide) (by simp)).1
  rw [evs_cons (ev_lw hm) (evs_cons (ev_lw hkey) (evs_cons (ev_lw hklen) evs_nil))] at hvs'
  cases hvs'
  refine Inv.costP_dec fun t _ ht w hw _ => ?_
  subst ht
  refine Inv.costP_seq (R := fun _ => True) (Inv.costP_ite ?_ ?_) (fun _ _ _ _ _ => trivial)
    (Inv.costP_of_cost (cost_seq (cost_store _ _) (cost_return _)))
  · -- delete: dead
    rintro u _ ⟨hu, cw', hc, hc0⟩ hg
    exfalso
    have hl_other : ∀ x, x ≠ nm "root" → x ≠ nm "nk" → u.locals.lookup x = s.locals.lookup x := by
      intro x h1 h2
      rw [hu, lk_set_ne _ _ (Ne.symm h1), lk_set_ne _ _ (Ne.symm h2)]
    have hdel := ms_cond_true (by rw [hl_other _ (by decide) (by decide)]; exact hvp)
      (by rw [hl_other _ (by decide) (by decide)]; exact hvl) hc hc0
    rcases hdel with h | h
    · exact hvp0 h
    · exact hvl0 h
  · exact Inv.costP_of_cost (cost_call (MemSafe.Wire.calleeCost_guest (f := nm "_mpt_insert_node")
      (B := bIns) rfl) (by intro _ _ _ _ h; cases h))

theorem ms7_condCost_R :
    CondCost σ guestCtx guestC (MemSafe.Hooks.guestHooksR (σ := σ)) (nm "mpt_set") msSig MsPre7 msB :=
  ms7_condCost MemSafe.Rec.foldOK_guestR (MemSafe.WaveHelpers.csumm_keccak256 MemSafe.Rec.foldOK_guestR
    Mpt.Leaves.domTop_guestCtx (le_refl _) false)

end InitECandidate.Solver.Band7

#print axioms InitECandidate.Solver.Band7.ms7_condCost_R
