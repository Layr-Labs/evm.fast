import InitECandidate.Solver.MemSafe.InitCost.Callers.C05
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_jdel := (declPair Guest.Software.guestFn_jdel).2.2
def b_jdel : Nat := 184467440874534469689
theorem cost_jdel : Cost σ guestCtx body_jdel b_jdel :=
  InitCost.Analyzer.analyze_sound table5_sound (by cbv)
theorem cc_jdel : CalleeCost σ guestCtx (nm "jdel") b_jdel := by
  have hc : ∃ rs, guestCode (nm "jdel") = some ((declPair Guest.Software.guestFn_jdel).2.1,body_jdel,rs) :=
    declPair_valid (List.getElem_mem (n := 357) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_jdel
def table6 := InitCost.Analyzer.extend table5 (nm "jdel") b_jdel
theorem table6_sound : TblSound σ guestCtx table6 := InitCost.Analyzer.extend_sound table5_sound cc_jdel
#print axioms cc_jdel
end InitECandidate.Solver.MemSafe.InitCost.Callers
