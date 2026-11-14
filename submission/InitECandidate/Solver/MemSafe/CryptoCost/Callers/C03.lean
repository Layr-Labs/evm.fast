import InitECandidate.Solver.MemSafe.CryptoCost.Callers.C02
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.CryptoCost.Callers
variable {σ : Type}
def body_bn254_pairing_check := (declPair Guest.Software.guestFn_bn254_pairing_check).2.2
def b_bn254_pairing_check : Nat := 5723473916529046295016811374893334828670046160184217530256357201
theorem cost_bn254_pairing_check : Cost σ guestCtx body_bn254_pairing_check b_bn254_pairing_check :=
  Analyzer.analyze_sound table2_sound (by cbv)
theorem cc_bn254_pairing_check : CalleeCost σ guestCtx (nm "bn254_pairing_check") b_bn254_pairing_check := by
  have hc : ∃ rs, guestCode (nm "bn254_pairing_check") =
      some ((declPair Guest.Software.guestFn_bn254_pairing_check).2.1,body_bn254_pairing_check,rs) :=
    declPair_valid (List.getElem_mem (n := 691) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact Analyzer.callee_of_body hc cost_bn254_pairing_check
def table3 := Analyzer.extend table2 (nm "bn254_pairing_check") b_bn254_pairing_check
theorem table3_sound : TblSound σ guestCtx table3 := Analyzer.extend_sound table2_sound cc_bn254_pairing_check
#print axioms cc_bn254_pairing_check
end InitECandidate.Solver.MemSafe.CryptoCost.Callers
