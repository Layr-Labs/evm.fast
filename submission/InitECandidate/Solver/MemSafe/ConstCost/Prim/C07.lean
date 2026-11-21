import InitECandidate.Solver.MemSafe.ConstCost.Prim.C06
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Prim
variable {σ : Type}
def body_fq12_sqr := (declPair Guest.Software.guestFn_fq12_sqr).2.2
def b_fq12_sqr : Nat := 6125082604576892346786408255673268699690
theorem cost_fq12_sqr : Cost σ guestCtx body_fq12_sqr b_fq12_sqr :=
  ConstCost.Core.analyze_sound table6_sound (by cbv)
theorem cc_fq12_sqr : CalleeCost σ guestCtx (nm "fq12_sqr") b_fq12_sqr := by
  have hc : ∃ rs, guestCode (nm "fq12_sqr") = some ((declPair Guest.Software.guestFn_fq12_sqr).2.1,body_fq12_sqr,rs) :=
    declPair_valid (List.getElem_mem (n := 660) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_fq12_sqr
def table7 := ConstCost.Core.extend table6 (nm "fq12_sqr") b_fq12_sqr
theorem table7_sound : TblSound σ guestCtx table7 := ConstCost.Core.extend_sound table6_sound cc_fq12_sqr
#print axioms cc_fq12_sqr
end InitECandidate.Solver.MemSafe.ConstCost.Prim
