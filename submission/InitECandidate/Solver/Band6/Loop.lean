import InitECandidate.Solver.Band6.IsK
import InitECandidate.Solver.MemSafe.Bal.Ub8

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

/-!
# Signed counter loops under an invariant (Band6)

`costP_while_inc_less`: `while (i <s E) body` where `body` keeps an invariant `I`, never `continue`s and
steps `i` by one (`Steps`); the bound is `(2^64 + 1) * (B + 1)` for a body bound `B` under `I`.
-/

namespace InitECandidate.Solver.Band6
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

theorem costP_while_inc_less {I : PanSemStateFiniteExact 64 σ → Prop} {i : MlS} {E : ExpHOL 64}
    {body : ProgHOL 64} {B : Nat}
    (hclk : ∀ s, I s → I (decClockHOLFinite s))
    (hbody : Inv.CostP σ X (fun s => I s ∧ CondTrue s (.cmp .less (.var .local i) E)) body B)
    (hinv : Hoare σ X (fun s => I s ∧ CondTrue s (.cmp .less (.var .local i) E)) body
      (fun r t => r = none → I t))
    (hnc : NoCont σ body) (hs : Steps σ i (· + 1) body) :
    Inv.CostP σ X I (.while (.cmp .less (.var .local i) E) body) ((2 ^ 64 + 1) * (B + 1)) := by
  let μ : PanSemStateFiniteExact 64 σ → Nat := fun s =>
    match s.locals.lookup i with
    | some (.val (.word w)) => 2 ^ 64 - signedKey w
    | _ => 0
  refine Inv.costP_while μ (2 ^ 64) hclk (fun s => rfl) hbody ?_ ?_ ?_
  · intro s hs0 hp ht hr
    rcases hr with h | h
    · exact hinv s hs0 hp ht h
    · exact absurd h (hnc s)
  · intro s _ _ hcond
    simp only [μ]
    split
    · exact Nat.sub_le _ _
    · exact Nat.zero_le _
  · intro k s hs0 ⟨hI, hcond, hk⟩ ht
    intro hexit
    obtain ⟨v, e, hv, hlt⟩ := cond_var_left hcond
    have hafter := hs s v hv hexit
    subst hk
    simp only [μ, hafter, hv]
    simp only [Compiler.Encoders.Asm.wordCmpHOL] at hlt
    rw [signedKey_succ hlt]
    have := signedKey_lt (v + 1)
    rw [signedKey_succ hlt] at this
    omega

end InitECandidate.Solver.Band6
