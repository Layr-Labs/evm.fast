import InitECandidate.Solver.SourceCost.Call
import InitECandidate.Solver.SourceCost.Frame
import InitECandidate.Solver.SourceCost.Orbit
import InitECandidate.Solver.SourceCost.EscFree

/-!
# A Hoare logic over `evaluateHOLFiniteState`

`Hoare σ X P p Q`: from every state in context `X` satisfying `P`, if evaluating `p`
ends with a *tracked* result (normal completion `none`, `break`, `continue`, or
`returned v`), then the result `r` and the final state `t` satisfy `Q r t`. Errors,
time-outs, exceptions and final FFI events are not tracked (partial correctness).

The rules mirror the clauses of `evaluateHOLFiniteState_eq_evaluate_def`:

* `hoare_skip`, `hoare_assign` (local), `hoare_return`, `hoare_seq`, `hoare_conseq`;
* `hoare_ite`: each branch gets the value of the condition (nonzero / zero word);
* `hoare_dec`: the body runs from the updated state, the post sees the restored local;
* `hoare_while`: invariant rule, the exit post gets the zero value of the condition;
* `hoare_call` / `hoare_decCall`: consume a callee return specification `FunRet`,
  the caller's locals are restored and updated with the returned value.

`FunRet σ X f R`: whenever `f`'s code lookup on the argument values `vs` succeeds, a
body evaluation from the callee entry locals that returns `v` has `R vs v`.
-/

namespace InitECandidate.Solver.Spec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost

variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}

/-- Expression evaluation exactly as the statement clauses read it. -/
noncomputable abbrev ev (s : PanSemStateFiniteExact width σ) (e : ExpHOL width) : Option (ValueHOL width) :=
  @evalHOLExact width σ _ s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) e

/-- Argument-list evaluation exactly as the call clauses read it. -/
noncomputable abbrev evs (s : PanSemStateFiniteExact width σ) (es : List (ExpHOL width)) :
    Option (List (ValueHOL width)) :=
  @evalListHOLExact width σ _ s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) es

/-- The results the logic speaks about. -/
def Tracked : Option (PanSemResultExact width) → Prop
  | none => True
  | some .break => True
  | some .continue => True
  | some (.returned _) => True
  | some _ => False

@[simp] theorem tracked_none : Tracked (none : Option (PanSemResultExact width)) := trivial
@[simp] theorem tracked_break : Tracked (some (.break : PanSemResultExact width)) := trivial
@[simp] theorem tracked_continue : Tracked (some (.continue : PanSemResultExact width)) := trivial
@[simp] theorem tracked_returned (v : ValueHOL width) :
    Tracked (some (.returned v : PanSemResultExact width)) := trivial
@[simp] theorem not_tracked_error : ¬ Tracked (some (.error : PanSemResultExact width)) := id
@[simp] theorem not_tracked_timeOut : ¬ Tracked (some (.timeOut : PanSemResultExact width)) := id
@[simp] theorem not_tracked_exception (e : MlS) (v : ValueHOL width) :
    ¬ Tracked (some (.exception e v : PanSemResultExact width)) := id
@[simp] theorem not_tracked_finalFfi (e : HolFinalEvent) :
    ¬ Tracked (some (.finalFfi e : PanSemResultExact width)) := id

/-- Partial correctness for tracked results, from states in context `X`. -/
def Hoare (σ : Type) (X : Ctx width) (P : PanSemStateFiniteExact width σ → Prop)
    (p : ProgHOL width)
    (Q : Option (PanSemResultExact width) → PanSemStateFiniteExact width σ → Prop) : Prop :=
  ∀ s, InCtx s X → P s → Tracked (evaluateHOLFiniteState s p).1 →
    Q (evaluateHOLFiniteState s p).1 (evaluateHOLFiniteState s p).2

