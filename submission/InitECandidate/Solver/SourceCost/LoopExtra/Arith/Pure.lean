import InitECandidate.Solver.SourceCost.LoopExtra.Arith.Det

/-!
# Pure loop bodies: frame and shapes

`PF σ C Γ A Sh p`: from a state with code map `C` satisfying the shape environment `Γ`,
a good run of `p` changes only locals and the clock (memory, globals and FFI state are
kept), and when it ends normally, by `break` or by `continue` it changes only locals
accepted by `A`, keeps the shape of every local, and every changed local listed in `Sh`
holds a value of the listed shape.

`pfB` is a syntactic checker for `PF`. Calls are allowed only to functions listed in a
pure-function table `pt` (with their return shapes), whose soundness `PureTbl σ C pt` is
a hypothesis.
-/

namespace InitECandidate.Solver.SourceCost.Arith
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)

variable {width : Nat} [NeZero width] {σ : Type}

/-! ## Static shapes of expressions -/

/-- `s` gives each local of `Γ` a value of the recorded shape. -/
def GSat (Γ : List (MlS × ShapeHOL)) (s : PanSemStateFiniteExact width σ) : Prop :=
  ∀ z sh, Γ.lookup z = some sh → ∃ v, s.locals.lookup z = some v ∧ shapeOfHOLExact v = sh

mutual
def expShape (Γ : List (MlS × ShapeHOL)) : ExpHOL width → Option ShapeHOL
  | .const _ => some .one
  | .var .local z => Γ.lookup z
  | .rstruct es => (expShapeL Γ es).map .comb
  | .rfield i e =>
      match expShape Γ e with
      | some (.comb shs) => shs[i]?
      | _ => none
  | .op _ _ => some .one
  | .panop _ _ => some .one
  | .cmp _ _ _ => some .one
  | .shift _ _ _ => some .one
  | _ => none
def expShapeL (Γ : List (MlS × ShapeHOL)) : List (ExpHOL width) → Option (List ShapeHOL)
  | [] => some []
  | e :: es =>
      match expShape Γ e, expShapeL Γ es with
      | some a, some b => some (a :: b)
      | _, _ => none
end

theorem shape_val (w : HolWordLab width) : shapeOfHOLExact (.val w : ValueHOL width) = .one := by
  simp [shapeOfHOLExact]

theorem shape_rStruct (vs : List (ValueHOL width)) :
    shapeOfHOLExact (.rStruct vs) = .comb (vs.map shapeOfHOLExact) := by
  simp [shapeOfHOLExact]

theorem eval_word_of_map {o : Option (BitVec width)} {v : ValueHOL width}
    (h : o.map (fun w => (.val (.word w) : ValueHOL width)) = some v) : shapeOfHOLExact v = .one := by
  obtain ⟨w, _, rfl⟩ := Option.map_eq_some_iff.mp h
  exact shape_val _

section
variable (Γ : List (MlS × ShapeHOL)) (s : PanSemStateExact width σ) [DecidablePred s.memaddrs]
  (hΓ : ∀ z sh, Γ.lookup z = some sh → ∃ v, s.locals z = some v ∧ shapeOfHOLExact v = sh)
include hΓ

