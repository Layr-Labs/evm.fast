import InitECandidate.Solver.MemSafe.SeqCost.Callers.C09
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.SeqCost.Callers
variable {σ : Type}
def body_create_ether := (declPair Guest.Software.guestFn_create_ether).2.2
def b_create_ether : Nat := 175585701428813344356298136312999594500613
theorem cost_create_ether : Cost σ guestCtx body_create_ether b_create_ether :=
  SeqCost.Analyzer.analyze_sound table9_sound (by cbv)
theorem cc_create_ether : CalleeCost σ guestCtx (nm "create_ether") b_create_ether := by
  have hc : ∃ rs, guestCode (nm "create_ether") = some ((declPair Guest.Software.guestFn_create_ether).2.1,body_create_ether,rs) :=
    declPair_valid (List.getElem_mem (n := 396) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact SeqCost.Analyzer.callee_of_body hc cost_create_ether
def table10 := SeqCost.Analyzer.extend table9 (nm "create_ether") b_create_ether
theorem table10_sound : TblSound σ guestCtx table10 := SeqCost.Analyzer.extend_sound table9_sound cc_create_ether
#print axioms cc_create_ether
end InitECandidate.Solver.MemSafe.SeqCost.Callers
