import InitECandidate.Solver.SourceCost.OnlyExitsC

/-!
# Orbit-loop condition shapes found in the guest

* A: `while (n >=+ i + k)`-style: `cmp op (var n) (op add [var i, const k])`
* B1: `cmp op (var i) (var n)`
* B2: `cmp op (var i) (const c)`
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)

variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}

/-- Word value of a local, if it is a word. -/
def wordLocal (s : PanSemStateFiniteExact width σ) (n : MlS) : Option (BitVec width) :=
  match s.locals.lookup n with
  | some (.val (.word w)) => some w
  | _ => none

theorem condTrue_iff_eval {s : PanSemStateFiniteExact width σ} {c : ExpHOL width} :
    CondTrue s c ↔ ∃ w, @evalHOLFinite width σ _ s
      (fun address => Classical.propDecidable (s.memaddrs address)) c =
        some (.val (.word w)) ∧ w ≠ 0 := Iff.rfl

theorem cmp_result_ne_zero (op : Flapjack.Cmp) (a b : BitVec width) :
    (∃ w, (if wordCmpHOL op a b = true then (1 : BitVec width) else 0) = w ∧ w ≠ 0) ↔
      wordCmpHOL op a b = true := by
  have hpow : 1 < 2 ^ width := Nat.one_lt_two_pow (NeZero.ne width)
  have h10 : (1 : BitVec width) ≠ 0 := by
    intro h
    have := congrArg BitVec.toNat h
    simp [Nat.mod_eq_of_lt hpow] at this
  constructor
  · rintro ⟨w, hw, hne⟩
    cases hc : wordCmpHOL op a b
    · rw [hc] at hw; simp at hw; exact absurd hw.symm hne
    · rfl
  · intro h
    exact ⟨1, by simp [h], h10⟩

theorem ite_one_zero_ne (b : Bool) :
    ((if b = true then (1 : BitVec width) else 0) ≠ 0) ↔ b = true := by
  have hpow : 1 < 2 ^ width := Nat.one_lt_two_pow (NeZero.ne width)
  have h10 : (1 : BitVec width) ≠ 0 := by
    intro h
    have := congrArg BitVec.toNat h
    simp [Nat.mod_eq_of_lt hpow] at this
  cases b <;> simp [NeZero.ne width]

/-- Shape A characterisation. -/
theorem condA_iff (s : PanSemStateFiniteExact width σ) (op : Flapjack.Cmp) (n i : MlS)
    (k : BitVec width) :
    CondTrue s (.cmp op (.var .local n) (.op .add [.var .local i, .const k])) ↔
      ∃ v, s.locals.lookup i = some (.val (.word v)) ∧
        (match wordLocal s n with
          | some nv => wordCmpHOL op nv (v + k)
          | none => false) = true := by
  rw [condTrue_iff_eval]
  simp only [evalHOLFinite, evalHOLExact, evalListHOLExact, wordLocal]
  cases hn : s.locals.lookup n with
  | none => simp
  | some vn =>
    cases hi : s.locals.lookup i with
    | none => simp
    | some vi =>
      rcases vi with ⟨⟨v⟩⟩ | _ | _ <;> rcases vn with ⟨⟨nv⟩⟩ | _ | _ <;>
        simp [valueIsWord, valueWord, wordOpHOL, wordOp, NeZero.ne width]

/-- Shape B1 characterisation. -/
theorem condB1_iff (s : PanSemStateFiniteExact width σ) (op : Flapjack.Cmp) (i n : MlS) :
    CondTrue s (.cmp op (.var .local i) (.var .local n)) ↔
      ∃ v, s.locals.lookup i = some (.val (.word v)) ∧
        (match wordLocal s n with
          | some nv => wordCmpHOL op v nv
          | none => false) = true := by
  rw [condTrue_iff_eval]
  simp only [evalHOLFinite, evalHOLExact, wordLocal]
  cases hn : s.locals.lookup n with
  | none => cases hi : s.locals.lookup i <;> simp [hi]
  | some vn =>
    cases hi : s.locals.lookup i with
    | none => simp
    | some vi =>
      rcases vi with ⟨⟨v⟩⟩ | _ | _ <;> rcases vn with ⟨⟨nv⟩⟩ | _ | _ <;>
        simp [NeZero.ne width]

