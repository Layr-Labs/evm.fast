import InitECandidate.Solver.MemSafe.ArrayCost.Htr.C08
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ArrayCost.Htr
variable {σ : Type}
def body_htr_cons := (declPair Guest.Software.guestFn_htr_cons).2.2
def b_htr_cons : Nat := 2722258935367507708371079649955980248166
theorem cost_htr_cons : Cost σ guestCtx body_htr_cons b_htr_cons := ArrayCost.Core.analyze_sound table8_sound (by cbv)
theorem cc_htr_cons : CalleeCost σ guestCtx (nm "htr_cons") b_htr_cons := by
  have hc : ∃ rs, guestCode (nm "htr_cons") = some ((declPair Guest.Software.guestFn_htr_cons).2.1,body_htr_cons,rs) :=
    declPair_valid (List.getElem_mem (n := 213) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArrayCost.Core.callee_of_body hc cost_htr_cons
def table9 := ArrayCost.Core.extend table8 (nm "htr_cons") b_htr_cons
theorem table9_sound : TblSound σ guestCtx table9 := ArrayCost.Core.extend_sound table8_sound cc_htr_cons
#print axioms cc_htr_cons
end InitECandidate.Solver.MemSafe.ArrayCost.Htr
