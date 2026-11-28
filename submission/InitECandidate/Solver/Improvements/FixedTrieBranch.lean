import InitECandidate.Solver.Improvements.FixedZero
import InitECandidate.Solver.Improvements.CompactCostReplay
import InitECandidate.Solver.Spec.Mpt.Leaves.Branch
import InitECandidate.Solver.Spec.Inv.HtabCode

/-! The installed constructor passes the fixed 176-byte length. -/
set_option autoImplicit false
set_option maxRecDepth 100000
namespace FixedTrieBranch
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Leaves
variable {σ : Type}

theorem branchCost : CalleeCost σ guestCtx (nm "node_new_branch") 708 := by
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, rfl⟩ := lookupCode_zero code_node_new_branch hl
  have hzero : Cost σ guestCtx
      (.call (some (none, none)) (nm "memzero") [lv (nm "nd"), cw 176]) (1 + 704 + 0) :=
    Inv.cost_of_costP_true (Inv.costP_callD FixedZero.calleeCost (by
      intro s hs _ args he _
      obtain ⟨d, n, rfl, _, hn⟩ := Inv.evs_two_inv he
      rw [ev_cw] at hn
      cases hn
      exact ⟨d, rfl⟩))
  unfold nbBody nbK
  exact cost_decCall (CompactCostReplay.accepted (B := 2) (by decide_cbv))
    (cost_seq hzero (cost_seq (Bp := 0) (Bq := 0) (cost_store _ _) (cost_return _)))

#print axioms branchCost
end FixedTrieBranch
