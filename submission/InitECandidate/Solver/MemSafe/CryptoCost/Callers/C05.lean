import InitECandidate.Solver.MemSafe.CryptoCost.Callers.C04
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.CryptoCost.Callers
variable {σ : Type}
def body_pre_alt_bn128_pairing_check := (declPair Guest.Software.guestFn_pre_alt_bn128_pairing_check).2.2
def b_pre_alt_bn128_pairing_check : Nat := 5723473916529046295016811374893334828670046252417937898804115294
theorem cost_pre_alt_bn128_pairing_check : Cost σ guestCtx body_pre_alt_bn128_pairing_check b_pre_alt_bn128_pairing_check :=
  Analyzer.analyze_sound table4_sound (by cbv)
theorem cc_pre_alt_bn128_pairing_check : CalleeCost σ guestCtx (nm "pre_alt_bn128_pairing_check") b_pre_alt_bn128_pairing_check := by
  have hc : ∃ rs, guestCode (nm "pre_alt_bn128_pairing_check") =
      some ((declPair Guest.Software.guestFn_pre_alt_bn128_pairing_check).2.1,body_pre_alt_bn128_pairing_check,rs) :=
    declPair_valid (List.getElem_mem (n := 694) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact Analyzer.callee_of_body hc cost_pre_alt_bn128_pairing_check
def table5 := Analyzer.extend table4 (nm "pre_alt_bn128_pairing_check") b_pre_alt_bn128_pairing_check
theorem table5_sound : TblSound σ guestCtx table5 := Analyzer.extend_sound table4_sound cc_pre_alt_bn128_pairing_check
#print axioms cc_pre_alt_bn128_pairing_check
end InitECandidate.Solver.MemSafe.CryptoCost.Callers
