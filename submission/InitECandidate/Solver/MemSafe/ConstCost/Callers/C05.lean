import InitECandidate.Solver.MemSafe.ConstCost.Callers.C04
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Callers
variable {σ : Type}
def body_fq12_pow_words := (declPair Guest.Software.guestFn_fq12_pow_words).2.2
def b_fq12_pow_words : Nat := 225975662473920507674354685305592717479141483130720299778933
theorem cost_fq12_pow_words : Cost σ guestCtx body_fq12_pow_words b_fq12_pow_words :=
  ConstCost.Core.analyze_sound table4_sound (by cbv)
theorem cc_fq12_pow_words : CalleeCost σ guestCtx (nm "fq12_pow_words") b_fq12_pow_words := by
  have hc : ∃ rs, guestCode (nm "fq12_pow_words") = some ((declPair Guest.Software.guestFn_fq12_pow_words).2.1,body_fq12_pow_words,rs) :=
    declPair_valid (List.getElem_mem (n := 683) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_fq12_pow_words
def table5 := ConstCost.Core.extend table4 (nm "fq12_pow_words") b_fq12_pow_words
theorem table5_sound : TblSound σ guestCtx table5 := ConstCost.Core.extend_sound table4_sound cc_fq12_pow_words
#print axioms cc_fq12_pow_words
end InitECandidate.Solver.MemSafe.ConstCost.Callers
