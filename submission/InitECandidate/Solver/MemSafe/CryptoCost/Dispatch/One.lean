import InitECandidate.Solver.Band.Disp
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Band
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.CryptoCost.Dispatch.One
variable {σ : Type} {X : Ctx 64}
theorem normal_state {hs : List MlS} (p : ProgHOL 64) (hd : dchkB hs p = true)
    (s : State σ) (hctx : InCtx s X) (hn : (evaluateHOLFiniteState s p).1 = none) :
    (evaluateHOLFiniteState s p).2 = s := by
  have h := dchk_none (P := fun t => t = s) p hd s hctx rfl (by rw [hn]; trivial)
  exact h hn

theorem cost_seq_max {P : State σ → Prop} {a b : ProgHOL 64} {Ba Bb : Nat}
    (ha : Inv.CostP σ X P a Ba) (hb : Inv.CostP σ X P b Bb)
    (hzero : ∀ s, InCtx s X → P s → (evaluateHOLFiniteState s a).1 = none →
      (evaluateHOLFiniteState s a).2 = s) : Inv.CostP σ X P (.seq a b) (max Ba Bb) := by
  intro s hs hp hg
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)] at hg ⊢
  dsimp only at hg ⊢
  cases h1 : (evaluateHOLFiniteState s a).1 with
  | none =>
      simp only [h1] at hg ⊢
      have heq := hzero s hs hp h1
      rw [heq] at hg ⊢
      have h := hb s hs hp hg
      omega
  | some r =>
      simp only [h1] at hg ⊢
      have h := ha s hs hp (by rw [h1]; exact hg)
      omega
theorem dcost_one {hs : List MlS} {Pf : List (ValueHOL 64) → State σ → Prop} {B : Nat}
    (hf : ∀ f ∈ hs, Inv.CalleeCostP σ X f Pf B) {P : State σ → Prop}
    (hP : ∀ s, P s → ∀ vs callee, Pf vs (callEntryStateHOLFinite s callee)) :
    ∀ p : ProgHOL 64, dchkB hs p = true → Inv.CostP σ X P p (1 + B)
  | .skip, _ => (Inv.costP_of_cost cost_skip).mono (Nat.zero_le _)
  | .raise x e, _ => (Inv.costP_of_cost (cost_raise x e)).mono (Nat.zero_le _)
  | .seq p q, h => by
      simp only [dchkB, Bool.or_eq_true, Bool.and_eq_true] at h
      by_cases hc : isCR hs p q = true
      · obtain ⟨f, args, e, rfl, rfl, hfm⟩ := isCR_eq hc
        have h1 := Inv.costP_callD (P := P) (args := args) (hf f hfm)
          (fun s _ hs vs _ callee => hP s hs vs callee)
        have h2 := Inv.costP_seq (R := fun _ => True) h1 (fun _ _ _ _ _ => trivial)
          (Inv.costP_of_cost (cost_return e))
        refine h2.mono ?_
        omega
      · by_cases hr : isRaiseB p = true
        · obtain ⟨x, e, rfl⟩ := isRaiseB_eq hr
          exact (Inv.costP_seq (R := fun _ => False) (Bb := 0) (Inv.costP_of_cost (cost_raise x e))
            hoare_raise (fun _ _ h => h.elim)).mono (by omega)
        · have hpq : dchkB hs p = true ∧ dchkB hs q = true := by
            rcases h with (h | h) | h
            · exact absurd h hc
            · exact absurd h hr
            · exact h
          have ip := dcost_one hf hP p hpq.1
          have iq := dcost_one hf hP q hpq.2
          simpa only [Nat.max_self] using cost_seq_max ip iq (fun s hs hp hn => normal_state p hpq.1 s hs hn)
  | .ite c p q, h => by
      simp only [dchkB, Bool.and_eq_true] at h
      have ip := dcost_one hf hP p h.1
      have iq := dcost_one hf hP q h.2
      refine (Inv.costP_ite (c := c) (ip.pre fun _ _ h => h.1) (iq.pre fun _ _ h => h.1)).mono ?_
      omega
  | .dec _ _ _ _, h => by simp [dchkB] at h
  | .assign _ _ _, h => by simp [dchkB] at h
  | .primitive _ _ _, h => by simp [dchkB] at h
  | .store _ _, h => by simp [dchkB] at h
  | .store32 _ _, h => by simp [dchkB] at h
  | .storeByte _ _, h => by simp [dchkB] at h
  | .while _ _, h => by simp [dchkB] at h
  | .break, h => by simp [dchkB] at h
  | .continue, h => by simp [dchkB] at h
  | .call _ _ _, h => by simp [dchkB] at h
  | .decCall _ _ _ _ _, h => by simp [dchkB] at h
  | .extCall _ _ _ _ _, h => by simp [dchkB] at h
  | .return _, h => by simp [dchkB] at h
  | .shMemLoad _ _ _ _, h => by simp [dchkB] at h
  | .shMemStore _ _ _, h => by simp [dchkB] at h
  | .tick, h => by simp [dchkB] at h
  | .annot _ _, h => by simp [dchkB] at h


#print axioms dcost_one
end InitECandidate.Solver.MemSafe.CryptoCost.Dispatch.One
