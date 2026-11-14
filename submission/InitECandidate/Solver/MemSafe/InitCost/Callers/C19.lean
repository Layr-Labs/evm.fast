import InitECandidate.Solver.MemSafe.InitCost.Callers.C18
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_record_pre_state_read := (declPair Guest.Software.guestFn_record_pre_state_read).2.2
def b_record_pre_state_read : Nat := 36893490140283929151
theorem cost_record_pre_state_read : Cost σ guestCtx body_record_pre_state_read b_record_pre_state_read :=
  InitCost.Analyzer.analyze_sound table18_sound (by cbv)
theorem cc_record_pre_state_read : CalleeCost σ guestCtx (nm "record_pre_state_read") b_record_pre_state_read := by
  have hc : ∃ rs, guestCode (nm "record_pre_state_read") = some ((declPair Guest.Software.guestFn_record_pre_state_read).2.1,body_record_pre_state_read,rs) :=
    declPair_valid (List.getElem_mem (n := 364) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_record_pre_state_read
def table19 := InitCost.Analyzer.extend table18 (nm "record_pre_state_read") b_record_pre_state_read
theorem table19_sound : TblSound σ guestCtx table19 := InitCost.Analyzer.extend_sound table18_sound cc_record_pre_state_read
#print axioms cc_record_pre_state_read
end InitECandidate.Solver.MemSafe.InitCost.Callers
