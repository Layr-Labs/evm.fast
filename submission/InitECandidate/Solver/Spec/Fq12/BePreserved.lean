import InitECandidate.Solver.SourceCost.Basic

/-!
# Every source evaluation preserves the endianness flag `be`

Same clock-and-program induction as `SourceCost/CodePreserved.lean` (`code_preserved`).
Needed because byte loads read through `be`.
-/

namespace InitECandidate.Solver.Spec.Fq12
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost

variable {width : Nat} [NeZero width] {σ : Type}

theorem leafB_assign (s : PanSemStateFiniteExact width σ) k n e :
    (evaluateHOLFiniteState s (.assign k n e)).2.be = s.be := by cases k <;> leafcc
theorem leafB_prim (s : PanSemStateFiniteExact width σ) n o a :
    (evaluateHOLFiniteState s (.primitive n o a)).2.be = s.be := by leafcc
theorem leafB_store (s : PanSemStateFiniteExact width σ) a v :
    (evaluateHOLFiniteState s (.store a v)).2.be = s.be := by leafcc
theorem leafB_store32 (s : PanSemStateFiniteExact width σ) a v :
    (evaluateHOLFiniteState s (.store32 a v)).2.be = s.be := by leafcc
theorem leafB_storeB (s : PanSemStateFiniteExact width σ) a v :
    (evaluateHOLFiniteState s (.storeByte a v)).2.be = s.be := by leafcc
theorem leafB_ext (s : PanSemStateFiniteExact width σ) f a b c d :
    (evaluateHOLFiniteState s (.extCall f a b c d)).2.be = s.be := by leafcc
theorem leafB_raise (s : PanSemStateFiniteExact width σ) x e :
    (evaluateHOLFiniteState s (.raise x e)).2.be = s.be := by leafcc
theorem leafB_ret (s : PanSemStateFiniteExact width σ) e :
    (evaluateHOLFiniteState s (.return e)).2.be = s.be := by leafcc
theorem leafB_shl (s : PanSemStateFiniteExact width σ) o k n a :
    (evaluateHOLFiniteState s (.shMemLoad o k n a)).2.be = s.be := by cases k <;> leafcc
theorem leafB_shs (s : PanSemStateFiniteExact width σ) o a v :
    (evaluateHOLFiniteState s (.shMemStore o a v)).2.be = s.be := by
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  dsimp only
  split
  · simp only [ofExact]
    unfold shMemStoreHOLExact
    repeat' split
    all_goals rfl
  · rfl

