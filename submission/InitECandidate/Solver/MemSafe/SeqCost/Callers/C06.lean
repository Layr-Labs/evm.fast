import InitECandidate.Solver.MemSafe.SeqCost.Callers.C05
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.SeqCost.Callers
variable {σ : Type}
def body_logs_bloom := (declPair Guest.Software.guestFn_logs_bloom).2.2
def b_logs_bloom : Nat := 215679573575734984547562264910565867985504579340471128200930721268209
theorem cost_logs_bloom : Cost σ guestCtx body_logs_bloom b_logs_bloom :=
  SeqCost.Analyzer.analyze_sound table5_sound (by cbv)
theorem cc_logs_bloom : CalleeCost σ guestCtx (nm "logs_bloom") b_logs_bloom := by
  have hc : ∃ rs, guestCode (nm "logs_bloom") = some ((declPair Guest.Software.guestFn_logs_bloom).2.1,body_logs_bloom,rs) :=
    declPair_valid (List.getElem_mem (n := 832) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact SeqCost.Analyzer.callee_of_body hc cost_logs_bloom
def table6 := SeqCost.Analyzer.extend table5 (nm "logs_bloom") b_logs_bloom
theorem table6_sound : TblSound σ guestCtx table6 := SeqCost.Analyzer.extend_sound table5_sound cc_logs_bloom
#print axioms cc_logs_bloom
end InitECandidate.Solver.MemSafe.SeqCost.Callers
