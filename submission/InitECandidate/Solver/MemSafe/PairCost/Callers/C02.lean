import InitECandidate.Solver.MemSafe.PairCost.Callers.C01
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.PairCost.Callers
variable {σ : Type}
def body_pre_alt_bn128_pairing_check := (declPair Guest.Software.guestFn_pre_alt_bn128_pairing_check).2.2
def b_pre_alt_bn128_pairing_check : Nat := 225983313084233546032996894123781934444247588056895484195028
theorem cost_pre_alt_bn128_pairing_check : Cost σ guestCtx body_pre_alt_bn128_pairing_check b_pre_alt_bn128_pairing_check := PairCost.Core.analyze_sound table1_sound (by cbv)
theorem cc_pre_alt_bn128_pairing_check : CalleeCost σ guestCtx (nm "pre_alt_bn128_pairing_check") b_pre_alt_bn128_pairing_check := by
  have hc : ∃ rs, guestCode (nm "pre_alt_bn128_pairing_check") = some ((declPair Guest.Software.guestFn_pre_alt_bn128_pairing_check).2.1,body_pre_alt_bn128_pairing_check,rs) :=
    declPair_valid (List.getElem_mem (n := 694) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact PairCost.Core.callee_of_body hc cost_pre_alt_bn128_pairing_check
def table2 := PairCost.Core.extend table1 (nm "pre_alt_bn128_pairing_check") b_pre_alt_bn128_pairing_check
theorem table2_sound : TblSound σ guestCtx table2 := PairCost.Core.extend_sound table1_sound cc_pre_alt_bn128_pairing_check
#print axioms cc_pre_alt_bn128_pairing_check
end InitECandidate.Solver.MemSafe.PairCost.Callers
