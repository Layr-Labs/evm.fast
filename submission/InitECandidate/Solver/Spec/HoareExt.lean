import InitECandidate.Solver.Spec.Loop

/-!
# Extensions of the Hoare layer: state-relational callee specs, globals, raises

* `FunSpec σ X f R`: a *state-relational* callee specification. For every code lookup of
  `f` on `vs`, every evaluation of the body from an entry state `s` (in context, with the
  callee's entry locals) that ends with a result `r` relates `s`, `r` and the final state:
  `R vs s r t`. `FunRet` is the special case that only speaks about returned values
  (`funSpec_of_funRet`); `FunSpec` can also say what a call does to globals or memory
  (e.g. the global-write footprint of `Spec/GlobalFree.lean`).
* Call rules over `FunSpec`: `hoare_callD` (result discarded, `f(args);`), `hoare_callA`
  (result assigned to a local or global), `hoare_decCallS` (`var x = f(args); k`),
  `hoare_tailCall` (`return f(args)`), `hoare_callH` (with an exception handler).
* `hoare_assignK` (local or global assignment), `hoare_raise` (a raise has no tracked
  result), `hoare_guard` (`if c { fail(...) }` where `fail` never returns).
* Expression evaluation: globals, `add`/`sub` on words, inversion of comparisons and of
  byte/word loads.
-/

namespace InitECandidate.Solver.Spec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost

section general
variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}

/-- The post "every returned value satisfies `φ`". -/
def RetP (φ : ValueHOL width → Prop) (r : Option (PanSemResultExact width))
    (_ : PanSemStateFiniteExact width σ) : Prop :=
  ∀ v, r = some (.returned v) → φ v

theorem retP_none {φ : ValueHOL width → Prop} (t : PanSemStateFiniteExact width σ) :
    RetP φ none t := fun _ h => by cases h

theorem retP_returned {φ : ValueHOL width → Prop} {v : ValueHOL width}
    (t : PanSemStateFiniteExact width σ) (h : φ v) : RetP φ (some (.returned v)) t := by
  intro w hw
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
  subst hw
  exact h

/-! ## Leaves -/

/-- A raise never has a tracked result. -/
theorem hoare_raise {P : PanSemStateFiniteExact width σ → Prop}
    {Q : Option (PanSemResultExact width) → PanSemStateFiniteExact width σ → Prop}
    {x : MlS} {e : ExpHOL width} : Hoare σ X P (.raise x e) Q := by
  intro s _ _
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.raise x e)]
  dsimp only
  split
  · split
    · intro ht; exact absurd ht (by simp)
    · intro ht; exact absurd ht (by simp)
  · intro ht; exact absurd ht (by simp)

/-- Assignment to a local or a global. -/
theorem hoare_assignK {P : PanSemStateFiniteExact width σ → Prop}
    {Q : Option (PanSemResultExact width) → PanSemStateFiniteExact width σ → Prop}
    {k : VarKind} {n : MlS} {e : ExpHOL width}
    (h : ∀ s, InCtx s X → P s → ∀ v, ev s e = some v →
      isValidValueHOLFinite s k n v = true → Q none (setKvarHOLFinite k n v s)) :
    Hoare σ X P (.assign k n e) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.assign k n e)]
  dsimp only
  split
  · intro ht; exact absurd ht (by simp)
  · rename_i v hv
    split
    · intro _; exact h s hs hp v hv (by assumption)
    · intro ht; exact absurd ht (by simp)

theorem hoare_annot {P : PanSemStateFiniteExact width σ → Prop}
    {Q : Option (PanSemResultExact width) → PanSemStateFiniteExact width σ → Prop}
    {a b : MlS} (h : ∀ s, InCtx s X → P s → Q none s) :
    Hoare σ X P (.annot a b : ProgHOL width) Q := by
  intro s hs hp _
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.annot a b)]
  exact h s hs hp

/-! ## State-relational callee specifications -/

