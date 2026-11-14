import InitECandidate.Solver.MemSafe.InitCost.Callers.C23
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_modify_state_commit := (declPair Guest.Software.guestFn_modify_state_commit).2.2
def b_modify_state_commit : Nat := 680564775674346747131232649558993405883
theorem cost_modify_state_commit : Cost σ guestCtx body_modify_state_commit b_modify_state_commit :=
  InitCost.Analyzer.analyze_sound table23_sound (by cbv)
theorem cc_modify_state_commit : CalleeCost σ guestCtx (nm "modify_state_commit") b_modify_state_commit := by
  have hc : ∃ rs, guestCode (nm "modify_state_commit") = some ((declPair Guest.Software.guestFn_modify_state_commit).2.1,body_modify_state_commit,rs) :=
    declPair_valid (List.getElem_mem (n := 391) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_modify_state_commit
def table24 := InitCost.Analyzer.extend table23 (nm "modify_state_commit") b_modify_state_commit
theorem table24_sound : TblSound σ guestCtx table24 := InitCost.Analyzer.extend_sound table23_sound cc_modify_state_commit
#print axioms cc_modify_state_commit
end InitECandidate.Solver.MemSafe.InitCost.Callers