/-- Shape B3 characterisation (counter on the right). -/
theorem condB3_iff (s : PanSemStateFiniteExact width σ) (op : Flapjack.Cmp) (n i : MlS) :
    CondTrue s (.cmp op (.var .local n) (.var .local i)) ↔
      ∃ v, s.locals.lookup i = some (.val (.word v)) ∧
        (match wordLocal s n with
          | some nv => wordCmpHOL op nv v
          | none => false) = true := by
  rw [condTrue_iff_eval]
  simp only [evalHOLFinite, evalHOLExact, wordLocal]
  cases hn : s.locals.lookup n with
  | none => cases hi : s.locals.lookup i <;> simp [hi]
  | some vn =>
    cases hi : s.locals.lookup i with
    | none =>
      rcases vn with ⟨⟨nv⟩⟩ | _ | _ <;> simp
    | some vi =>
      rcases vi with ⟨⟨v⟩⟩ | _ | _ <;> rcases vn with ⟨⟨nv⟩⟩ | _ | _ <;>
        simp [NeZero.ne width]

/-- Shape B2 characterisation. -/
theorem condB2_iff (s : PanSemStateFiniteExact width σ) (op : Flapjack.Cmp) (i : MlS)
    (c : BitVec width) :
    CondTrue s (.cmp op (.var .local i) (.const c)) ↔
      ∃ v, s.locals.lookup i = some (.val (.word v)) ∧ wordCmpHOL op v c = true := by
  rw [condTrue_iff_eval]
  simp only [evalHOLFinite, evalHOLExact]
  cases hi : s.locals.lookup i with
  | none => simp
  | some vi =>
    rcases vi with ⟨⟨v⟩⟩ | _ | _ <;> simp [NeZero.ne width]

theorem wordLocal_keep {s t : PanSemStateFiniteExact width σ} {n : MlS}
    (h : t.locals.lookup n = s.locals.lookup n) : wordLocal t n = wordLocal s n := by
  unfold wordLocal; rw [h]

theorem exitPremise {ef : MlS → Bool} (hef : EfSound σ X.code ef) {body : ProgHOL width}
    (hx : onlyExitsCB ef false body = true) :
    ∀ s : PanSemStateFiniteExact width σ, InCtx s X → Good (evaluateHOLFiniteState s body).1 →
      (evaluateHOLFiniteState s body).1 = none ∨
        (evaluateHOLFiniteState s body).1 = some .continue := by
  intro s hs hg
  rcases onlyExitsCB_sound hef false body hx s hs.1 hg with h | h | ⟨h, _⟩
  · exact Or.inl h
  · exact Or.inr h
  · cases h

/-- Orbit loop, shape A. -/
theorem cost_while_orbitA {op : Flapjack.Cmp} {n i : MlS} {k : BitVec width}
    {body : ProgHOL width} {B : Nat} (hb : Cost σ X body B)
    {ef : MlS → Bool} (hef : EfSound σ X.code ef)
    (hs : stepsWithB i (isAddK i k) body = true) (hk : keepsB n body = true)
    (hx : onlyExitsCB ef false body = true) :
    Cost σ X (.while (.cmp op (.var .local n) (.op .add [.var .local i, .const k])) body)
      ((2 ^ width + 1) * (B + 1)) := by
  refine cost_while_orbit (i := i) (k := k)
    (fun s v => match wordLocal s n with
      | some nv => wordCmpHOL op nv (v + k)
      | none => false)
    (fun s => condA_iff s op n i k) ?_ (fun _ => rfl) hb
    (stepsWithB_sound isAddK_sound body hs) (exitPremise hef hx)
  intro s hexit
  have hkeep := keepsB_sound (σ := σ) n body hk s (by rcases hexit with h | h <;> simp [LoopExit, h])
  funext v
  rw [wordLocal_keep hkeep]

/-- Orbit loop, shape B1. -/
theorem cost_while_orbitB1 {op : Flapjack.Cmp} {n i : MlS} {k : BitVec width}
    {body : ProgHOL width} {B : Nat} (hb : Cost σ X body B)
    {ef : MlS → Bool} (hef : EfSound σ X.code ef)
    (hs : stepsWithB i (isAddK i k) body = true) (hk : keepsB n body = true)
    (hx : onlyExitsCB ef false body = true) :
    Cost σ X (.while (.cmp op (.var .local i) (.var .local n)) body)
      ((2 ^ width + 1) * (B + 1)) := by
  refine cost_while_orbit (i := i) (k := k)
    (fun s v => match wordLocal s n with
      | some nv => wordCmpHOL op v nv
      | none => false)
    (fun s => condB1_iff s op i n) ?_ (fun _ => rfl) hb
    (stepsWithB_sound isAddK_sound body hs) (exitPremise hef hx)
  intro s hexit
  have hkeep := keepsB_sound (σ := σ) n body hk s (by rcases hexit with h | h <;> simp [LoopExit, h])
  funext v
  rw [wordLocal_keep hkeep]

