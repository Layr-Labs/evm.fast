import InitECandidate.Solver.MemSafe.ConstCost.Prim.C04
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Prim
variable {σ : Type}
def body_fq12_mul := (declPair Guest.Software.guestFn_fq12_mul).2.2
def b_fq12_mul : Nat := 6125082604576892346786408255673268699426
theorem cost_fq12_mul : Cost σ guestCtx body_fq12_mul b_fq12_mul :=
  ConstCost.Core.analyze_sound table4_sound (by cbv)
theorem cc_fq12_mul : CalleeCost σ guestCtx (nm "fq12_mul") b_fq12_mul := by
  have hc : ∃ rs, guestCode (nm "fq12_mul") = some ((declPair Guest.Software.guestFn_fq12_mul).2.1,body_fq12_mul,rs) :=
    declPair_valid (List.getElem_mem (n := 659) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_fq12_mul
def table5 := ConstCost.Core.extend table4 (nm "fq12_mul") b_fq12_mul
theorem table5_sound : TblSound σ guestCtx table5 := ConstCost.Core.extend_sound table4_sound cc_fq12_mul
#print axioms cc_fq12_mul
end InitECandidate.Solver.MemSafe.ConstCost.Prim
