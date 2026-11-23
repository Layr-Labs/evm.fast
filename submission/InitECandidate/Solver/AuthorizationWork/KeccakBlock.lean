import InitECandidate.Solver.AuthorizationWork.KeccakRounds

/-! The absorb loops increment by eight until the installed 136-byte guard.
Price each comparable iteration by a unit decrease in remaining bytes. -/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace KeccakBlock
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ExpHOL ProgHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Leaves

abbrev price : Nat := 136 + (1 + 24 + 0)

private theorem advance {σ : Type} :
    Steps σ (nm "i") (· + BitVec.ofNat 64 8)
      (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 8]) : ProgHOL 64) := by
  intro s v hv _
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  simp [lv, cw, evalHOLExact, evalListHOLExact, hv, wordOpHOL, wordOp, valueIsWord, valueWord,
    isValidValueHOLFinite, lookupKvarHOLFinite, setKvarHOLFinite, shapeOfHOLExact, shapeEqHOL,
    setVarHOLFinite, FUPDATE]

private theorem absorb_loop {σ : Type} (es : List (ExpHOL 64)) :
    Inv.CostP σ guestCtx (InitializedSignedCounter.counterInv (nm "i") (136 + 8))
      (abLoop es) 136 := by
  unfold abLoop
  exact InitializedSignedCounter.loop_cost_stride (stride := 8) (by decide) (by decide)
    (cost_seq (cost_store _ _) (cost_assign _ _ _))
    (steps_seq_right (keeps_store _ _ _) (noCont_store _ _) advance)

theorem bodyCost {σ : Type} : Cost σ guestCtx (abBody abE1 abE2) price := by
  unfold abBody
  have h : Inv.CostP σ guestCtx (fun _ => True)
      (.dec (nm "i") .one (cw 0) (.seq
        (.ite (.cmp .equal (.op .and [lv (nm "blk"), cw 7]) (cw 0)) (abLoop abE1) (abLoop abE2))
        (.seq (.call (some (none, none)) (nm "keccak_f1600") [lv (nm "stp")]) (.return (cw 0)))))
      price := by
    refine Inv.costP_dec ?_
    intro s _ _ v hv _
    rw [ev_cw] at hv
    cases hv
    have hTail : Cost σ guestCtx
        (.seq (.call (some (none, none)) (nm "keccak_f1600") [lv (nm "stp")]) (.return (cw 0)))
        (1 + 24 + 0) := by
      exact cost_seq (cost_call (info := some (none, none)) (Bh := 0) KeccakRounds.calleeCost (by intro _ _ _ _ h; cases h)) (cost_return _)
    refine Inv.CostP.pre (P := InitializedSignedCounter.counterInv (nm "i") (136 + 8))
      (Inv.costP_seq (Ba := 136) (R := fun _ => True) ?_
        (fun _ _ _ _ _ => trivial) (Inv.costP_of_cost hTail)) ?_
    · simpa only [Nat.max_self] using Inv.costP_ite (P := InitializedSignedCounter.counterInv (nm "i") (136 + 8))
        ((absorb_loop abE1).pre (fun _ _ h => h.1))
        ((absorb_loop abE2).pre (fun _ _ h => h.1))
    · intro t _ ht
      subst t
      exact ⟨0, lk_set_self _ _ _, by decide⟩
  exact fun s hs hg => ⟨h s hs trivial hg, inCtx_eval hs _⟩

theorem calleeCost {σ : Type} : CalleeCost σ guestCtx (nm "keccak_absorb_block") price := by
  intro values body callee shape hLookup
  obtain ⟨params, hCode⟩ := lookupCode_some hLookup
  rw [guestCtx_code, code_keccak_absorb_block] at hCode
  have hb : body = abBody abE1 abE2 := (congrArg (fun row => row.2.1) (Option.some.inj hCode)).symm
  rw [hb]
  exact bodyCost

#print axioms calleeCost

end KeccakBlock