/-- Orbit loop, shape B3. -/
theorem cost_while_orbitB3 {op : Flapjack.Cmp} {n i : MlS} {k : BitVec width}
    {body : ProgHOL width} {B : Nat} (hb : Cost σ X body B)
    {ef : MlS → Bool} (hef : EfSound σ X.code ef)
    (hs : stepsWithB i (isAddK i k) body = true) (hk : keepsB n body = true)
    (hx : onlyExitsCB ef false body = true) :
    Cost σ X (.while (.cmp op (.var .local n) (.var .local i)) body)
      ((2 ^ width + 1) * (B + 1)) := by
  refine cost_while_orbit (i := i) (k := k)
    (fun s v => match wordLocal s n with
      | some nv => wordCmpHOL op nv v
      | none => false)
    (fun s => condB3_iff s op n i) ?_ (fun _ => rfl) hb
    (stepsWithB_sound isAddK_sound body hs) (exitPremise hef hx)
  intro s hexit
  have hkeep := keepsB_sound (σ := σ) n body hk s (by rcases hexit with h | h <;> simp [LoopExit, h])
  funext v
  rw [wordLocal_keep hkeep]

/-- Orbit loop, shape B2. -/
theorem cost_while_orbitB2 {op : Flapjack.Cmp} {i : MlS} {c k : BitVec width}
    {body : ProgHOL width} {B : Nat} (hb : Cost σ X body B)
    {ef : MlS → Bool} (hef : EfSound σ X.code ef)
    (hs : stepsWithB i (isAddK i k) body = true) (hx : onlyExitsCB ef false body = true) :
    Cost σ X (.while (.cmp op (.var .local i) (.const c)) body)
      ((2 ^ width + 1) * (B + 1)) :=
  cost_while_orbit (i := i) (k := k) (fun _ v => wordCmpHOL op v c)
    (fun s => condB2_iff s op i c) (fun _ _ => rfl) (fun _ => rfl) hb
    (stepsWithB_sound isAddK_sound body hs) (exitPremise hef hx)

/-- Propose the step constant of counter `i` (untrusted; `stepsWithB` re-checks it). -/
def findAddK (i : MlS) : ProgHOL width → Option (BitVec width)
  | .assign .local j (.op .add [.var .local j', .const c]) =>
      if j = i ∧ j' = i then some c else none
  | .seq a b => (findAddK i a).or (findAddK i b)
  | .dec _ _ _ b => findAddK i b
  | .decCall _ _ _ _ b => findAddK i b
  | _ => none

def loopOkOrbit (ef : MlS → Bool) (c : ExpHOL width) (b : ProgHOL width) : Bool :=
  match c with
  | .cmp _ (.var .local n) (.op .add [.var .local i, .const k]) =>
      stepsWithB i (isAddK i k) b && keepsB n b && onlyExitsCB ef false b
  | .cmp _ (.var .local x) (.var .local y) =>
      (match findAddK x b with
        | some k => stepsWithB x (isAddK x k) b && keepsB y b && onlyExitsCB ef false b
        | none => false) ||
      (match findAddK y b with
        | some k => stepsWithB y (isAddK y k) b && keepsB x b && onlyExitsCB ef false b
        | none => false)
  | .cmp _ (.var .local i) (.const _) =>
      match findAddK i b with
      | some k => stepsWithB i (isAddK i k) b && onlyExitsCB ef false b
      | none => false
  | _ => false

theorem loopOkOrbit_sound {ef : MlS → Bool} (hef : EfSound σ X.code ef) {c : ExpHOL width}
    {b : ProgHOL width} {B : Nat} (h : loopOkOrbit ef c b = true) (hb : Cost σ X b B) :
    Cost σ X (.while c b) ((2 ^ width + 1) * (B + 1)) := by
  unfold loopOkOrbit at h
  split at h
  · simp only [Bool.and_eq_true] at h
    exact cost_while_orbitA hb hef h.1.1 h.1.2 h.2
  · rcases Bool.or_eq_true_iff.mp h with h | h
    · split at h
      · simp only [Bool.and_eq_true] at h
        exact cost_while_orbitB1 hb hef h.1.1 h.1.2 h.2
      · simp at h
    · split at h
      · simp only [Bool.and_eq_true] at h
        exact cost_while_orbitB3 hb hef h.1.1 h.1.2 h.2
      · simp at h
  · split at h
    · simp only [Bool.and_eq_true] at h
      exact cost_while_orbitB2 hb hef h.1 h.2
    · simp at h
  · simp at h

end InitECandidate.Solver.SourceCost
