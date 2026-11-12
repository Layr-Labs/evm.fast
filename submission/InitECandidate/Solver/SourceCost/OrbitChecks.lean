import InitECandidate.Solver.SourceCost.OrbitLoop
import InitECandidate.Solver.SourceCost.Checkers

/-!
# Checkers for the orbit loop rule

`stepsWithB` (counter updated by a recognised assignment on the body spine) and
`onlyExitsB` (the body ends only normally, by `continue`, or — inside nested loops —
by `break`; errors and time-outs are always allowed).
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)

variable {width : Nat} [NeZero width] {σ : Type}

theorem steps_add_const (i : MlS) (k : BitVec width) :
    Steps σ i (· + k) (.assign .local i (.op .add [.var .local i, .const k]) : ProgHOL width) := by
  intro s v hv _
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  simp [evalHOLExact, evalListHOLExact, hv, wordOpHOL, wordOp, valueIsWord, valueWord,
    isValidValueHOLFinite, lookupKvarHOLFinite, setKvarHOLFinite, shapeOfHOLExact, shapeEqHOL,
    setVarHOLFinite, FUPDATE]

def stepsWithB (i : MlS) (ok : ExpHOL width → Bool) : ProgHOL width → Bool
  | .assign .local j e => decide (j = i) && ok e
  | .seq a b =>
      (stepsWithB i ok a && keepsB i b) || (keepsB i a && noContB a && stepsWithB i ok b)
  | .dec n _ _ b => decide (n ≠ i) && stepsWithB i ok b
  | .decCall rn _ _ _ k => decide (rn ≠ i) && stepsWithB i ok k
  | _ => false

theorem stepsWithB_sound {i : MlS} {ok : ExpHOL width → Bool} {g : BitVec width → BitVec width}
    (hok : ∀ e, ok e = true → Steps σ i g (.assign .local i e)) :
    ∀ p : ProgHOL width, stepsWithB i ok p = true → Steps σ i g p
  | .assign .local j e, h => by
      simp only [stepsWithB, Bool.and_eq_true, decide_eq_true_eq] at h
      obtain ⟨rfl, h⟩ := h
      exact hok e h
  | .seq a b, h => by
      simp only [stepsWithB, Bool.or_eq_true, Bool.and_eq_true] at h
      rcases h with ⟨ha, hb⟩ | ⟨⟨ha, hc⟩, hb⟩
      · exact steps_seq_left (stepsWithB_sound hok a ha) (keepsB_sound i b hb)
      · exact steps_seq_right (keepsB_sound i a ha) (noContB_sound a hc) (stepsWithB_sound hok b hb)
  | .dec n _ _ b, h => by
      simp only [stepsWithB, Bool.and_eq_true, decide_eq_true_eq] at h
      exact steps_dec h.1 (stepsWithB_sound hok b h.2)
  | .decCall rn _ _ _ k, h => by
      simp only [stepsWithB, Bool.and_eq_true, decide_eq_true_eq] at h
      exact steps_decCall h.1 (stepsWithB_sound hok k h.2)
  | .assign .global _ _, h => by simp [stepsWithB] at h
  | .skip, h | .break, h | .continue, h | .annot _ _, h | .tick, h => by simp [stepsWithB] at h
  | .primitive _ _ _, h | .store _ _, h | .store32 _ _, h | .storeByte _ _, h => by
      simp [stepsWithB] at h
  | .extCall _ _ _ _ _, h | .raise _ _, h | .return _, h => by simp [stepsWithB] at h
  | .shMemLoad _ _ _ _, h | .shMemStore _ _ _, h | .ite _ _ _, h | .while _ _, h => by
      simp [stepsWithB] at h
  | .call _ _ _, h => by simp [stepsWithB] at h

/-- Recognise `i = i + k`. -/
def isAddK (i : MlS) (k : BitVec width) : ExpHOL width → Bool
  | .op .add [.var .local j, .const c] => decide (j = i) && decide (c = k)
  | _ => false

