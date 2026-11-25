import InitECandidate.Solver.Improvements.ScalarFourRules

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace G2ScalarFour
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
private abbrev prog := (declPair Guest.Software.guestFn_g2_mul).2.2
abbrev price : Nat := 226821165130332648752148

private theorem tableCost {σ : Type} {f : MlS} {b : Nat}
    (h : Shards.finalState.1.lookup f = some b) : CalleeCost σ guestCtx f b :=
  calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 h

theorem body_cost {σ : Type} : Inv.CostP σ guestCtx ScalarFour.four prog price := by
  rw [show price = (1 + 0 + (1 + 2 + ((1 + 73786976294838206472) + (256 * (885443715538058485699 + 1) + 73786976294838206471)))) by decide +kernel]
  conv => arg 4; cbv
  refine ScalarFour.decCall (rn := nm "mark") (by decide) (tableCost (f := nm "heap_mark") (b := 0) (by rfl)) ?_
  refine ScalarFour.decCall (rn := nm "acc") (by decide) (tableCost (f := nm "alloc") (b := 2) (by rfl)) ?_
  refine ScalarFour.seqCall (tableCost (f := nm "g2_set_inf") (b := 73786976294838206472) (by rfl)) ?_
  exact ScalarFour.loop (nonzeroVar_sound (by decide_cbv))
    (stepsB_sound (nm "i") false _ (by decide_cbv))
    (ScalarFour.price_le (by decide_cbv)) (ScalarFour.price_le (by decide_cbv))

theorem callee_cost {σ : Type} : Inv.CalleeCostP σ guestCtx (nm "g2_mul")
    (fun vs _ => vs[3]? = some (.val (.word 4))) price := by
  intro vs actual callee rs hl
  obtain ⟨ret, hc⟩ := declPair_valid (d := Guest.Software.guestFn_g2_mul)
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 776) (by decide)) ⟨_, rfl⟩
  have hname : (declPair Guest.Software.guestFn_g2_mul).1 = nm "g2_mul" := by decide +kernel
  have hargs : (declPair Guest.Software.guestFn_g2_mul).2.1 =
      [(nm "r", .one), (nm "p", .one), (nm "kptr", .one), (nm "n", .one)] := by cbv
  rw [hname, hargs] at hc
  rw [guestCtx_code] at hl
  obtain ⟨rfl, _, a, b, c, d, rfl, _, _, _, hd⟩ := Mpt.lookupCode_four hc (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide) hl
  apply body_cost.pre
  rintro s _ ⟨hloc, h4⟩
  change some d = some (.val (.word 4)) at h4
  cases h4
  simpa only [ScalarFour.four, hloc] using hd

#print axioms callee_cost
end G2ScalarFour
