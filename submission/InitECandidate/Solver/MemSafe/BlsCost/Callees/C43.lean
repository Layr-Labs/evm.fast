import InitECandidate.Solver.MemSafe.BlsCost.Callees.C42
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_pre_bls_pairing := (declPair Guest.Software.guestFn_pre_bls_pairing).2.2
def b_pre_bls_pairing : Nat := 1356273532392863663901192887418499529666890891959105
theorem cost_pre_bls_pairing : Cost σ guestCtx body_pre_bls_pairing b_pre_bls_pairing := ConstCost.Core.analyze_sound table42_sound (by cbv)
theorem cc_pre_bls_pairing : CalleeCost σ guestCtx (nm "pre_bls_pairing") b_pre_bls_pairing := by
  have hc : ∃ rs, guestCode (nm "pre_bls_pairing") = some ((declPair Guest.Software.guestFn_pre_bls_pairing).2.1,body_pre_bls_pairing,rs) :=
    declPair_valid (List.getElem_mem (n := 818) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_pre_bls_pairing
def table43 := ConstCost.Core.extend table42 (nm "pre_bls_pairing") b_pre_bls_pairing
theorem table43_sound : TblSound σ guestCtx table43 := ConstCost.Core.extend_sound table42_sound cc_pre_bls_pairing
#print axioms cc_pre_bls_pairing
end InitECandidate.Solver.MemSafe.BlsCost.Callees
