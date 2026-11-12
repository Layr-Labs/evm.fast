import InitECandidate.Solver.SourceCost.Loops

/-!
# Counter steps and `continue`-freedom

`Steps σ i g p`: whenever `p` completes normally or by `continue` from a state where
local `i` holds word `v`, it ends with `i = g v`. `NoCont σ p`: `p` never ends by
`continue`. Together with the measure rule they give generic bounds for counter loops
whose single counter update sits anywhere on the body's straight-line spine.
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)

variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}

def Steps (σ : Type) (i : MlS) (g : BitVec width → BitVec width) (p : ProgHOL width) : Prop :=
  ∀ (s : PanSemStateFiniteExact width σ) (v : BitVec width),
    s.locals.lookup i = some (.val (.word v)) →
    ((evaluateHOLFiniteState s p).1 = none ∨ (evaluateHOLFiniteState s p).1 = some .continue) →
    (evaluateHOLFiniteState s p).2.locals.lookup i = some (.val (.word (g v)))

def NoCont (σ : Type) (p : ProgHOL width) : Prop :=
  ∀ s : PanSemStateFiniteExact width σ, (evaluateHOLFiniteState s p).1 ≠ some .continue

theorem steps_add_one (i : MlS) :
    Steps σ i (· + 1) (.assign .local i (.op .add [.var .local i, .const 1]) : ProgHOL width) := by
  intro s v hv _
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  simp [evalHOLExact, evalListHOLExact, hv, wordOpHOL, wordOp, valueIsWord, valueWord,
    isValidValueHOLFinite, lookupKvarHOLFinite, setKvarHOLFinite, shapeOfHOLExact, shapeEqHOL,
    setVarHOLFinite, FUPDATE]

theorem steps_sub_one (i : MlS) :
    Steps σ i (· - 1) (.assign .local i (.op .sub [.var .local i, .const 1]) : ProgHOL width) := by
  intro s v hv _
  rw [eval_decrement hv]
  simp [setVarHOLFinite, FUPDATE]

theorem steps_seq_left {i : MlS} {g : BitVec width → BitVec width} {a b : ProgHOL width}
    (ha : Steps σ i g a) (hb : Keeps σ i b) : Steps σ i g (.seq a b) := by
  intro s v hv
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
  dsimp only
  cases h1 : (evaluateHOLFiniteState s a).1 with
  | none =>
      intro hexit
      rcases hexit with h | h
      · rw [hb _ (Or.inl h)]; exact ha s v hv (Or.inl h1)
      · rw [hb _ (Or.inr (Or.inl h))]; exact ha s v hv (Or.inl h1)
  | some r =>
      intro hexit
      dsimp only at hexit ⊢
      exact ha s v hv hexit

theorem steps_seq_right {i : MlS} {g : BitVec width → BitVec width} {a b : ProgHOL width}
    (ha : Keeps σ i a) (hc : NoCont σ a) (hb : Steps σ i g b) : Steps σ i g (.seq a b) := by
  intro s v hv
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
  dsimp only
  cases h1 : (evaluateHOLFiniteState s a).1 with
  | none =>
      intro hexit
      exact hb _ v (by rw [ha s (Or.inl h1)]; exact hv) hexit
  | some r =>
      intro hexit
      dsimp only at hexit
      rcases hexit with h | h
      · first | (rw [h1] at h; cases h) | cases h
      · first | exact absurd h (hc s) | exact absurd (h1.trans h) (hc s)

theorem steps_dec {i n : MlS} {g : BitVec width → BitVec width} {sh : ShapeHOL}
    {e : ExpHOL width} {b : ProgHOL width} (hn : n ≠ i) (hb : Steps σ i g b) :
    Steps σ i g (.dec n sh e b) := by
  intro s v hv
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec n sh e b)]
  dsimp only
  split
  · intro h; simp at h
  · split
    · intro hexit
      simp only [lookup_resVarEq_restore, if_neg (Ne.symm hn)]
      exact hb _ v (by simp [setVarHOLFinite, FUPDATE, hn, hv]) hexit
    · intro h; simp at h

theorem steps_decCall {i rn f : MlS} {g : BitVec width → BitVec width} {sh : ShapeHOL}
    {args : List (ExpHOL width)} {k : ProgHOL width} (hn : rn ≠ i) (hk : Steps σ i g k) :
    Steps σ i g (.decCall rn sh f args k) := by
  intro s v hv
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.decCall rn sh f args k)]
  dsimp only
  repeat' split
  all_goals intro hexit
  all_goals first
    | (simp at hexit; done)
    | (simp_all; done)
    | (simp only [lookup_resVarEq_restore, if_neg (Ne.symm hn)]
       exact hk _ v (by simp [setVarHOLFinite, FUPDATE, hn, hv]) hexit)

