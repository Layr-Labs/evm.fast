import InitECandidate.Solver.Improvements.AcceptedExactWhileCost
import InitECandidate.Solver.SourceCost.Checkers
import InitECandidate.Solver.Spec.U256
import InitECandidate.Solver.Spec.Inv.CostI

/-! A signed source loop initialized at zero and incremented by one costs
exactly as many budgeted slots as its constant upper limit. -/

set_option autoImplicit false

namespace InitializedSignedCounter
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS ProgHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL holAsmSignedLess)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Inv

def counterInv {σ : Type} (i : MlS) (limit : Nat) (s : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ j : BitVec 64, s.locals.lookup i = some (.val (.word j)) ∧ j.toNat ≤ limit

private theorem trueGuard {σ : Type} {s : PanSemStateFiniteExact 64 σ} {i : MlS}
    {j : BitVec 64} {limit : Nat}
    (hLimit : limit < 2 ^ 63) (hj : s.locals.lookup i = some (.val (.word j)))
    (hjPos : j.toNat < 2 ^ 63)
    (hc : CondTrue s (.cmp .less (lv i) (cw limit))) : j.toNat < limit := by
  obtain ⟨w, hw, hn⟩ := hc
  obtain ⟨x, y, hx, hy, hcmp⟩ := cmp_true hw hn
  change s.locals.lookup i = _ at hx
  rw [hj] at hx
  rw [ev_cw] at hy
  cases hx
  cases hy
  have hWord : (BitVec.ofNat 64 limit).toNat = limit := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  change holAsmSignedLess j (BitVec.ofNat 64 limit) = true at hcmp
  simp only [holAsmSignedLess, show (64 : Nat) - 1 = 63 from rfl, hjPos,
    hWord, hLimit, if_true, decide_eq_true_eq] at hcmp
  exact hcmp

private theorem step {σ : Type} {s : PanSemStateFiniteExact 64 σ} {i : MlS}
    {j : BitVec 64} {body : ProgHOL 64} {limit : Nat} (hLimit : limit < 2 ^ 63)
    (hStep : Steps σ i (· + 1) body) (hj : s.locals.lookup i = some (.val (.word j)))
    (hBelow : j.toNat < limit)
    (hr : (evaluateHOLFiniteState s body).1 = none ∨
      (evaluateHOLFiniteState s body).1 = some .continue) :
    (evaluateHOLFiniteState s body).2.locals.lookup i = some (.val (.word (j + 1))) ∧
      (j + 1).toNat = j.toNat + 1 := by
  exact ⟨hStep _ _ hj hr, BitVec.toNat_add_of_lt (by simp; omega)⟩

theorem loop_cost {σ : Type} {X : Ctx 64} {i : MlS} {limit B : Nat}
    {body : ProgHOL 64} (hLimit : limit < 2 ^ 63) (hBody : Cost σ X body B)
    (hStep : Steps σ i (· + 1) body) :
    CostP σ X (counterInv i limit) (.while (.cmp .less (lv i) (cw limit)) body)
      (limit * (B + 1)) := by
  let rank (s : PanSemStateFiniteExact 64 σ) := limit - wordOf s i
  have rank_eq {s : PanSemStateFiniteExact 64 σ} {j : BitVec 64} (hj : s.locals.lookup i = some (.val (.word j))) :
      rank s = limit - j.toNat := by
    simp [rank, wordOf, hj]
  refine AcceptedExactWhileCost.costP_while_exact (I := counterInv i limit)
    (c := .cmp .less (lv i) (cw limit)) rank limit (fun _ h => h) (fun _ => rfl)
    (costP_of_cost hBody) (by
      intro s _ ⟨⟨j, hj, hBound⟩, hGuard⟩ _ hResult
      have hBelow := trueGuard hLimit hj (by omega) hGuard
      obtain ⟨hNext, hNat⟩ := step hLimit hStep hj hBelow hResult
      exact ⟨j + 1, hNext, by omega⟩) (fun _ _ _ _ => Nat.sub_le _ _) (by
      intro s _ ⟨j, hj, hBound⟩ hGuard
      have hBelow := trueGuard hLimit hj (by omega) hGuard
      rw [rank_eq hj]
      omega) (by
      intro k s _ ⟨⟨j, hj, hBound⟩, hGuard, hk⟩ _ hResult
      have hBelow := trueGuard hLimit hj (by omega) hGuard
      obtain ⟨hNext, hNat⟩ := step hLimit hStep hj hBelow hResult
      rw [rank_eq hNext, hNat]
      rw [rank_eq hj] at hk
      omega)
/-- Price a constant positive stride by the unit rank. The larger invariant
also covers a last update that passes the limit. -/
theorem loop_cost_stride {σ : Type} {X : Ctx 64} {i : MlS} {limit stride B : Nat}
    {body : ProgHOL 64} (hStride : 0 < stride) (hFit : limit + stride < 2 ^ 63)
    (hBody : Cost σ X body B) (hStep : Steps σ i (· + BitVec.ofNat 64 stride) body) :
    CostP σ X (counterInv i (limit + stride)) (.while (.cmp .less (lv i) (cw limit)) body)
      (limit * (B + 1)) := by
  let I := counterInv (σ := σ) i (limit + stride)
  let rank (s : PanSemStateFiniteExact 64 σ) := limit - wordOf s i
  have hLimit : limit < 2 ^ 63 := by omega
  have rank_eq {s : PanSemStateFiniteExact 64 σ} {j : BitVec 64}
      (hj : s.locals.lookup i = some (.val (.word j))) : rank s = limit - j.toNat := by
    simp [rank, wordOf, hj]
  have hLt {s : PanSemStateFiniteExact 64 σ} {j : BitVec 64}
      (hj : s.locals.lookup i = some (.val (.word j))) (hBound : j.toNat ≤ limit + stride)
      (hGuard : CondTrue s (.cmp .less (lv i) (cw limit))) : j.toNat < limit := by
    exact trueGuard hLimit hj (by omega) hGuard
  have advance (s : PanSemStateFiniteExact 64 σ) (j : BitVec 64)
      (hj : s.locals.lookup i = some (.val (.word j))) (hBelow : j.toNat < limit)
      (hr : (evaluateHOLFiniteState s body).1 = none ∨
        (evaluateHOLFiniteState s body).1 = some .continue) :
      let next := j + BitVec.ofNat 64 stride
      (evaluateHOLFiniteState s body).2.locals.lookup i = some (.val (.word next)) ∧
        next.toNat = j.toNat + stride := by
    have hNat : (BitVec.ofNat 64 stride).toNat = stride := by
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
    exact ⟨hStep _ _ hj hr, by rw [BitVec.toNat_add_of_lt (by rw [hNat]; omega), hNat]⟩
  refine AcceptedExactWhileCost.costP_while_exact (I := I) rank limit (fun _ h => h)
    (fun _ => rfl) (costP_of_cost hBody) ?_ (fun _ _ _ _ => Nat.sub_le _ _) ?_ ?_
  · intro s _ ⟨⟨j, hj, hBound⟩, hGuard⟩ _ hr
    have hBelow := hLt hj hBound hGuard
    obtain ⟨hn, hnNat⟩ := advance s j hj hBelow hr
    exact ⟨j + BitVec.ofNat 64 stride, hn, by omega⟩
  · intro s _ ⟨j, hj, hBound⟩ hGuard
    have hBelow := hLt hj hBound hGuard
    rw [rank_eq hj]
    omega
  · intro k s _ ⟨⟨j, hj, hBound⟩, hGuard, hk⟩ _ hr
    have hBelow := hLt hj hBound hGuard
    obtain ⟨hn, hnNat⟩ := advance s j hj hBelow hr
    rw [rank_eq hn, hnNat]
    rw [rank_eq hj] at hk
    omega

theorem initialized_cost {σ : Type} {X : Ctx 64} {i : MlS} {limit B : Nat}
    {body : ProgHOL 64} (hLimit : limit < 2 ^ 63) (hBody : Cost σ X body B)
    (hStep : Steps σ i (· + 1) body) :
    Cost σ X (.dec i .one (cw 0) (.while (.cmp .less (lv i) (cw limit)) body))
      (limit * (B + 1)) := by
  have hInit : CostP σ X (fun _ => True)
      (.dec i .one (cw 0) (.while (.cmp .less (lv i) (cw limit)) body))
      (limit * (B + 1)) := by
    refine costP_dec ?_
    intro s _ _ v hv _
    rw [ev_cw] at hv
    cases hv
    refine (loop_cost hLimit hBody hStep).pre ?_
    intro t _ ht
    subst t
    exact ⟨0, lk_set_self _ _ _, Nat.zero_le _⟩
  exact fun s hs hg => ⟨hInit s hs trivial hg, inCtx_eval hs _⟩

#print axioms initialized_cost

end InitializedSignedCounter
