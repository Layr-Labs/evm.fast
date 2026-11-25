import InitECandidate.Solver.Improvements.G2ScalarFour
import InitECandidate.Solver.Improvements.LiteralCall
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
namespace G2Wrappers
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
theorem subgroup {σ : Type} : CalleeCost σ guestCtx (nm "g2_subgroup_check") 226821165130332648752156 := by
  apply ScalarFour.installedCost (p := declPair Guest.Software.guestFn_g2_subgroup_check)
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 781) (by decide)) ⟨_, rfl⟩)
  conv => arg 3; cbv
  exact
      (cost_decCall (CompactCostReplay.accepted (f := nm "heap_mark") (B := 0) (by rfl))
      (cost_decCall (CompactCostReplay.accepted (f := nm "alloc") (B := 2) (by rfl))
      (cost_seq (ScalarFour.literalCall G2ScalarFour.callee_cost) (ScalarFour.price_le (b := 3) (by decide_cbv)))))

theorem msm {σ : Type} : CalleeCost σ guestCtx (nm "bls_g2_msm_exec") 8383536673831161001729536045309187476563275 := by
  apply ScalarFour.installedCost (p := declPair Guest.Software.guestFn_bls_g2_msm_exec)
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 805) (by decide)) ⟨_, rfl⟩)
  conv => arg 3; cbv
  exact
      (cost_decCall (CompactCostReplay.accepted (f := nm "heap_mark") (B := 0) (by rfl))
      (cost_decCall (CompactCostReplay.accepted (f := nm "alloc") (B := 2) (by rfl))
      (cost_decCall (CompactCostReplay.accepted (f := nm "alloc") (B := 2) (by rfl))
      (cost_decCall (CompactCostReplay.accepted (f := nm "alloc") (B := 2) (by rfl)) (cost_dec
      (cost_seq (cost_while_inc_less (cost_dec
      (cost_decCall (CompactCostReplay.accepted (f := nm "g2_decode") (B := 147573952589676413830) (by rfl))
      (cost_seq (ScalarFour.price_le (b := 1) (by decide_cbv))
      (cost_decCall G2Wrappers.subgroup
      (cost_seq (ScalarFour.price_le (b := 1) (by decide_cbv))
      (cost_decCall (CompactCostReplay.accepted (f := nm "u256_from_be") (B := 18446744073709551621) (by rfl))
      (cost_seq (ScalarFour.price_le (b := 0) (by decide_cbv))
      (cost_seq (ScalarFour.literalCall G2ScalarFour.callee_cost) (ScalarFour.price_le (b := 664082786653543863880) (by decide_cbv)))))))))) (stepsB_sound (nm "i") true _ (by decide_cbv))) (ScalarFour.price_le (b := 368934881474196964151) (by decide_cbv))))))))
#print axioms subgroup
#print axioms msm
end G2Wrappers
