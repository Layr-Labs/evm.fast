import InitECandidate.Solver.Improvements.ConditionalInitializedLoop
import InitECandidate.Solver.Improvements.AcceptedExactWhileCost
import InitECandidate.Solver.SourceCost.Frame

/-! Conditional source loops with an explicitly bounded, preserved local limit.
No bound on the limit is assumed globally: callers must establish `LocalCap`
from their actual typed load before entering the loop. -/
set_option autoImplicit false
namespace BoundedInitializedLoop
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL MlS)
open Flapjack.Compiler.Encoders.Asm
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedInitializedLoopCost

variable {σ : Type} {X : Ctx 64}

def LocalCap (cap : MlS) (C : Nat) (s : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ v : BitVec 64, s.locals.lookup cap = some (.val (.word v)) ∧ v.toNat ≤ C

theorem true_guard_below {i cap : MlS} {C : Nat} {s : PanSemStateFiniteExact 64 σ}
    (hn : Nonneg i s) (hcap : LocalCap cap C s)
    (hc : CondTrue s (.cmp .less (.var .local i) (.var .local cap))) :
    wordOf s i < C := by
  obtain ⟨vi, hi, hni⟩ := hn
  obtain ⟨vc, hvc, hcv⟩ := hcap
  have hcmp : wordCmpHOL .less vi vc = true := by
    obtain ⟨w, hw, hne⟩ := hc
    change ev s (.cmp .less (.var .local i) (.var .local cap)) =
      some (.val (.word w)) at hw
    rw [ev_cmp (show ev s (.var .local i) = some (.val (.word vi)) from hi)
      (show ev s (.var .local cap) = some (.val (.word vc)) from hvc)] at hw
    cases hbool : wordCmpHOL .less vi vc with
    | true => rfl
    | false =>
      rw [hbool] at hw
      exact False.elim (hne (by simpa using hw.symm))
  have hnat : vi.toNat < vc.toNat := by
    change holAsmSignedLess vi vc = true at hcmp
    unfold holAsmSignedLess at hcmp
    simp only [show (64 : Nat) - 1 = 63 from rfl, hni, if_true] at hcmp
    split at hcmp
    · exact of_decide_eq_true hcmp
    · simp at hcmp
  simp only [wordOf, hi]
  omega

theorem costP_while_local_cap
    {I : PanSemStateFiniteExact 64 σ → Prop} {i cap : MlS}
    {body : ProgHOL 64} {B C : Nat}
    (hclk : ∀ s, I s → I (decClockHOLFinite s))
    (hbody : AcceptedLoopRules.CostP σ X
      (fun s => I s ∧ CondTrue s (.cmp .less (.var .local i) (.var .local cap))) body B)
    (hinv : Hoare σ X
      (fun s => I s ∧ CondTrue s (.cmp .less (.var .local i) (.var .local cap))) body
      (fun r t => r = none → I t))
    (hnc : NoCont σ body) (hstep : Steps σ i (· + 1) body)
    (hkeep : Keeps σ cap body) :
    AcceptedLoopRules.CostP σ X
      (fun s => I s ∧ Nonneg i s ∧ LocalCap cap C s)
      (.while (.cmp .less (.var .local i) (.var .local cap)) body)
      (C * (B + 1)) := by
  let μ : PanSemStateFiniteExact 64 σ → Nat := fun s => C - wordOf s i
  refine AcceptedExactWhileCost.costP_while_exact μ C ?_ (fun _ => rfl)
    (hbody.pre (fun _ _ hp => ⟨hp.1.1, hp.2⟩)) ?_ ?_ ?_ ?_
  · rintro s ⟨hi, hn, hcap⟩
    exact ⟨hclk s hi, hn, hcap⟩
  · rintro s hctx ⟨⟨hi, hn, hcap⟩, hc⟩ tracked exit
    have hnormal : (evaluateHOLFiniteState s body).1 = none :=
      exit.elim id (fun h => False.elim (hnc s h))
    obtain ⟨v, hv, inc, small, lt⟩ := guard_successor hn hc
    refine ⟨hinv s hctx ⟨hi, hc⟩ tracked hnormal,
      ⟨v + 1, hstep s v hv exit, small⟩, ?_⟩
    obtain ⟨vc, hvC, hvc⟩ := hcap
    refine ⟨vc, ?_, hvc⟩
    rw [hkeep s (by rcases exit with h | h <;> simp [LoopExit, h])]
    exact hvC
  · intro s hs hp hc
    exact Nat.sub_le _ _
  · rintro s hs ⟨hi, hn, hcap⟩ hc
    have hbelow := true_guard_below hn hcap hc
    change 0 < C - wordOf s i
    omega
  · rintro k s hs ⟨⟨hi, hn, hcap⟩, hc, rank⟩ tracked exit
    have hbelow := true_guard_below hn hcap hc
    obtain ⟨v, hv, inc, small, lt⟩ := guard_successor hn hc
    have after := hstep s v hv exit
    change C - wordOf (evaluateHOLFiniteState s body).2 i < k
    simp only [wordOf, after, inc]
    change C - wordOf s i = k at rank
    simp only [wordOf, hv] at rank hbelow
    omega

#print axioms costP_while_local_cap
end BoundedInitializedLoop
