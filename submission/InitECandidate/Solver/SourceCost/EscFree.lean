import InitECandidate.Solver.SourceCost.OrbitChecks
import InitECandidate.Solver.SourceCost.CodePreserved

/-!
# Escape-free code

`EscFree σ C p`: from code map `C`, `p` never ends with an exception or a final FFI
event. Calls to escape-free functions (recorded by `ef`) therefore end only normally,
by an error, or by a time-out, so they cannot leave an enclosing loop.
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)

variable {width : Nat} [NeZero width] {σ : Type} {C : CodeMap width}

def NoEsc (r : Option (PanSemResultExact width)) : Prop :=
  (∀ e v, r ≠ some (.exception e v)) ∧ ∀ ev, r ≠ some (.finalFfi ev)

def EscFree (σ : Type) (C : CodeMap width) (p : ProgHOL width) : Prop :=
  ∀ s : PanSemStateFiniteExact width σ, s.code = C → NoEsc (evaluateHOLFiniteState s p).1

/-- `ef` marks functions whose bodies are escape-free. -/
def EfSound (σ : Type) (C : CodeMap width) (ef : MlS → Bool) : Prop :=
  ∀ f, ef f = true → ∀ values body callee rs,
    lookupCodeHOLFinite C.lookup f values = some (body, callee, rs) → EscFree σ C body

