import InitECandidate.Solver.MemSafe.CryptoCost.Callers.C03
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.CryptoCost.Callers
variable {σ : Type}
def body_pre_alt_bn128_mul := (declPair Guest.Software.guestFn_pre_alt_bn128_mul).2.2
def b_pre_alt_bn128_mul : Nat := 114825222176168396067223950426626531313273825
theorem cost_pre_alt_bn128_mul : Cost σ guestCtx body_pre_alt_bn128_mul b_pre_alt_bn128_mul :=
  Analyzer.analyze_sound table3_sound (by cbv)
theorem cc_pre_alt_bn128_mul : CalleeCost σ guestCtx (nm "pre_alt_bn128_mul") b_pre_alt_bn128_mul := by
  have hc : ∃ rs, guestCode (nm "pre_alt_bn128_mul") =
      some ((declPair Guest.Software.guestFn_pre_alt_bn128_mul).2.1,body_pre_alt_bn128_mul,rs) :=
    declPair_valid (List.getElem_mem (n := 693) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact Analyzer.callee_of_body hc cost_pre_alt_bn128_mul
def table4 := Analyzer.extend table3 (nm "pre_alt_bn128_mul") b_pre_alt_bn128_mul
theorem table4_sound : TblSound σ guestCtx table4 := Analyzer.extend_sound table3_sound cc_pre_alt_bn128_mul
#print axioms cc_pre_alt_bn128_mul
end InitECandidate.Solver.MemSafe.CryptoCost.Callers
