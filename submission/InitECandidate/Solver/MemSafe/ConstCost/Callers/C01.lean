import InitECandidate.Solver.MemSafe.ConstCost.Seed
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Callers
variable {σ : Type}
def body_bn254_parse_g1 := (declPair Guest.Software.guestFn_bn254_parse_g1).2.2
def b_bn254_parse_g1 : Nat := 36893488559735963801
theorem cost_bn254_parse_g1 : Cost σ guestCtx body_bn254_parse_g1 b_bn254_parse_g1 :=
  ConstCost.Core.analyze_sound table0_sound (by cbv)
theorem cc_bn254_parse_g1 : CalleeCost σ guestCtx (nm "bn254_parse_g1") b_bn254_parse_g1 := by
  have hc : ∃ rs, guestCode (nm "bn254_parse_g1") = some ((declPair Guest.Software.guestFn_bn254_parse_g1).2.1,body_bn254_parse_g1,rs) :=
    declPair_valid (List.getElem_mem (n := 686) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_bn254_parse_g1
def table1 := ConstCost.Core.extend table0 (nm "bn254_parse_g1") b_bn254_parse_g1
theorem table1_sound : TblSound σ guestCtx table1 := ConstCost.Core.extend_sound table0_sound cc_bn254_parse_g1
#print axioms cc_bn254_parse_g1
end InitECandidate.Solver.MemSafe.ConstCost.Callers
