import InitECandidate.Solver.MemSafe.ArrayCost.Htr.C16
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ArrayCost.Htr
variable {σ : Type}
def body_htr_wdreq := (declPair Guest.Software.guestFn_htr_wdreq).2.2
def b_htr_wdreq : Nat := 2041694201525630781278309737604424139634
theorem cost_htr_wdreq : Cost σ guestCtx body_htr_wdreq b_htr_wdreq := ArrayCost.Core.analyze_sound table16_sound (by cbv)
theorem cc_htr_wdreq : CalleeCost σ guestCtx (nm "htr_wdreq") b_htr_wdreq := by
  have hc : ∃ rs, guestCode (nm "htr_wdreq") = some ((declPair Guest.Software.guestFn_htr_wdreq).2.1,body_htr_wdreq,rs) :=
    declPair_valid (List.getElem_mem (n := 212) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArrayCost.Core.callee_of_body hc cost_htr_wdreq
def table17 := ArrayCost.Core.extend table16 (nm "htr_wdreq") b_htr_wdreq
theorem table17_sound : TblSound σ guestCtx table17 := ArrayCost.Core.extend_sound table16_sound cc_htr_wdreq
#print axioms cc_htr_wdreq
end InitECandidate.Solver.MemSafe.ArrayCost.Htr
