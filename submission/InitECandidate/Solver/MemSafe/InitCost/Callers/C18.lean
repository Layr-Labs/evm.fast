import InitECandidate.Solver.MemSafe.InitCost.Callers.C17
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_jset := (declPair Guest.Software.guestFn_jset).2.2
def b_jset : Nat := 129127210646270640752
theorem cost_jset : Cost σ guestCtx body_jset b_jset :=
  InitCost.Analyzer.analyze_sound table17_sound (by cbv)
theorem cc_jset : CalleeCost σ guestCtx (nm "jset") b_jset := by
  have hc : ∃ rs, guestCode (nm "jset") = some ((declPair Guest.Software.guestFn_jset).2.1,body_jset,rs) :=
    declPair_valid (List.getElem_mem (n := 356) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_jset
def table18 := InitCost.Analyzer.extend table17 (nm "jset") b_jset
theorem table18_sound : TblSound σ guestCtx table18 := InitCost.Analyzer.extend_sound table17_sound cc_jset
#print axioms cc_jset
end InitECandidate.Solver.MemSafe.InitCost.Callers