/-- `R vs s r t`: an evaluation of `f`'s body on arguments `vs` from the entry state `s`
that ends with `some r` in state `t`. -/
def FunSpec (σ : Type) (X : Ctx width) (f : MlS)
    (R : List (ValueHOL width) → PanSemStateFiniteExact width σ → PanSemResultExact width →
      PanSemStateFiniteExact width σ → Prop) : Prop :=
  ∀ vs body callee rs, lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
    ∀ s : PanSemStateFiniteExact width σ, InCtx s X → s.locals = callee →
      ∀ r, (evaluateHOLFiniteState s body).1 = some r → R vs s r (evaluateHOLFiniteState s body).2

theorem funSpec_true (f : MlS) : FunSpec σ X f (fun _ _ _ _ => True) :=
  fun _ _ _ _ _ _ _ _ _ _ => trivial

theorem FunSpec.mono {f : MlS}
    {R R' : List (ValueHOL width) → PanSemStateFiniteExact width σ → PanSemResultExact width →
      PanSemStateFiniteExact width σ → Prop}
    (h : FunSpec σ X f R) (hR : ∀ vs s r t, R vs s r t → R' vs s r t) : FunSpec σ X f R' :=
  fun vs body callee rs hl s hs hloc r hr => hR _ _ _ _ (h vs body callee rs hl s hs hloc r hr)

theorem FunSpec.and {f : MlS}
    {R R' : List (ValueHOL width) → PanSemStateFiniteExact width σ → PanSemResultExact width →
      PanSemStateFiniteExact width σ → Prop}
    (h : FunSpec σ X f R) (h' : FunSpec σ X f R') : FunSpec σ X f (fun vs s r t => R vs s r t ∧ R' vs s r t) :=
  fun vs body callee rs hl s hs hloc r hr =>
    ⟨h vs body callee rs hl s hs hloc r hr, h' vs body callee rs hl s hs hloc r hr⟩

/-- A return specification as a state-relational one. -/
theorem funSpec_of_funRet {f : MlS} {R : List (ValueHOL width) → ValueHOL width → Prop}
    (h : FunRet σ X f R) : FunSpec σ X f (fun vs _ r _ => ∀ v, r = .returned v → R vs v) := by
  intro vs body callee rs hl s hs hloc r hr v hv
  subst hv
  have := h vs body callee rs hl s hs hloc (by rw [hr]; trivial)
  rw [hr] at this
  exact this v rfl

/-- A function that never returns. -/
theorem funRet_never_of {f : MlS} (h : ∀ vs body callee rs,
    lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
      Hoare σ X (fun s => s.locals = callee) body (fun r _ => ∀ v, r ≠ some (.returned v))) :
    FunRet σ X f (fun _ _ => False) := by
  intro vs body callee rs hl s hs hloc ht v hv
  exact h vs body callee rs hl s hs hloc ht v hv

/-! ## Call rules -/

/-- `f(args);` (result discarded, no handler): the caller continues with its own locals
and the callee's final state otherwise. -/
theorem hoare_callD {P : PanSemStateFiniteExact width σ → Prop}
    {Q : Option (PanSemResultExact width) → PanSemStateFiniteExact width σ → Prop}
    {f : MlS} {args : List (ExpHOL width)}
    {R : List (ValueHOL width) → PanSemStateFiniteExact width σ → PanSemResultExact width →
      PanSemStateFiniteExact width σ → Prop} (hf : FunSpec σ X f R)
    (h : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : PanSemStateFiniteExact width σ),
        R vs (callEntryStateHOLFinite s callee) (.returned v) st → InCtx st X →
        Q none { st with locals := s.locals }) :
    Hoare σ X P (.call (some (none, none)) f args) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.call (some (none, none)) f args)]
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
      · have hspec := hf vs body callee rs hlook _ (entry_inCtx hs callee) rfl
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
                split
                · intro _; exact h s hs hp vs hvs callee v st (hspec _ rfl) hctx
                · intro ht; exact absurd ht (by simp)
            | «break» => dsimp only; intro ht; exact absurd ht (by simp)
            | «continue» => dsimp only; intro ht; exact absurd ht (by simp)
            | error => dsimp only; intro ht; exact absurd ht (by simp)
            | timeOut => dsimp only; intro ht; exact absurd ht (by simp)
            | exception e v => dsimp only; intro ht; exact absurd ht (by simp)
            | finalFfi e => dsimp only; intro ht; exact absurd ht (by simp)

