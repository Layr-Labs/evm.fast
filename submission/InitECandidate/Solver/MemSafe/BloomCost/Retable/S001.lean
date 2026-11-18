import InitECandidate.Solver.MemSafe.BloomCost.Retable.Base
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BloomCost.Retable
variable {σ : Type}
def body_logs_bloom := (declPair Guest.Software.guestFn_logs_bloom).2.2
def b_logs_bloom : Nat := 46278401938801780075250241628097034060621
theorem cost_logs_bloom : Cost σ guestCtx body_logs_bloom b_logs_bloom := BloomCost.Core.analyze_sound table0_sound (by cbv)
theorem cc_logs_bloom : CalleeCost σ guestCtx (nm "logs_bloom") b_logs_bloom := by
 have hc : guestCode (nm "logs_bloom") = some ((declPair Guest.Software.guestFn_logs_bloom).2.1,body_logs_bloom,(fnEntry Guest.Software.guestFn_logs_bloom).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 832) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact BloomCost.Core.callee_of_body hc cost_logs_bloom
def table1 := BloomCost.Core.extend table0 (nm "logs_bloom") b_logs_bloom
theorem table1_sound : TblSound σ guestCtx table1 := BloomCost.Core.extend_sound table0_sound cc_logs_bloom
#print axioms cc_logs_bloom
end InitECandidate.Solver.MemSafe.BloomCost.Retable
