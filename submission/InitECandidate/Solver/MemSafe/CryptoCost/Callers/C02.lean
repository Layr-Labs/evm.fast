import InitECandidate.Solver.MemSafe.CryptoCost.Callers.C01
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.CryptoCost.Callers
variable {σ : Type}
def body_bn254_pairing := (declPair Guest.Software.guestFn_bn254_pairing).2.2
def b_bn254_pairing : Nat := 326409290240107480458258249337867891987117887151358659157912
theorem cost_bn254_pairing : Cost σ guestCtx body_bn254_pairing b_bn254_pairing :=
  Analyzer.analyze_sound table1_sound (by cbv)
theorem cc_bn254_pairing : CalleeCost σ guestCtx (nm "bn254_pairing") b_bn254_pairing := by
  have hc : ∃ rs, guestCode (nm "bn254_pairing") =
      some ((declPair Guest.Software.guestFn_bn254_pairing).2.1,body_bn254_pairing,rs) :=
    declPair_valid (List.getElem_mem (n := 685) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact Analyzer.callee_of_body hc cost_bn254_pairing
def table2 := Analyzer.extend table1 (nm "bn254_pairing") b_bn254_pairing
theorem table2_sound : TblSound σ guestCtx table2 := Analyzer.extend_sound table1_sound cc_bn254_pairing
#print axioms cc_bn254_pairing
end InitECandidate.Solver.MemSafe.CryptoCost.Callers
