import InitECandidate.Solver.MemSafe.InitCost.Callers.C07
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_sk_make := (declPair Guest.Software.guestFn_sk_make).2.2
def b_sk_make : Nat := 274877907018
theorem cost_sk_make : Cost σ guestCtx body_sk_make b_sk_make :=
  InitCost.Analyzer.analyze_sound table7_sound (by cbv)
theorem cc_sk_make : CalleeCost σ guestCtx (nm "sk_make") b_sk_make := by
  have hc : ∃ rs, guestCode (nm "sk_make") = some ((declPair Guest.Software.guestFn_sk_make).2.1,body_sk_make,rs) :=
    declPair_valid (List.getElem_mem (n := 360) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_sk_make
def table8 := InitCost.Analyzer.extend table7 (nm "sk_make") b_sk_make
theorem table8_sound : TblSound σ guestCtx table8 := InitCost.Analyzer.extend_sound table7_sound cc_sk_make
#print axioms cc_sk_make
end InitECandidate.Solver.MemSafe.InitCost.Callers