/-- One clock level: assuming preservation for every strictly smaller clock. -/
theorem be_preserved_level (k : Nat)
    (ih : ∀ m < k, ∀ (p : ProgHOL width) (s : PanSemStateFiniteExact width σ), s.clock ≤ m →
      (evaluateHOLFiniteState s p).2.be = s.be) :
    ∀ (p : ProgHOL width) (s : PanSemStateFiniteExact width σ), s.clock ≤ k →
      (evaluateHOLFiniteState s p).2.be = s.be
  | .skip, s, _ => by rw [evaluateHOLFiniteState_eq_evaluate_def]
  | .break, s, _ => by rw [evaluateHOLFiniteState_eq_evaluate_def]
  | .continue, s, _ => by rw [evaluateHOLFiniteState_eq_evaluate_def]
  | .annot _ _, s, _ => by rw [evaluateHOLFiniteState_eq_evaluate_def]
  | .tick, s, _ => by rw [evaluateHOLFiniteState_tick]; split <;> rfl
  | .assign k' n e, s, _ => (leafB_assign s k' n e)
  | .primitive n o a, s, _ => (leafB_prim s n o a)
  | .store a v, s, _ => (leafB_store s a v)
  | .store32 a v, s, _ => (leafB_store32 s a v)
  | .storeByte a v, s, _ => (leafB_storeB s a v)
  | .extCall f a b c d, s, _ => (leafB_ext s f a b c d)
  | .raise x e, s, _ => (leafB_raise s x e)
  | .return e, s, _ => (leafB_ret s e)
  | .shMemLoad o k' n a, s, _ => (leafB_shl s o k' n a)
  | .shMemStore o a v, s, _ => (leafB_shs s o a v)
  | .seq a b, s, hk => by
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
      dsimp only
      have ha := be_preserved_level k ih a s hk
      split
      · have hc : (evaluateHOLFiniteState s a).2.clock ≤ k :=
          Nat.le_trans (evaluateHOLFiniteState_clock_le s a) hk
        rw [be_preserved_level k ih b _ hc, ha]
      · exact ha
  | .ite c a b, s, hk => by
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.ite c a b)]
      dsimp only
      split
      · split
        · exact be_preserved_level k ih b s hk
        · exact be_preserved_level k ih a s hk
      · rfl
  | .dec n sh e b, s, hk => by
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec n sh e b)]
      dsimp only
      split
      · rfl
      · split
        · exact be_preserved_level k ih b (setVarHOLFinite n _ s) hk
        · rfl
  | .while c b, s, hk => by
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.while c b)]
      dsimp only
      split
      · split
        · split
          · rfl
          · rename_i hclock
            have hd : (decClockHOLFinite s).clock < k := by
              simp only [decClockHOLFinite]; omega
            have hb := ih _ hd b (decClockHOLFinite s) (Nat.le_refl _)
            have hlt : (evaluateHOLFiniteState (decClockHOLFinite s) b).2.clock < k :=
              Nat.lt_of_le_of_lt (evaluateHOLFiniteState_clock_le _ b) hd
            split
            · rw [ih _ hlt (.while c b) _ (Nat.le_refl _), hb]; rfl
            · rw [ih _ hlt (.while c b) _ (Nat.le_refl _), hb]; rfl
            · exact hb
            · exact hb
        · rfl
      · rfl
  | .call info f args, s, hk => by
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.call info f args)]
      dsimp only
      split
      · rfl
      · split
        · rfl
        · rename_i body callee rs _
          split
          · rfl
          · rename_i hclock
            have hd : (callEntryStateHOLFinite s callee).clock < k := by
              simp only [callEntryStateHOLFinite]; omega
            have hb := ih _ hd body (callEntryStateHOLFinite s callee) (Nat.le_refl _)
            have hcl := evaluateHOLFiniteState_clock_le (callEntryStateHOLFinite s callee) body
            generalize hE : evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = E
              at hb hcl ⊢
            obtain ⟨r, st⟩ := E
            simp only [callEntryStateHOLFinite] at hb hcl
            have hst : st.clock < k := by omega
            rcases r with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev) <;> dsimp only
            all_goals (repeat' split)
            all_goals first
              | exact hb
              | (simp only [emptyLocalsHOLFinite]; exact hb)
              | (simp only [setKvarHOLFinite]; split <;> exact hb)
              | (rw [ih _ hst _ _ (by simp [setVarHOLFinite])]; exact hb)
  | .decCall rn sh f args cont, s, hk => by
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.decCall rn sh f args cont)]
      dsimp only
      split
      · rfl
      · split
        · rfl
        · rename_i body callee rs _
          split
          · rfl
          · rename_i hclock
            have hd : (callEntryStateHOLFinite s callee).clock < k := by
              simp only [callEntryStateHOLFinite]; omega
            have hb := ih _ hd body (callEntryStateHOLFinite s callee) (Nat.le_refl _)
            have hcl := evaluateHOLFiniteState_clock_le (callEntryStateHOLFinite s callee) body
            generalize hE : evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = E
              at hb hcl ⊢
            obtain ⟨r, st⟩ := E
            simp only [callEntryStateHOLFinite] at hb hcl
            have hst : st.clock < k := by omega
            rcases r with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev) <;> dsimp only
            all_goals (repeat' split)
            all_goals first
              | exact hb
              | (simp only [emptyLocalsHOLFinite]; exact hb)
              | (rw [ih _ hst _ _ (by simp [setVarHOLFinite])]; exact hb)

theorem be_preserved (s : PanSemStateFiniteExact width σ) (p : ProgHOL width) :
    (evaluateHOLFiniteState s p).2.be = s.be := by
  suffices H : ∀ k (p : ProgHOL width) (s : PanSemStateFiniteExact width σ), s.clock ≤ k →
      (evaluateHOLFiniteState s p).2.be = s.be from H _ p s (Nat.le_refl _)
  intro k
  induction k using Nat.strongRecOn with
  | _ k ih => exact be_preserved_level k ih


end InitECandidate.Solver.Spec.Fq12