theorem hoare_conseq {P P' : PanSemStateFiniteExact width σ → Prop}
    {Q Q' : Option (PanSemResultExact width) → PanSemStateFiniteExact width σ → Prop}
    {p : ProgHOL width} (h : Hoare σ X P p Q) (hP : ∀ s, InCtx s X → P' s → P s)
    (hQ : ∀ r t, InCtx t X → Tracked r → Q r t → Q' r t) : Hoare σ X P' p Q' := by
  intro s hs hp ht
  exact hQ _ _ (inCtx_eval hs p) ht (h s hs (hP s hs hp) ht)

theorem hoare_pre {P P' : PanSemStateFiniteExact width σ → Prop}
    {Q : Option (PanSemResultExact width) → PanSemStateFiniteExact width σ → Prop}
    {p : ProgHOL width} (h : Hoare σ X P p Q) (hP : ∀ s, InCtx s X → P' s → P s) :
    Hoare σ X P' p Q :=
  hoare_conseq h hP (fun _ _ _ _ hq => hq)

theorem hoare_post {P : PanSemStateFiniteExact width σ → Prop}
    {Q Q' : Option (PanSemResultExact width) → PanSemStateFiniteExact width σ → Prop}
    {p : ProgHOL width} (h : Hoare σ X P p Q)
    (hQ : ∀ r t, InCtx t X → Tracked r → Q r t → Q' r t) : Hoare σ X P p Q' :=
  hoare_conseq h (fun _ _ hp => hp) hQ

/-- Existential precondition (ghost values). -/
theorem hoare_exists {α : Type} {P : α → PanSemStateFiniteExact width σ → Prop}
    {Q : Option (PanSemResultExact width) → PanSemStateFiniteExact width σ → Prop}
    {p : ProgHOL width} (h : ∀ a, Hoare σ X (P a) p Q) :
    Hoare σ X (fun s => ∃ a, P a s) p Q := by
  intro s hs ⟨a, ha⟩ ht
  exact h a s hs ha ht

/-! ## Leaves -/

theorem hoare_skip {P : PanSemStateFiniteExact width σ → Prop}
    {Q : Option (PanSemResultExact width) → PanSemStateFiniteExact width σ → Prop}
    (h : ∀ s, InCtx s X → P s → Q none s) : Hoare σ X P (.skip : ProgHOL width) Q := by
  intro s hs hp _
  rw [evaluateHOLFiniteState_skip]
  exact h s hs hp

theorem hoare_assign {P : PanSemStateFiniteExact width σ → Prop}
    {Q : Option (PanSemResultExact width) → PanSemStateFiniteExact width σ → Prop}
    {n : MlS} {e : ExpHOL width}
    (h : ∀ s, InCtx s X → P s → ∀ v, ev s e = some v →
      isValidValueHOLFinite s .local n v = true → Q none (setVarHOLFinite n v s)) :
    Hoare σ X P (.assign .local n e) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.assign .local n e)]
  dsimp only
  split
  · intro ht; exact absurd ht (by simp)
  · rename_i v hv
    split
    · intro _; exact h s hs hp v hv (by assumption)
    · intro ht; exact absurd ht (by simp)

theorem hoare_return {P : PanSemStateFiniteExact width σ → Prop}
    {Q : Option (PanSemResultExact width) → PanSemStateFiniteExact width σ → Prop}
    {e : ExpHOL width}
    (h : ∀ s, InCtx s X → P s → ∀ v, ev s e = some v →
      Q (some (.returned v)) (emptyLocalsHOLFinite s)) :
    Hoare σ X P (.return e) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.return e)]
  dsimp only
  split
  · intro ht; exact absurd ht (by simp)
  · rename_i v hv
    split
    · intro _; exact h s hs hp v hv
    · intro ht; exact absurd ht (by simp)

/-! ## Composition -/

theorem hoare_seq {P : PanSemStateFiniteExact width σ → Prop}
    {R Q : Option (PanSemResultExact width) → PanSemStateFiniteExact width σ → Prop}
    {a b : ProgHOL width} (ha : Hoare σ X P a R)
    (hab : ∀ r t, InCtx t X → r ≠ none → Tracked r → R r t → Q r t)
    (hb : Hoare σ X (R none) b Q) : Hoare σ X P (.seq a b) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
  dsimp only
  cases h1 : (evaluateHOLFiniteState s a).1 with
  | none =>
      intro ht
      have hR := ha s hs hp (by rw [h1]; trivial)
      rw [h1] at hR
      exact hb _ (inCtx_eval hs a) hR ht
  | some r =>
      intro ht
      simp only [h1] at ht ⊢
      have hR := ha s hs hp (by rw [h1]; exact ht)
      rw [h1] at hR
      exact hab _ _ (inCtx_eval hs a) (by simp) ht hR

theorem hoare_ite {P : PanSemStateFiniteExact width σ → Prop}
    {Q : Option (PanSemResultExact width) → PanSemStateFiniteExact width σ → Prop}
    {c : ExpHOL width} {a b : ProgHOL width}
    (ha : Hoare σ X (fun s => P s ∧ ∃ w, ev s c = some (.val (.word w)) ∧ w ≠ 0) a Q)
    (hb : Hoare σ X (fun s => P s ∧ ev s c = some (.val (.word 0))) b Q) :
    Hoare σ X P (.ite c a b) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.ite c a b)]
  dsimp only
  split
  · rename_i w hw
    split
    · rename_i h0
      subst h0
      exact hb s hs ⟨hp, hw⟩
    · rename_i h0
      exact ha s hs ⟨hp, w, hw, h0⟩
  · intro ht; exact absurd ht (by simp)

theorem hoare_dec {P : PanSemStateFiniteExact width σ → Prop}
    {Q : Option (PanSemResultExact width) → PanSemStateFiniteExact width σ → Prop}
    {n : MlS} {sh : ShapeHOL} {e : ExpHOL width} {body : ProgHOL width}
    (h : ∀ s, InCtx s X → P s → ∀ v, ev s e = some v → shapeEqHOL sh (shapeOfHOLExact v) = true →
      Hoare σ X (fun t => t = setVarHOLFinite n v s) body
        (fun r t => Q r { t with locals := t.locals.resVarEq (n, s.locals.lookup n) })) :
    Hoare σ X P (.dec n sh e body) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec n sh e body)]
  dsimp only
  split
  · intro ht; exact absurd ht (by simp)
  · rename_i v hv
    split
    · rename_i hsh
      intro ht
      exact h s hs hp v hv hsh _ hs rfl ht
    · intro ht; exact absurd ht (by simp)

