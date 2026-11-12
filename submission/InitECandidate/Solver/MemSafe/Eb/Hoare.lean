import InitECandidate.Solver.MemSafe.Eb.Facts

/-!
# `execute_block`: the walk's state predicate `PA` and the Hoare combinators

`EbE`: the entry data. `PB E S u`: a run `EbRun` and the facts `S`. `LKE En u`: tracked locals. `PA E En S := PB ∧ LKE`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-- The entry data of `execute_block`. -/
structure EbE (σ : Type) where
  Γ0 : Gam
  s0 : State σ
  p0 : Ptrs

abbrev Env := MlS → Option (ValueHOL 64)

def Env.set (E : Env) (x : MlS) (v : ValueHOL 64) : Env := fun y => if y = x then some v else E y

theorem env_set_self (E : Env) (x : MlS) (v : ValueHOL 64) : (E.set x v) x = some v := by simp [Env.set]
theorem env_set_ne (E : Env) {x y : MlS} (v : ValueHOL 64) (h : y ≠ x) : (E.set x v) y = E y := by
  simp [Env.set, h]

def PB (E : EbE σ) (S : FS) (u : State σ) : Prop :=
  ∃ Γ p, EbRun E.Γ0 E.s0 E.p0 Γ u p ∧ HoldsAll E.p0 Γ p u S

/-- The tracked locals. -/
def LKE (En : Env) (u : State σ) : Prop := ∀ x v, En x = some v → u.locals.lookup x = some v

def PA (E : EbE σ) (En : Env) (S : FS) (u : State σ) : Prop := PB E S u ∧ LKE En u

theorem pb_loc {E : EbE σ} {S : FS} {u : State σ} (h : PB E S u) (l : Locs) (c : Nat) :
    PB E S { u with locals := l, clock := c } := by
  obtain ⟨Γ, p, hr, hL⟩ := h
  exact ⟨Γ, p, ebRun_loc hr l c, holdsAll_loc hL l c⟩

theorem lke_set_other {En : Env} {u : State σ} (h : LKE En u) {n : MlS} (hn : En n = none)
    (v : ValueHOL 64) : LKE En (setVarHOLFinite n v u) := by
  intro x w hx
  have hne : x ≠ n := fun e => by rw [e, hn] at hx; cases hx
  rw [lk_set_ne u v (Ne.symm hne)]
  exact h x w hx

theorem lke_set {En : Env} {u : State σ} (h : LKE En u) (n : MlS) (v : ValueHOL 64) :
    LKE (En.set n v) (setVarHOLFinite n v u) := by
  intro x w hx
  by_cases hxn : x = n
  · subst hxn
    rw [env_set_self] at hx
    cases hx
    exact lk_set_self _ _ _
  · rw [env_set_ne En v hxn] at hx
    rw [lk_set_ne u v (Ne.symm hxn)]
    exact h x w hx

theorem lke_restore {En : Env} {s st : State σ} (h : LKE En s) : LKE En { st with locals := s.locals } := h

theorem lke_mono {En En' : Env} {u : State σ} (h : LKE En u) (hs : ∀ x v, En' x = some v → En x = some v) :
    LKE En' u := fun x v hx => h x v (hs x v hx)

theorem pa_set_other {E : EbE σ} {En : Env} {S : FS} {u : State σ} (h : PA E En S u) {n : MlS}
    (hn : En n = none) (v : ValueHOL 64) : PA E En S (setVarHOLFinite n v u) :=
  ⟨pb_loc h.1 _ _, lke_set_other h.2 hn v⟩

theorem pa_set {E : EbE σ} {En : Env} {S : FS} {u : State σ} (h : PA E En S u) (n : MlS)
    (v : ValueHOL 64) : PA E (En.set n v) S (setVarHOLFinite n v u) :=
  ⟨pb_loc h.1 _ _, lke_set h.2 n v⟩

theorem pa_mono {E : EbE σ} {En En' : Env} {S S' : FS} {u : State σ} (h : PA E En S u)
    (he : ∀ x v, En' x = some v → En x = some v) (hs : ∀ f, S' f → S f) : PA E En' S' u := by
  obtain ⟨⟨Γ, p, hr, hL⟩, hk⟩ := h
  exact ⟨⟨Γ, p, hr, holdsAll_mono hL hs⟩, lke_mono hk he⟩

/-! ## Combinators -/

/-- A locals-insensitive postcondition. -/
def LocIns (Q : Option (PanSemResultExact 64) → State σ → Prop) : Prop :=
  ∀ r (t : State σ) (l : Locs) (c : Nat), Q r t → Q r { t with locals := l, clock := c }

/-- A postcondition that survives restoring the declared variable `n` (the exit of its scope). -/
def ResIns (n : MlS) (Q : Option (PanSemResultExact 64) → State σ → Prop) : Prop :=
  ∀ r (t : State σ) (old : Option (ValueHOL 64)), Q r t → Q r { t with locals := t.locals.resVarEq (n, old) }

theorem locIns_resIns {Q : Option (PanSemResultExact 64) → State σ → Prop} (h : LocIns Q) (n : MlS) :
    ResIns n Q := fun r t old hq => h r t _ t.clock hq

theorem hdecK {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop} {n : MlS}
    (hQ : ResIns n Q) {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64}
    (h : ∀ s : State σ, InCtx s guestCtx → P s → ∀ v, ev s e = some v →
      shapeEqHOL sh (shapeOfHOLExact v) = true →
      Hoare σ guestCtx (fun t => t = setVarHOLFinite n v s) body Q) :
    Hoare σ guestCtx P (.dec n sh e body) Q := by
  refine hoare_dec fun s hs hp v hv hsh => ?_
  exact hoare_post (h s hs hp v hv hsh) fun r t _ _ hq => hQ r t _ hq

