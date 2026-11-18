import InitECandidate.Solver.MemSafe.InitCost.Bound
set_option autoImplicit false
set_option maxHeartbeats 0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS ProgHOL ExpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.SourceCost.SeqInitBound
open InitECandidate.Solver.SourceCost.InitBound
variable {σ : Type} {X : Ctx 64}
theorem cost_dec_zero_signed_seq {i : MlS} {sh : Flapjack.Pancake.PanLang.ShapeHOL} {C : BitVec 64}
    {body rest : ProgHOL 64} {B R : Nat} (hC : C.toNat < 2^63)
    (hb : Cost σ X body B) (hr : Cost σ X rest R)
    (hnc : NoCont σ body) (hstep : Steps σ i (·+1) body) :
    Cost σ X (.dec i sh (.const 0) (.seq (.while (.cmp .less (.var .local i) (.const C)) body) rest))
      (((C.toNat+1)*(B+1))+R) := by
  apply Inv.cost_of_costP_true
  refine Inv.costP_dec fun s hs hp v hv hsh => ?_
  change some (.val (.word (0 : BitVec 64))) = some v at hv
  cases hv
  have hw := costP_while_bounded_guard (J := fun _ => True) hC (fun _ _ => trivial)
    (Inv.costP_of_cost hb) (fun _ _ _ _ _ => trivial) hnc hstep
    (fun _ _ _ => ⟨C,ev_const _,Nat.le_refl _⟩)
  have hseq := Inv.costP_seq (R := fun _ => True) hw (fun _ _ _ _ _ => trivial) (Inv.costP_of_cost hr)
  exact hseq.pre (fun t ht heq => by
    subst t
    exact ⟨trivial,(0 : BitVec 64),lookup_update_self _ _ _,by simp⟩)
#print axioms cost_dec_zero_signed_seq
end InitECandidate.Solver.SourceCost.SeqInitBound
