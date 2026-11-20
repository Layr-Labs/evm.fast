import InitECandidate.Solver.MemSafe.Frames.FinCost
import InitECandidate.Solver.Improvements.FourthCapturedSignedLoop
import InitECandidate.Solver.MemSafe.Aw.Kit
import InitECandidate.Solver.SourceCost.Table
import InitECandidate.Solver.Spec.Inv.CostI

/-! Keep the typed above-writer predicate alongside the captured signed count.
The accepted Suffix rule retains only CountEq, which is too weak to call the
new conditional encoder. Negative captured counts still skip from zero. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace FourthEncoderTypedLoop
open InitECandidate.Solver.MemSafe.Helpers (Locals)
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS ProgHOL)
open Flapjack.Compiler.Encoders.Asm
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Aw
open FourthCapturedSignedLoop (LoopInv CountEq guard_lt increment_nat)

variable {σ : Type} {i keys : MlS}

abbrev lengthExpr (keys : MlS) : Flapjack.Pancake.PanLang.ExpHOL 64 :=
  .rfield 1 (.var .local keys)

private theorem eval_length_eq {s t : State σ} (hl : t.locals.lookup keys = s.locals.lookup keys) :
    ev t (lengthExpr keys) = ev s (lengthExpr keys) := by
  simp only [ev, evalHOLExact, hl]

theorem preserveLength {s t : State σ} {n : MlS} {v : ValueHOL 64} {C : BitVec 64}
    (hn : n ≠ keys) (h : CountEq (lengthExpr keys) C s) :
    CountEq (lengthExpr keys) C (setVarHOLFinite n v {t with locals := s.locals}) := by
  refine (eval_length_eq (s := s) ?_).trans h
  simp [setVarHOLFinite, FUPDATE, hn]


theorem typed_count_loop_cost {a : AwE σ} {L : Locals → Prop}
    (hK : AwOK a) {C : BitVec 64} {M B : Nat} {body : ProgHOL 64}
    (hM : M < 2 ^ 63) (hC : C.toNat < 2 ^ 63 → C.toNat ≤ M)
    (hb : Inv.CostP σ guestCtx (APre a L) body B)
    (hm : HoareG σ guestCtx (APre a L) body (AQ a L (fun _ => False)))
    (hstep : Steps σ i (· + 1) body) (hkeep : Keeps σ keys body)
    (hnc : NoCont σ body) :
    Inv.CostP σ guestCtx
      (fun s => APre a L s ∧ LoopInv i (lengthExpr keys) C M s)
      (.while (.cmp .less (.var .local i) (lengthExpr keys)) body)
      ((M + 1) * (B + 1)) := by
  let μ : State σ → Nat := fun s => M - InitECandidate.Solver.SourceCost.wordOf s i
  refine Inv.costP_while μ M ?_ (fun _ => rfl)
    (hb.pre (fun _ _ hp => hp.1.1)) ?_ (fun _ _ _ _ => Nat.sub_le _ _) ?_
  · intro s ⟨hi, he, v, hv, hvM⟩
    exact ⟨⟨awInv_same hK hi.1 rfl rfl rfl rfl, hi.2⟩, he, v, hv, hvM⟩
  · intro s hs ⟨hi, hc⟩ ht hexit
    have hn : (evaluateHOLFiniteState s body).1 = none :=
      hexit.elim id (fun h => False.elim (hnc s h))
    have htyped := (Frames.hoare_of_hoareG hm s hs hi.1 ht).2.1 hn
    obtain ⟨v, hv, hvM⟩ := guard_lt hM hC hi.2 hc
    have hafter := hstep s v hv hexit
    have hloopexit : LoopExit (evaluateHOLFiniteState s body).1 :=
      hexit.elim Or.inl (fun h => Or.inr (Or.inl h))
    have hinc := increment_nat hM hvM
    refine ⟨htyped, (eval_length_eq (hkeep s hloopexit)).trans hi.2.1,
      v + 1, hafter, ?_⟩
    rw [hinc]
    omega
  · intro k s hs ⟨⟨hi, hcap⟩, hc, hk⟩ ht hexit
    obtain ⟨v, hv, hvM⟩ := guard_lt hM hC hcap hc
    have hafter := hstep s v hv hexit
    have hinc := increment_nat hM hvM
    change M - InitECandidate.Solver.SourceCost.wordOf s i = k at hk
    simp only [InitECandidate.Solver.SourceCost.wordOf, hv] at hk
    change M - InitECandidate.Solver.SourceCost.wordOf (evaluateHOLFiniteState s body).2 i < k
    simp only [InitECandidate.Solver.SourceCost.wordOf, hafter]
    rw [hinc]
    omega