theorem hdecCallK {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {rn f : MlS} (hQ : ResIns rn Q) {sh : ShapeHOL} {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf : FunSpec σ guestCtx f R)
    (h : ∀ s : State σ, InCtx s guestCtx → P s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : State σ), R vs (callEntryStateHOLFinite s callee) (.returned v) st →
        InCtx st guestCtx → shapeEqHOL (shapeOfHOLExact v) sh = true →
        Hoare σ guestCtx (fun t => t = setVarHOLFinite rn v { st with locals := s.locals }) k Q) :
    Hoare σ guestCtx P (.decCall rn sh f args k) Q := by
  refine hoare_decCallS hf fun s hs hp vs hvs callee v st hR hst hsh => ?_
  exact hoare_post (h s hs hp vs hvs callee v st hR hst hsh) fun r t _ _ hq => hQ r t _ hq

/-- A statement that completes normally into `P'`. -/
abbrev HN (P : State σ → Prop) (c : ProgHOL 64) (P' : State σ → Prop) : Prop :=
  Hoare σ guestCtx P c (fun r t => r = none ∧ P' t)

theorem hseqN {P P1 : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {a b : ProgHOL 64} (ha : HN P a P1) (hb : Hoare σ guestCtx P1 b Q) :
    Hoare σ guestCtx P (.seq a b) Q := hoare_seqP ha hb

theorem hn_skip {P : State σ → Prop} : HN P .skip P := hoare_skip fun s _ h => ⟨rfl, h⟩

theorem hn_seq {P P1 P2 : State σ → Prop} {a b : ProgHOL 64} (ha : HN P a P1) (hb : HN P1 b P2) :
    HN P (.seq a b) P2 := hoare_seqP ha hb

theorem hn_pre {P P' Q : State σ → Prop} {c : ProgHOL 64} (h : HN P c Q)
    (hP : ∀ s : State σ, InCtx s guestCtx → P' s → P s) : HN P' c Q := hoare_pre h hP

theorem hn_post {P Q Q' : State σ → Prop} {c : ProgHOL 64} (h : HN P c Q)
    (hQ : ∀ t : State σ, InCtx t guestCtx → Q t → Q' t) : HN P c Q' :=
  hoare_post h fun _ t hc _ h => ⟨h.1, hQ t hc h.2⟩

theorem hn_ite {P Q : State σ → Prop} {c : ExpHOL 64} {a b : ProgHOL 64}
    (ha : HN (fun s => P s ∧ ∃ w, ev s c = some (.val (.word w)) ∧ w ≠ 0) a Q)
    (hb : HN (fun s => P s ∧ ev s c = some (.val (.word 0))) b Q) : HN P (.ite c a b) Q :=
  hoare_ite ha hb

section comb
variable {E : EbE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}

/-- `var n = e; body` with `n` untracked. -/
theorem hdecF {n : MlS} (hQT : ResIns n QT) {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64} (hn : En n = none)
    (hk : Hoare σ guestCtx (PA E En S) body QT) : Hoare σ guestCtx (PA E En S) (.dec n sh e body) QT :=
  hdecK hQT fun s hs hP v hv hsh => hoare_pre hk fun t _ ht => by subst ht; exact pa_set_other hP hn v

/-- `var n = e; body` where `e` evaluates to the word `w`. -/
theorem hdecT {n : MlS} (hQT : ResIns n QT) {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64} {w : BitVec 64}
    (he : ∀ s : State σ, PA E En S s → ∀ v, ev s e = some v → v = .val (.word w))
    (hk : Hoare σ guestCtx (PA E (En.set n (.val (.word w))) S) body QT) :
    Hoare σ guestCtx (PA E En S) (.dec n sh e body) QT :=
  hdecK hQT fun s hs hP v hv hsh => by
    have := he s hP v hv
    subst this
    exact hoare_pre hk fun t _ ht => by subst ht; exact pa_set hP n _

/-- `n = e` for an untracked local. -/
theorem hassignF {n : MlS} {e : ExpHOL 64} (hn : En n = none) :
    HN (PA E En S) (.assign .local n e) (PA E En S) :=
  hoare_assign fun s hs hP v hv _ => ⟨rfl, pa_set_other hP hn v⟩

/-- `n = e` for a tracked local that gets the word `w'`. -/
theorem hassignT {n : MlS} {e : ExpHOL 64} {w' : BitVec 64} (hn : ∃ v0, En n = some v0)
    (he : ∀ s : State σ, PA E En S s → ∀ v, ev s e = some v → v = .val (.word w')) :
    HN (PA E En S) (.assign .local n e) (PA E (En.set n (.val (.word w'))) S) :=
  hoare_assign fun s hs hP v hv _ => by
    have := he s hP v hv
    subst this
    exact ⟨rfl, pa_set hP n _⟩

/-- A guard `if c { throw }`: the continuation sees the condition false. -/
theorem hguard {c : ExpHOL 64} {x : MlS} {ex : ExpHOL 64} :
    HN (PA E En S) (.ite c (.raise x ex) .skip) (fun t => PA E En S t ∧ ev t c = some (.val (.word 0))) :=
  hn_ite hoare_raise (hoare_skip fun s _ h => ⟨rfl, h.1, h.2⟩)

end comb

end InitECandidate.Solver.MemSafe.Eb

#print axioms InitECandidate.Solver.MemSafe.Eb.hdecCallK
