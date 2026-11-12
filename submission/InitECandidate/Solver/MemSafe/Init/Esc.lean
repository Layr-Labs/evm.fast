import InitECandidate.Solver.MemSafe.Init.Gw

/-!
# Init: programs without `return` / `break` / `continue` never end in them
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Init
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

def escFreeB : ProgHOL 64 → Bool
  | .return _ => false
  | .break => false
  | .continue => false
  | .dec _ _ _ b => escFreeB b
  | .seq a b => escFreeB a && escFreeB b
  | .ite _ a b => escFreeB a && escFreeB b
  | .while _ b => escFreeB b
  | .call none _ _ => false
  | .call (some (_, some _)) _ _ => false
  | .shMemLoad .. => false
  | .shMemStore .. => false
  | .decCall _ _ _ _ k => escFreeB k
  | _ => true

def NoEsc (r : Option (PanSemResultExact 64)) : Prop :=
  r ≠ some .break ∧ r ≠ some .continue ∧ ∀ v, r ≠ some (.returned v)

theorem noEsc_none : NoEsc (none : Option (PanSemResultExact 64)) := by simp [NoEsc]
theorem noEsc_error : NoEsc (some (.error : PanSemResultExact 64)) := by simp [NoEsc]

macro "escLeaf" : tactic => `(tactic| (
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  dsimp only
  repeat' split
  all_goals (first | exact noEsc_none | (simp [NoEsc]; done) | (simp_all; done))))

theorem noEsc_call_leaf (s : PanSemStateFiniteExact 64 σ) (tgt : Option (VarKind × MlS)) (f : MlS)
    (args : List (ExpHOL 64)) :
    NoEsc (evaluateHOLFiniteState s (.call (some (tgt, none)) f args)).1 := by
  rw [evaluateHOLFiniteState_eq_evaluate_def s _]
  dsimp only
  split
  · simp [NoEsc]
  · split
    · simp [NoEsc]
    · split
      · simp [NoEsc]
      · generalize evaluateHOLFiniteState (callEntryStateHOLFinite s _) _ = E
        obtain ⟨r, st⟩ := E
        rcases r with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev) <;> dsimp only
        all_goals (repeat' split)
        all_goals first | exact noEsc_none | (simp [NoEsc]; done) | (simp_all; done)

theorem noEsc_while {c : ExpHOL 64} {b : ProgHOL 64}
    (hb : ∀ s : PanSemStateFiniteExact 64 σ, NoEsc (evaluateHOLFiniteState s b).1) :
    ∀ s : PanSemStateFiniteExact 64 σ, NoEsc (evaluateHOLFiniteState s (.while c b)).1 := by
  suffices H : ∀ k (s : PanSemStateFiniteExact 64 σ), s.clock = k →
      NoEsc (evaluateHOLFiniteState s (.while c b)).1 from fun s => H _ s rfl
  intro k
  induction k using Nat.strongRecOn with
  | _ k ih =>
  intro s hk
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.while c b)]
  dsimp only
  split
  · split
    · split
      · simp [NoEsc]
      · rename_i hclock
        have hd : (decClockHOLFinite s).clock < k := by
          simp only [decClockHOLFinite]; omega
        have hlt : (evaluateHOLFiniteState (decClockHOLFinite s) b).2.clock < k :=
          Nat.lt_of_le_of_lt (evaluateHOLFiniteState_clock_le _ b) hd
        have hbb := hb (decClockHOLFinite s)
        generalize hE : evaluateHOLFiniteState (decClockHOLFinite s) b = E at hbb hlt
        obtain ⟨r, st⟩ := E
        dsimp only at hbb hlt ⊢
        rcases r with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev) <;> dsimp only
        all_goals first
          | exact ih _ hlt _ rfl
          | exact noEsc_none
          | (simp [NoEsc]; done)
          | exact absurd rfl hbb.1
          | exact absurd rfl hbb.2.1
          | exact absurd rfl (hbb.2.2 _)
    · exact noEsc_none
  · simp [NoEsc]

theorem noEsc_prog : ∀ (p : ProgHOL 64), escFreeB p = true →
    ∀ s : PanSemStateFiniteExact 64 σ, NoEsc (evaluateHOLFiniteState s p).1
  | .skip, _, s => by escLeaf
  | .break, h, _ => by simp [escFreeB] at h
  | .continue, h, _ => by simp [escFreeB] at h
  | .return _, h, _ => by simp [escFreeB] at h
  | .annot _ _, _, s => by escLeaf
  | .tick, _, s => by rw [evaluateHOLFiniteState_tick]; split <;> simp [NoEsc]
  | .assign k n e, _, s => by escLeaf
  | .primitive n o a, _, s => by escLeaf
  | .store a v, _, s => by escLeaf
  | .store32 a v, _, s => by escLeaf
  | .storeByte a v, _, s => by escLeaf
  | .extCall f a b c d, _, s => by escLeaf
  | .raise x e, _, s => by escLeaf
  | .shMemLoad o k n a, h, s => by simp [escFreeB] at h
  | .shMemStore o a v, h, s => by simp [escFreeB] at h
  | .seq a b, h, s => by
      simp only [escFreeB, Bool.and_eq_true] at h
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
      dsimp only
      have ha := noEsc_prog a h.1 s
      split
      · exact noEsc_prog b h.2 _
      · exact ha
  | .ite c a b, h, s => by
      simp only [escFreeB, Bool.and_eq_true] at h
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.ite c a b)]
      dsimp only
      split
      · split
        · exact noEsc_prog b h.2 s
        · exact noEsc_prog a h.1 s
      · simp [NoEsc]
  | .dec n sh e b, h, s => by
      simp only [escFreeB] at h
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec n sh e b)]
      dsimp only
      split
      · simp [NoEsc]
      · split
        · exact noEsc_prog b h _
        · simp [NoEsc]
  | .while c b, h, s => by
      simp only [escFreeB] at h
      exact noEsc_while (fun s' => noEsc_prog b h s') s
  | .call none f args, h, s => by simp [escFreeB] at h
  | .call (some (tgt, none)) f args, _, s => noEsc_call_leaf s tgt f args
  | .call (some (tgt, some (x, y, hp))) f args, h, s => by simp [escFreeB] at h
  | .decCall rn sh f args k, h, s => by
      simp only [escFreeB] at h
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.decCall rn sh f args k)]
      dsimp only
      split
      · simp [NoEsc]
      · split
        · simp [NoEsc]
        · split
          · simp [NoEsc]
          · generalize evaluateHOLFiniteState (callEntryStateHOLFinite s _) _ = E
            obtain ⟨r, st⟩ := E
            rcases r with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev) <;> dsimp only
            all_goals (repeat' split)
            all_goals first
              | exact noEsc_prog k h _
              | exact noEsc_none | (simp [NoEsc]; done) | (simp_all; done)

end InitECandidate.Solver.MemSafe.Init