macro "noContLeaf" : tactic => `(tactic| (
  intro s
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  dsimp only
  try unfold shMemLoadHOLFiniteExact
  try unfold shMemStoreHOLExact
  repeat' split
  all_goals simp_all [ofExact]))

theorem noCont_skip : NoCont σ (.skip : ProgHOL width) := by noContLeaf
theorem noCont_break : NoCont σ (.break : ProgHOL width) := by noContLeaf
theorem noCont_annot (a b : MlS) : NoCont σ (.annot a b : ProgHOL width) := by noContLeaf
theorem noCont_tick : NoCont σ (.tick : ProgHOL width) := by noContLeaf
theorem noCont_assign (k : VarKind) (n : MlS) (e : ExpHOL width) : NoCont σ (.assign k n e) := by
  noContLeaf
theorem noCont_primitive (n : MlS) (o : PrimOp) (a : List (ExpHOL width)) :
    NoCont σ (.primitive n o a) := by noContLeaf
theorem noCont_store (a v : ExpHOL width) : NoCont σ (.store a v) := by noContLeaf
theorem noCont_store32 (a v : ExpHOL width) : NoCont σ (.store32 a v) := by noContLeaf
theorem noCont_storeByte (a v : ExpHOL width) : NoCont σ (.storeByte a v) := by noContLeaf
theorem noCont_extCall (f : MlS) (a b c d : ExpHOL width) : NoCont σ (.extCall f a b c d) := by
  noContLeaf
theorem noCont_raise (x : MlS) (e : ExpHOL width) : NoCont σ (.raise x e) := by noContLeaf
theorem noCont_return (e : ExpHOL width) : NoCont σ (.return e) := by noContLeaf
theorem noCont_shMemLoad (o : OpSize) (k : VarKind) (n : MlS) (a : ExpHOL width) :
    NoCont σ (.shMemLoad o k n a) := by noContLeaf
theorem shStore_res (st : PanSemStateExact width σ) {inst : DecidablePred st.shMemaddrs}
    w a nb : (shMemStoreHOLExact st w a nb).1 ≠ some .continue := by
  unfold shMemStoreHOLExact
  repeat' split
  all_goals simp

theorem noCont_shMemStore (o : OpSize) (a v : ExpHOL width) : NoCont σ (.shMemStore o a v) := by
  intro s
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  dsimp only
  split
  · exact shStore_res (width := width) _ _ _ _
  · simp

theorem noCont_seq {a b : ProgHOL width} (ha : NoCont σ a) (hb : NoCont σ b) :
    NoCont σ (.seq a b) := by
  intro s
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
  dsimp only
  cases h1 : (evaluateHOLFiniteState s a).1 with
  | none => exact hb _
  | some r => dsimp only; exact ha s

theorem noCont_ite {c : ExpHOL width} {a b : ProgHOL width} (ha : NoCont σ a) (hb : NoCont σ b) :
    NoCont σ (.ite c a b) := by
  intro s
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.ite c a b)]
  dsimp only
  split
  · split
    · exact hb s
    · exact ha s
  · simp

theorem noCont_dec {n : MlS} {sh : ShapeHOL} {e : ExpHOL width} {b : ProgHOL width}
    (hb : NoCont σ b) : NoCont σ (.dec n sh e b) := by
  intro s
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec n sh e b)]
  dsimp only
  split
  · simp
  · split
    · exact hb _
    · simp

theorem noCont_while {c : ExpHOL width} {b : ProgHOL width} : NoCont σ (.while c b) := by
  suffices H : ∀ k (s : PanSemStateFiniteExact width σ), s.clock = k →
      (evaluateHOLFiniteState s (.while c b)).1 ≠ some .continue from fun s => H _ s rfl
  intro k
  induction k using Nat.strongRecOn with
  | _ k ih =>
  intro s hk
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.while c b)]
  dsimp only
  split
  · split
    · split
      · simp
      · have hlt : (evaluateHOLFiniteState (decClockHOLFinite s) b).2.clock < k := by
          have := evaluateHOLFiniteState_clock_le (decClockHOLFinite s) b
          simp only [decClockHOLFinite] at this ⊢
          omega
        split
        · exact ih _ hlt _ rfl
        · exact ih _ hlt _ rfl
        · simp
        · simp only [ne_eq, Option.some.injEq]
          intro h; subst h; simp_all
    · simp
  · simp

theorem noCont_call {info : Option (Option (VarKind × MlS) × Option (MlS × MlS × ProgHOL width))}
    {f : MlS} {args : List (ExpHOL width)}
    (h : ∀ r hid hv hp, info = some (r, some (hid, hv, hp)) → NoCont σ hp) :
    NoCont σ (.call info f args) := by
  intro s
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.call info f args)]
  dsimp only
  repeat' split
  all_goals first
    | (simp_all; done)
    | exact h _ _ _ _ rfl _

theorem noCont_decCall {rn f : MlS} {sh : ShapeHOL} {args : List (ExpHOL width)}
    {k : ProgHOL width} (hk : NoCont σ k) : NoCont σ (.decCall rn sh f args k) := by
  intro s
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.decCall rn sh f args k)]
  dsimp only
  repeat' split
  all_goals first
    | (simp_all; done)
    | exact hk _

end InitECandidate.Solver.SourceCost
