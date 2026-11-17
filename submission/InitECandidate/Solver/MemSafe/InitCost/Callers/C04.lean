import InitECandidate.Solver.MemSafe.InitCost.Callers.C03
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_compute_jumpdests := (declPair Guest.Software.guestFn_compute_jumpdests).2.2
def b_compute_jumpdests : Nat := 171798691889
theorem cost_compute_jumpdests : Cost σ guestCtx body_compute_jumpdests b_compute_jumpdests :=
  InitCost.Analyzer.analyze_sound table3_sound (by cbv)
theorem cc_compute_jumpdests : CalleeCost σ guestCtx (nm "compute_jumpdests") b_compute_jumpdests := by
  have hc : ∃ rs, guestCode (nm "compute_jumpdests") = some ((declPair Guest.Software.guestFn_compute_jumpdests).2.1,body_compute_jumpdests,rs) :=
    declPair_valid (List.getElem_mem (n := 463) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_compute_jumpdests
def table4 := InitCost.Analyzer.extend table3 (nm "compute_jumpdests") b_compute_jumpdests
theorem table4_sound : TblSound σ guestCtx table4 := InitCost.Analyzer.extend_sound table3_sound cc_compute_jumpdests
#print axioms cc_compute_jumpdests
end InitECandidate.Solver.MemSafe.InitCost.Callers
