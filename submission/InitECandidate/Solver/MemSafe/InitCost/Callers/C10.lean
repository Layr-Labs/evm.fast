import InitECandidate.Solver.MemSafe.InitCost.Callers.C09
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_htab_new_node := (declPair Guest.Software.guestFn_htab_new_node).2.2
def b_htab_new_node : Nat := 412316860537
theorem cost_htab_new_node : Cost σ guestCtx body_htab_new_node b_htab_new_node :=
  InitCost.Analyzer.analyze_sound table9_sound (by cbv)
theorem cc_htab_new_node : CalleeCost σ guestCtx (nm "htab_new_node") b_htab_new_node := by
  have hc : ∃ rs, guestCode (nm "htab_new_node") = some ((declPair Guest.Software.guestFn_htab_new_node).2.1,body_htab_new_node,rs) :=
    declPair_valid (List.getElem_mem (n := 134) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_htab_new_node
def table10 := InitCost.Analyzer.extend table9 (nm "htab_new_node") b_htab_new_node
theorem table10_sound : TblSound σ guestCtx table10 := InitCost.Analyzer.extend_sound table9_sound cc_htab_new_node
#print axioms cc_htab_new_node
end InitECandidate.Solver.MemSafe.InitCost.Callers