/-- `x = f(args);` for a local or global `x` (no handler). -/
theorem hoare_callA {P : PanSemStateFiniteExact width σ → Prop}
    {Q : Option (PanSemResultExact width) → PanSemStateFiniteExact width σ → Prop}
    {k : VarKind} {x f : MlS} {args : List (ExpHOL width)}
    {R : List (ValueHOL width) → PanSemStateFiniteExact width σ → PanSemResultExact width →
      PanSemStateFiniteExact width σ → Prop} (hf : FunSpec σ X f R)
    (h : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : PanSemStateFiniteExact width σ),
        R vs (callEntryStateHOLFinite s callee) (.returned v) st → InCtx st X →
        isValidValueHOLExact s.toExact k x v = true →
        Q none (setKvarHOLFinite k x v { st with locals := s.locals })) :
    Hoare σ X P (.call (some (some (k, x), none)) f args) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.call (some (some (k, x), none)) f args)]
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
      · have hspec := hf vs body callee rs hlook _ (entry_inCtx hs callee) rfl
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
                split
                · split
                  · rename_i hvalid
                    intro _
                    exact h s hs hp vs hvs callee v st (hspec _ rfl) hctx hvalid
                  · intro ht; exact absurd ht (by simp)
                · intro ht; exact absurd ht (by simp)
            | «break» => dsimp only; intro ht; exact absurd ht (by simp)
            | «continue» => dsimp only; intro ht; exact absurd ht (by simp)
            | error => dsimp only; intro ht; exact absurd ht (by simp)
            | timeOut => dsimp only; intro ht; exact absurd ht (by simp)
            | exception e v => dsimp only; intro ht; exact absurd ht (by simp)
            | finalFfi e => dsimp only; intro ht; exact absurd ht (by simp)

/-- `return f(args)` (tail call). -/
theorem hoare_tailCall {P : PanSemStateFiniteExact width σ → Prop}
    {Q : Option (PanSemResultExact width) → PanSemStateFiniteExact width σ → Prop}
    {f : MlS} {args : List (ExpHOL width)}
    {R : List (ValueHOL width) → PanSemStateFiniteExact width σ → PanSemResultExact width →
      PanSemStateFiniteExact width σ → Prop} (hf : FunSpec σ X f R)
    (h : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : PanSemStateFiniteExact width σ),
        R vs (callEntryStateHOLFinite s callee) (.returned v) st → InCtx st X →
        Q (some (.returned v)) (emptyLocalsHOLFinite st)) :
    Hoare σ X P (.call none f args) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.call none f args)]
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
      · have hspec := hf vs body callee rs hlook _ (entry_inCtx hs callee) rfl
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
                split
                · intro _; exact h s hs hp vs hvs callee v st (hspec _ rfl) hctx
                · intro ht; exact absurd ht (by simp)
            | «break» => dsimp only; intro ht; exact absurd ht (by simp)
            | «continue» => dsimp only; intro ht; exact absurd ht (by simp)
            | error => dsimp only; intro ht; exact absurd ht (by simp)
            | timeOut => dsimp only; intro ht; exact absurd ht (by simp)
            | exception e v => dsimp only; intro ht; exact absurd ht (by simp)
            | finalFfi e => dsimp only; intro ht; exact absurd ht (by simp)

