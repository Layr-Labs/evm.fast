import InitECandidate.Solver.MemSafe.InitCost.Callers.C38
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_htab_union_into := (declPair Guest.Software.guestFn_htab_union_into).2.2
def b_htab_union_into : Nat := 680564770603744344226066678938624590401
theorem cost_htab_union_into : Cost σ guestCtx body_htab_union_into b_htab_union_into :=
  InitCost.Analyzer.analyze_sound table38_sound (by cbv)
theorem cc_htab_union_into : CalleeCost σ guestCtx (nm "htab_union_into") b_htab_union_into := by
  have hc : ∃ rs, guestCode (nm "htab_union_into") = some ((declPair Guest.Software.guestFn_htab_union_into).2.1,body_htab_union_into,rs) :=
    declPair_valid (List.getElem_mem (n := 400) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_htab_union_into
def table39 := InitCost.Analyzer.extend table38 (nm "htab_union_into") b_htab_union_into
theorem table39_sound : TblSound σ guestCtx table39 := InitCost.Analyzer.extend_sound table38_sound cc_htab_union_into
#print axioms cc_htab_union_into
end InitECandidate.Solver.MemSafe.InitCost.Callers