/-! ## Loops -/

/-- Invariant rule. The body keeps `I` on normal completion and `continue`; `break` and
`return` from the body must establish the loop's post directly; on exit the condition
evaluates to the zero word. -/
theorem hoare_while {I : PanSemStateFiniteExact width σ → Prop}
    {Q : Option (PanSemResultExact width) → PanSemStateFiniteExact width σ → Prop}
    {c : ExpHOL width} {body : ProgHOL width}
    (hclk : ∀ s, I s → I (decClockHOLFinite s))
    (hb : Hoare σ X (fun s => I s ∧ CondTrue s c) body
      (fun r t => (r = none → I t) ∧ (r = some .continue → I t) ∧
        (r = some .break → Q none t) ∧ (∀ v, r = some (.returned v) → Q r t)))
    (hexit : ∀ s, InCtx s X → I s → ev s c = some (.val (.word 0)) → Q none s) :
    Hoare σ X I (.while c body) Q := by
  suffices H : ∀ k (s : PanSemStateFiniteExact width σ), s.clock = k → InCtx s X → I s →
      Tracked (evaluateHOLFiniteState s (.while c body)).1 →
      Q (evaluateHOLFiniteState s (.while c body)).1
        (evaluateHOLFiniteState s (.while c body)).2 from
    fun s hs hi ht => H _ s rfl hs hi ht
  intro k
  induction k using Nat.strongRecOn with
  | _ k ih =>
  intro s hk hs hi
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.while c body)]
  dsimp only
  split
  · rename_i w hw
    split
    · rename_i hne
      split
      · intro ht; exact absurd ht (by simp)
      · rename_i hclock
        have hcond : CondTrue (decClockHOLFinite s) c := by
          refine ⟨w, ?_, hne⟩
          unfold decClockHOLFinite
          rw [evalHOLFinite_upd_clock_eq]
          exact hw
        have hdecs : InCtx (decClockHOLFinite s) X := hs
        have hbody := hb (decClockHOLFinite s) hdecs ⟨hclk s hi, hcond⟩
        have hlt : (evaluateHOLFiniteState (decClockHOLFinite s) body).2.clock < k := by
          have := evaluateHOLFiniteState_clock_le (decClockHOLFinite s) body
          simp only [decClockHOLFinite] at this ⊢
          omega
        have hctx := inCtx_eval hdecs body
        cases ho : (evaluateHOLFiniteState (decClockHOLFinite s) body).1 with
        | none =>
            simp only []
            have := (hbody (by rw [ho]; trivial)).1
            rw [ho] at this
            exact ih _ hlt _ rfl hctx (this rfl)
        | some r =>
            cases r with
            | «continue» =>
                simp only []
                have := (hbody (by rw [ho]; trivial)).2.1
                rw [ho] at this
                exact ih _ hlt _ rfl hctx (this rfl)
            | «break» =>
                simp only []
                intro _
                have := (hbody (by rw [ho]; trivial)).2.2.1
                rw [ho] at this
                exact this rfl
            | returned v =>
                simp only []
                intro _
                have := (hbody (by rw [ho]; trivial)).2.2.2 v
                rw [ho] at this
                exact this rfl
            | error => simp only []; intro ht; exact absurd ht (by simp)
            | timeOut => simp only []; intro ht; exact absurd ht (by simp)
            | exception e v => simp only []; intro ht; exact absurd ht (by simp)
            | finalFfi e => simp only []; intro ht; exact absurd ht (by simp)
    · rename_i hne
      intro _
      have hw0 : w = 0 := by simpa using hne
      subst hw0
      exact hexit s hs hi hw
  · intro ht; exact absurd ht (by simp)

