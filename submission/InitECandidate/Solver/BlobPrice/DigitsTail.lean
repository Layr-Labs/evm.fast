import InitECandidate.Solver.BlobPrice.DivmnuBound
import InitECandidate.Solver.MemSafe.Helpers.DigitsDiv

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.warning false
namespace DigitsTail
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe.Helpers
open AcceptedCostOverrideRules
variable {σ : Type}
abbrev pair (s : PanSemStateFiniteExact 64 σ) (mm n : BitVec 64) : Prop :=
  s.locals.lookup (nm "mm") = some (.val (.word mm)) ∧
  s.locals.lookup (nm "n") = some (.val (.word n))
private abbrev generic := 2^64+1
private theorem pairPrior {mm n : BitVec 64} {p k : ProgHOL 64} {b c : Nat}
    (hp : Cost σ guestCtx p b) (hm : keepsB (nm "mm") p=true) (hn : keepsB (nm "n") p=true)
    (hk : Inv.CostP σ guestCtx (fun s => pair s mm n) k c) :
    Inv.CostP σ guestCtx (fun s => pair s mm n) (.seq p k) (b+c) := by
  apply Inv.costP_seq (Inv.costP_of_cost hp) _ hk
  intro s _ hpair _ he
  exact ⟨(keepsB_sound _ _ hm s (Or.inl he)).trans hpair.1,
    (keepsB_sound _ _ hn s (Or.inl he)).trans hpair.2⟩
private theorem zero {b : String} {k : Nat} : Cost σ guestCtx (ddZero b k) generic := by
  unfold ddZero
  apply cost_while_inc_lower (cost_seq (cost_store _ _) (cost_assign _ _ _))
  exact stepsB_sound (nm "i") true _ rfl

private theorem tailCall {xs} : Cost σ guestCtx (.call none (nm "digits_to_u256") xs) (1+0+0) :=
  cost_call (CompactCostReplay.accepted (B := 0) (by decide_cbv)) (by intro _ _ _ _ h; cases h)
private theorem dispatch {mm n : BitVec 64} (hmm : mm.toNat ≤ 8) (hn : n.toNat ≤ mm.toNat) :
    Inv.CostP σ guestCtx (fun s => pair s mm n)
      (.call (some (none,none)) (nm "divmnu")
        [lv (nm "q"),lv (nm "r"),lv (nm "u"),lv (nm "mm"),lv (nm "v"),lv (nm "n")])
      (1+1199038364791120855412+0) := by
  apply Inv.costP_callD DivmnuBound.callee
  rintro s _ h vs he _
  obtain ⟨q,_,rfl,_,h1⟩ := evs_cons_inv he
  obtain ⟨r,_,rfl,_,h2⟩ := evs_cons_inv h1
  obtain ⟨u,_,rfl,_,h3⟩ := evs_cons_inv h2
  obtain ⟨m,_,rfl,hm,h4⟩ := evs_cons_inv h3
  rw [ev_lw h.1] at hm
  cases hm
  obtain ⟨v,_,rfl,_,h5⟩ := evs_cons_inv h4
  rw [evs_cons (ev_lw h.2) evs_nil] at h5
  cases h5
  exact ⟨q,r,u,v,mm,n,rfl,hmm,hn⟩

abbrev tailPrice := generic + (max (1+0+0) 0 +
  (0+(generic+((1+1199038364791120855412+0)+(1+0+0)))))
theorem tail {mm n : BitVec 64} (hmm : mm.toNat ≤ 8) :
    Inv.CostP σ guestCtx (fun s => pair s mm n) ddTail tailPrice := by
  unfold ddTail
  apply pairPrior zero (by decide_cbv) (by decide_cbv)
  apply Inv.costP_seq (R := fun s => pair s mm n ∧ n.toNat ≤ mm.toNat)
    (Inv.costP_of_cost (cost_ite tailCall cost_skip))
  · apply InitECandidate.Solver.Spec.hoare_ite
    · apply hoare_tailCall (P := fun s => pair s mm n ∧ _) (Q := fun r t => r=none → pair t mm n ∧ n.toNat ≤ mm.toNat)
        (funSpec_true _)
      intro _ _ _ _ _ _ _ _ _ _ impossible
      cases impossible
    · apply InitECandidate.Solver.Spec.hoare_skip
      rintro s _ ⟨hp,hc⟩ _
      obtain ⟨x,y,hx,hy,cmp⟩ := cmp_false hc
      rw [ev_lw hp.1] at hx
      rw [ev_lw hp.2] at hy
      cases hx; cases hy
      exact ⟨hp,lower_false cmp⟩
  · intro s hs ⟨hp,hle⟩ hg
    apply (pairPrior (cost_assign _ _ _) (by decide_cbv) (by decide_cbv)
      (pairPrior zero (by decide_cbv) (by decide_cbv)
        (Inv.costP_seq (R := fun _ => True) (dispatch hmm hle) (fun _ _ _ _ _ => trivial)
          (Inv.costP_of_cost tailCall)))) s hs hp hg
#print axioms tail
end DigitsTail
