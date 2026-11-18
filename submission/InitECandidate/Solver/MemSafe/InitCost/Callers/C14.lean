import InitECandidate.Solver.MemSafe.InitCost.Callers.C13
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_recover_authority := (declPair Guest.Software.guestFn_recover_authority).2.2
def b_recover_authority : Nat := 11569600475311907766406259624761732154791
theorem cost_recover_authority : Cost σ guestCtx body_recover_authority b_recover_authority :=
  InitCost.Analyzer.analyze_sound table13_sound (by cbv)
theorem cc_recover_authority : CalleeCost σ guestCtx (nm "recover_authority") b_recover_authority := by
  have hc : ∃ rs, guestCode (nm "recover_authority") = some ((declPair Guest.Software.guestFn_recover_authority).2.1,body_recover_authority,rs) :=
    declPair_valid (List.getElem_mem (n := 572) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_recover_authority
def table14 := InitCost.Analyzer.extend table13 (nm "recover_authority") b_recover_authority
theorem table14_sound : TblSound σ guestCtx table14 := InitCost.Analyzer.extend_sound table13_sound cc_recover_authority
#print axioms cc_recover_authority
end InitECandidate.Solver.MemSafe.InitCost.Callers
