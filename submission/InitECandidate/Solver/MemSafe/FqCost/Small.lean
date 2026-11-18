import InitECandidate.Solver.MemSafe.DivCost.Call
import InitECandidate.Solver.MemSafe.WaveHelpers.BitLen
import InitECandidate.Solver.MemSafe.CryptoCost.Countdown
import InitECandidate.Solver.MemSafe.BlsCost.Callers.C12
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Small
variable {σ : Type}
def rest : ProgHOL 64 := .seq (callD (nm "fq_add") [lv (nm "r"),lv (nm "r")])
 (.ite (.cmp .equal (.op .and [.shift .lsr (lv (nm "k")) (lv (nm "i")),cw 1]) (cw 1))
 (callD (nm "fq_add") [lv (nm "r"),lv (nm "a")]) .skip)
-- The source call stores fq_add's result into local r.
def addCall (args : List (ExpHOL 64)) : ProgHOL 64 := .call (some (some (.local,nm "r"),none)) (nm "fq_add") args
def actualRest : ProgHOL 64 := .seq (addCall [lv (nm "r"),lv (nm "r")])
 (.ite (.cmp .equal (.op .and [.shift .lsr (lv (nm "k")) (lv (nm "i")),cw 1]) (cw 1))
 (addCall [lv (nm "r"),lv (nm "a")]) .skip)
def tail : ProgHOL 64 := .seq (.while (.cmp .lower (cw 0) (lv (nm "i")))
 (.seq (.assign .local (nm "i") (.op .sub [lv (nm "i"),cw 1])) actualRest)) (.return (lv (nm "r")))
def body : ProgHOL 64 := .dec (nm "r") (.comb [.one,.one,.one,.one]) (.rstruct [cw 0,cw 0,cw 0,cw 0])
 (.decCall (nm "i") .one (nm "bit_length64") [lv (nm "k")] tail)
theorem rest_cost : Cost σ guestCtx actualRest 8 := by
 exact PairCost.Core.analyze_sound BlsCost.Callers.table12_sound (by cbv)
theorem tail_cost : Inv.CostP σ guestCtx (fun s => InitECandidate.Solver.SourceCost.wordOf s (nm "i") ≤ 64) tail 585 := by
 exact Inv.costP_seq (R := fun _ => True)
  (CryptoCost.Countdown.bounded (M := 64) rest_cost (keepsB_sound _ _ (by cbv)))
  (fun _ _ _ _ _ => trivial) (Inv.costP_of_cost (cost_return _))
theorem body_cost : Cost σ guestCtx body 600 := by
 apply Inv.cost_of_costP_true
 unfold body
 refine Inv.costP_dec fun s hs hp v hv hshape => ?_
 exact Inv.CostP.mono (InitECandidate.Solver.MemSafe.DivCost.Call.costP_decCallS (Bf := 0)
  (BlsCost.Callers.table12_sound _ _ (by cbv))
  (WaveHelpers.funSpec_bit_length64_le guestCtx_code) (by
   intro t ht he vs hvs callee value st hR hst hsh
   obtain ⟨N,rfl,hle⟩ := hR _ rfl
   apply tail_cost.pre
   intro u hu heq
   subst u
   unfold InitECandidate.Solver.SourceCost.wordOf
   rw [lk_set_self]
   exact hle
  )) (by decide)
theorem entry : fnEntry Guest.Software.guestFn_fq_mul_small =
 (nm "fq_mul_small",[(nm "a",.comb [.one,.one,.one,.one]),(nm "k",.one)],body,.comb [.one,.one,.one,.one]) := by
 conv => lhs; cbv
 conv => rhs; cbv
 all_goals rfl
theorem code : guestCode (nm "fq_mul_small") = some ([(nm "a",.comb [.one,.one,.one,.one]),(nm "k",.one)],body,.comb [.one,.one,.one,.one]) :=
 code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 656) (by decide)) ⟨_,rfl⟩ entry
theorem cc_fq_mul_small : CalleeCost σ guestCtx (nm "fq_mul_small") 600 := PairCost.Core.callee_of_body code body_cost
#print axioms cc_fq_mul_small
end InitECandidate.Solver.MemSafe.FqCost.Small
