import InitECandidate.Solver.Improvements.AcceptedCountdownCost

/-! Exact initialized unsigned count-up loops with a literal limit.
All body costs and actual increments are explicit premises. -/
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ThirdUnsignedInitializedCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS)
open Flapjack.Compiler.Encoders.Asm
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCountdownCost (AtMost wordOf_atMost)

variable {σ : Type} {X : Ctx 64}

theorem cond_var_left_eval {s : PanSemStateFiniteExact 64 σ} {i : MlS} {E : ExpHOL 64}
    (h : CondTrue s (.cmp .lower (.var .local i) E)) :
    ∃ v e : BitVec 64, s.locals.lookup i = some (.val (.word v)) ∧
      ev s E = some (.val (.word e)) ∧ wordCmpHOL .lower v e = true := by
  obtain ⟨w, hw, hne⟩ := h
  simp only [evalHOLFinite, evalHOLExact] at hw
  split at hw
  · rename_i l r hl hr
    refine ⟨l, r, hl, hr, ?_⟩
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    cases hc : wordCmpHOL .lower l r
    · rw [hc] at hw
      simp at hw
      exact absurd hw.symm hne
    · rfl
  · simp at hw

theorem guard_word {s : PanSemStateFiniteExact 64 σ} {i : MlS} {N : Nat}
    (hN : N < 2^64)
    (hc : CondTrue s (.cmp .lower (.var .local i) (.const (BitVec.ofNat 64 N)))) :
    ∃ v : BitVec 64, s.locals.lookup i = some (.val (.word v)) ∧ v.toNat < N := by
  obtain ⟨v, e, hv, he, hcmp⟩ := cond_var_left_eval hc
  have same : e = BitVec.ofNat 64 N := by
    simpa only [ev_const, Option.some.injEq, ValueHOL.val.injEq,
      HolWordLab.word.injEq] using he.symm
  subst e
  simp only [wordCmpHOL, decide_eq_true_eq, BitVec.lt_def,
    BitVec.toNat_ofNat, Nat.mod_eq_of_lt hN] at hcmp
  exact ⟨v, hv, hcmp⟩

theorem increment_word {v : BitVec 64} {N : Nat}
    (hN : N < 2^64) (hv : v.toNat < N) :
    (v + 1).toNat = v.toNat + 1 := by
  have hone : (1 : BitVec 64).toNat = 1 := by decide
  rw [BitVec.toNat_add, hone, Nat.mod_eq_of_lt (by omega)]

theorem cost_while_inc_const {i : MlS} {body : ProgHOL 64} {B : Nat}
    (N : Nat) (hN : N < 2^64) (hb : Cost σ X body B)
    (hs : Steps σ i (· + 1) body) :
    AcceptedLoopRules.CostP σ X (AtMost i N)
      (.while (.cmp .lower (.var .local i) (.const (BitVec.ofNat 64 N))) body)
      (N * (B + 1)) := by
  let μ : PanSemStateFiniteExact 64 σ → Nat := fun s => N - wordOf s i
  refine AcceptedExactWhileCost.costP_while_exact μ N ?_ ?_
    (AcceptedLoopRules.costP_of_cost hb) ?_ ?_ ?_ ?_
  · rintro s ⟨v, hv, hn⟩
    exact ⟨v, hv, hn⟩
  · intro s
    rfl
  · rintro s hctx ⟨hI, hc⟩ tracked exit
    obtain ⟨v, hv, hlt⟩ := guard_word hN hc
    refine ⟨v + 1, hs s v hv exit, ?_⟩
    rw [increment_word hN hlt]
    omega
  · intro s hctx hI hc
    exact Nat.sub_le _ _
  · rintro s hctx hI hc
    obtain ⟨v, hv, hlt⟩ := guard_word hN hc
    change 0 < N - wordOf s i
    simp only [wordOf, hv]
    omega
  · rintro k s hctx ⟨hI, hc, rank⟩ tracked exit
    obtain ⟨v, hv, hlt⟩ := guard_word hN hc
    have after := hs s v hv exit
    change N - wordOf (evaluateHOLFiniteState s body).2 i < k
    simp only [wordOf, after]
    rw [increment_word hN hlt]
    change N - wordOf s i = k at rank
    simp only [wordOf, hv] at rank
    omega

theorem cost_initialized_seq {i : MlS} {body tail : ProgHOL 64} {B Bt : Nat}
    (N : Nat) (hN : N < 2^64) (hb : Cost σ X body B)
    (hs : Steps σ i (· + 1) body) (ht : Cost σ X tail Bt) :
    Cost σ X (.dec i .one (.const 0)
      (.seq (.while (.cmp .lower (.var .local i) (.const (BitVec.ofNat 64 N))) body) tail))
      (N * (B + 1) + Bt) := by
  apply AcceptedLoopRules.cost_of_costP_true
  refine AcceptedLoopRules.costP_dec fun s hctx hp v hv hshape => ?_
  have valueZero : v = .val (.word (0 : BitVec 64)) := by
    simpa only [ev_const, Option.some.injEq] using hv.symm
  subst v
  have seq : AcceptedLoopRules.CostP σ X (AtMost i N)
      (.seq (.while (.cmp .lower (.var .local i) (.const (BitVec.ofNat 64 N))) body) tail)
      (N * (B + 1) + Bt) :=
    AcceptedLoopRules.costP_seq (R := fun _ => True) (cost_while_inc_const N hN hb hs)
      (fun _ _ _ _ _ => trivial) (AcceptedLoopRules.costP_of_cost ht)
  refine seq.pre fun t hctx' ht => ?_
  subst t
  refine ⟨0, ?_, ?_⟩
  · simp [setVarHOLFinite, FUPDATE]
  · simp

#print axioms cost_while_inc_const
#print axioms cost_initialized_seq
end ThirdUnsignedInitializedCost
