import InitECandidate.Solver.Spec.CostInv

/-!
# A Hoare logic over good results

`HoareG σ X P p Q`: from every state in context satisfying `P`, if evaluating `p` gives a
*good* result (`Good`: not a time-out, not an error), then `Q` holds of the result and the
final state. Unlike `Hoare` (tracked results only) this also speaks about exceptions and
final FFI events, so it can show that a path *only* completes normally — the "doomed
state" step of a loop that would otherwise run forever. Calls must go to escape-free
callees (`hoareG_decCallS`).
-/

namespace InitECandidate.Solver.Spec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost

variable {σ : Type} {X : Ctx 64}

def HoareG (σ : Type) (X : Ctx 64) (P : PanSemStateFiniteExact 64 σ → Prop) (p : ProgHOL 64)
    (Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop) : Prop :=
  ∀ s, InCtx s X → P s → Good (evaluateHOLFiniteState s p).1 →
    Q (evaluateHOLFiniteState s p).1 (evaluateHOLFiniteState s p).2

section rules
variable {P P' : PanSemStateFiniteExact 64 σ → Prop}
  {Q Q' R : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop}

theorem hoareG_conseq {p : ProgHOL 64} (h : HoareG σ X P p Q) (hP : ∀ s, InCtx s X → P' s → P s)
    (hQ : ∀ r t, InCtx t X → Good r → Q r t → Q' r t) : HoareG σ X P' p Q' := by
  intro s hs hp hg
  exact hQ _ _ (inCtx_eval hs p) hg (h s hs (hP s hs hp) hg)

theorem hoareG_pre {p : ProgHOL 64} (h : HoareG σ X P p Q) (hP : ∀ s, InCtx s X → P' s → P s) :
    HoareG σ X P' p Q :=
  hoareG_conseq h hP (fun _ _ _ _ h => h)

theorem hoareG_false {p : ProgHOL 64} (h : ∀ s, InCtx s X → P s → False) : HoareG σ X P p Q :=
  fun s hs hp _ => (h s hs hp).elim

theorem hoareG_skip (h : ∀ s, InCtx s X → P s → Q none s) : HoareG σ X P .skip Q := by
  intro s hs hp _
  rw [evaluateHOLFiniteState_skip]
  exact h s hs hp

theorem hoareG_assign {n : MlS} {e : ExpHOL 64}
    (h : ∀ s, InCtx s X → P s → ∀ v, ev s e = some v →
      isValidValueHOLFinite s .local n v = true → Q none (setVarHOLFinite n v s)) :
    HoareG σ X P (.assign .local n e) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.assign .local n e)]
  dsimp only
  split
  · intro hg; exact absurd hg (by simp [Good])
  · rename_i v hv
    split
    · intro _; exact h s hs hp v hv (by assumption)
    · intro hg; exact absurd hg (by simp [Good])

theorem hoareG_seq {a b : ProgHOL 64} (ha : HoareG σ X P a R)
    (hab : ∀ r t, InCtx t X → r ≠ none → Good r → R r t → Q r t)
    (hb : HoareG σ X (R none) b Q) : HoareG σ X P (.seq a b) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
  dsimp only
  cases h1 : (evaluateHOLFiniteState s a).1 with
  | none =>
      intro hg
      have hR := ha s hs hp (by rw [h1]; simp [Good])
      rw [h1] at hR
      exact hb _ (inCtx_eval hs a) hR hg
  | some r =>
      intro hg
      simp only [h1] at hg ⊢
      have hR := ha s hs hp (by rw [h1]; exact hg)
      rw [h1] at hR
      exact hab _ _ (inCtx_eval hs a) (by simp) hg hR

theorem hoareG_ite {c : ExpHOL 64} {a b : ProgHOL 64}
    (ha : HoareG σ X (fun s => P s ∧ ∃ w, ev s c = some (.val (.word w)) ∧ w ≠ 0) a Q)
    (hb : HoareG σ X (fun s => P s ∧ ev s c = some (.val (.word 0))) b Q) :
    HoareG σ X P (.ite c a b) Q := by
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
  · intro hg; exact absurd hg (by simp [Good])

theorem hoareG_dec {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64}
    (h : ∀ s, InCtx s X → P s → ∀ v, ev s e = some v → shapeEqHOL sh (shapeOfHOLExact v) = true →
      HoareG σ X (fun t => t = setVarHOLFinite n v s) body
        (fun r t => Q r { t with locals := t.locals.resVarEq (n, s.locals.lookup n) })) :
    HoareG σ X P (.dec n sh e body) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec n sh e body)]
  dsimp only
  split
  · intro hg; exact absurd hg (by simp [Good])
  · rename_i v hv
    split
    · rename_i hsh
      intro hg
      exact h s hs hp v hv hsh _ hs rfl hg
    · intro hg; exact absurd hg (by simp [Good])

/-- `var rn = f(args); k` for an escape-free `f`. -/
theorem hoareG_decCallS {rn f : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {Rf : List (ValueHOL 64) → PanSemStateFiniteExact 64 σ → PanSemResultExact 64 →
      PanSemStateFiniteExact 64 σ → Prop} (hf : FunSpec σ X f Rf) (hesc : CalleeEscFree σ X f)
    (h : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : PanSemStateFiniteExact 64 σ),
        Rf vs (callEntryStateHOLFinite s callee) (.returned v) st → InCtx st X →
        shapeEqHOL (shapeOfHOLExact v) sh = true →
        HoareG σ X (fun t => t = setVarHOLFinite rn v { st with locals := s.locals }) k
          (fun r t => Q r { t with locals := t.locals.resVarEq (rn, s.locals.lookup rn) })) :
    HoareG σ X P (.decCall rn sh f args k) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.decCall rn sh f args k)]
  dsimp only
  split
  · intro hg; exact absurd hg (by simp [Good])
  · rename_i vs hvs
    rw [hs.1]
    split
    · intro hg; exact absurd hg (by simp [Good])
    · rename_i body callee rs hlook
      split
      · intro hg; exact absurd hg (by simp [Good])
      · have hspec := hf vs body callee rs hlook _ (entry_inCtx hs callee) rfl
        have hctx := inCtx_eval (entry_inCtx hs callee) body
        have hne := hesc vs body callee rs hlook (callEntryStateHOLFinite s callee) hs.1
        cases ho : (evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body).1 with
        | none => dsimp only; intro hg; exact absurd hg (by simp [Good])
        | some r =>
          cases r with
          | returned v =>
              dsimp only
              have hR := hspec _ ho
              split
              · rename_i hsh
                simp only [Bool.and_eq_true] at hsh
                intro hg
                exact h s hs hp vs hvs callee v _ hR hctx hsh.1 _ hctx rfl hg
              · intro hg; exact absurd hg (by simp [Good])
          | «break» => dsimp only; intro hg; exact absurd hg (by simp [Good])
          | «continue» => dsimp only; intro hg; exact absurd hg (by simp [Good])
          | error => dsimp only; intro hg; exact absurd hg (by simp [Good])
          | timeOut => dsimp only; intro hg; exact absurd hg (by simp [Good])
          | exception e v => rw [ho] at hne; exact absurd rfl (hne.1 e v)
          | finalFfi e => rw [ho] at hne; exact absurd rfl (hne.2 e)

end rules

end InitECandidate.Solver.Spec
