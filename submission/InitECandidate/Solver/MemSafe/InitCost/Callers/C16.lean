import InitECandidate.Solver.MemSafe.InitCost.Callers.C15
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_destroy_storage := (declPair Guest.Software.guestFn_destroy_storage).2.2
def b_destroy_storage : Nat := 680564775674346746799191251971613917902
theorem cost_destroy_storage : Cost σ guestCtx body_destroy_storage b_destroy_storage :=
  InitCost.Analyzer.analyze_sound table15_sound (by cbv)
theorem cc_destroy_storage : CalleeCost σ guestCtx (nm "destroy_storage") b_destroy_storage := by
  have hc : ∃ rs, guestCode (nm "destroy_storage") = some ((declPair Guest.Software.guestFn_destroy_storage).2.1,body_destroy_storage,rs) :=
    declPair_valid (List.getElem_mem (n := 389) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_destroy_storage
def table16 := InitCost.Analyzer.extend table15 (nm "destroy_storage") b_destroy_storage
theorem table16_sound : TblSound σ guestCtx table16 := InitCost.Analyzer.extend_sound table15_sound cc_destroy_storage
#print axioms cc_destroy_storage
end InitECandidate.Solver.MemSafe.InitCost.Callers
