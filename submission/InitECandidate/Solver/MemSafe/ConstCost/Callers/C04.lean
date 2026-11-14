import InitECandidate.Solver.MemSafe.ConstCost.Callers.C03
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Callers
variable {σ : Type}
def body_fq_poly_deg := (declPair Guest.Software.guestFn_fq_poly_deg).2.2
def b_fq_poly_deg : Nat := 633825300317028885593516408843
theorem cost_fq_poly_deg : Cost σ guestCtx body_fq_poly_deg b_fq_poly_deg :=
  ConstCost.Core.analyze_sound table3_sound (by cbv)
theorem cc_fq_poly_deg : CalleeCost σ guestCtx (nm "fq_poly_deg") b_fq_poly_deg := by
  have hc : ∃ rs, guestCode (nm "fq_poly_deg") = some ((declPair Guest.Software.guestFn_fq_poly_deg).2.1,body_fq_poly_deg,rs) :=
    declPair_valid (List.getElem_mem (n := 680) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_fq_poly_deg
def table4 := ConstCost.Core.extend table3 (nm "fq_poly_deg") b_fq_poly_deg
theorem table4_sound : TblSound σ guestCtx table4 := ConstCost.Core.extend_sound table3_sound cc_fq_poly_deg
#print axioms cc_fq_poly_deg
end InitECandidate.Solver.MemSafe.ConstCost.Callers
