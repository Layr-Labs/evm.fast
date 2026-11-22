import InitECandidate.Solver.Improvements.ThirdUnsignedInitializedCost
import InitECandidate.Solver.Band7.Loop

/-! Bound an unsigned increasing loop by the evaluated upper operand on
states in its invariant. The body still uses the original per-step proof. -/
set_option autoImplicit false

namespace BmiUnsignedCap
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS)
open Flapjack.Compiler.Encoders.Asm
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

theorem costP_while_inc_bounded {I : PanSemStateFiniteExact 64 σ → Prop} {i : MlS} {E : ExpHOL 64}
    {body : ProgHOL 64} {B C : Nat}
    (hbound : ∀ s, I s → ∃ n : BitVec 64, ev s E = some (.val (.word n)) ∧ n.toNat ≤ C)
    (hclk : ∀ s, I s → I (decClockHOLFinite s))
    (hbody : Inv.CostP σ X (fun s => I s ∧ CondTrue s (.cmp .lower (.var .local i) E)) body B)
    (hinv : Hoare σ X (fun s => I s ∧ CondTrue s (.cmp .lower (.var .local i) E)) body
      (fun r t => r = none → I t))
    (hnc : NoCont σ body) (hstep : Steps σ i (· + 1) body) :
    Inv.CostP σ X I (.while (.cmp .lower (.var .local i) E) body) ((C + 1) * (B + 1)) := by
  refine Inv.costP_while (fun s => C - wordOf s i) C hclk (fun _ => rfl) hbody ?_
    (fun _ _ _ _ => Nat.sub_le _ _) ?_
  · intro s hs hp ht hr
    rcases hr with h | h
    · exact hinv s hs hp ht h
    · exact absurd h (hnc s)
  · intro k s hs ⟨hI, hcond, hk⟩ ht hexit
    obtain ⟨v, e, hv, he, hlt⟩ := ThirdUnsignedInitializedCost.cond_var_left_eval hcond
    obtain ⟨n, hn, hle⟩ := hbound s hI
    rw [hn] at he
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at he
    subst e
    simp only [wordCmpHOL, decide_eq_true_eq, BitVec.lt_def] at hlt
    have hv1 : (v + 1).toNat = v.toNat + 1 := by
      have h1 : (1 : BitVec 64).toNat = 1 := by decide
      have hnlt := n.isLt
      rw [BitVec.toNat_add, h1, Nat.mod_eq_of_lt (by omega)]
    have hafter := hstep s v hv hexit
    subst hk
    unfold wordOf
    rw [hafter, hv]
    simp only [hv1]
    omega

#print axioms costP_while_inc_bounded
end BmiUnsignedCap