/-! ## Calls -/

/-- Return specification of `f`: from the callee entry locals of any successful code
lookup on `vs`, a body evaluation that returns `v` satisfies `R vs v`. -/
def FunRet (σ : Type) (X : Ctx width) (f : MlS)
    (R : List (ValueHOL width) → ValueHOL width → Prop) : Prop :=
  ∀ vs body callee rs, lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
    Hoare σ X (fun s => s.locals = callee) body
      (fun r _ => ∀ v, r = some (.returned v) → R vs v)

/-- Every function satisfies the trivial return specification. -/
theorem funRet_true (f : MlS) : FunRet σ X f (fun _ _ => True) := by
  intro _ _ _ _ _ _ _ _ _ _ _
  trivial

theorem FunRet.mono {f : MlS} {R R' : List (ValueHOL width) → ValueHOL width → Prop}
    (h : FunRet σ X f R) (hR : ∀ vs v, R vs v → R' vs v) : FunRet σ X f R' := by
  intro vs body callee rs hl
  exact hoare_post (h vs body callee rs hl) (fun r _ _ _ hq v hv => hR _ _ (hq v hv))

theorem entry_inCtx {s : PanSemStateFiniteExact width σ} (hs : InCtx s X)
    (callee : HolFiniteMapExact MlS (ValueHOL width)) :
    InCtx (callEntryStateHOLFinite s callee) X := hs

/-- A call assigning its result to the local `x`, without handler. -/
theorem hoare_call {P : PanSemStateFiniteExact width σ → Prop}
    {Q : Option (PanSemResultExact width) → PanSemStateFiniteExact width σ → Prop}
    {x f : MlS} {args : List (ExpHOL width)}
    {R : List (ValueHOL width) → ValueHOL width → Prop} (hf : FunRet σ X f R)
    (h : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs → ∀ v, R vs v →
      isValidValueHOLExact s.toExact .local x v = true →
      ∀ t : PanSemStateFiniteExact width σ, InCtx t X → t.locals = s.locals.update (x, v) →
        Q none t) :
    Hoare σ X P (.call (some (some (.local, x), none)) f args) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.call (some (some (.local, x), none)) f args)]
  dsimp only
  split
  · intro ht; exact absurd ht (by simp)
  · rename_i vs hvs
    rw [hs.1]
    split
    · intro ht; exact absurd ht (by simp)
    · rename_i body callee rs hlook
      split
      · intro ht; exact absurd ht (by simp)
      · rename_i hclock
        have hspec := hf vs body callee rs hlook _ (entry_inCtx hs callee) rfl
        have hctx := inCtx_eval (entry_inCtx hs callee) body
        cases ho : evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body with
        | mk r st =>
          rw [ho] at hspec hctx
          dsimp only at hspec hctx
          cases r with
          | none => dsimp only; intro ht; exact absurd ht (by simp)
          | some r =>
            cases r with
            | returned v =>
                dsimp only
                have hR := hspec (by simp) v rfl
                split
                · split
                  · rename_i hvalid
                    intro _
                    exact h s hs hp vs hvs v hR hvalid _
                      hctx rfl
                  · intro ht; exact absurd ht (by simp)
                · intro ht; exact absurd ht (by simp)
            | «break» => dsimp only; intro ht; exact absurd ht (by simp)
            | «continue» => dsimp only; intro ht; exact absurd ht (by simp)
            | error => dsimp only; intro ht; exact absurd ht (by simp)
            | timeOut => dsimp only; intro ht; exact absurd ht (by simp)
            | exception e v => dsimp only; intro ht; exact absurd ht (by simp)
            | finalFfi e => dsimp only; intro ht; exact absurd ht (by simp)