theorem cost_init_loop_typed {a : AwE σ} {L : Locals → Prop}
    (hK : AwOK a) (hne : i ≠ keys) (hAv : ∀ m, L m → L (m.update (i, .val (.word 0))))
    {C : BitVec 64} {M B Bk : Nat} {body k : ProgHOL 64}
    (hM : M < 2 ^ 63) (hC : C.toNat < 2 ^ 63 → C.toNat ≤ M)
    (hb : Inv.CostP σ guestCtx (APre a L) body B)
    (hm : HoareG σ guestCtx (APre a L) body (AQ a L (fun _ => False)))
    (hstep : Steps σ i (· + 1) body) (hkeep : Keeps σ keys body)
    (hnc : NoCont σ body)
    (hk : Inv.CostP σ guestCtx (fun s => APre a L s ∧ CountEq (lengthExpr keys) C s) k Bk) :
    Inv.CostP σ guestCtx (fun s => APre a L s ∧ CountEq (lengthExpr keys) C s)
      (.seq (.assign .local i (.const 0))
        (.seq (.while (.cmp .less (.var .local i) (lengthExpr keys)) body) k))
      ((M + 1) * (B + 1) + Bk) := by
  have hwhile := typed_count_loop_cost hK hM hC hb hm hstep hkeep hnc
  have hwhileM : HoareG σ guestCtx (APre a L)
      (.while (.cmp .less (.var .local i) (lengthExpr keys)) body) (AQ a L (fun _ => False)) := by
    refine hoareG_whileA hK (J := L) (J' := L) ?_ (fun s _ h _ => h)
    exact hoareG_pre hm (fun s _ h => h.1)
  have hpost : Hoare σ guestCtx
      (fun s => APre a L s ∧ LoopInv i (lengthExpr keys) C M s)
      (.while (.cmp .less (.var .local i) (lengthExpr keys)) body)
      (fun r t => r = none → APre a L t ∧ CountEq (lengthExpr keys) C t) := by
    intro s hs hp ht hr
    exact ⟨(Frames.hoare_of_hoareG hwhileM s hs hp.1 ht).2.1 hr,
      (eval_length_eq ((keeps_while hkeep) s (Or.inl hr))).trans hp.2.1⟩
  have hinit : Hoare σ guestCtx (fun s => APre a L s ∧ CountEq (lengthExpr keys) C s)
      (.assign .local i (.const 0))
      (fun r t => r = none → APre a L t ∧ LoopInv i (lengthExpr keys) C M t) := by
    refine hoare_assign (fun s hs hp v hv hvalid _ => ?_)
    change some (.val (.word (0 : BitVec 64))) = some v at hv
    cases hv
    refine ⟨⟨awInv_same hK hp.1.1 rfl rfl rfl rfl, hAv _ hp.1.2⟩,
      ?_, 0, ?_, by simp⟩
    · exact preserveLength (t := s) hne hp.2
    · simp [setVarHOLFinite, FUPDATE]
  simpa only [Nat.zero_add] using
    (Inv.costP_seq (Inv.costP_of_cost (cost_assign .local i (.const 0))) hinit
      (Inv.costP_seq hwhile hpost hk))

#print axioms typed_count_loop_cost
#print axioms cost_init_loop_typed
end FourthEncoderTypedLoop
