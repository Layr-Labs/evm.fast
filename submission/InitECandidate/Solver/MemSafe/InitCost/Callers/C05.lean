import InitECandidate.Solver.MemSafe.InitCost.Callers.C04
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_htab_grow := (declPair Guest.Software.guestFn_htab_grow).2.2
def b_htab_grow : Nat := 412316860536
theorem cost_htab_grow : Cost σ guestCtx body_htab_grow b_htab_grow :=
  InitCost.Analyzer.analyze_sound table4_sound (by cbv)
theorem cc_htab_grow : CalleeCost σ guestCtx (nm "htab_grow") b_htab_grow := by
  have hc : ∃ rs, guestCode (nm "htab_grow") = some ((declPair Guest.Software.guestFn_htab_grow).2.1,body_htab_grow,rs) :=
    declPair_valid (List.getElem_mem (n := 137) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_htab_grow
def table5 := InitCost.Analyzer.extend table4 (nm "htab_grow") b_htab_grow
theorem table5_sound : TblSound σ guestCtx table5 := InitCost.Analyzer.extend_sound table4_sound cc_htab_grow
#print axioms cc_htab_grow
end InitECandidate.Solver.MemSafe.InitCost.Callers
