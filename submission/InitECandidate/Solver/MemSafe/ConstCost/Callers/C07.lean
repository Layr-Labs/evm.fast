import InitECandidate.Solver.MemSafe.ConstCost.Callers.C06
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Callers
variable {σ : Type}
def body_bn254_parse_g2 := (declPair Guest.Software.guestFn_bn254_parse_g2).2.2
def b_bn254_parse_g2 : Nat := 166020697247501517086
theorem cost_bn254_parse_g2 : Cost σ guestCtx body_bn254_parse_g2 b_bn254_parse_g2 :=
  ConstCost.Core.analyze_sound table6_sound (by cbv)
theorem cc_bn254_parse_g2 : CalleeCost σ guestCtx (nm "bn254_parse_g2") b_bn254_parse_g2 := by
  have hc : ∃ rs, guestCode (nm "bn254_parse_g2") = some ((declPair Guest.Software.guestFn_bn254_parse_g2).2.1,body_bn254_parse_g2,rs) :=
    declPair_valid (List.getElem_mem (n := 687) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_bn254_parse_g2
def table7 := ConstCost.Core.extend table6 (nm "bn254_parse_g2") b_bn254_parse_g2
theorem table7_sound : TblSound σ guestCtx table7 := ConstCost.Core.extend_sound table6_sound cc_bn254_parse_g2
#print axioms cc_bn254_parse_g2
end InitECandidate.Solver.MemSafe.ConstCost.Callers
