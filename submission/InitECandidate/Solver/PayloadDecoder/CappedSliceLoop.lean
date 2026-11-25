import InitECandidate.Solver.Improvements.BmiUnsignedCap
import InitECandidate.Solver.Improvements.AcceptedCallReturnCost
import InitECandidate.Solver.Spec.Mpt.Leaves.Common

/-! Uniform cost of an installed decoder looping over the slices returned
by the parser, including the allocation and possibly failing iterations. -/
set_option autoImplicit false
set_option maxRecDepth 100000
namespace PayloadDecoder
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Leaves
open InitECandidate.Solver.MemSafe
variable {σ : Type} {X : Ctx 64}

def CountAtMost (lst : MlS) (cap : Nat) (t : State σ) : Prop :=
  ∃ (arr : ValueHOL 64) (n : BitVec 64), t.locals.lookup lst = some (.rStruct [arr, .val (.word n)]) ∧ n.toNat ≤ cap

theorem sliceLoop {lst i : MlS} {body tail : ProgHOL 64} {B T cap : Nat}
    (hkeep : Keeps σ lst body) (hnc : NoCont σ body) (hstep : Steps σ i (· + 1) body)
    (hb : Cost σ X body B) (ht : Cost σ X tail T) :
    AcceptedLoopRules.CostP σ X (CountAtMost lst cap)
      (.seq (.while (.cmp .lower (lv i) (.rfield 1 (lv lst))) body) tail)
      ((cap + 1) * (B + 1) + T) := by
  refine AcceptedLoopRules.costP_seq (R := fun _ => True) ?_ (fun _ _ _ _ _ => trivial)
    (AcceptedLoopRules.costP_of_cost ht)
  apply BmiUnsignedCap.costP_while_inc_bounded (i := i)
  · rintro s ⟨arr, n, hl, hcap⟩
    refine ⟨n, ?_, hcap⟩
    exact ev_rfield (show ev s (lv lst) = some (.rStruct [arr, .val (.word n)]) from hl) 1
  · exact fun _ h => h
  · exact AcceptedLoopRules.costP_of_cost hb
  · rintro s hs ⟨⟨arr,n,hl,hcap⟩,_⟩ hgood he
    exact ⟨arr,n,(hkeep s (Or.inl he)).trans hl,hcap⟩
  · exact hnc
  · exact hstep

def decoder (lst buf i : MlS) (size : Nat) (args : List (ExpHOL 64))
    (body tail : ProgHOL 64) : ProgHOL 64 :=
  .decCall lst (.comb [.one,.one]) (nm "rlp_list_to_slices") args
    (.decCall buf .one (nm "alloc") [.panop .mul [.rfield 1 (lv lst),cw size]]
      (.dec i .one (cw 0)
        (.seq (.while (.cmp .lower (lv i) (.rfield 1 (lv lst))) body) tail)))

theorem decoder_cost {lst buf i : MlS} {size cap B T S A : Nat}
    {args : List (ExpHOL 64)} {body tail : ProgHOL 64}
    (hbuf : buf ≠ lst) (hi : i ≠ lst)
    (hret : FunRet σ X (nm "rlp_list_to_slices") (fun _ v =>
      ∃ (arr : ValueHOL 64) (n : BitVec 64), v = .rStruct [arr,.val (.word n)] ∧ n.toNat ≤ cap))
    (hs : CalleeCost σ X (nm "rlp_list_to_slices") S)
    (ha : CalleeCost σ X (nm "alloc") A)
    (hkeep : Keeps σ lst body) (hnc : NoCont σ body) (hstep : Steps σ i (· + 1) body)
    (hb : Cost σ X body B) (ht : Cost σ X tail T) :
    Cost σ X (decoder lst buf i size args body tail)
      (1 + S + (1 + A + ((cap + 1) * (B + 1) + T))) := by
  apply AcceptedLoopRules.cost_of_costP_true
  unfold decoder
  refine AcceptedCallReturnCost.costP_decCallRet hs hret fun s _ _ vs _ _ v st hret' _ _ => ?_
  obtain ⟨arr,n,rfl,hcap⟩ := hret'
  refine AcceptedCallReturnCost.costP_decCallRet ha (funRet_true _) fun t _ he _ _ _ v2 st2 _ _ _ => ?_
  subst t
  refine AcceptedLoopRules.costP_dec fun u _ he _ _ _ => ?_
  subst u
  refine (sliceLoop (cap := cap) hkeep hnc hstep hb ht).pre ?_
  rintro s _ rfl
  refine ⟨arr,n,?_,hcap⟩
  rw [lk_set_ne _ _ hi,lk_set_ne _ _ hbuf]
  exact lk_set_self _ _ _

#print axioms decoder_cost
end PayloadDecoder
