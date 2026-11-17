import InitECandidate.Solver.Improvements.AcceptedInitializedLoopCost
import InitECandidate.Solver.Improvements.AcceptedExactWhileCost

/-! A captured signed count may have its sign bit set. Only nonnegative
counts need the numerical upper bound: a nonnegative initialized counter
cannot satisfy a signed less-than guard against a negative count. -/
set_option autoImplicit false
set_option maxRecDepth 100000
namespace FourthCapturedSignedLoop
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS)
open Flapjack.Compiler.Encoders.Asm
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
variable {σ : Type} {X : Ctx 64}

def CountEq (E : ExpHOL 64) (C : BitVec 64) (s : PanSemStateFiniteExact 64 σ) : Prop :=
  ev s E = some (.val (.word C))
def LoopInv (i : MlS) (E : ExpHOL 64) (C : BitVec 64) (M : Nat)
    (s : PanSemStateFiniteExact 64 σ) : Prop :=
  CountEq E C s ∧ ∃ v : BitVec 64, s.locals.lookup i = some (.val (.word v)) ∧ v.toNat ≤ M

theorem guard_lt {i : MlS} {E : ExpHOL 64} {C : BitVec 64} {M : Nat}
    (hM : M < 2^63) (hC : C.toNat < 2^63 → C.toNat ≤ M)
    {s : PanSemStateFiniteExact 64 σ} (hI : LoopInv i E C M s)
    (hc : CondTrue s (.cmp .less (.var .local i) E)) :
    ∃ v : BitVec 64, s.locals.lookup i = some (.val (.word v)) ∧ v.toNat < M := by
  obtain ⟨he, v, hv, hvm⟩ := hI
  obtain ⟨w, hw, hn⟩ := hc
  have eI : ev s (.var .local i) = some (.val (.word v)) := hv
  change ev s E = some (.val (.word C)) at he
  change ev s (.cmp .less (.var .local i) E) = some (.val (.word w)) at hw
  rw [ev_cmp eI he] at hw
  have cmp : wordCmpHOL .less v C = true := by
    cases hcmp : wordCmpHOL .less v C
    · have hz : w = 0 := by simpa [hcmp] using hw.symm
      exact False.elim (hn hz)
    · rfl
  have hvs : v.toNat < 9223372036854775808 := by omega
  by_cases hcs : C.toNat < 9223372036854775808
  · have hlt : v.toNat < C.toNat := by
      simpa [wordCmpHOL, holAsmSignedLess, hvs, hcs] using cmp
    exact ⟨v, hv, by have := hC hcs; omega⟩
  · simp [wordCmpHOL, holAsmSignedLess, hvs, hcs] at cmp

theorem increment_nat {v : BitVec 64} {M : Nat} (hM : M < 2^63) (hv : v.toNat < M) :
    (v + 1).toNat = v.toNat + 1 := by
  apply BitVec.toNat_add_of_lt
  have one : (1 : BitVec 64).toNat = 1 := by decide
  omega

theorem cost_while {i : MlS} {E : ExpHOL 64} {C : BitVec 64} {M B : Nat}
    {body : ProgHOL 64} (hM : M < 2^63) (hC : C.toNat < 2^63 → C.toNat ≤ M)
    (hb : Cost σ X body B) (hs : Steps σ i (· + 1) body)
    (hEclk : ∀ s : PanSemStateFiniteExact 64 σ, ev (decClockHOLFinite s) E = ev s E)
    (hEkeep : ∀ s : PanSemStateFiniteExact 64 σ, LoopExit (evaluateHOLFiniteState s body).1 →
      ev (evaluateHOLFiniteState s body).2 E = ev s E) :
    AcceptedLoopRules.CostP σ X (LoopInv i E C M)
      (.while (.cmp .less (.var .local i) E) body) (M * (B + 1)) := by
  let μ : PanSemStateFiniteExact 64 σ → Nat := fun s => M - wordOf s i
  refine AcceptedExactWhileCost.costP_while_exact μ M ?_ (fun _ => rfl)
    (AcceptedLoopRules.costP_of_cost hb) ?_ ?_ ?_ ?_
  · rintro s ⟨he, v, hv, hvm⟩
    exact ⟨(hEclk s).trans he, v, hv, hvm⟩
  · rintro s hctx ⟨hI, hc⟩ tracked exit
    obtain ⟨v, hv, hlt⟩ := guard_lt hM hC hI hc
    have after := hs s v hv exit
    have hloopexit : LoopExit (evaluateHOLFiniteState s body).1 :=
      exit.elim Or.inl (fun h => Or.inr (Or.inl h))
    refine ⟨(hEkeep s hloopexit).trans hI.1, v + 1, after, ?_⟩
    rw [increment_nat hM hlt]
    omega
  · intro s hctx hI hc
    exact Nat.sub_le _ _
  · intro s hctx hI hc
    obtain ⟨v, hv, hlt⟩ := guard_lt hM hC hI hc
    change 0 < M - wordOf s i
    simp only [wordOf, hv]
    omega
  · rintro k s hctx ⟨hI, hc, rank⟩ tracked exit
    obtain ⟨v, hv, hlt⟩ := guard_lt hM hC hI hc
    have after := hs s v hv exit
    change M - wordOf (evaluateHOLFiniteState s body).2 i < k
    simp only [wordOf, after, increment_nat hM hlt]
    change M - wordOf s i = k at rank
    simp only [wordOf, hv] at rank
    omega

theorem cost_initialized_seq {i : MlS} {E : ExpHOL 64} {C : BitVec 64} {M B Bt : Nat}
    {body tail : ProgHOL 64} (hM : M < 2^63) (hC : C.toNat < 2^63 → C.toNat ≤ M)
    (hb : Cost σ X body B) (hs : Steps σ i (· + 1) body)
    (hEclk : ∀ s : PanSemStateFiniteExact 64 σ, ev (decClockHOLFinite s) E = ev s E)
    (hEkeep : ∀ s : PanSemStateFiniteExact 64 σ, LoopExit (evaluateHOLFiniteState s body).1 →
      ev (evaluateHOLFiniteState s body).2 E = ev s E)
    (hinit : ∀ s : PanSemStateFiniteExact 64 σ,
      ev (setVarHOLFinite i (.val (.word 0)) s) E = ev s E)
    (ht : Cost σ X tail Bt) :
    AcceptedLoopRules.CostP σ X (CountEq E C)
      (.dec i .one (.const 0) (.seq (.while (.cmp .less (.var .local i) E) body) tail))
      (M * (B + 1) + Bt) := by
  refine AcceptedLoopRules.costP_dec fun s hctx hp v hv hshape => ?_
  have hz : v = .val (.word (0 : BitVec 64)) := by
    simpa only [ev_const, Option.some.injEq] using hv.symm
  subst v
  have hseq : AcceptedLoopRules.CostP σ X (LoopInv i E C M)
      (.seq (.while (.cmp .less (.var .local i) E) body) tail) (M * (B + 1) + Bt) :=
    AcceptedLoopRules.costP_seq (R := fun _ => True) (cost_while hM hC hb hs hEclk hEkeep)
      (fun _ _ _ _ _ => trivial) (AcceptedLoopRules.costP_of_cost ht)
  refine hseq.pre fun t hctx' hEq => ?_
  subst t
  refine ⟨(hinit s).trans hp, 0, ?_, by simp⟩
  simp [setVarHOLFinite, FUPDATE]

#print axioms guard_lt
#print axioms cost_while
#print axioms cost_initialized_seq
end FourthCapturedSignedLoop