macro "escLeaf" : tactic => `(tactic| (
  intro s _
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  dsimp only
  repeat' split
  all_goals simp_all [NoEsc]))

theorem escFree_skip : EscFree σ C (.skip : ProgHOL width) := by escLeaf
theorem escFree_break : EscFree σ C (.break : ProgHOL width) := by escLeaf
theorem escFree_continue : EscFree σ C (.continue : ProgHOL width) := by escLeaf
theorem escFree_tick : EscFree σ C (.tick : ProgHOL width) := by escLeaf
theorem escFree_annot (x y : MlS) : EscFree σ C (.annot x y : ProgHOL width) := by escLeaf
theorem escFree_assign (k : VarKind) (n : MlS) (e : ExpHOL width) : EscFree σ C (.assign k n e) := by
  escLeaf
theorem escFree_primitive (n : MlS) (o : PrimOp) (a : List (ExpHOL width)) :
    EscFree σ C (.primitive n o a) := by escLeaf
theorem escFree_store (x y : ExpHOL width) : EscFree σ C (.store x y) := by escLeaf
theorem escFree_store32 (x y : ExpHOL width) : EscFree σ C (.store32 x y) := by escLeaf
theorem escFree_storeByte (x y : ExpHOL width) : EscFree σ C (.storeByte x y) := by escLeaf
theorem escFree_return (e : ExpHOL width) : EscFree σ C (.return e) := by escLeaf

theorem escFree_seq {a b : ProgHOL width} (ha : EscFree σ C a) (hb : EscFree σ C b) :
    EscFree σ C (.seq a b) := by
  intro s hs
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
  dsimp only
  cases h1 : (evaluateHOLFiniteState s a).1 with
  | none => exact hb _ ((code_preserved s a).trans hs)
  | some r => dsimp only; exact ha s hs

theorem escFree_ite {c : ExpHOL width} {a b : ProgHOL width} (ha : EscFree σ C a)
    (hb : EscFree σ C b) : EscFree σ C (.ite c a b) := by
  intro s hs
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.ite c a b)]
  dsimp only
  split
  · split
    · exact hb s hs
    · exact ha s hs
  · simp [NoEsc]

theorem escFree_dec {n : MlS} {sh : ShapeHOL} {e : ExpHOL width} {b : ProgHOL width}
    (hb : EscFree σ C b) : EscFree σ C (.dec n sh e b) := by
  intro s hs
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec n sh e b)]
  dsimp only
  split
  · simp [NoEsc]
  · split
    · exact hb _ (by simpa [setVarHOLFinite] using hs)
    · simp [NoEsc]

theorem escFree_while {c : ExpHOL width} {b : ProgHOL width} (hb : EscFree σ C b) :
    EscFree σ C (.while c b) := by
  suffices H : ∀ k (s : PanSemStateFiniteExact width σ), s.clock = k → s.code = C →
      NoEsc (evaluateHOLFiniteState s (.while c b)).1 from fun s hs => H _ s rfl hs
  intro k
  induction k using Nat.strongRecOn with
  | _ k ih =>
  intro s hk hs
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.while c b)]
  dsimp only
  split
  · split
    · split
      · simp [NoEsc]
      · have hlt : (evaluateHOLFiniteState (decClockHOLFinite s) b).2.clock < k := by
          have := evaluateHOLFiniteState_clock_le (decClockHOLFinite s) b
          simp only [decClockHOLFinite] at this ⊢
          omega
        have hc : (evaluateHOLFiniteState (decClockHOLFinite s) b).2.code = C :=
          (code_preserved _ b).trans hs
        have hbe := hb (decClockHOLFinite s) hs
        cases ho : (evaluateHOLFiniteState (decClockHOLFinite s) b).1 with
        | none => exact ih _ hlt _ rfl hc
        | some r =>
            rw [ho] at hbe
            cases r with
            | «continue» => exact ih _ hlt _ rfl hc
            | «break» => simp [NoEsc]
            | _ => exact hbe
    · simp [NoEsc]
  · simp [NoEsc]

theorem escFree_call {info : Option (Option (VarKind × MlS) × Option (MlS × MlS × ProgHOL width))}
    {f : MlS} {args : List (ExpHOL width)} {ef : MlS → Bool} (hef : EfSound σ C ef)
    (hf : ef f = true) : EscFree σ C (.call info f args) := by
  intro s hs
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.call info f args)]
  dsimp only
  split
  · simp [NoEsc]
  · rename_i values hvals
    rw [hs]
    split
    · simp [NoEsc]
    · rename_i body callee rs hlook
      split
      · simp [NoEsc]
      · have hbe := hef f hf values body callee rs hlook (callEntryStateHOLFinite s callee)
          (by simpa [callEntryStateHOLFinite] using hs)
        generalize hE : evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = E at hbe ⊢
        obtain ⟨r, st⟩ := E
        simp only at hbe
        rcases r with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev) <;> dsimp only
        all_goals (repeat' split)
        all_goals simp_all [NoEsc]

theorem escFree_decCall {rn f : MlS} {sh : ShapeHOL} {args : List (ExpHOL width)}
    {k : ProgHOL width} {ef : MlS → Bool} (hef : EfSound σ C ef) (hf : ef f = true)
    (hk : EscFree σ C k) : EscFree σ C (.decCall rn sh f args k) := by
  intro s hs
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.decCall rn sh f args k)]
  dsimp only
  split
  · simp [NoEsc]
  · rename_i values hvals
    rw [hs]
    split
    · simp [NoEsc]
    · rename_i body callee rs hlook
      split
      · simp [NoEsc]
      · have hbe := hef f hf values body callee rs hlook (callEntryStateHOLFinite s callee)
          (by simpa [callEntryStateHOLFinite] using hs)
        have hcp := code_preserved (callEntryStateHOLFinite s callee) body
        generalize hE : evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = E
          at hbe hcp ⊢
        obtain ⟨r, st⟩ := E
        simp only [callEntryStateHOLFinite] at hbe hcp
        rcases r with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev) <;> dsimp only
        all_goals (repeat' split)
        all_goals first
          | (simp_all [NoEsc]; done)
          | exact hk _ (by simp [setVarHOLFinite]; exact hcp.trans hs)

def escFreeB (ef : MlS → Bool) : ProgHOL width → Bool
  | .raise _ _ | .extCall _ _ _ _ _ | .shMemLoad _ _ _ _ | .shMemStore _ _ _ => false
  | .seq a b => escFreeB ef a && escFreeB ef b
  | .ite _ a b => escFreeB ef a && escFreeB ef b
  | .dec _ _ _ b => escFreeB ef b
  | .while _ b => escFreeB ef b
  | .call _ f _ => ef f
  | .decCall _ _ f _ k => ef f && escFreeB ef k
  | _ => true

theorem escFreeB_sound {ef : MlS → Bool} (hef : EfSound σ C ef) :
    ∀ p : ProgHOL width, escFreeB ef p = true → EscFree σ C p
  | .skip, _ => escFree_skip
  | .break, _ => escFree_break
  | .continue, _ => escFree_continue
  | .tick, _ => escFree_tick
  | .annot _ _, _ => escFree_annot _ _
  | .assign _ _ _, _ => escFree_assign _ _ _
  | .primitive _ _ _, _ => escFree_primitive _ _ _
  | .store _ _, _ => escFree_store _ _
  | .store32 _ _, _ => escFree_store32 _ _
  | .storeByte _ _, _ => escFree_storeByte _ _
  | .return _, _ => escFree_return _
  | .raise _ _, h | .extCall _ _ _ _ _, h | .shMemLoad _ _ _ _, h | .shMemStore _ _ _, h => by
      simp [escFreeB] at h
  | .seq a b, h => by
      simp only [escFreeB, Bool.and_eq_true] at h
      exact escFree_seq (escFreeB_sound hef a h.1) (escFreeB_sound hef b h.2)
  | .ite _ a b, h => by
      simp only [escFreeB, Bool.and_eq_true] at h
      exact escFree_ite (escFreeB_sound hef a h.1) (escFreeB_sound hef b h.2)
  | .dec _ _ _ b, h => escFree_dec (escFreeB_sound hef b h)
  | .while _ b, h => escFree_while (escFreeB_sound hef b h)
  | .call _ _ _, h => escFree_call hef h
  | .decCall _ _ _ _ k, h => by
      simp only [escFreeB, Bool.and_eq_true] at h
      exact escFree_decCall hef h.1 (escFreeB_sound hef k h.2)

end InitECandidate.Solver.SourceCost
