import InitECandidate.Solver.MemSafe.InitCost.Callers.C12
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_htab_new_leaf := (declPair Guest.Software.guestFn_htab_new_leaf).2.2
def b_htab_new_leaf : Nat := 549755814047
theorem cost_htab_new_leaf : Cost σ guestCtx body_htab_new_leaf b_htab_new_leaf :=
  InitCost.Analyzer.analyze_sound table12_sound (by cbv)
theorem cc_htab_new_leaf : CalleeCost σ guestCtx (nm "htab_new_leaf") b_htab_new_leaf := by
  have hc : ∃ rs, guestCode (nm "htab_new_leaf") = some ((declPair Guest.Software.guestFn_htab_new_leaf).2.1,body_htab_new_leaf,rs) :=
    declPair_valid (List.getElem_mem (n := 135) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_htab_new_leaf
def table13 := InitCost.Analyzer.extend table12 (nm "htab_new_leaf") b_htab_new_leaf
theorem table13_sound : TblSound σ guestCtx table13 := InitCost.Analyzer.extend_sound table12_sound cc_htab_new_leaf
#print axioms cc_htab_new_leaf
end InitECandidate.Solver.MemSafe.InitCost.Callers
