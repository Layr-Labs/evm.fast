import InitECandidate.Solver.Spec.GlobalFree

/-!
# A memory-write footprint checker; loads and stores in the Hoare layer

`mwFreeB S p`: `p` has no `st`, `st32`, `st8`, external call or shared-memory store, and
calls only functions in `S` (handlers checked too). `MwClosed S C`: every code entry of a
function in `S` passes. `mw_preserved`: a checked program leaves `memory` unchanged,
whatever its result; `funSpec_mw`: the state-relational spec "final memory = entry
memory" for `f ∈ S`. Same clock-and-program induction as `GlobalFree.lean`.

Loads and stores: `ev_load_one` (a one-word load reads `memory` at an address of the
domain), `hoare_store` (a word store updates `memory` through `panMemStoresHOL`).
-/

namespace InitECandidate.Solver.Spec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost

variable {σ : Type}

/-- `p` writes no memory and calls only functions in `S`. -/
def mwFreeB (S : List MlS) : ProgHOL 64 → Bool
  | .store _ _ | .store32 _ _ | .storeByte _ _ | .extCall _ _ _ _ _ | .shMemStore _ _ _ => false
  | .dec _ _ _ b => mwFreeB S b
  | .seq a b => mwFreeB S a && mwFreeB S b
  | .ite _ a b => mwFreeB S a && mwFreeB S b
  | .while _ b => mwFreeB S b
  | .call none f _ => S.contains f
  | .call (some (_, none)) f _ => S.contains f
  | .call (some (_, some (_, _, hp))) f _ => S.contains f && mwFreeB S hp
  | .decCall _ _ f _ k => S.contains f && mwFreeB S k
  | _ => true

def MwClosed (S : List MlS)
    (C : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)) : Prop :=
  ∀ f, S.contains f = true → ∀ ps b rs, C f = some (ps, b, rs) → mwFreeB S b = true

