import InitECandidate.Solver.MemSafe.ModexpCost.Keep
import InitECandidate.Solver.Spec.Rlp
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.ModexpCost
variable {σ : Type} {X : Ctx 64}
def guard : ProgHOL 64 :=
 .ite (.cmp .lower (cw 1024) (lv (nm "elen"))) (.raise (nm "EvmErr") (cw 4)) .skip
theorem guard_spec (N : BitVec 64) :
 Hoare σ X (fun s => s.locals.lookup (nm "elen") = some (.val (.word N))) guard
  (fun r t => r = none → InitECandidate.Solver.MemSafe.ModexpCost.Keep.Bound (nm "elen") 1024 t) := by
 unfold guard
 refine hoare_ite hoare_raise ?_
 refine hoare_skip fun s hs hp hr => ?_
 obtain ⟨hN,hc⟩ := hp
 have hn := lower_false (cmp_val_false hc (ev_cw _ 1024) (ev_lw hN))
 exact ⟨N,hN,by simpa using hn⟩
theorem guard_cost : Cost σ X guard 0 := by
 exact cost_ite (cost_raise _ _) cost_skip

theorem guard_bind_cost {f : MlS} {args : List (ExpHOL 64)} {k : ProgHOL 64} {Bf Bk : Nat}
 (hf : CalleeCost σ X f Bf)
 (hk : Inv.CostP σ X (InitECandidate.Solver.MemSafe.ModexpCost.Keep.Bound (nm "elen") 1024) k Bk) :
 Cost σ X (.decCall (nm "elen") .one f args (.seq guard k)) (1+Bf+Bk) := by
 apply Inv.cost_of_costP_true
 refine InitECandidate.Solver.MemSafe.ModexpCost.Call.costP_decCallS hf (funSpec_true f) ?_
 intro s hs hp vs hvs callee v st hr hst hshape
 obtain ⟨N,rfl⟩ := val_of_shapeEq_one' hshape
 simpa only [Nat.zero_add] using
  (Inv.costP_seq (Ba := 0) (Inv.costP_of_cost guard_cost)
    (hoare_pre (guard_spec N) (fun t ht he => by subst t; exact lk_set_self _ _ _)) hk)
#print axioms guard_spec
#print axioms guard_bind_cost
end InitECandidate.Solver.MemSafe.ModexpCost