/-- `f(args)` with result target `tgt` and an exception handler `catch eid => hv { hp }`:
a normal return continues as without handler; a caught exception runs the handler from
the caller's locals with `hv` bound. -/
theorem hoare_callH {P : PanSemStateFiniteExact width σ → Prop}
    {Q : Option (PanSemResultExact width) → PanSemStateFiniteExact width σ → Prop}
    {tgt : Option (VarKind × MlS)} {eid hv : MlS} {hp : ProgHOL width}
    {f : MlS} {args : List (ExpHOL width)}
    {R : List (ValueHOL width) → PanSemStateFiniteExact width σ → PanSemResultExact width →
      PanSemStateFiniteExact width σ → Prop} (hf : FunSpec σ X f R)
    (hret : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : PanSemStateFiniteExact width σ),
        R vs (callEntryStateHOLFinite s callee) (.returned v) st → InCtx st X →
        (tgt = none → Q none { st with locals := s.locals }) ∧
        (∀ k x, tgt = some (k, x) → isValidValueHOLExact s.toExact k x v = true →
          Q none (setKvarHOLFinite k x v { st with locals := s.locals })))
    (hexn : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : PanSemStateFiniteExact width σ),
        R vs (callEntryStateHOLFinite s callee) (.exception eid v) st → InCtx st X →
        Hoare σ X (fun t => t = setVarHOLFinite hv v { st with locals := s.locals }) hp Q) :
    Hoare σ X P (.call (some (tgt, some (eid, hv, hp))) f args) Q := by
  intro s hs hpre
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.call (some (tgt, some (eid, hv, hp))) f args)]
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
      · have hspec := hf vs body callee rs hlook _ (entry_inCtx hs callee) rfl
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
                have H := hret s hs hpre vs hvs callee v st (hspec _ rfl) hctx
                split
                · cases tgt with
                  | none => dsimp only; intro _; exact H.1 rfl
                  | some kx =>
                      obtain ⟨k, x⟩ := kx
                      dsimp only
                      split
                      · rename_i hvalid
                        intro _; exact H.2 k x rfl hvalid
                      · intro ht; exact absurd ht (by simp)
                · intro ht; exact absurd ht (by simp)
            | exception e v =>
                dsimp only
                split
                · rename_i he
                  subst he
                  split
                  · split
                    · intro ht
                      exact hexn s hs hpre vs hvs callee v st (hspec _ rfl) hctx _ hctx rfl ht
                    · intro ht; exact absurd ht (by simp)
                  · intro ht; exact absurd ht (by simp)
                · intro ht; exact absurd ht (by simp)
            | «break» => dsimp only; intro ht; exact absurd ht (by simp)
            | «continue» => dsimp only; intro ht; exact absurd ht (by simp)
            | error => dsimp only; intro ht; exact absurd ht (by simp)
            | timeOut => dsimp only; intro ht; exact absurd ht (by simp)
            | finalFfi e => dsimp only; intro ht; exact absurd ht (by simp)

/-- `var rn = f(args); k` over a state-relational callee specification. -/
theorem hoare_decCallS {P : PanSemStateFiniteExact width σ → Prop}
    {Q : Option (PanSemResultExact width) → PanSemStateFiniteExact width σ → Prop}
    {rn f : MlS} {sh : ShapeHOL} {args : List (ExpHOL width)} {k : ProgHOL width}
    {R : List (ValueHOL width) → PanSemStateFiniteExact width σ → PanSemResultExact width →
      PanSemStateFiniteExact width σ → Prop} (hf : FunSpec σ X f R)
    (h : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : PanSemStateFiniteExact width σ),
        R vs (callEntryStateHOLFinite s callee) (.returned v) st → InCtx st X →
        shapeEqHOL (shapeOfHOLExact v) sh = true →
        Hoare σ X (fun t => t = setVarHOLFinite rn v { st with locals := s.locals }) k
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
      · have hspec := hf vs body callee rs hlook _ (entry_inCtx hs callee) rfl
        have hctx := inCtx_eval (entry_inCtx hs callee) body
        cases ho : (evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body).1 with
        | none => dsimp only; intro ht; exact absurd ht (by simp)
        | some r =>
          cases r with
          | returned v =>
              dsimp only
              have hR := hspec _ ho
              split
              · rename_i hsh
                simp only [Bool.and_eq_true] at hsh
                intro ht
                exact h s hs hp vs hvs callee v _ hR hctx hsh.1 _ hctx rfl ht
              · intro ht; exact absurd ht (by simp)
          | «break» => dsimp only; intro ht; exact absurd ht (by simp)
          | «continue» => dsimp only; intro ht; exact absurd ht (by simp)
          | error => dsimp only; intro ht; exact absurd ht (by simp)
          | timeOut => dsimp only; intro ht; exact absurd ht (by simp)
          | exception e v => dsimp only; intro ht; exact absurd ht (by simp)
          | finalFfi e => dsimp only; intro ht; exact absurd ht (by simp)

