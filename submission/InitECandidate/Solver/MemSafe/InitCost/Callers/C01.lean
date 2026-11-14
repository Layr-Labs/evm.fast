import InitECandidate.Solver.MemSafe.InitCost.Seed
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def table0 := InitCost.seedTable
theorem table0_sound : TblSound σ guestCtx table0 := InitCost.seed_sound
def body_htab_first_diff := (declPair Guest.Software.guestFn_htab_first_diff).2.2
def b_htab_first_diff : Nat := 343597383770
theorem cost_htab_first_diff : Cost σ guestCtx body_htab_first_diff b_htab_first_diff :=
  InitCost.Analyzer.analyze_sound table0_sound (by cbv)
theorem cc_htab_first_diff : CalleeCost σ guestCtx (nm "htab_first_diff") b_htab_first_diff := by
  have hc : ∃ rs, guestCode (nm "htab_first_diff") = some ((declPair Guest.Software.guestFn_htab_first_diff).2.1,body_htab_first_diff,rs) :=
    declPair_valid (List.getElem_mem (n := 130) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_htab_first_diff
def table1 := InitCost.Analyzer.extend table0 (nm "htab_first_diff") b_htab_first_diff
theorem table1_sound : TblSound σ guestCtx table1 := InitCost.Analyzer.extend_sound table0_sound cc_htab_first_diff
#print axioms cc_htab_first_diff
end InitECandidate.Solver.MemSafe.InitCost.Callers
