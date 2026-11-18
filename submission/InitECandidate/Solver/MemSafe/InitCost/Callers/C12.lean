import InitECandidate.Solver.MemSafe.InitCost.Callers.C11
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_htab_new_internal := (declPair Guest.Software.guestFn_htab_new_internal).2.2
def b_htab_new_internal : Nat := 412316860538
theorem cost_htab_new_internal : Cost σ guestCtx body_htab_new_internal b_htab_new_internal :=
  InitCost.Analyzer.analyze_sound table11_sound (by cbv)
theorem cc_htab_new_internal : CalleeCost σ guestCtx (nm "htab_new_internal") b_htab_new_internal := by
  have hc : ∃ rs, guestCode (nm "htab_new_internal") = some ((declPair Guest.Software.guestFn_htab_new_internal).2.1,body_htab_new_internal,rs) :=
    declPair_valid (List.getElem_mem (n := 136) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_htab_new_internal
def table12 := InitCost.Analyzer.extend table11 (nm "htab_new_internal") b_htab_new_internal
theorem table12_sound : TblSound σ guestCtx table12 := InitCost.Analyzer.extend_sound table11_sound cc_htab_new_internal
#print axioms cc_htab_new_internal
end InitECandidate.Solver.MemSafe.InitCost.Callers
