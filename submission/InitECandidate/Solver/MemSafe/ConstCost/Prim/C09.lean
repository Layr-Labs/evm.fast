import InitECandidate.Solver.MemSafe.ConstCost.Prim.C08
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Prim
variable {σ : Type}
def body_ecp_double := (declPair Guest.Software.guestFn_ecp_double).2.2
def b_ecp_double : Nat := 110251486882384062231419343551219877549866
theorem cost_ecp_double : Cost σ guestCtx body_ecp_double b_ecp_double :=
  ConstCost.Core.analyze_sound table8_sound (by cbv)
theorem cc_ecp_double : CalleeCost σ guestCtx (nm "ecp_double") b_ecp_double := by
  have hc : ∃ rs, guestCode (nm "ecp_double") = some ((declPair Guest.Software.guestFn_ecp_double).2.1,body_ecp_double,rs) :=
    declPair_valid (List.getElem_mem (n := 673) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_ecp_double
def table9 := ConstCost.Core.extend table8 (nm "ecp_double") b_ecp_double
theorem table9_sound : TblSound σ guestCtx table9 := ConstCost.Core.extend_sound table8_sound cc_ecp_double
#print axioms cc_ecp_double
end InitECandidate.Solver.MemSafe.ConstCost.Prim
