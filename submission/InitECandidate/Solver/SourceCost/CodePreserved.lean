import InitECandidate.Solver.SourceCost.Basic

/-!
# Every source evaluation preserves the code map and both memory domains
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)

variable {width : Nat} [NeZero width] {σ : Type}

macro "codeTail" : tactic => `(tactic| (
  repeat' split
  all_goals (try simp only [emptyLocalsHOLFinite, setKvarHOLFinite, setVarHOLFinite,
    setGlobalHOLFinite, decClockHOLFinite, callEntryStateHOLFinite])
  all_goals (try split)
  all_goals (first | rfl | assumption | (simp_all; done) | skip)))

/-- One clock level: assuming preservation for every strictly smaller clock. -/
theorem code_preserved_level (k : Nat)
    (ih : ∀ m < k, ∀ (p : ProgHOL width) (s : PanSemStateFiniteExact width σ), s.clock ≤ m →
      (evaluateHOLFiniteState s p).2.code = s.code) :
    ∀ (p : ProgHOL width) (s : PanSemStateFiniteExact width σ), s.clock ≤ k →
      (evaluateHOLFiniteState s p).2.code = s.code
  | .skip, s, _ => by rw [evaluateHOLFiniteState_eq_evaluate_def]
  | .break, s, _ => by rw [evaluateHOLFiniteState_eq_evaluate_def]
  | .continue, s, _ => by rw [evaluateHOLFiniteState_eq_evaluate_def]
  | .annot _ _, s, _ => by rw [evaluateHOLFiniteState_eq_evaluate_def]
  | .tick, s, _ => by rw [evaluateHOLFiniteState_tick]; split <;> rfl
  | .assign k' n e, s, _ => (leaf_assign s k' n e).2
  | .primitive n o a, s, _ => (leaf_prim s n o a).2
  | .store a v, s, _ => (leaf_store s a v).2
  | .store32 a v, s, _ => (leaf_store32 s a v).2
  | .storeByte a v, s, _ => (leaf_storeB s a v).2
  | .extCall f a b c d, s, _ => (leaf_ext s f a b c d).2
  | .raise x e, s, _ => (leaf_raise s x e).2
  | .return e, s, _ => (leaf_ret s e).2
  | .shMemLoad o k' n a, s, _ => (leaf_shl s o k' n a).2
  | .shMemStore o a v, s, _ => (leaf_shs s o a v).2
  | .seq a b, s, hk => by
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
      dsimp only
      have ha := code_preserved_level k ih a s hk
      split
      · have hc : (evaluateHOLFiniteState s a).2.clock ≤ k :=
          Nat.le_trans (evaluateHOLFiniteState_clock_le s a) hk
        rw [code_preserved_level k ih b _ hc, ha]
      · exact ha
  | .ite c a b, s, hk => by
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.ite c a b)]
      dsimp only
      split
      · split
        · exact code_preserved_level k ih b s hk
        · exact code_preserved_level k ih a s hk
      · rfl
  | .dec n sh e b, s, hk => by
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec n sh e b)]
      dsimp only
      split
      · rfl
      · split
        · exact code_preserved_level k ih b (setVarHOLFinite n _ s) hk
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

theorem code_preserved (s : PanSemStateFiniteExact width σ) (p : ProgHOL width) :
    (evaluateHOLFiniteState s p).2.code = s.code := by
  suffices H : ∀ k (p : ProgHOL width) (s : PanSemStateFiniteExact width σ), s.clock ≤ k →
      (evaluateHOLFiniteState s p).2.code = s.code from H _ p s (Nat.le_refl _)
  intro k
  induction k using Nat.strongRecOn with
  | _ k ih => exact code_preserved_level k ih

/-- One clock level of `memaddrs_preserved`. -/
theorem memaddrs_preserved_level (k : Nat)
    (ih : ∀ m < k, ∀ (p : ProgHOL width) (s : PanSemStateFiniteExact width σ), s.clock ≤ m →
      (evaluateHOLFiniteState s p).2.memaddrs = s.memaddrs) :
    ∀ (p : ProgHOL width) (s : PanSemStateFiniteExact width σ), s.clock ≤ k →
      (evaluateHOLFiniteState s p).2.memaddrs = s.memaddrs
  | .skip, s, _ => by rw [evaluateHOLFiniteState_eq_evaluate_def]
  | .break, s, _ => by rw [evaluateHOLFiniteState_eq_evaluate_def]
  | .continue, s, _ => by rw [evaluateHOLFiniteState_eq_evaluate_def]
  | .annot _ _, s, _ => by rw [evaluateHOLFiniteState_eq_evaluate_def]
  | .tick, s, _ => by rw [evaluateHOLFiniteState_tick]; split <;> rfl
  | .assign k' n e, s, _ => (leafD_assign s k' n e).1
  | .primitive n o a, s, _ => (leafD_prim s n o a).1
  | .store a v, s, _ => (leafD_store s a v).1
  | .store32 a v, s, _ => (leafD_store32 s a v).1
  | .storeByte a v, s, _ => (leafD_storeB s a v).1
  | .extCall f a b c d, s, _ => (leafD_ext s f a b c d).1
  | .raise x e, s, _ => (leafD_raise s x e).1
  | .return e, s, _ => (leafD_ret s e).1
  | .shMemLoad o k' n a, s, _ => (leafD_shl s o k' n a).1
  | .shMemStore o a v, s, _ => (leafD_shs s o a v).1
  | .seq a b, s, hk => by
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
      dsimp only
      have ha := memaddrs_preserved_level k ih a s hk
      split
      · have hc : (evaluateHOLFiniteState s a).2.clock ≤ k :=
          Nat.le_trans (evaluateHOLFiniteState_clock_le s a) hk
        rw [memaddrs_preserved_level k ih b _ hc, ha]
      · exact ha
  | .ite c a b, s, hk => by
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.ite c a b)]
      dsimp only
      split
      · split
        · exact memaddrs_preserved_level k ih b s hk
        · exact memaddrs_preserved_level k ih a s hk
      · rfl
  | .dec n sh e b, s, hk => by
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec n sh e b)]
      dsimp only
      split
      · rfl
      · split
        · exact memaddrs_preserved_level k ih b (setVarHOLFinite n _ s) hk
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

theorem memaddrs_preserved (s : PanSemStateFiniteExact width σ) (p : ProgHOL width) :
    (evaluateHOLFiniteState s p).2.memaddrs = s.memaddrs := by
  suffices H : ∀ k (p : ProgHOL width) (s : PanSemStateFiniteExact width σ), s.clock ≤ k →
      (evaluateHOLFiniteState s p).2.memaddrs = s.memaddrs from H _ p s (Nat.le_refl _)
  intro k
  induction k using Nat.strongRecOn with
  | _ k ih => exact memaddrs_preserved_level k ih

/-- One clock level of `shMemaddrs_preserved`. -/
theorem shMemaddrs_preserved_level (k : Nat)
    (ih : ∀ m < k, ∀ (p : ProgHOL width) (s : PanSemStateFiniteExact width σ), s.clock ≤ m →
      (evaluateHOLFiniteState s p).2.shMemaddrs = s.shMemaddrs) :
    ∀ (p : ProgHOL width) (s : PanSemStateFiniteExact width σ), s.clock ≤ k →
      (evaluateHOLFiniteState s p).2.shMemaddrs = s.shMemaddrs
  | .skip, s, _ => by rw [evaluateHOLFiniteState_eq_evaluate_def]
  | .break, s, _ => by rw [evaluateHOLFiniteState_eq_evaluate_def]
  | .continue, s, _ => by rw [evaluateHOLFiniteState_eq_evaluate_def]
  | .annot _ _, s, _ => by rw [evaluateHOLFiniteState_eq_evaluate_def]
  | .tick, s, _ => by rw [evaluateHOLFiniteState_tick]; split <;> rfl
  | .assign k' n e, s, _ => (leafD_assign s k' n e).2
  | .primitive n o a, s, _ => (leafD_prim s n o a).2
  | .store a v, s, _ => (leafD_store s a v).2
  | .store32 a v, s, _ => (leafD_store32 s a v).2
  | .storeByte a v, s, _ => (leafD_storeB s a v).2
  | .extCall f a b c d, s, _ => (leafD_ext s f a b c d).2
  | .raise x e, s, _ => (leafD_raise s x e).2
  | .return e, s, _ => (leafD_ret s e).2
  | .shMemLoad o k' n a, s, _ => (leafD_shl s o k' n a).2
  | .shMemStore o a v, s, _ => (leafD_shs s o a v).2
  | .seq a b, s, hk => by
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
      dsimp only
      have ha := shMemaddrs_preserved_level k ih a s hk
      split
      · have hc : (evaluateHOLFiniteState s a).2.clock ≤ k :=
          Nat.le_trans (evaluateHOLFiniteState_clock_le s a) hk
        rw [shMemaddrs_preserved_level k ih b _ hc, ha]
      · exact ha
  | .ite c a b, s, hk => by
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.ite c a b)]
      dsimp only
      split
      · split
        · exact shMemaddrs_preserved_level k ih b s hk
        · exact shMemaddrs_preserved_level k ih a s hk
      · rfl
  | .dec n sh e b, s, hk => by
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec n sh e b)]
      dsimp only
      split
      · rfl
      · split
        · exact shMemaddrs_preserved_level k ih b (setVarHOLFinite n _ s) hk
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

theorem shMemaddrs_preserved (s : PanSemStateFiniteExact width σ) (p : ProgHOL width) :
    (evaluateHOLFiniteState s p).2.shMemaddrs = s.shMemaddrs := by
  suffices H : ∀ k (p : ProgHOL width) (s : PanSemStateFiniteExact width σ), s.clock ≤ k →
      (evaluateHOLFiniteState s p).2.shMemaddrs = s.shMemaddrs from H _ p s (Nat.le_refl _)
  intro k
  induction k using Nat.strongRecOn with
  | _ k ih => exact shMemaddrs_preserved_level k ih

/-- Every evaluation keeps both memory domains. -/
theorem domains_preserved (s : PanSemStateFiniteExact width σ) (p : ProgHOL width) :
    (evaluateHOLFiniteState s p).2.memaddrs = s.memaddrs ∧
      (evaluateHOLFiniteState s p).2.shMemaddrs = s.shMemaddrs :=
  ⟨memaddrs_preserved s p, shMemaddrs_preserved s p⟩

/-- Every evaluation stays in the context of its initial state. -/
theorem inCtx_eval {X : Ctx width} {s : PanSemStateFiniteExact width σ} (hs : InCtx s X)
    (p : ProgHOL width) : InCtx (evaluateHOLFiniteState s p).2 X :=
  hs.of_eq (code_preserved s p) (memaddrs_preserved s p) (shMemaddrs_preserved s p)

end InitECandidate.Solver.SourceCost