/-- `var rn = f(args); k`: the continuation runs with the caller's locals plus `rn`;
the post sees `rn` restored. -/
theorem hoare_decCall {P : PanSemStateFiniteExact width σ → Prop}
    {Q : Option (PanSemResultExact width) → PanSemStateFiniteExact width σ → Prop}
    {rn f : MlS} {sh : ShapeHOL} {args : List (ExpHOL width)} {k : ProgHOL width}
    {R : List (ValueHOL width) → ValueHOL width → Prop} (hf : FunRet σ X f R)
    (h : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs → ∀ v, R vs v →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      Hoare σ X (fun t => t.locals = s.locals.update (rn, v)) k
        (fun r t => Q r { t with locals := t.locals.resVarEq (rn, s.locals.lookup rn) })) :
    Hoare σ X P (.decCall rn sh f args k) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.decCall rn sh f args k)]
  dsimp only
  split
  · intro ht; exact absurd ht (by simp)
  · rename_i vs hvs
    rw [hs.1]
    split
    · intro ht; exact absurd ht (by simp)
    · rename_i body callee rs hlook
      split
      · intro ht; exact absurd ht (by simp)
      · rename_i hclock
        have hspec := hf vs body callee rs hlook _ (entry_inCtx hs callee) rfl
        have hctx := inCtx_eval (entry_inCtx hs callee) body
        cases ho : (evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body).1 with
        | none => dsimp only; intro ht; exact absurd ht (by simp)
        | some r =>
          cases r with
          | returned v =>
              dsimp only
              rw [ho] at hspec
              have hR := hspec (by simp) v rfl
              split
              · rename_i hsh
                simp only [Bool.and_eq_true] at hsh
                intro ht
                exact h s hs hp vs hvs v hR hsh.1 _
                  hctx rfl ht
              · intro ht; exact absurd ht (by simp)
          | «break» => dsimp only; intro ht; exact absurd ht (by simp)
          | «continue» => dsimp only; intro ht; exact absurd ht (by simp)
          | error => dsimp only; intro ht; exact absurd ht (by simp)
          | timeOut => dsimp only; intro ht; exact absurd ht (by simp)
          | exception e v => dsimp only; intro ht; exact absurd ht (by simp)
          | finalFfi e => dsimp only; intro ht; exact absurd ht (by simp)

/-! ## From triples to the measure premises of the cost rules -/

/-- A body triple "normal completion or `continue` decreases `μ`" gives the `hdec`
premise of `cost_while` / `cost_while_doomed` (with an extra side condition `E`). -/
theorem hdec_of_hoare {c : ExpHOL width} {body : ProgHOL width}
    (μ : PanSemStateFiniteExact width σ → Nat) (E : PanSemStateFiniteExact width σ → Prop)
    (hμ : ∀ s, μ (decClockHOLFinite s) = μ s) (hE : ∀ s, E s → E (decClockHOLFinite s))
    (h : ∀ k, Hoare σ X (fun s => E s ∧ CondTrue s c ∧ μ s = k) body
      (fun r t => r = none ∨ r = some .continue → μ t < k)) :
    ∀ s : PanSemStateFiniteExact width σ, InCtx s X → CondTrue s c → E s →
      ((evaluateHOLFiniteState (decClockHOLFinite s) body).1 = none ∨
        (evaluateHOLFiniteState (decClockHOLFinite s) body).1 = some .continue) →
      μ (evaluateHOLFiniteState (decClockHOLFinite s) body).2 < μ s := by
  intro s hs hc he hexit
  have hc' : CondTrue (decClockHOLFinite s) c := condTrue_decClock'.mpr hc
  have := h (μ s) (decClockHOLFinite s) hs ⟨hE s he, hc', hμ s⟩
    (by rcases hexit with h | h <;> rw [h] <;> simp)
  exact this hexit
where
  condTrue_decClock' {s : PanSemStateFiniteExact width σ} :
      CondTrue (decClockHOLFinite s) c ↔ CondTrue s c := by
    unfold CondTrue decClockHOLFinite
    rw [evalHOLFinite_upd_clock_eq]

