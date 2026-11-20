import InitECandidate.Solver.Improvements.AcceptedExactWhileCost
import InitECandidate.Solver.SourceCost.CounterLoops

/-!
# Exact costs for initialized word countdowns

The existing source-cost countdown rule allows arbitrary initial words. Here
the literal initializer supplies the invariant `counter.toNat ≤ N`, and a true
guard must force a nonzero counter. A completed body step decrements once.
The exact positive-rank rule then charges at most `N` body/guard slots.

Body and tail costs and the actual decrement property remain explicit premises.
This generic component does not establish them for a particular guest body.
-/
set_option autoImplicit false

namespace AcceptedCountdownCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

def AtMost (i : MlS) (N : Nat) (s : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ v : BitVec 64, s.locals.lookup i = some (.val (.word v)) ∧ v.toNat ≤ N

theorem wordOf_atMost {i : MlS} {N : Nat} {s : PanSemStateFiniteExact 64 σ}
    (h : AtMost i N s) : wordOf s i ≤ N := by
  obtain ⟨v, hv, hn⟩ := h
  simpa only [wordOf, hv] using hn

/-- A true nonzero-counter guard makes the decrement nonwrapping. -/
theorem decrement_word {i : MlS} {c : ExpHOL 64}
    (hc : NonzeroCond σ i c) {s : PanSemStateFiniteExact 64 σ}
    (hcond : CondTrue s c) :
    ∃ v : BitVec 64, s.locals.lookup i = some (.val (.word v)) ∧
      0 < v.toNat ∧ (v - 1).toNat = v.toNat - 1 := by
  obtain ⟨v, hv, hv0⟩ := hc s hcond
  have hvn : v.toNat ≠ 0 := fun h =>
    hv0 (BitVec.eq_of_toNat_eq (by simpa using h))
  have one : (1 : BitVec 64).toNat = 1 := by decide
  have h1 : (1 : BitVec 64) ≤ v := by
    rw [BitVec.le_def]
    rw [one]
    omega
  exact ⟨v, hv, by omega, by rw [BitVec.toNat_sub_of_le h1, one]⟩

/-- A typed counter bounded by `N` takes at most `N` countdown slots. The
condition may be any expression forcing the counter to be nonzero. -/
theorem cost_while_dec_atMost {i : MlS} {c : ExpHOL 64}
    {body : ProgHOL 64} {B : Nat} (N : Nat)
    (hc : NonzeroCond σ i c) (hb : Cost σ X body B)
    (hs : Steps σ i (· - 1) body) :
    AcceptedLoopRules.CostP σ X (AtMost i N) (.while c body) (N * (B + 1)) := by
  refine AcceptedExactWhileCost.costP_while_exact (fun s => wordOf s i) N
    ?_ ?_ (AcceptedLoopRules.costP_of_cost hb) ?_ ?_ ?_ ?_
  · rintro s ⟨v, hv, hn⟩
    exact ⟨v, hv, hn⟩
  · intro s
    rfl
  · rintro s hctx ⟨hI, hcond⟩ tracked exit
    have before := wordOf_atMost hI
    obtain ⟨v, hv, positive, sub⟩ := decrement_word hc hcond
    simp only [wordOf, hv] at before
    refine ⟨v - 1, hs s v hv exit, ?_⟩
    rw [sub]
    omega
  · intro s hctx hI hcond
    exact wordOf_atMost hI
  · intro s hctx hI hcond
    obtain ⟨v, hv, positive, sub⟩ := decrement_word hc hcond
    simpa only [wordOf, hv] using positive
  · rintro k s hctx ⟨hI, hcond, rank⟩ tracked exit
    obtain ⟨v, hv, positive, sub⟩ := decrement_word hc hcond
    have after := hs s v hv exit
    change wordOf (evaluateHOLFiniteState s body).2 i < k
    simp only [wordOf, after, sub]
    change wordOf s i = k at rank
    simp only [wordOf, hv] at rank
    omega

/-- An actual literal initializer discharges the countdown invariant. The
initializer has natural value `N % 2^64`, so this upper bound remains sound for
all `N`; no representability assumption is needed. -/
theorem cost_initialized_seq {i : MlS} {c : ExpHOL 64}
    {body tail : ProgHOL 64} {B Bt : Nat} (N : Nat)
    (hc : NonzeroCond σ i c) (hb : Cost σ X body B)
    (hs : Steps σ i (· - 1) body) (ht : Cost σ X tail Bt) :
    Cost σ X
      (.dec i .one (.const (BitVec.ofNat 64 N)) (.seq (.while c body) tail))
      (N * (B + 1) + Bt) := by
  apply AcceptedLoopRules.cost_of_costP_true
  refine AcceptedLoopRules.costP_dec fun s hctx hp v hv hshape => ?_
  have valueInit : v = .val (.word (BitVec.ofNat 64 N)) := by
    simpa only [ev_const, Option.some.injEq] using hv.symm
  subst v
  have sequence : AcceptedLoopRules.CostP σ X (AtMost i N)
      (.seq (.while c body) tail) (N * (B + 1) + Bt) :=
    AcceptedLoopRules.costP_seq (R := fun _ => True) (cost_while_dec_atMost N hc hb hs)
      (fun _ _ _ _ _ => trivial) (AcceptedLoopRules.costP_of_cost ht)
  refine sequence.pre fun t hctx' hteq => ?_
  subst t
  refine ⟨BitVec.ofNat 64 N, ?_, ?_⟩
  · simp [setVarHOLFinite, FUPDATE]
  · simp only [BitVec.toNat_ofNat]
    exact Nat.mod_le N (2 ^ 64)

/-- Unsigned `0 < i` is a common countdown guard. -/
theorem cost_initialized_unsigned_seq {i : MlS}
    {body tail : ProgHOL 64} {B Bt : Nat} (N : Nat)
    (hb : Cost σ X body B) (hs : Steps σ i (· - 1) body)
    (ht : Cost σ X tail Bt) :
    Cost σ X (.dec i .one (.const (BitVec.ofNat 64 N))
      (.seq (.while (.cmp .lower (.const 0) (.var .local i)) body) tail))
      (N * (B + 1) + Bt) :=
  cost_initialized_seq N (nonzero_lower_zero i) hb hs ht

#print axioms decrement_word
#print axioms cost_while_dec_atMost
#print axioms cost_initialized_seq
#print axioms cost_initialized_unsigned_seq
end AcceptedCountdownCost
