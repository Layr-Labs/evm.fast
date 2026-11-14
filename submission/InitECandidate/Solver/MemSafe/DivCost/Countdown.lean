import InitECandidate.Solver.Spec.Inv.CostI
import InitECandidate.Solver.SourceCost.Loops
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.DivCost.Countdown
variable {σ : Type} {X : Ctx 64}
theorem cond_word {s : PanSemStateFiniteExact 64 σ} {i : MlS}
    (h : CondTrue s (.cmp .less (.const 0) (.var .local i))) :
    ∃ v : BitVec 64, s.locals.lookup i = some (.val (.word v)) ∧ v ≠ 0 := by
  obtain ⟨w, hw, hne⟩ := h
  simp only [evalHOLFinite, evalHOLExact] at hw
  split at hw
  · rename_i l r hl hr
    refine ⟨r, hr, ?_⟩
    rintro rfl
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hl hw
    subst hl
    have hcmp : Compiler.Encoders.Asm.wordCmpHOL Cmp.less (0 : BitVec 64) 0 = false := by decide
    rw [hcmp] at hw
    exact hne (by simpa using hw.symm)
  · simp at hw

theorem decrease {i : MlS} {rest : ProgHOL 64} (hk : Keeps σ i rest)
    (s : PanSemStateFiniteExact 64 σ)
    (hc : CondTrue s (.cmp .less (.const 0) (.var .local i)))
    (hexit : (evaluateHOLFiniteState s (.seq (.assign .local i (.op .sub [.var .local i, .const 1])) rest)).1 = none ∨
      (evaluateHOLFiniteState s (.seq (.assign .local i (.op .sub [.var .local i, .const 1])) rest)).1 = some .continue) :
    InitECandidate.Solver.SourceCost.wordOf (evaluateHOLFiniteState s (.seq (.assign .local i (.op .sub [.var .local i, .const 1])) rest)).2 i < InitECandidate.Solver.SourceCost.wordOf s i := by
  obtain ⟨v, hv, hv0⟩ := cond_word hc
  have hseq : evaluateHOLFiniteState s (.seq (.assign .local i (.op .sub [.var .local i, .const 1])) rest) =
      evaluateHOLFiniteState (setVarHOLFinite i (.val (.word (v - 1))) s) rest := by
    rw [evaluateHOLFiniteState_eq_evaluate_def _ (.seq _ _)]
    dsimp only
    rw [eval_decrement hv]
  rw [hseq] at hexit ⊢
  have hkeep := hk (setVarHOLFinite i (.val (.word (v - 1))) s)
    (by rcases hexit with h | h; exact Or.inl h; exact Or.inr (Or.inl h))
  unfold InitECandidate.Solver.SourceCost.wordOf
  rw [hkeep, hv]
  simp only [setVarHOLFinite, HolFiniteMapExact.lookup_update, FUPDATE, beq_self_eq_true, if_true]
  have hvn : v.toNat ≠ 0 := fun h => hv0 (BitVec.eq_of_toNat_eq (by simpa using h))
  have h1 : (1 : BitVec 64) ≤ v := by rw [BitVec.le_def]; simp; omega
  rw [BitVec.toNat_sub_of_le h1]
  simp; omega

theorem bounded {i : MlS} {rest : ProgHOL 64} {Br M : Nat}
    (hrest : Cost σ X rest Br) (hkeep : Keeps σ i rest) :
    Inv.CostP σ X (fun s => InitECandidate.Solver.SourceCost.wordOf s i ≤ M)
      (.while (.cmp .less (.const 0) (.var .local i))
        (.seq (.assign .local i (.op .sub [.var .local i, .const 1])) rest))
      ((M + 1) * (Br + 1)) := by
  refine Inv.costP_while (fun s => InitECandidate.Solver.SourceCost.wordOf s i) M (fun s h => h) (fun s => rfl)
    (Inv.costP_of_cost (by simpa only [Nat.zero_add] using (cost_seq (cost_assign .local i (.op .sub [.var .local i, .const 1])) hrest))) ?_ (fun s hs h hc => h) ?_
  · intro s hs ⟨hi, hc⟩ ht hexit
    have hd := decrease hkeep s hc hexit
    exact Nat.le_trans (Nat.le_of_lt hd) hi
  · intro k s hs ⟨hi, hc, hk⟩ ht hexit
    have hd := decrease hkeep s hc hexit
    omega
#print axioms bounded
end InitECandidate.Solver.MemSafe.DivCost.Countdown