/-- `if c { fail(args); }` where `fail` never returns: normal completion with the
condition false and the state unchanged. -/
theorem hoare_guard {P : PanSemStateFiniteExact width σ → Prop} {c : ExpHOL width}
    {f : MlS} {args : List (ExpHOL width)} (hf : FunRet σ X f (fun _ _ => False)) :
    Hoare σ X P (.ite c (.call (some (none, none)) f args) .skip)
      (fun r t => r = none ∧ P t ∧ ev t c = some (.val (.word 0))) := by
  refine hoare_ite ?_ (hoare_skip fun s _ h => ⟨rfl, h.1, h.2⟩)
  refine hoare_callD (funSpec_of_funRet hf) ?_
  intro _ _ _ _ _ _ v _ hR _
  exact (hR v rfl).elim

/-- A guard followed by a continuation `k`: `k` runs with the condition false. -/
theorem hoare_guard_seq {P : PanSemStateFiniteExact width σ → Prop}
    {Q : Option (PanSemResultExact width) → PanSemStateFiniteExact width σ → Prop}
    {c : ExpHOL width} {f : MlS} {args : List (ExpHOL width)} {k : ProgHOL width}
    (hf : FunRet σ X f (fun _ _ => False))
    (hk : Hoare σ X (fun t => P t ∧ ev t c = some (.val (.word 0))) k Q) :
    Hoare σ X P (.seq (.ite c (.call (some (none, none)) f args) .skip) k) Q :=
  hoare_seq (hoare_guard hf) (fun _ _ _ hr _ h => absurd h.1 hr)
    (hoare_pre hk (fun _ _ h => ⟨h.2.1, h.2.2⟩))

end general

/-! ## Expression evaluation on words (width 64) -/

section ev64
variable {σ : Type} {s : PanSemStateFiniteExact 64 σ}

theorem ev_gv (x : MlS) : ev s (.var .global x) = s.globals.lookup x := rfl

theorem ev_add2 {a b : ExpHOL 64} {x y : BitVec 64} (ha : ev s a = some (.val (.word x)))
    (hb : ev s b = some (.val (.word y))) : ev s (.op .add [a, b]) = some (.val (.word (x + y))) := by
  rw [ev_op2 ha hb]
  show some (ValueHOL.val (HolWordLab.word (x + (y + 0)))) = _
  simp

theorem ev_add3 {a b c : ExpHOL 64} {x y z : BitVec 64} (ha : ev s a = some (.val (.word x)))
    (hb : ev s b = some (.val (.word y))) (hc : ev s c = some (.val (.word z))) :
    ev s (.op .add [a, b, c]) = some (.val (.word (x + (y + z)))) := by
  rw [ev_op (xs := [x, y, z]) (evs_cons ha (evs_cons hb (evs_cons hc evs_nil)))]
  show some (ValueHOL.val (HolWordLab.word (x + (y + (z + 0))))) = _
  simp

theorem ev_sub2 {a b : ExpHOL 64} {x y : BitVec 64} (ha : ev s a = some (.val (.word x)))
    (hb : ev s b = some (.val (.word y))) : ev s (.op .sub [a, b]) = some (.val (.word (x - y))) := by
  rw [ev_op2 ha hb]
  rfl

theorem ev_mul2 {a b : ExpHOL 64} {x y : BitVec 64} (ha : ev s a = some (.val (.word x)))
    (hb : ev s b = some (.val (.word y))) : ev s (.panop .mul [a, b]) = some (.val (.word (x * y))) := by
  have h : evs s [a, b] = some [.val (.word x), .val (.word y)] := evs_cons ha (evs_cons hb evs_nil)
  simp only [ev, evs, evalHOLExact] at h ⊢
  rw [h]
  rfl

