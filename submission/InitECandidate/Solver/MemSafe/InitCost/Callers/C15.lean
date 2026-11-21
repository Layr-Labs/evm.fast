import InitECandidate.Solver.MemSafe.InitCost.Callers.C14
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_htab_set := (declPair Guest.Software.guestFn_htab_set).2.2
def b_htab_set : Nat := 36893490140283929150
theorem cost_htab_set : Cost σ guestCtx body_htab_set b_htab_set :=
  InitCost.Analyzer.analyze_sound table14_sound (by cbv)
theorem cc_htab_set : CalleeCost σ guestCtx (nm "htab_set") b_htab_set := by
  have hc : ∃ rs, guestCode (nm "htab_set") = some ((declPair Guest.Software.guestFn_htab_set).2.1,body_htab_set,rs) :=
    declPair_valid (List.getElem_mem (n := 138) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_htab_set
def table15 := InitCost.Analyzer.extend table14 (nm "htab_set") b_htab_set
theorem table15_sound : TblSound σ guestCtx table15 := InitCost.Analyzer.extend_sound table14_sound cc_htab_set
#print axioms cc_htab_set
end InitECandidate.Solver.MemSafe.InitCost.Callers
