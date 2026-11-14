import InitECandidate.Solver.MemSafe.CryptoCost.Callers.C10
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.CryptoCost.Callers
variable {σ : Type}
def body_generic_create := (declPair Guest.Software.guestFn_generic_create).2.2
def b_generic_create : Nat := 5725018083555951418630762129284854571531364240097242056635025599
theorem cost_generic_create : Cost σ guestCtx body_generic_create b_generic_create :=
  Analyzer.analyze_sound table10_sound (by cbv)
theorem cc_generic_create : CalleeCost σ guestCtx (nm "generic_create") b_generic_create := by
  have hc : ∃ rs, guestCode (nm "generic_create") =
      some ((declPair Guest.Software.guestFn_generic_create).2.1,body_generic_create,rs) :=
    declPair_valid (List.getElem_mem (n := 598) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact Analyzer.callee_of_body hc cost_generic_create
def table11 := Analyzer.extend table10 (nm "generic_create") b_generic_create
theorem table11_sound : TblSound σ guestCtx table11 := Analyzer.extend_sound table10_sound cc_generic_create
#print axioms cc_generic_create
end InitECandidate.Solver.MemSafe.CryptoCost.Callers
