import InitECandidate.Solver.MemSafe.InitCost.Callers.C02
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_acct_copy := (declPair Guest.Software.guestFn_acct_copy).2.2
def b_acct_copy : Nat := 137438953512
theorem cost_acct_copy : Cost σ guestCtx body_acct_copy b_acct_copy :=
  InitCost.Analyzer.analyze_sound table2_sound (by cbv)
theorem cc_acct_copy : CalleeCost σ guestCtx (nm "acct_copy") b_acct_copy := by
  have hc : ∃ rs, guestCode (nm "acct_copy") = some ((declPair Guest.Software.guestFn_acct_copy).2.1,body_acct_copy,rs) :=
    declPair_valid (List.getElem_mem (n := 363) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_acct_copy
def table3 := InitCost.Analyzer.extend table2 (nm "acct_copy") b_acct_copy
theorem table3_sound : TblSound σ guestCtx table3 := InitCost.Analyzer.extend_sound table2_sound cc_acct_copy
#print axioms cc_acct_copy
end InitECandidate.Solver.MemSafe.InitCost.Callers
