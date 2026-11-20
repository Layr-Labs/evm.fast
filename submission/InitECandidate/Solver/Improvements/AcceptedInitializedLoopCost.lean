import InitECandidate.Solver.SourceCost.CounterLoops
import InitECandidate.Solver.Improvements.AcceptedLoopRules

/-! Conditional signed-loop bound after a nonnegative counter initialization.
The bound is independent of the guard's right operand: it may change each time.
This component does not establish the full ivvh callee or its certificate. -/
set_option autoImplicit false
namespace AcceptedInitializedLoopCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS)
open Flapjack.Compiler.Encoders.Asm
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

def Nonneg (i : MlS) (s : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ v : BitVec 64, s.locals.lookup i = some (.val (.word v)) ∧ v.toNat < 2 ^ 63

/-- A true signed guard from a nonnegative word forces a nonwrapping,
nonnegative successor, even if the right operand reads changing memory. -/
theorem guard_successor {i : MlS} {E : ExpHOL 64} {s : PanSemStateFiniteExact 64 σ}
    (hn : Nonneg i s) (hc : CondTrue s (.cmp .less (.var .local i) E)) :
    ∃ v : BitVec 64, s.locals.lookup i = some (.val (.word v)) ∧
      (v + 1).toNat = v.toNat + 1 ∧ (v + 1).toNat < 2 ^ 63 ∧
      v.toNat < 2 ^ 63 - 1 := by
  obtain ⟨v, hv, nonnegative⟩ := hn
  obtain ⟨w, e, hw, less⟩ := cond_var_left hc
  have same : v = w := by simpa only [hv, Option.some.injEq,
    ValueHOL.val.injEq, HolWordLab.word.injEq] using hw
  subst w
  simp only [wordCmpHOL] at less
  have bounds : v.toNat < e.toNat ∧ e.toNat < 2 ^ 63 := by
    unfold holAsmSignedLess at less
    simp only [show (64 : Nat) - 1 = 63 from rfl, nonnegative, if_true] at less
    split at less
    · rename_i small
      exact ⟨of_decide_eq_true less, small⟩
    · simp at less
  have inc : (v + 1).toNat = v.toNat + 1 := by
    apply BitVec.toNat_add_of_lt
    have one : (1 : BitVec 64).toNat = 1 := by decide
    omega
  exact ⟨v, hv, inc, by omega, by omega⟩

/-- With a typed nonnegative entry counter, at most 2^63 loop slots are charged.
The per-body cost and actual body increment are explicit hypotheses. -/
theorem cost_while_inc_less_nonnegative {i : MlS} {E : ExpHOL 64}
    {body : ProgHOL 64} {B : Nat}
    (hb : Cost σ X body B) (hs : Steps σ i (· + 1) body) :
    AcceptedLoopRules.CostP σ X (Nonneg i) (.while (.cmp .less (.var .local i) E) body)
      ((2 ^ 63) * (B + 1)) := by
  let μ : PanSemStateFiniteExact 64 σ → Nat := fun s => 2 ^ 63 - 1 - wordOf s i
  have bound : AcceptedLoopRules.CostP σ X (Nonneg i) (.while (.cmp .less (.var .local i) E) body)
      ((2 ^ 63 - 1 + 1) * (B + 1)) := by
    refine AcceptedLoopRules.costP_while μ (2 ^ 63 - 1) ?_ ?_ (AcceptedLoopRules.costP_of_cost hb) ?_ ?_ ?_
    · rintro s ⟨v, hv, hn⟩
      exact ⟨v, hv, hn⟩
    · intro s
      rfl
    · rintro s hctx ⟨hn, hc⟩ tracked exit
      obtain ⟨v, hv, inc, small, lt⟩ := guard_successor hn hc
      exact ⟨v + 1, hs s v hv exit, small⟩
    · intro s hctx hn hc
      exact Nat.sub_le _ _
    · rintro k s hctx ⟨hn, hc, rank⟩ tracked exit
      obtain ⟨v, hv, inc, small, lt⟩ := guard_successor hn hc
      have after := hs s v hv exit
      change 2 ^ 63 - 1 - wordOf (evaluateHOLFiniteState s body).2 i < k
      simp only [wordOf, after, inc]
      change 2 ^ 63 - 1 - wordOf s i = k at rank
      simp only [wordOf, hv] at rank
      omega
  simpa only [show (2 : Nat) ^ 63 - 1 + 1 = 2 ^ 63 by decide] using bound

/-- The actual initialization closes the nonnegative loop precondition, so a
zero-initialized signed loop followed by any bounded tail has an all-states cost. -/
theorem cost_initialized_seq {i : MlS} {E : ExpHOL 64}
    {body tail : ProgHOL 64} {B Bt : Nat}
    (hb : Cost σ X body B) (hs : Steps σ i (· + 1) body)
    (ht : Cost σ X tail Bt) :
    Cost σ X (.dec i .one (.const 0)
      (.seq (.while (.cmp .less (.var .local i) E) body) tail))
      (2 ^ 63 * (B + 1) + Bt) := by
  apply AcceptedLoopRules.cost_of_costP_true
  refine AcceptedLoopRules.costP_dec fun s hctx hp v hv hshape => ?_
  have valueZero : v = .val (.word (0 : BitVec 64)) := by
    simpa only [ev_const, Option.some.injEq] using hv.symm
  subst v
  have sequence : AcceptedLoopRules.CostP σ X (Nonneg i)
      (.seq (.while (.cmp .less (.var .local i) E) body) tail)
      (2 ^ 63 * (B + 1) + Bt) :=
    AcceptedLoopRules.costP_seq (R := fun _ => True) (cost_while_inc_less_nonnegative hb hs)
      (fun _ _ _ _ _ => trivial) (AcceptedLoopRules.costP_of_cost ht)
  refine sequence.pre fun t hctx' hteq => ?_
  subst t
  refine ⟨0, ?_, by decide⟩
  simp [setVarHOLFinite, FUPDATE]

/-- The same initialized bound without a following tail. -/
theorem cost_initialized_loop {i : MlS} {E : ExpHOL 64}
    {body : ProgHOL 64} {B : Nat}
    (hb : Cost σ X body B) (hs : Steps σ i (· + 1) body) :
    Cost σ X (.dec i .one (.const 0)
      (.while (.cmp .less (.var .local i) E) body)) (2^63 * (B+1)) := by
  apply AcceptedLoopRules.cost_of_costP_true
  refine AcceptedLoopRules.costP_dec fun s hctx hp v hv hshape => ?_
  have valueZero : v = .val (.word (0 : BitVec 64)) := by
    simpa only [ev_const, Option.some.injEq] using hv.symm
  subst v
  refine (cost_while_inc_less_nonnegative hb hs).pre fun t hctx' hteq => ?_
  subst t
  refine ⟨0, ?_, by decide⟩
  simp [setVarHOLFinite, FUPDATE]

#print axioms cost_initialized_loop

#print axioms cost_initialized_seq

#print axioms guard_successor
#print axioms cost_while_inc_less_nonnegative
end AcceptedInitializedLoopCost
