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
def loops : ProgHOL 64 → List (ExpHOL 64 × ProgHOL 64)
 | .while c b => (c,b)::loops b
 | .seq a b => loops a++loops b
 | .dec _ _ _ b => loops b
 | .decCall _ _ _ _ b => loops b
 | .ite _ a b => loops a++loops b
 | _ => []
def reduceBody : ProgHOL 64 := (declPair Guest.Software.guestFn_fq12_reduce).2.2
def reduceRest : ProgHOL 64 :=
 match reduceBody with
 | .dec _ _ _ (.seq (.while _ (.seq _ rest)) _) => rest
 | _ => .skip
theorem reduce_eq : reduceBody = .dec (nm "e") .one (cw 11)
 (.seq (.while (.cmp .lower (cw 0) (lv (nm "e")))
 (.seq (.assign .local (nm "e") (.op .sub [lv (nm "e"),cw 1])) reduceRest)) (.return (cw 0))) := by cbv
def smallTable := PairCost.Core.extend BlsCost.Callers.table12 (nm "fq_mul_small") 600
theorem smallTable_sound : TblSound σ guestCtx smallTable := PairCost.Core.extend_sound BlsCost.Callers.table12_sound InitECandidate.Solver.MemSafe.FqCost.Small.cc_fq_mul_small
theorem reduce_cost : Cost σ guestCtx reduceBody 20000 := by
 rw [reduce_eq]
 exact Cost.mono (InitECandidate.Solver.MemSafe.FqCost.Countdown.cost (M := 11)
  (PairCost.Core.analyze_sound smallTable_sound (by cbv))
  (keepsB_sound _ _ (by cbv)) (cost_return _)) (by decide_cbv)
#print axioms reduce_cost
theorem cc_reduce : CalleeCost σ guestCtx (nm "fq12_reduce") 20000 := by
 have hc : guestCode (nm "fq12_reduce") = some ((declPair Guest.Software.guestFn_fq12_reduce).2.1,reduceBody,(fnEntry Guest.Software.guestFn_fq12_reduce).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 658) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact PairCost.Core.callee_of_body hc reduce_cost
def table := PairCost.Core.extend smallTable (nm "fq12_reduce") 20000
theorem table_sound : TblSound σ guestCtx table := PairCost.Core.extend_sound smallTable_sound cc_reduce
def mulBody : ProgHOL 64 := (declPair Guest.Software.guestFn_fq12_mul).2.2
def mulOuter := ((loops mulBody)[0]?).getD (.const 0,.skip)
def mulInner := ((loops mulBody)[1]?).getD (.const 0,.skip)
theorem mul_inner_cost : Cost σ guestCtx (.while mulInner.1 mulInner.2) (10^11) := by
 exact Cost.mono (InitECandidate.Solver.MemSafe.FqCost.Finder.factor_sound guestCtx_bounded (by decide_cbv)
  (PairCost.Core.analyze_sound table_sound (by cbv))) (by decide_cbv)
theorem mul_outer_body_cost : Cost σ guestCtx mulOuter.2 (10^11+100) := by
 have hi := mul_inner_cost (σ := σ)
 conv at hi in mulInner.1 => cbv
 conv at hi in mulInner.2 => cbv
 exact Cost.mono (σ := σ) (X := guestCtx) (p := mulOuter.2) (B' := 10^11+100) (by
  conv in mulOuter.2 => cbv
  repeat' first
   | assumption
   | apply cost_dec
   | apply cost_seq
   | apply cost_ite
   | exact PairCost.Core.analyze_sound table_sound (by cbv)
 ) (by decide_cbv)
theorem mul_outer_cost : Cost σ guestCtx (.while mulOuter.1 mulOuter.2) (24*(10^11+101)) :=
 unsignedConstF_sound (by decide_cbv) mul_outer_body_cost
def mulTail : ProgHOL 64 := match mulBody with
 | .decCall _ _ _ _ (.decCall _ _ _ _ (.dec _ _ _ (.seq _ t))) => t
 | _ => .skip
theorem mul_tail_cost : Cost σ guestCtx mulTail (10^13) := by
 exact Cost.mono (PairCost.Core.analyze_sound table_sound (by cbv)) (by decide_cbv)
theorem mul_body_cost : Cost σ guestCtx mulBody (10^14) := by
 have hm : CalleeCost σ guestCtx (nm "heap_mark") 0 := BlsCost.Callers.table12_sound _ _ (by cbv)
 have ha : CalleeCost σ guestCtx (nm "alloc") 2 := BlsCost.Callers.table12_sound _ _ (by cbv)
 have ho := mul_outer_cost (σ := σ)
 conv at ho in mulOuter.1 => cbv
 conv at ho in mulOuter.2 => cbv
 have ht := mul_tail_cost (σ := σ)
 conv at ht in mulTail => cbv
 exact Cost.mono (σ := σ) (X := guestCtx) (p := mulBody) (B' := 10^14) (by
  conv in mulBody => cbv
  exact cost_decCall hm (cost_decCall ha (cost_dec (cost_seq ho ht)))
 ) (by decide_cbv)
#print axioms mul_body_cost
end InitECandidate.Solver.MemSafe.FqCost
