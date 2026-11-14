import InitECandidate.Solver.MemSafe.BlsCost.Callees.C15
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_g2_decode := (declPair Guest.Software.guestFn_g2_decode).2.2
def b_g2_decode : Nat := 274877907910
theorem cost_g2_decode : Cost σ guestCtx body_g2_decode b_g2_decode := ConstCost.Core.analyze_sound table15_sound (by cbv)
theorem cc_g2_decode : CalleeCost σ guestCtx (nm "g2_decode") b_g2_decode := by
  have hc : ∃ rs, guestCode (nm "g2_decode") = some ((declPair Guest.Software.guestFn_g2_decode).2.1,body_g2_decode,rs) :=
    declPair_valid (List.getElem_mem (n := 779) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_g2_decode
def table16 := ConstCost.Core.extend table15 (nm "g2_decode") b_g2_decode
theorem table16_sound : TblSound σ guestCtx table16 := ConstCost.Core.extend_sound table15_sound cc_g2_decode
#print axioms cc_g2_decode
end InitECandidate.Solver.MemSafe.BlsCost.Callees
