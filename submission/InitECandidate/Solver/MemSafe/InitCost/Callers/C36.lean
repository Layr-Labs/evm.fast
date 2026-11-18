import InitECandidate.Solver.MemSafe.InitCost.Callers.C35
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_prepare_dispatch := (declPair Guest.Software.guestFn_prepare_dispatch).2.2
def b_prepare_dispatch : Nat := 699620546612555990437589951862017727164040
theorem cost_prepare_dispatch : Cost σ guestCtx body_prepare_dispatch b_prepare_dispatch :=
  InitCost.Analyzer.analyze_sound table35_sound (by cbv)
theorem cc_prepare_dispatch : CalleeCost σ guestCtx (nm "prepare_dispatch") b_prepare_dispatch := by
  have hc : ∃ rs, guestCode (nm "prepare_dispatch") = some ((declPair Guest.Software.guestFn_prepare_dispatch).2.1,body_prepare_dispatch,rs) :=
    declPair_valid (List.getElem_mem (n := 576) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_prepare_dispatch
def table36 := InitCost.Analyzer.extend table35 (nm "prepare_dispatch") b_prepare_dispatch
theorem table36_sound : TblSound σ guestCtx table36 := InitCost.Analyzer.extend_sound table35_sound cc_prepare_dispatch
#print axioms cc_prepare_dispatch
end InitECandidate.Solver.MemSafe.InitCost.Callers
