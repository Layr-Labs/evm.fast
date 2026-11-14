import InitECandidate.Solver.MemSafe.BlsCost.Callees.C39
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_bls_pairing_exec := (declPair Guest.Software.guestFn_bls_pairing_exec).2.2
def b_bls_pairing_exec : Nat := 1356273532392863663901192887418481082922817182407481
theorem cost_bls_pairing_exec : Cost σ guestCtx body_bls_pairing_exec b_bls_pairing_exec := ConstCost.Core.analyze_sound table39_sound (by cbv)
theorem cc_bls_pairing_exec : CalleeCost σ guestCtx (nm "bls_pairing_exec") b_bls_pairing_exec := by
  have hc : ∃ rs, guestCode (nm "bls_pairing_exec") = some ((declPair Guest.Software.guestFn_bls_pairing_exec).2.1,body_bls_pairing_exec,rs) :=
    declPair_valid (List.getElem_mem (n := 806) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_bls_pairing_exec
def table40 := ConstCost.Core.extend table39 (nm "bls_pairing_exec") b_bls_pairing_exec
theorem table40_sound : TblSound σ guestCtx table40 := ConstCost.Core.extend_sound table39_sound cc_bls_pairing_exec
#print axioms cc_bls_pairing_exec
end InitECandidate.Solver.MemSafe.BlsCost.Callees