/-! ## Expression evaluation, compositionally -/

section evalLemmas
variable {s : PanSemStateFiniteExact width σ}

@[simp] theorem ev_const (w : BitVec width) : ev s (.const w) = some (.val (.word w)) := rfl

@[simp] theorem ev_var_local (n : MlS) : ev s (.var .local n) = s.locals.lookup n := rfl

theorem evs_nil : evs s ([] : List (ExpHOL width)) = some [] := rfl

theorem evs_cons {e : ExpHOL width} {es : List (ExpHOL width)} {v : ValueHOL width}
    {vs : List (ValueHOL width)} (he : ev s e = some v) (hes : evs s es = some vs) :
    evs s (e :: es) = some (v :: vs) := by
  simp only [ev, evs, evalListHOLExact] at he hes ⊢
  rw [he, hes]

theorem ev_rstruct {es : List (ExpHOL width)} {vs : List (ValueHOL width)}
    (h : evs s es = some vs) : ev s (.rstruct es) = some (.rStruct vs) := by
  simp only [ev, evs, evalHOLExact] at h ⊢
  rw [h]
  rfl

theorem ev_rfield {x : ExpHOL width} {vs : List (ValueHOL width)}
    (h : ev s x = some (.rStruct vs)) (i : Nat) : ev s (.rfield i x) = vs[i]? := by
  simp only [ev, evalHOLExact] at h ⊢
  rw [h]

theorem ev_shift {o : Shift} {a b : ExpHOL width} {x y : BitVec width}
    (ha : ev s a = some (.val (.word x))) (hb : ev s b = some (.val (.word y))) :
    ev s (.shift o a b) = (wordShiftHOL o x y.toNat).map fun w => .val (.word w) := by
  simp only [ev, evalHOLExact] at ha hb ⊢
  rw [ha, hb]

theorem ev_cmp {o : Cmp} {a b : ExpHOL width} {x y : BitVec width}
    (ha : ev s a = some (.val (.word x))) (hb : ev s b = some (.val (.word y))) :
    ev s (.cmp o a b) =
      some (.val (.word (if Flapjack.Compiler.Encoders.Asm.wordCmpHOL o x y then 1 else 0))) := by
  simp only [ev, evalHOLExact] at ha hb ⊢
  rw [ha, hb]

theorem ev_op {o : BinOp} {es : List (ExpHOL width)} {xs : List (BitVec width)}
    (h : evs s es = some (xs.map fun w => .val (.word w))) :
    ev s (.op o es) = (wordOpHOL o xs).map fun w => .val (.word w) := by
  simp only [ev, evs, evalHOLExact] at h ⊢
  rw [h]
  dsimp only
  have : (xs.map fun w => (ValueHOL.val (HolWordLab.word w) : ValueHOL width)).all valueIsWord
      = true := by
    simp [valueIsWord]
  rw [if_pos this]
  congr 2
  clear h this
  induction xs with
  | nil => rfl
  | cons x xs ih => simp only [List.map_cons, valueWord, ih]

theorem ev_op2 {o : BinOp} {a b : ExpHOL width} {x y : BitVec width}
    (ha : ev s a = some (.val (.word x))) (hb : ev s b = some (.val (.word y))) :
    ev s (.op o [a, b]) = (wordOpHOL o [x, y]).map fun w => .val (.word w) :=
  ev_op (xs := [x, y]) (evs_cons ha (evs_cons hb evs_nil))

end evalLemmas

/-! ## Local-map helpers -/

theorem lookup_update_self (m : HolFiniteMapExact MlS (ValueHOL width)) (x : MlS)
    (v : ValueHOL width) : (m.update (x, v)).lookup x = some v := by
  simp [FUPDATE]

theorem lookup_update_ne (m : HolFiniteMapExact MlS (ValueHOL width)) {x y : MlS}
    (v : ValueHOL width) (h : x ≠ y) : (m.update (x, v)).lookup y = m.lookup y := by
  simp [FUPDATE, h]

theorem lookup_resVarEq_ne (m : HolFiniteMapExact MlS (ValueHOL width)) {x y : MlS}
    (old : Option (ValueHOL width)) (h : x ≠ y) :
    (m.resVarEq (x, old)).lookup y = m.lookup y := by
  rw [lookup_resVarEq_restore]
  simp [Ne.symm h]

end InitECandidate.Solver.Spec