theorem isAddK_sound {i : MlS} {k : BitVec width} :
    ∀ e, isAddK i k e = true → Steps σ i (· + k) (.assign .local i e) := by
  intro e h
  unfold isAddK at h
  split at h
  · simp only [Bool.and_eq_true, decide_eq_true_eq] at h
    obtain ⟨rfl, rfl⟩ := h
    exact steps_add_const _ _
  · simp at h

/-- Good results of `p` are only normal completion, `continue`, or (if allowed) `break`. -/
def OnlyExits (σ : Type) (brk : Bool) (p : ProgHOL width) : Prop :=
  ∀ s : PanSemStateFiniteExact width σ, Good (evaluateHOLFiniteState s p).1 →
    (evaluateHOLFiniteState s p).1 = none ∨ (evaluateHOLFiniteState s p).1 = some .continue ∨
      (brk = true ∧ (evaluateHOLFiniteState s p).1 = some .break)

theorem noExit_of_onlyExits {p : ProgHOL width} (h : OnlyExits σ false p) : NoExit σ p := by
  intro s hg
  rcases h s hg with h | h | ⟨h, _⟩
  · exact Or.inl h
  · exact Or.inr h
  · cases h

macro "onlyLeaf" : tactic => `(tactic| (
  intro s
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  dsimp only
  repeat' split
  all_goals simp_all [Good, setKvarHOLFinite, decClockHOLFinite, emptyLocalsHOLFinite]))

theorem onlyExits_skip (b : Bool) : OnlyExits σ b (.skip : ProgHOL width) := by onlyLeaf
theorem onlyExits_continue (b : Bool) : OnlyExits σ b (.continue : ProgHOL width) := by onlyLeaf
theorem onlyExits_break : OnlyExits σ true (.break : ProgHOL width) := by onlyLeaf
theorem onlyExits_tick (b : Bool) : OnlyExits σ b (.tick : ProgHOL width) := by onlyLeaf
theorem onlyExits_annot (b : Bool) (x y : MlS) : OnlyExits σ b (.annot x y : ProgHOL width) := by
  onlyLeaf
theorem onlyExits_assign (b : Bool) (k : VarKind) (n : MlS) (e : ExpHOL width) :
    OnlyExits σ b (.assign k n e) := by onlyLeaf
theorem onlyExits_primitive (b : Bool) (n : MlS) (o : PrimOp) (a : List (ExpHOL width)) :
    OnlyExits σ b (.primitive n o a) := by onlyLeaf
theorem onlyExits_store (b : Bool) (x y : ExpHOL width) : OnlyExits σ b (.store x y) := by
  onlyLeaf
theorem onlyExits_store32 (b : Bool) (x y : ExpHOL width) : OnlyExits σ b (.store32 x y) := by
  onlyLeaf
theorem onlyExits_storeByte (b : Bool) (x y : ExpHOL width) : OnlyExits σ b (.storeByte x y) := by
  onlyLeaf

theorem onlyExits_seq {b : Bool} {p q : ProgHOL width} (hp : OnlyExits σ b p)
    (hq : OnlyExits σ b q) : OnlyExits σ b (.seq p q) := by
  intro s
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq p q)]
  dsimp only
  cases h1 : (evaluateHOLFiniteState s p).1 with
  | none => exact hq _
  | some r => dsimp only; exact hp s

theorem onlyExits_ite {b : Bool} {c : ExpHOL width} {p q : ProgHOL width} (hp : OnlyExits σ b p)
    (hq : OnlyExits σ b q) : OnlyExits σ b (.ite c p q) := by
  intro s
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.ite c p q)]
  dsimp only
  split
  · split
    · exact hq s
    · exact hp s
  · simp [Good]

theorem onlyExits_dec {b : Bool} {n : MlS} {sh : ShapeHOL} {e : ExpHOL width} {p : ProgHOL width}
    (hp : OnlyExits σ b p) : OnlyExits σ b (.dec n sh e p) := by
  intro s
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec n sh e p)]
  dsimp only
  split
  · simp [Good]
  · split
    · exact hp _
    · simp [Good]

theorem onlyExits_while {b : Bool} {c : ExpHOL width} {p : ProgHOL width}
    (hp : OnlyExits σ true p) : OnlyExits σ b (.while c p) := by
  suffices H : ∀ k (s : PanSemStateFiniteExact width σ), s.clock = k →
      Good (evaluateHOLFiniteState s (.while c p)).1 →
      (evaluateHOLFiniteState s (.while c p)).1 = none from
    fun s hg => Or.inl (H _ s rfl hg)
  intro k
  induction k using Nat.strongRecOn with
  | _ k ih =>
  intro s hk
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.while c p)]
  dsimp only
  split
  · split
    · split
      · intro h; exact absurd rfl h.1
      · have hlt : (evaluateHOLFiniteState (decClockHOLFinite s) p).2.clock < k := by
          have := evaluateHOLFiniteState_clock_le (decClockHOLFinite s) p
          simp only [decClockHOLFinite] at this ⊢
          omega
        cases ho : (evaluateHOLFiniteState (decClockHOLFinite s) p).1 with
        | none => exact ih _ hlt _ rfl
        | some r =>
            cases r with
            | «continue» => exact ih _ hlt _ rfl
            | «break» => intro _; rfl
            | _ =>
                intro hg
                have := hp (decClockHOLFinite s) (by rw [ho]; exact hg)
                rw [ho] at this
                simp at this
    · intro _; rfl
  · intro h; exact absurd rfl h.2

def onlyExitsB (brk : Bool) : ProgHOL width → Bool
  | .skip | .continue | .tick | .annot _ _ => true
  | .assign _ _ _ | .primitive _ _ _ | .store _ _ | .store32 _ _ | .storeByte _ _ => true
  | .break => brk
  | .seq a b => onlyExitsB brk a && onlyExitsB brk b
  | .ite _ a b => onlyExitsB brk a && onlyExitsB brk b
  | .dec _ _ _ b => onlyExitsB brk b
  | .while _ b => onlyExitsB true b
  | _ => false

theorem onlyExitsB_sound : ∀ (brk : Bool) (p : ProgHOL width), onlyExitsB brk p = true →
    OnlyExits σ brk p
  | b, .skip, _ => onlyExits_skip b
  | b, .continue, _ => onlyExits_continue b
  | b, .tick, _ => onlyExits_tick b
  | b, .annot _ _, _ => onlyExits_annot b _ _
  | b, .assign _ _ _, _ => onlyExits_assign b _ _ _
  | b, .primitive _ _ _, _ => onlyExits_primitive b _ _ _
  | b, .store _ _, _ => onlyExits_store b _ _
  | b, .store32 _ _, _ => onlyExits_store32 b _ _
  | b, .storeByte _ _, _ => onlyExits_storeByte b _ _
  | b, .break, h => by simp only [onlyExitsB] at h; subst h; exact onlyExits_break
  | b, .seq x y, h => by
      simp only [onlyExitsB, Bool.and_eq_true] at h
      exact onlyExits_seq (onlyExitsB_sound b x h.1) (onlyExitsB_sound b y h.2)
  | b, .ite _ x y, h => by
      simp only [onlyExitsB, Bool.and_eq_true] at h
      exact onlyExits_ite (onlyExitsB_sound b x h.1) (onlyExitsB_sound b y h.2)
  | b, .dec _ _ _ x, h => onlyExits_dec (onlyExitsB_sound b x h)
  | b, .while _ x, h => onlyExits_while (onlyExitsB_sound true x h)
  | _, .call _ _ _, h | _, .decCall _ _ _ _ _, h | _, .extCall _ _ _ _ _, h => by
      simp [onlyExitsB] at h
  | _, .raise _ _, h | _, .return _, h | _, .shMemLoad _ _ _ _, h | _, .shMemStore _ _ _, h => by
      simp [onlyExitsB] at h

end InitECandidate.Solver.SourceCost