/-- Inversion of a comparison. -/
theorem ev_cmp_inv {o : Cmp} {a b : ExpHOL 64} {v : ValueHOL 64} (h : ev s (.cmp o a b) = some v) :
    ∃ x y, ev s a = some (.val (.word x)) ∧ ev s b = some (.val (.word y)) ∧
      v = .val (.word (if Flapjack.Compiler.Encoders.Asm.wordCmpHOL o x y then 1 else 0)) := by
  simp only [ev, evalHOLExact] at h ⊢
  split at h
  · rename_i x y hx hy
    simp only [Option.some.injEq] at h
    exact ⟨x, y, hx, hy, h.symm⟩
  · simp at h

/-- A comparison that evaluates to the zero word is false. -/
theorem cmp_false {o : Cmp} {a b : ExpHOL 64} (h : ev s (.cmp o a b) = some (.val (.word 0))) :
    ∃ x y, ev s a = some (.val (.word x)) ∧ ev s b = some (.val (.word y)) ∧
      Flapjack.Compiler.Encoders.Asm.wordCmpHOL o x y = false := by
  obtain ⟨x, y, hx, hy, hv⟩ := ev_cmp_inv h
  refine ⟨x, y, hx, hy, ?_⟩
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hv
  by_contra hc
  simp only [Bool.not_eq_false] at hc
  rw [if_pos hc] at hv
  exact absurd hv (by decide)

/-- A comparison that evaluates to a nonzero word is true. -/
theorem cmp_true {o : Cmp} {a b : ExpHOL 64} {w : BitVec 64}
    (h : ev s (.cmp o a b) = some (.val (.word w))) (hw : w ≠ 0) :
    ∃ x y, ev s a = some (.val (.word x)) ∧ ev s b = some (.val (.word y)) ∧
      Flapjack.Compiler.Encoders.Asm.wordCmpHOL o x y = true := by
  obtain ⟨x, y, hx, hy, hv⟩ := ev_cmp_inv h
  refine ⟨x, y, hx, hy, ?_⟩
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hv
  by_contra hc
  simp only [Bool.not_eq_true] at hc
  rw [hc] at hv
  exact hw (by simpa using hv)

theorem condTrue_iff {c : ExpHOL 64} :
    CondTrue s c ↔ ∃ w, ev s c = some (.val (.word w)) ∧ w ≠ 0 := Iff.rfl

/-- A byte load evaluates to a word (below `256`). -/
theorem ev_loadByte_word {a : ExpHOL 64} {v : ValueHOL 64} (h : ev s (.loadByte a) = some v) :
    ∃ w : BitVec 64, v = .val (.word w) ∧ w.toNat < 256 := by
  simp only [ev, evalHOLExact] at h
  split at h
  · obtain ⟨b, -, rfl⟩ := Option.map_eq_some_iff.mp h
    refine ⟨_, rfl, ?_⟩
    simp only [BitVec.toNat_ofNat]
    have := UInt8.toNat_lt b
    omega
  · simp at h

theorem val_of_shape_one {v : ValueHOL 64} (h : shapeOfHOLExact v = .one) :
    ∃ w : BitVec 64, v = .val (.word w) := by
  cases v with
  | val w => cases w with | word w => exact ⟨w, rfl⟩
  | rStruct _ => rw [shapeOf_rStruct] at h; cases h
  | nStruct _ _ => rw [shapeOfHOLExact] at h; cases h

theorem val_of_shapeEq_one {v : ValueHOL 64} (h : shapeEqHOL .one (shapeOfHOLExact v) = true) :
    ∃ w : BitVec 64, v = .val (.word w) :=
  val_of_shape_one ((shapeEqHOL_eq_true _ _).mp h).symm

theorem val_of_shapeEq_one' {v : ValueHOL 64} (h : shapeEqHOL (shapeOfHOLExact v) .one = true) :
    ∃ w : BitVec 64, v = .val (.word w) :=
  val_of_shape_one ((shapeEqHOL_eq_true _ _).mp h)

end ev64

end InitECandidate.Solver.Spec