mutual
theorem expShape_sound : ∀ (e : ExpHOL width) (sh : ShapeHOL) (v : ValueHOL width),
    expShape Γ e = some sh → evalHOLExact s e = some v → shapeOfHOLExact v = sh
  | .const _, sh, v, h1, h2 => by
      simp only [expShape, Option.some.injEq] at h1
      simp only [evalHOLExact, Option.some.injEq] at h2
      subst h1 h2; exact shape_val _
  | .var .local z, sh, v, h1, h2 => by
      simp only [expShape] at h1
      simp only [evalHOLExact] at h2
      obtain ⟨v', hv', hs⟩ := hΓ z sh h1
      rw [hv', Option.some.injEq] at h2
      subst h2; exact hs
  | .var .global _, sh, v, h1, _ => by simp [expShape] at h1
  | .rstruct es, sh, v, h1, h2 => by
      simp only [expShape] at h1
      simp only [evalHOLExact] at h2
      obtain ⟨shs, hshs, rfl⟩ := Option.map_eq_some_iff.mp h1
      obtain ⟨vs, hvs, rfl⟩ := Option.map_eq_some_iff.mp h2
      rw [shape_rStruct, expShapeL_sound es shs vs hshs hvs]
  | .rfield i e, sh, v, h1, h2 => by
      simp only [expShape] at h1
      simp only [evalHOLExact] at h2
      split at h1
      · rename_i shs hshs
        split at h2
        · rename_i vs hvs
          have := expShape_sound e _ _ hshs hvs
          rw [shape_rStruct, ShapeHOL.comb.injEq] at this
          subst this
          rw [List.getElem?_map, h2] at h1
          simpa using h1
        · cases h2
      · cases h1
  | .op _ _, sh, v, h1, h2 => by
      simp only [expShape, Option.some.injEq] at h1
      subst h1
      simp only [evalHOLExact] at h2
      split at h2
      · split at h2
        · exact eval_word_of_map h2
        · cases h2
      · cases h2
  | .panop _ _, sh, v, h1, h2 => by
      simp only [expShape, Option.some.injEq] at h1
      subst h1
      simp only [evalHOLExact] at h2
      split at h2
      · split at h2
        · exact eval_word_of_map h2
        · cases h2
      · cases h2
  | .cmp _ _ _, sh, v, h1, h2 => by
      simp only [expShape, Option.some.injEq] at h1
      subst h1
      simp only [evalHOLExact] at h2
      split at h2
      · simp only [Option.some.injEq] at h2; subst h2; exact shape_val _
      · cases h2
  | .shift _ _ _, sh, v, h1, h2 => by
      simp only [expShape, Option.some.injEq] at h1
      subst h1
      simp only [evalHOLExact] at h2
      split at h2
      · exact eval_word_of_map h2
      · cases h2
  | .nstruct _ _, sh, v, h1, _ | .nfield _ _, sh, v, h1, _ | .load _ _, sh, v, h1, _
  | .load32 _, sh, v, h1, _ | .loadByte _, sh, v, h1, _ | .baseAddr, sh, v, h1, _
  | .topAddr, sh, v, h1, _ | .bytesInWord, sh, v, h1, _ => by simp [expShape] at h1
theorem expShapeL_sound : ∀ (es : List (ExpHOL width)) (shs : List ShapeHOL)
    (vs : List (ValueHOL width)),
    expShapeL Γ es = some shs → evalListHOLExact s es = some vs → vs.map shapeOfHOLExact = shs
  | [], shs, vs, h1, h2 => by
      simp only [expShapeL, Option.some.injEq] at h1
      simp only [evalListHOLExact, Option.some.injEq] at h2
      subst h1 h2; rfl
  | e :: es, shs, vs, h1, h2 => by
      simp only [expShapeL] at h1
      simp only [evalListHOLExact] at h2
      split at h1
      · rename_i a b ha hb
        simp only [Option.some.injEq] at h1
        subst h1
        split at h2
        · rename_i v vs' hv hvs
          simp only [Option.some.injEq] at h2
          subst h2
          rw [List.map_cons, expShape_sound e a v ha hv, expShapeL_sound es b vs' hb hvs]
        · cases h2
      · cases h1
end
end

/-! ## The purity-and-frame judgment -/

/-- `t` differs from `s` only in its locals and clock. -/
def NonLoc (s t : PanSemStateFiniteExact width σ) : Prop :=
  ∃ (L : HolFiniteMapExact MlS (ValueHOL width)) (k : Nat), t = { s with locals := L, clock := k }

/-- Only locals accepted by `A` change, shapes are kept, and changed locals of `Sh` get the
listed shape. -/
def FrameSh (A : MlS → Bool) (Sh : List (MlS × ShapeHOL)) (s t : PanSemStateFiniteExact width σ) :
    Prop :=
  (∀ y, A y = false → t.locals.lookup y = s.locals.lookup y) ∧
  (∀ y, (t.locals.lookup y).map shapeOfHOLExact = (s.locals.lookup y).map shapeOfHOLExact) ∧
  (∀ y sh, Sh.lookup y = some sh → t.locals.lookup y ≠ s.locals.lookup y →
    ∃ v, t.locals.lookup y = some v ∧ shapeOfHOLExact v = sh)

def PFat (C : CodeMap width) (Γ : List (MlS × ShapeHOL)) (A : MlS → Bool)
    (Sh : List (MlS × ShapeHOL)) (p : ProgHOL width) (s : PanSemStateFiniteExact width σ) : Prop :=
  s.code = C → GSat Γ s → Good (evaluateHOLFiniteState s p).1 →
    NonLoc s (evaluateHOLFiniteState s p).2 ∧
    (LoopExit (evaluateHOLFiniteState s p).1 → FrameSh A Sh s (evaluateHOLFiniteState s p).2)

def PF (σ : Type) (C : CodeMap width) (Γ : List (MlS × ShapeHOL)) (A : MlS → Bool)
    (Sh : List (MlS × ShapeHOL)) (p : ProgHOL width) : Prop :=
  ∀ s : PanSemStateFiniteExact width σ, PFat C Γ A Sh p s

/-- Every function listed in `pt` has the listed return shape and a pure body. -/
def PureTbl (σ : Type) (C : CodeMap width) (pt : List (MlS × ShapeHOL)) : Prop :=
  ∀ f sh, pt.lookup f = some sh → ∀ values body callee rs,
    lookupCodeHOLFinite C.lookup f values = some (body, callee, rs) →
      rs = sh ∧ PF σ C [] (fun _ => true) [] body

def addA (A : MlS → Bool) (z : MlS) : MlS → Bool := fun y => y == z || A y

def eraseSh (Sh : List (MlS × ShapeHOL)) (z : MlS) : List (MlS × ShapeHOL) :=
  Sh.filter (fun q => q.1 != z)

def shOk (Sh : List (MlS × ShapeHOL)) (y : MlS) (sh : Option ShapeHOL) : Bool :=
  match Sh.lookup y, sh with
  | none, _ => true
  | some a, some b => shapeEqHOL b a
  | some _, none => false

def pfB (pt : List (MlS × ShapeHOL)) :
    List (MlS × ShapeHOL) → (MlS → Bool) → List (MlS × ShapeHOL) → ProgHOL width → Bool
  | _, _, _, .skip | _, _, _, .break | _, _, _, .continue | _, _, _, .annot _ _
  | _, _, _, .tick => true
  | Γ, A, Sh, .assign .local y e => A y && shOk Sh y (expShape Γ e)
  | _, A, Sh, .primitive y _ _ => A y && shOk Sh y (some (.comb [.one, .one]))
  | _, _, _, .raise _ _ | _, _, _, .return _ => true
  | Γ, A, Sh, .seq a b => pfB pt Γ A Sh a && pfB pt Γ A Sh b
  | Γ, A, Sh, .ite _ a b => pfB pt Γ A Sh a && pfB pt Γ A Sh b
  | Γ, A, Sh, .while _ b => pfB pt Γ A Sh b
  | Γ, A, Sh, .dec z sh _ b => pfB pt ((z, sh) :: Γ) (addA A z) (eraseSh Sh z) b
  | _, _, _, .call none f _ => (pt.lookup f).isSome
  | _, _, _, .call (some (none, none)) f _ => (pt.lookup f).isSome
  | _, A, Sh, .call (some (some (.local, y), none)) f _ =>
      (pt.lookup f).isSome && A y && shOk Sh y (pt.lookup f)
  | Γ, A, Sh, .decCall rn sh f _ k =>
      (pt.lookup f).isSome && pfB pt ((rn, sh) :: Γ) (addA A rn) (eraseSh Sh rn) k
  | _, _, _, _ => false

/-! ### Small facts -/

theorem nonLoc_refl (s : PanSemStateFiniteExact width σ) : NonLoc s s := ⟨s.locals, s.clock, rfl⟩

theorem nonLoc_trans {s t u : PanSemStateFiniteExact width σ} (h1 : NonLoc s t) (h2 : NonLoc t u) :
    NonLoc s u := by
  obtain ⟨L1, k1, rfl⟩ := h1
  obtain ⟨L2, k2, rfl⟩ := h2
  exact ⟨L2, k2, rfl⟩

theorem nonLoc_locals {s t : PanSemStateFiniteExact width σ} (h : NonLoc s t)
    (L : HolFiniteMapExact MlS (ValueHOL width)) : NonLoc s { t with locals := L } := by
  obtain ⟨L1, k1, rfl⟩ := h
  exact ⟨L, k1, rfl⟩

theorem nonLoc_setVar {s t : PanSemStateFiniteExact width σ} (h : NonLoc s t) (y : MlS)
    (v : ValueHOL width) : NonLoc s (setVarHOLFinite y v t) := by
  obtain ⟨L1, k1, rfl⟩ := h
  exact ⟨L1.update (y, v), k1, rfl⟩

theorem nonLoc_empty {s t : PanSemStateFiniteExact width σ} (h : NonLoc s t) :
    NonLoc s (emptyLocalsHOLFinite t) := by
  obtain ⟨L1, k1, rfl⟩ := h
  exact ⟨_, k1, rfl⟩

theorem frameSh_refl (A : MlS → Bool) (Sh : List (MlS × ShapeHOL)) (s : PanSemStateFiniteExact width σ) :
    FrameSh A Sh s s :=
  ⟨fun _ _ => rfl, fun _ => rfl, fun _ _ _ h => absurd rfl h⟩

theorem frameSh_of_locals {A : MlS → Bool} {Sh : List (MlS × ShapeHOL)}
    {s t : PanSemStateFiniteExact width σ} (h : t.locals = s.locals) : FrameSh A Sh s t := by
  refine ⟨fun y _ => by rw [h], fun y => by rw [h], fun y _ _ hne => absurd (by rw [h]) hne⟩

theorem frameSh_trans {A : MlS → Bool} {Sh : List (MlS × ShapeHOL)}
    {s t u : PanSemStateFiniteExact width σ} (h1 : FrameSh A Sh s t) (h2 : FrameSh A Sh t u) :
    FrameSh A Sh s u := by
  refine ⟨fun y hy => (h2.1 y hy).trans (h1.1 y hy), fun y => (h2.2.1 y).trans (h1.2.1 y), ?_⟩
  intro y sh hsh hne
  by_cases hut : u.locals.lookup y = t.locals.lookup y
  · rw [hut] at hne ⊢
    exact h1.2.2 y sh hsh hne
  · exact h2.2.2 y sh hsh hut

theorem gsat_of_shapes {Γ : List (MlS × ShapeHOL)} {s t : PanSemStateFiniteExact width σ}
    (hs : GSat Γ s)
    (h : ∀ y, (t.locals.lookup y).map shapeOfHOLExact = (s.locals.lookup y).map shapeOfHOLExact) :
    GSat Γ t := by
  intro z sh hz
  obtain ⟨v, hv, hsh⟩ := hs z sh hz
  have := h z
  rw [hv] at this
  cases ht : t.locals.lookup z with
  | none => rw [ht] at this; cases this
  | some w =>
      rw [ht] at this
      simp only [Option.map_some, Option.some.injEq] at this
      exact ⟨w, rfl, this.trans hsh⟩

theorem gsat_nil (s : PanSemStateFiniteExact width σ) : GSat [] s := by
  intro z sh h; simp at h

theorem gsat_cons_setVar {Γ : List (MlS × ShapeHOL)} {s : PanSemStateFiniteExact width σ}
    (hs : GSat Γ s) (z : MlS) (sh : ShapeHOL) (v : ValueHOL width) (hv : shapeOfHOLExact v = sh) :
    GSat ((z, sh) :: Γ) (setVarHOLFinite z v s) := by
  intro y sh' hy
  by_cases hyz : y = z
  · subst hyz
    simp only [List.lookup, beq_self_eq_true, Option.some.injEq] at hy
    subst hy
    exact ⟨v, by simp [setVarHOLFinite, FUPDATE], hv⟩
  · have hb : (y == z) = false := by simpa using hyz
    simp only [List.lookup, hb] at hy
    obtain ⟨w, hw, hsh⟩ := hs y sh' hy
    exact ⟨w, by simp [setVarHOLFinite, FUPDATE, Ne.symm hyz, hw], hsh⟩

theorem isValid_shape {s : PanSemStateFiniteExact width σ} {y : MlS} {v : ValueHOL width}
    (h : isValidValueHOLExact s.toExact .local y v = true) :
    ∃ ex, s.locals.lookup y = some ex ∧ shapeOfHOLExact v = shapeOfHOLExact ex := by
  unfold isValidValueHOLExact lookupKvarHOLExact at h
  dsimp only at h
  split at h
  · rename_i ex hex
    exact ⟨ex, hex, (shapeEqHOL_eq_true _ _).mp h⟩
  · cases h

theorem isValidF_shape {s : PanSemStateFiniteExact width σ} {y : MlS} {v : ValueHOL width}
    (h : isValidValueHOLFinite s .local y v = true) :
    ∃ ex, s.locals.lookup y = some ex ∧ shapeOfHOLExact v = shapeOfHOLExact ex := by
  rw [isValidValueHOLFinite_eq] at h
  exact isValid_shape h

theorem shOk_some {Sh : List (MlS × ShapeHOL)} {y : MlS} {o : Option ShapeHOL}
    (h : shOk Sh y o = true) {sh : ShapeHOL} (hsh : Sh.lookup y = some sh) : o = some sh := by
  unfold shOk at h
  rw [hsh] at h
  cases o with
  | none => cases h
  | some b => exact congrArg some ((shapeEqHOL_eq_true _ _).mp h)

/-- Setting an accepted local to a value of its old shape (and of its listed shape). -/
theorem frameSh_setVar {A : MlS → Bool} {Sh : List (MlS × ShapeHOL)}
    {s t : PanSemStateFiniteExact width σ} (ht : t.locals = s.locals)
    {y : MlS} {v : ValueHOL width} (hA : A y = true) {ex : ValueHOL width}
    (hex : s.locals.lookup y = some ex) (hsh : shapeOfHOLExact v = shapeOfHOLExact ex)
    (hSh : ∀ sh, Sh.lookup y = some sh → shapeOfHOLExact v = sh) :
    FrameSh A Sh s (setVarHOLFinite y v t) := by
  simp only [setVarHOLFinite, ht]
  refine ⟨?_, ?_, ?_⟩
  · intro z hz
    have : y ≠ z := fun h => by subst h; rw [hA] at hz; cases hz
    simp [setVarHOLFinite, FUPDATE, this]
  · intro z
    by_cases hz : y = z
    · subst hz; simp [setVarHOLFinite, FUPDATE, hex, hsh]
    · simp [setVarHOLFinite, FUPDATE, hz]
  · intro z sh hz hne
    by_cases hyz : y = z
    · subst hyz
      exact ⟨v, by simp [setVarHOLFinite, FUPDATE], hSh sh hz⟩
    · exact absurd (by simp [setVarHOLFinite, FUPDATE, hyz]) hne

theorem lookup_eraseSh {Sh : List (MlS × ShapeHOL)} {y z : MlS} (h : y ≠ z) :
    (eraseSh Sh z).lookup y = Sh.lookup y := by
  induction Sh with
  | nil => rfl
  | cons q Sh ih =>
      obtain ⟨a, b⟩ := q
      by_cases haz : a = z
      · subst haz
        have hya : (y == a) = false := by simpa using h
        simp [eraseSh, List.filter, List.lookup, hya] at ih ⊢
        exact ih
      · have hb : (a != z) = true := by simpa using haz
        simp only [eraseSh, List.filter, hb] at ih ⊢
        simp only [List.lookup]
        split <;> simp_all

/-- Restoring a declared local after its scope. -/
theorem frameSh_restore {A : MlS → Bool} {Sh : List (MlS × ShapeHOL)}
    {s t st : PanSemStateFiniteExact width σ} (ht : t.locals = s.locals) {z : MlS}
    {v : ValueHOL width}
    (h : FrameSh (addA A z) (eraseSh Sh z) (setVarHOLFinite z v t) st) :
    FrameSh A Sh s { st with locals := st.locals.resVarEq (z, s.locals.lookup z) } := by
  obtain ⟨h1, h2, h3⟩ := h
  refine ⟨?_, ?_, ?_⟩
  · intro y hy
    simp only [lookup_resVarEq_restore]
    split
    · rename_i hyz; subst hyz; rfl
    · rename_i hyz
      have : addA A z y = false := by simp [addA, hyz, hy]
      rw [h1 y this]
      simp [setVarHOLFinite, FUPDATE, Ne.symm hyz, ht]
  · intro y
    simp only [lookup_resVarEq_restore]
    split
    · rename_i hyz; subst hyz; rfl
    · rename_i hyz
      rw [h2 y]
      simp [setVarHOLFinite, FUPDATE, Ne.symm hyz, ht]
  · intro y sh hsh hne
    simp only [lookup_resVarEq_restore] at hne ⊢
    split at hne
    · rename_i hyz; subst hyz; exact absurd rfl hne
    · rename_i hyz
      have hst : (setVarHOLFinite z v t).locals.lookup y = s.locals.lookup y := by
        simp [setVarHOLFinite, FUPDATE, Ne.symm hyz, ht]
      rw [if_neg hyz]
      exact h3 y sh (by rw [lookup_eraseSh hyz]; exact hsh) (by rw [hst]; exact hne)

theorem primop_shape {o : PrimOp} {vs : List (ValueHOL width)} {v : ValueHOL width}
    (h : panPrimopHOLExact o vs = some v) : shapeOfHOLExact v = .comb [.one, .one] := by
  unfold panPrimopHOLExact at h
  split at h
  · simp only [Option.some.injEq] at h
    subst h
    simp [shape_rStruct, shape_val]
  · cases h

end InitECandidate.Solver.SourceCost.Arith
