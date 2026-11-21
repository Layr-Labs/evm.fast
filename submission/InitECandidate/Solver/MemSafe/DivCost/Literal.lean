import InitECandidate.Solver.MemSafe.DivCost.Countdown
import InitECandidate.Solver.SourceCost.Checkers
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.DivCost.Literal
variable {σ : Type} {X : Ctx 64}
theorem cost {i : MlS} {rest tail : ProgHOL 64} {Br Bt M : Nat}
 (hb : Cost σ X rest Br) (hk : Keeps σ i rest) (ht : Cost σ X tail Bt) :
 Cost σ X (.dec i .one (cw M)
  (.seq (.while (.cmp .less (cw 0) (lv i)) (.seq (.assign .local i (.op .sub [lv i,cw 1])) rest)) tail))
  ((M+1)*(Br+1)+Bt) := by
 apply Inv.cost_of_costP_true
 refine Inv.costP_dec fun s hs hp v hv hshape => ?_
 rw [ev_cw] at hv
 cases hv
 have hl := InitECandidate.Solver.MemSafe.DivCost.Countdown.bounded (M := M) hb hk
 have hs := Inv.costP_seq (R := fun _ => True) hl (fun _ _ _ _ _ => trivial) (Inv.costP_of_cost ht)
 apply hs.pre
 intro t ht he
 subst t
 unfold InitECandidate.Solver.SourceCost.wordOf
 rw [lk_set_self]
 exact Nat.mod_le _ _
#print axioms cost
end InitECandidate.Solver.MemSafe.DivCost.Literal
