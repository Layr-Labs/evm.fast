import InitECandidate.Solver.MemSafe.CryptoCost.Seed
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.CryptoCost.Callers
variable {σ : Type}
def body_bn254_g1_mul := (declPair Guest.Software.guestFn_bn254_g1_mul).2.2
def b_bn254_g1_mul : Nat := 114825222176168396067223802852673941636860876
theorem cost_bn254_g1_mul : Cost σ guestCtx body_bn254_g1_mul b_bn254_g1_mul :=
  Analyzer.analyze_sound table0_sound (by cbv)
theorem cc_bn254_g1_mul : CalleeCost σ guestCtx (nm "bn254_g1_mul") b_bn254_g1_mul := by
  have hc : ∃ rs, guestCode (nm "bn254_g1_mul") =
      some ((declPair Guest.Software.guestFn_bn254_g1_mul).2.1,body_bn254_g1_mul,rs) :=
    declPair_valid (List.getElem_mem (n := 690) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact Analyzer.callee_of_body hc cost_bn254_g1_mul
def table1 := Analyzer.extend table0 (nm "bn254_g1_mul") b_bn254_g1_mul
theorem table1_sound : TblSound σ guestCtx table1 := Analyzer.extend_sound table0_sound cc_bn254_g1_mul
#print axioms cc_bn254_g1_mul
end InitECandidate.Solver.MemSafe.CryptoCost.Callers