macro "mwLeaf" : tactic => `(tactic| (
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  dsimp only
  repeat' split
  all_goals (first | rfl | skip)))

theorem mw_assign (s : PanSemStateFiniteExact 64 σ) (k : VarKind) (n : MlS) (e : ExpHOL 64) :
    (evaluateHOLFiniteState s (.assign k n e)).2.memory = s.memory := by
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  dsimp only
  split
  · rfl
  · split
    · cases k <;> rfl
    · rfl

theorem mw_prim (s : PanSemStateFiniteExact 64 σ) n o a :
    (evaluateHOLFiniteState s (.primitive n o a)).2.memory = s.memory := by mwLeaf

theorem mw_raise (s : PanSemStateFiniteExact 64 σ) x e :
    (evaluateHOLFiniteState s (.raise x e)).2.memory = s.memory := by mwLeaf

theorem mw_ret (s : PanSemStateFiniteExact 64 σ) e :
    (evaluateHOLFiniteState s (.return e)).2.memory = s.memory := by mwLeaf

theorem mw_shl (s : PanSemStateFiniteExact 64 σ) o (k : VarKind) (n : MlS) a :
    (evaluateHOLFiniteState s (.shMemLoad o k n a)).2.memory = s.memory := by
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  dsimp only
  split
  · split
    · dsimp only
      unfold shMemLoadHOLFiniteExact
      repeat' split
      all_goals first
        | rfl
        | (cases k <;> rfl)
    · rfl
  · rfl

theorem mw_callee {S : List MlS}
    {C : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)} (hS : MwClosed S C)
    {k : Nat}
    (ih : ∀ m < k, ∀ (p : ProgHOL 64) (s : PanSemStateFiniteExact 64 σ), mwFreeB S p = true →
      s.code.lookup = C → s.clock ≤ m → (evaluateHOLFiniteState s p).2.memory = s.memory)
    {s : PanSemStateFiniteExact 64 σ} {f : MlS} {vs : List (ValueHOL 64)} {body : ProgHOL 64}
    {callee : HolFiniteMapExact MlS (ValueHOL 64)} {rs : ShapeHOL} (hc : s.code.lookup = C)
    (hf : S.contains f = true)
    (hlook : lookupCodeHOLFinite s.code.lookup f vs = some (body, callee, rs))
    (hclock : ¬ s.clock = 0) (hk : s.clock ≤ k) :
    (evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body).2.memory = s.memory ∧
      (evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body).2.clock < k ∧
      (evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body).2.code.lookup = C := by
  rw [hc] at hlook
  obtain ⟨ps, hcode⟩ := lookupCode_some' hlook
  have hd : (callEntryStateHOLFinite s callee).clock < k := by
    simp only [callEntryStateHOLFinite]; omega
  refine ⟨ih _ hd body _ (hS f hf ps body rs hcode) hc (Nat.le_refl _), ?_, ?_⟩
  · exact Nat.lt_of_le_of_lt (evaluateHOLFiniteState_clock_le _ body) hd
  · rw [code_preserved]; exact hc

theorem mw_level {S : List MlS}
    {C : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)} (hS : MwClosed S C)
    (k : Nat)
    (ih : ∀ m < k, ∀ (p : ProgHOL 64) (s : PanSemStateFiniteExact 64 σ), mwFreeB S p = true →
      s.code.lookup = C → s.clock ≤ m → (evaluateHOLFiniteState s p).2.memory = s.memory) :
    ∀ (p : ProgHOL 64) (s : PanSemStateFiniteExact 64 σ), mwFreeB S p = true →
      s.code.lookup = C → s.clock ≤ k → (evaluateHOLFiniteState s p).2.memory = s.memory
  | .skip, s, _, _, _ => by rw [evaluateHOLFiniteState_eq_evaluate_def]
  | .break, s, _, _, _ => by rw [evaluateHOLFiniteState_eq_evaluate_def]
  | .continue, s, _, _, _ => by rw [evaluateHOLFiniteState_eq_evaluate_def]
  | .annot _ _, s, _, _, _ => by rw [evaluateHOLFiniteState_eq_evaluate_def]
  | .tick, s, _, _, _ => by rw [evaluateHOLFiniteState_tick]; split <;> rfl
  | .assign k' n e, s, _, _, _ => mw_assign s k' n e
  | .primitive n o a, s, _, _, _ => mw_prim s n o a
  | .store _ _, _, hp, _, _ => by simp [mwFreeB] at hp
  | .store32 _ _, _, hp, _, _ => by simp [mwFreeB] at hp
  | .storeByte _ _, _, hp, _, _ => by simp [mwFreeB] at hp
  | .extCall _ _ _ _ _, _, hp, _, _ => by simp [mwFreeB] at hp
  | .shMemStore _ _ _, _, hp, _, _ => by simp [mwFreeB] at hp
  | .raise x e, s, _, _, _ => mw_raise s x e
  | .return e, s, _, _, _ => mw_ret s e
  | .shMemLoad o k' n a, s, _, _, _ => mw_shl s o k' n a
  | .seq a b, s, hp, hc, hk => by
      simp only [mwFreeB, Bool.and_eq_true] at hp
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
      dsimp only
      have ha := mw_level hS k ih a s hp.1 hc hk
      split
      · have hc' : (evaluateHOLFiniteState s a).2.clock ≤ k :=
          Nat.le_trans (evaluateHOLFiniteState_clock_le s a) hk
        have hcode : (evaluateHOLFiniteState s a).2.code.lookup = C := by
          rw [code_preserved]; exact hc
        rw [mw_level hS k ih b _ hp.2 hcode hc', ha]
      · exact ha
  | .ite c a b, s, hp, hc, hk => by
      simp only [mwFreeB, Bool.and_eq_true] at hp
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.ite c a b)]
      dsimp only
      split
      · split
        · exact mw_level hS k ih b s hp.2 hc hk
        · exact mw_level hS k ih a s hp.1 hc hk
      · rfl
  | .dec n sh e b, s, hp, hc, hk => by
      simp only [mwFreeB] at hp
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec n sh e b)]
      dsimp only
      split
      · rfl
      · split
        · exact mw_level hS k ih b (setVarHOLFinite n _ s) hp hc hk
        · rfl
  | .while c b, s, hp, hc, hk => by
      simp only [mwFreeB] at hp
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.while c b)]
      dsimp only
      split
      · split
        · split
          · rfl
          · rename_i hclock
            have hd : (decClockHOLFinite s).clock < k := by
              simp only [decClockHOLFinite]; omega
            have hb := ih _ hd b (decClockHOLFinite s) hp hc (Nat.le_refl _)
            have hlt : (evaluateHOLFiniteState (decClockHOLFinite s) b).2.clock < k :=
              Nat.lt_of_le_of_lt (evaluateHOLFiniteState_clock_le _ b) hd
            have hcode : (evaluateHOLFiniteState (decClockHOLFinite s) b).2.code.lookup = C := by
              rw [code_preserved]; exact hc
            have hw : mwFreeB S (.while c b) = true := hp
            split
            · rw [ih _ hlt (.while c b) _ hw hcode (Nat.le_refl _), hb]; rfl
            · rw [ih _ hlt (.while c b) _ hw hcode (Nat.le_refl _), hb]; rfl
            · exact hb
            · exact hb
        · rfl
      · rfl
  | .call none f args, s, hp, hc, hk => by
      simp only [mwFreeB] at hp
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.call none f args)]
      dsimp only
      split
      · rfl
      · split
        · rfl
        · rename_i body callee rs hlook
          split
          · rfl
          · rename_i hclock
            obtain ⟨hbm, -, -⟩ := mw_callee hS ih hc hp hlook hclock hk
            generalize evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = E at hbm ⊢
            obtain ⟨r, st⟩ := E
            rcases r with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev) <;> dsimp only
            all_goals (repeat' split)
            all_goals exact hbm
  | .call (some (tgt, none)) f args, s, hp, hc, hk => by
      simp only [mwFreeB] at hp
      rcases tgt with _ | ⟨kk, nn⟩
      all_goals
        rw [evaluateHOLFiniteState_eq_evaluate_def s _]
        dsimp only
        split
        · rfl
        · split
          · rfl
          · rename_i body callee rs hlook
            split
            · rfl
            · rename_i hclock
              obtain ⟨hbm, -, -⟩ := mw_callee hS ih hc hp hlook hclock hk
              generalize evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = E
                at hbm ⊢
              obtain ⟨r, st⟩ := E
              dsimp only at hbm
              rcases r with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev) <;> dsimp only
              all_goals (repeat' split)
              all_goals first
                | exact hbm
                | (cases kk <;> exact hbm)
  | .call (some (tgt, some (eid, hv, hpr))) f args, s, hp, hc, hk => by
      simp only [mwFreeB, Bool.and_eq_true] at hp
      obtain ⟨hf, hhp⟩ := hp
      rcases tgt with _ | ⟨kk, nn⟩
      all_goals
        rw [evaluateHOLFiniteState_eq_evaluate_def s _]
        dsimp only
        split
        · rfl
        · split
          · rfl
          · rename_i body callee rs hlook
            split
            · rfl
            · rename_i hclock
              obtain ⟨hbm, hst, hcode⟩ := mw_callee hS ih hc hf hlook hclock hk
              generalize evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = E
                at hbm hst hcode ⊢
              obtain ⟨r, st⟩ := E
              dsimp only at hbm hst hcode
              rcases r with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev) <;> dsimp only
              all_goals (repeat' split)
              all_goals first
                | exact hbm
                | (cases kk <;> exact hbm)
                | exact (ih st.clock hst hpr (setVarHOLFinite hv v { st with locals := s.locals })
                    hhp hcode (Nat.le_refl _)).trans hbm
  | .decCall rn sh f args cont, s, hp, hc, hk => by
      simp only [mwFreeB, Bool.and_eq_true] at hp
      obtain ⟨hf, hk'⟩ := hp
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.decCall rn sh f args cont)]
      dsimp only
      split
      · rfl
      · split
        · rfl
        · rename_i body callee rs hlook
          split
          · rfl
          · rename_i hclock
            obtain ⟨hbm, hst, hcode⟩ := mw_callee hS ih hc hf hlook hclock hk
            generalize evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = E
              at hbm hst hcode ⊢
            obtain ⟨r, st⟩ := E
            dsimp only at hbm hst hcode
            rcases r with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev) <;> dsimp only
            all_goals (repeat' split)
            all_goals first
              | exact hbm
              | exact (ih st.clock hst cont (setVarHOLFinite rn v { st with locals := s.locals })
                  hk' hcode (Nat.le_refl _)).trans hbm

/-- A checked program writes no memory, from any state with code map `C`. -/
theorem mw_preserved {S : List MlS}
    {C : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)} (hS : MwClosed S C)
    (p : ProgHOL 64) (s : PanSemStateFiniteExact 64 σ) (hp : mwFreeB S p = true)
    (hc : s.code.lookup = C) : (evaluateHOLFiniteState s p).2.memory = s.memory := by
  suffices H : ∀ k (p : ProgHOL 64) (s : PanSemStateFiniteExact 64 σ), mwFreeB S p = true →
      s.code.lookup = C → s.clock ≤ k → (evaluateHOLFiniteState s p).2.memory = s.memory from
    H _ p s hp hc (Nat.le_refl _)
  intro k
  induction k using Nat.strongRecOn with
  | _ k ih => exact mw_level hS k ih

/-- **Footprint spec.** A function of a closed checked set writes no memory. -/
theorem funSpec_mw {X : Ctx 64} {S : List MlS} (hS : MwClosed S X.code.lookup) {f : MlS}
    (hf : S.contains f = true) : FunSpec σ X f (fun _ s _ t => t.memory = s.memory) := by
  intro vs body callee rs hl s hs _ r _
  obtain ⟨ps, hcode⟩ := lookupCode_some' hl
  exact mw_preserved hS body s (hS f hf ps body rs hcode) (by rw [hs.1])

/-! ## Loads and stores -/

/-- A one-word load reads `memory` at an address of the domain. -/
theorem ev_load_one {s : PanSemStateFiniteExact 64 σ} {a : ExpHOL 64} {v : ValueHOL 64}
    (h : ev s (.load .one a) = some v) :
    ∃ w, ev s a = some (.val (.word w)) ∧ s.memaddrs w ∧ v = .val (s.memory w) := by
  simp only [ev, evalHOLExact] at h ⊢
  split at h
  · split at h
    · rename_i w hw
      simp only [memLoadHOLExact] at h
      split at h
      · rename_i hd
        exact ⟨w, hw, hd, (Option.some.inj h).symm⟩
      · simp at h
    · simp at h
  · simp at h

/-- The value of a one-word load at an address of the domain. -/
theorem ev_load_one_of {s : PanSemStateFiniteExact 64 σ} {a : ExpHOL 64} {w : BitVec 64}
    (ha : ev s a = some (.val (.word w))) (hd : s.memaddrs w) :
    ev s (.load .one a) = some (.val (s.memory w)) := by
  simp only [ev, evalHOLExact] at ha ⊢
  rw [if_pos (by rfl), ha]
  simp only [memLoadHOLExact]
  rw [if_pos hd]

/-- A store: the post sees the memory `panMemStoresHOL` produces. -/
theorem hoare_store {X : Ctx 64} {P : PanSemStateFiniteExact 64 σ → Prop}
    {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop}
    {a e : ExpHOL 64}
    (h : ∀ s, InCtx s X → P s → ∀ w v mem, ev s a = some (.val (.word w)) → ev s e = some v →
      @panMemStoresHOL 64 _ w (flattenHOL v) s.memaddrs
        (fun x => Classical.propDecidable (s.memaddrs x)) s.memory = some mem →
      Q none { s with memory := mem }) :
    Hoare σ X P (.store a e) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.store a e)]
  dsimp only
  split
  · rename_i w hw
    split
    · rename_i v hv
      split
      · rename_i mem hmem
        intro _
        exact h s hs hp w v mem hw hv hmem
      · intro ht; exact absurd ht (by simp)
    · intro ht; exact absurd ht (by simp)
  · intro ht; exact absurd ht (by simp)

end InitECandidate.Solver.Spec
