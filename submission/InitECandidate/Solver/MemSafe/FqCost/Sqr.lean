import InitECandidate.Solver.MemSafe.FqCost.Mul
import InitECandidate.Solver.MemSafe.FqCost.Stride
import InitECandidate.Solver.MemSafe.FqCost.Small
import InitECandidate.Solver.MemSafe.FqCost.Countdown
import InitECandidate.Solver.MemSafe.BlsCost.Callers.C12
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost
variable {σ : Type}
def sqrBody : ProgHOL 64 := (declPair Guest.Software.guestFn_fq12_sqr).2.2
def sqrOuter := ((loops sqrBody)[0]?).getD (.const 0,.skip)
def sqrInner := ((loops sqrBody)[1]?).getD (.const 0,.skip)
theorem sqr_inner_cost : Cost σ guestCtx (.while sqrInner.1 sqrInner.2) (10^11) := by
 exact Cost.mono (InitECandidate.Solver.MemSafe.FqCost.Finder.factor_sound guestCtx_bounded (by decide_cbv)
  (PairCost.Core.analyze_sound table_sound (by cbv))) (by decide_cbv)
theorem sqr_outer_body_cost : Cost σ guestCtx sqrOuter.2 (10^11+100) := by
 have hi := sqr_inner_cost (σ := σ)
 conv at hi in sqrInner.1 => cbv
 conv at hi in sqrInner.2 => cbv
 exact Cost.mono (σ := σ) (X := guestCtx) (p := sqrOuter.2) (B' := 10^11+100) (by
  conv in sqrOuter.2 => cbv
  repeat' first
   | assumption
   | apply cost_dec
   | apply cost_seq
   | apply cost_ite
   | exact PairCost.Core.analyze_sound table_sound (by cbv)
 ) (by decide_cbv)
theorem sqr_outer_cost : Cost σ guestCtx (.while sqrOuter.1 sqrOuter.2) (24*(10^11+101)) :=
 unsignedConstF_sound (by decide_cbv) sqr_outer_body_cost
def sqrTail : ProgHOL 64 := match sqrBody with
 | .decCall _ _ _ _ (.decCall _ _ _ _ (.dec _ _ _ (.seq _ t))) => t
 | _ => .skip
theorem sqr_tail_cost : Cost σ guestCtx sqrTail (10^13) := by
 exact Cost.mono (PairCost.Core.analyze_sound table_sound (by cbv)) (by decide_cbv)
theorem sqr_body_cost : Cost σ guestCtx sqrBody (10^14) := by
 have hm : CalleeCost σ guestCtx (nm "heap_mark") 0 := BlsCost.Callers.table12_sound _ _ (by cbv)
 have ha : CalleeCost σ guestCtx (nm "alloc") 2 := BlsCost.Callers.table12_sound _ _ (by cbv)
 have ho := sqr_outer_cost (σ := σ)
 conv at ho in sqrOuter.1 => cbv
 conv at ho in sqrOuter.2 => cbv
 have ht := sqr_tail_cost (σ := σ)
 conv at ht in sqrTail => cbv
 exact Cost.mono (σ := σ) (X := guestCtx) (p := sqrBody) (B' := 10^14) (by
  conv in sqrBody => cbv
  exact cost_decCall hm (cost_decCall ha (cost_dec (cost_seq ho ht)))
 ) (by decide_cbv)
#print axioms sqr_body_cost

end InitECandidate.Solver.MemSafe.FqCost
