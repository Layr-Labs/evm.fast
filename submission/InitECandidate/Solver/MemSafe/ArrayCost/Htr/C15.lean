import InitECandidate.Solver.MemSafe.ArrayCost.Htr.C14
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ArrayCost.Htr
variable {σ : Type}
def body_htr_withdrawal := (declPair Guest.Software.guestFn_htr_withdrawal).2.2
def b_htr_withdrawal : Nat := 1361129467683753854185539825527745938121
theorem cost_htr_withdrawal : Cost σ guestCtx body_htr_withdrawal b_htr_withdrawal := ArrayCost.Core.analyze_sound table14_sound (by cbv)
theorem cc_htr_withdrawal : CalleeCost σ guestCtx (nm "htr_withdrawal") b_htr_withdrawal := by
  have hc : ∃ rs, guestCode (nm "htr_withdrawal") = some ((declPair Guest.Software.guestFn_htr_withdrawal).2.1,body_htr_withdrawal,rs) :=
    declPair_valid (List.getElem_mem (n := 208) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArrayCost.Core.callee_of_body hc cost_htr_withdrawal
def table15 := ArrayCost.Core.extend table14 (nm "htr_withdrawal") b_htr_withdrawal
theorem table15_sound : TblSound σ guestCtx table15 := ArrayCost.Core.extend_sound table14_sound cc_htr_withdrawal
#print axioms cc_htr_withdrawal
end InitECandidate.Solver.MemSafe.ArrayCost.Htr
