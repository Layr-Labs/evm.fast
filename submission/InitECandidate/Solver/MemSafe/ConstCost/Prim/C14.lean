import InitECandidate.Solver.MemSafe.ConstCost.Prim.C13
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Prim
variable {σ : Type}
def body_fq12_frob := (declPair Guest.Software.guestFn_fq12_frob).2.2
def b_fq12_frob : Nat := 2324289753287403503994
theorem cost_fq12_frob : Cost σ guestCtx body_fq12_frob b_fq12_frob :=
  ConstCost.Core.analyze_sound table13_sound (by cbv)
theorem cc_fq12_frob : CalleeCost σ guestCtx (nm "fq12_frob") b_fq12_frob := by
  have hc : ∃ rs, guestCode (nm "fq12_frob") = some ((declPair Guest.Software.guestFn_fq12_frob).2.1,body_fq12_frob,rs) :=
    declPair_valid (List.getElem_mem (n := 679) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_fq12_frob
def table14 := ConstCost.Core.extend table13 (nm "fq12_frob") b_fq12_frob
theorem table14_sound : TblSound σ guestCtx table14 := ConstCost.Core.extend_sound table13_sound cc_fq12_frob
#print axioms cc_fq12_frob
end InitECandidate.Solver.MemSafe.ConstCost.Prim
