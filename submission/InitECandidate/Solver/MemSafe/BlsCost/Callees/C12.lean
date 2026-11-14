import InitECandidate.Solver.MemSafe.BlsCost.Callees.C11
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_g2_double := (declPair Guest.Software.guestFn_g2_double).2.2
def b_g2_double : Nat := 412316862938
theorem cost_g2_double : Cost σ guestCtx body_g2_double b_g2_double := ConstCost.Core.analyze_sound table11_sound (by cbv)
theorem cc_g2_double : CalleeCost σ guestCtx (nm "g2_double") b_g2_double := by
  have hc : ∃ rs, guestCode (nm "g2_double") = some ((declPair Guest.Software.guestFn_g2_double).2.1,body_g2_double,rs) :=
    declPair_valid (List.getElem_mem (n := 774) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_g2_double
def table12 := ConstCost.Core.extend table11 (nm "g2_double") b_g2_double
theorem table12_sound : TblSound σ guestCtx table12 := ConstCost.Core.extend_sound table11_sound cc_g2_double
#print axioms cc_g2_double
end InitECandidate.Solver.MemSafe.BlsCost.Callees
