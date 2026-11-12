import InitECandidate.Solver.Spec.HoareG

/-!
# The full `HoareG` rule set (M0)

`Spec.HoareG σ X P p Q` (`Spec/HoareG.lean`) speaks about every *good* result (not a
time-out, not an error) — returns, `break`/`continue`, **exceptions** and final FFI events —
which is what the memory-safety summaries need (`run_frames` catches `EvmErr`).
`Spec/HoareG.lean` has `skip`, local `assign`, `seq`, `ite`, `dec` and `decCallS` for
escape-free callees; this module adds the remaining statements:

* leaves: `hoareG_assignK` (local or global), `hoareG_store` / `hoareG_storeByte` /
  `hoareG_store32`, `hoareG_return`, `hoareG_raise`, `hoareG_break`, `hoareG_continue`,
  `hoareG_tick`, `hoareG_annot`;
* `hoareG_while`: invariant rule;
* calls against any `FunSpec`: `hoareG_callD` (`f(args);`), `hoareG_callA` (`x = f(args);`),
  `hoareG_tailCall` (`return f(args)`), `hoareG_callH` (with an exception handler),
  `hoareG_decCall` (`var x = f(args); k`).

Every call rule takes `habn`: a good *abnormal* callee result `r` (an exception the call does
not catch, or a final FFI event) propagates with the callee's final state, locals emptied.
-/

namespace InitECandidate.Solver.MemSafe
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64} {P : PanSemStateFiniteExact 64 σ → Prop}
  {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop}

/-- An abnormal good result: an exception or a final FFI event. -/
def Abn (r : PanSemResultExact 64) : Prop :=
  (∃ e v, r = .exception e v) ∨ ∃ e, r = .finalFfi e

/-! ## Leaves -/

theorem hoareG_assignK {k : VarKind} {n : MlS} {e : ExpHOL 64}
    (h : ∀ s, InCtx s X → P s → ∀ v, ev s e = some v →
      isValidValueHOLFinite s k n v = true → Q none (setKvarHOLFinite k n v s)) :
    HoareG σ X P (.assign k n e) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.assign k n e)]
  dsimp only
  split
  · intro hg; exact absurd hg (by simp [Good])
  · rename_i v hv
    split
    · intro _; exact h s hs hp v hv (by assumption)
    · intro hg; exact absurd hg (by simp [Good])

theorem hoareG_store {a e : ExpHOL 64}
    (h : ∀ s, InCtx s X → P s → ∀ w v mem, ev s a = some (.val (.word w)) → ev s e = some v →
      @panMemStoresHOL 64 _ w (flattenHOL v) s.memaddrs
        (fun x => Classical.propDecidable (s.memaddrs x)) s.memory = some mem →
      Q none { s with memory := mem }) :
    HoareG σ X P (.store a e) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.store a e)]
  dsimp only
  split
  · rename_i w hw
    split
    · rename_i v hv
      split
      · rename_i mem hmem
        intro _
        exact h s hs hp w v mem hw hv hmem
      · intro hg; exact absurd hg (by simp [Good])
    · intro hg; exact absurd hg (by simp [Good])
  · intro hg; exact absurd hg (by simp [Good])

theorem hoareG_storeByte {a e : ExpHOL 64}
    (h : ∀ s, InCtx s X → P s → ∀ w x mem, ev s a = some (.val (.word w)) →
      ev s e = some (.val (.word x)) →
      @panMemStoreByteWord8HOL 64 _ s.memory s.memaddrs
        (fun y => Classical.propDecidable (s.memaddrs y)) s.be w (BitVec.ofNat 8 x.toNat) =
        some mem →
      Q none { s with memory := mem }) :
    HoareG σ X P (.storeByte a e) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.storeByte a e)]
  dsimp only
  split
  · rename_i w hw
    split
    · rename_i x hx
      split
      · rename_i mem hmem
        intro _
        exact h s hs hp w x mem hw hx hmem
      · intro hg; exact absurd hg (by simp [Good])
    · intro hg; exact absurd hg (by simp [Good])
  · intro hg; exact absurd hg (by simp [Good])

theorem hoareG_store32 {a e : ExpHOL 64}
    (h : ∀ s, InCtx s X → P s → ∀ w x mem, ev s a = some (.val (.word w)) →
      ev s e = some (.val (.word x)) →
      @panMemStore32HOL 64 _ s.memory s.memaddrs
        (fun y => Classical.propDecidable (s.memaddrs y)) s.be w (BitVec.ofNat 32 x.toNat) =
        some mem →
      Q none { s with memory := mem }) :
    HoareG σ X P (.store32 a e) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.store32 a e)]
  dsimp only
  split
  · rename_i w hw
    split
    · rename_i x hx
      split
      · rename_i mem hmem
        intro _
        exact h s hs hp w x mem hw hx hmem
      · intro hg; exact absurd hg (by simp [Good])
    · intro hg; exact absurd hg (by simp [Good])
  · intro hg; exact absurd hg (by simp [Good])

theorem hoareG_return {e : ExpHOL 64}
    (h : ∀ s, InCtx s X → P s → ∀ v, ev s e = some v →
      Q (some (.returned v)) (emptyLocalsHOLFinite s)) :
    HoareG σ X P (.return e) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.return e)]
  dsimp only
  split
  · intro hg; exact absurd hg (by simp [Good])
  · rename_i v hv
    split
    · intro _; exact h s hs hp v hv
    · intro hg; exact absurd hg (by simp [Good])

theorem hoareG_raise {x : MlS} {e : ExpHOL 64}
    (h : ∀ s, InCtx s X → P s → ∀ v, ev s e = some v →
      Q (some (.exception x v)) (emptyLocalsHOLFinite s)) :
    HoareG σ X P (.raise x e) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.raise x e)]
  dsimp only
  split
  · rename_i _ v _ hv
    split
    · intro _; exact h s hs hp v hv
    · intro hg; exact absurd hg (by simp [Good])
  · intro hg; exact absurd hg (by simp [Good])

theorem hoareG_break (h : ∀ s, InCtx s X → P s → Q (some .break) s) :
    HoareG σ X P (.break : ProgHOL 64) Q := by
  intro s hs hp _
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  exact h s hs hp

theorem hoareG_continue (h : ∀ s, InCtx s X → P s → Q (some .continue) s) :
    HoareG σ X P (.continue : ProgHOL 64) Q := by
  intro s hs hp _
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  exact h s hs hp

theorem hoareG_tick (h : ∀ s, InCtx s X → P s → s.clock ≠ 0 → Q none (decClockHOLFinite s)) :
    HoareG σ X P (.tick : ProgHOL 64) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_tick]
  split
  · intro hg; exact absurd hg (by simp [Good])
  · rename_i hc
    intro _
    exact h s hs hp hc

theorem hoareG_annot {a b : MlS} (h : ∀ s, InCtx s X → P s → Q none s) :
    HoareG σ X P (.annot a b : ProgHOL 64) Q := by
  intro s hs hp _
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  exact h s hs hp

/-! ## Loops -/

/-- **Invariant rule.** The body keeps `I` on normal completion and `continue`; `break`
establishes the post of a normal exit; every other good result (return, exception, final FFI)
must establish the post directly; the loop exits normally when the condition is zero. -/
theorem hoareG_while {I : PanSemStateFiniteExact 64 σ → Prop} {c : ExpHOL 64}
    {body : ProgHOL 64}
    (hclk : ∀ s, I s → I (decClockHOLFinite s))
    (hb : HoareG σ X (fun s => I s ∧ CondTrue s c) body
      (fun r t => (r = none → I t) ∧ (r = some .continue → I t) ∧
        (r = some .break → Q none t) ∧
        (∀ r', r = some r' → r' ≠ .continue → r' ≠ .break → Q r t)))
    (hexit : ∀ s, InCtx s X → I s → ev s c = some (.val (.word 0)) → Q none s) :
    HoareG σ X I (.while c body) Q := by
  suffices H : ∀ k (s : PanSemStateFiniteExact 64 σ), s.clock = k → InCtx s X → I s →
      Good (evaluateHOLFiniteState s (.while c body)).1 →
      Q (evaluateHOLFiniteState s (.while c body)).1
        (evaluateHOLFiniteState s (.while c body)).2 from
    fun s hs hi hg => H _ s rfl hs hi hg
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
      · intro hg; exact absurd hg (by simp [Good])
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
            have := (hbody (by rw [ho]; simp [Good])).1
            rw [ho] at this
            exact ih _ hlt _ rfl hctx (this rfl)
        | some r =>
            cases r with
            | «continue» =>
                simp only []
                have := (hbody (by rw [ho]; simp [Good])).2.1
                rw [ho] at this
                exact ih _ hlt _ rfl hctx (this rfl)
            | «break» =>
                simp only []
                intro _
                have := (hbody (by rw [ho]; simp [Good])).2.2.1
                rw [ho] at this
                exact this rfl
            | returned v =>
                simp only []
                intro _
                have := (hbody (by rw [ho]; simp [Good])).2.2.2
                rw [ho] at this
                exact this _ rfl (by simp) (by simp)
            | exception e v =>
                simp only []
                intro _
                have := (hbody (by rw [ho]; simp [Good])).2.2.2
                rw [ho] at this
                exact this _ rfl (by simp) (by simp)
            | finalFfi e =>
                simp only []
                intro _
                have := (hbody (by rw [ho]; simp [Good])).2.2.2
                rw [ho] at this
                exact this _ rfl (by simp) (by simp)
            | error => simp only []; intro hg; exact absurd hg (by simp [Good])
            | timeOut => simp only []; intro hg; exact absurd hg (by simp [Good])
    · rename_i hne
      intro _
      have hw0 : w = 0 := by simpa using hne
      subst hw0
      exact hexit s hs hi hw
  · intro hg; exact absurd hg (by simp [Good])

/-! ## Calls -/

section calls
variable {f : MlS} {args : List (ExpHOL 64)}
  {R : List (ValueHOL 64) → PanSemStateFiniteExact 64 σ → PanSemResultExact 64 →
    PanSemStateFiniteExact 64 σ → Prop}

/-- `f(args);` (result discarded, no handler). -/
theorem hoareG_callD (hf : FunSpec σ X f R)
    (hret : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : PanSemStateFiniteExact 64 σ),
        R vs (callEntryStateHOLFinite s callee) (.returned v) st → InCtx st X →
        Q none { st with locals := s.locals })
    (habn : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee r (st : PanSemStateFiniteExact 64 σ),
        R vs (callEntryStateHOLFinite s callee) r st → InCtx st X → Abn r →
        Q (some r) (emptyLocalsHOLFinite st)) :
    HoareG σ X P (.call (some (none, none)) f args) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.call (some (none, none)) f args)]
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
        cases ho : evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body with
        | mk r st =>
          rw [ho] at hspec hctx
          dsimp only at hspec hctx
          cases r with
          | none => dsimp only; intro hg; exact absurd hg (by simp [Good])
          | some r =>
            cases r with
            | returned v =>
                dsimp only
                split
                · intro _; exact hret s hs hp vs hvs callee v st (hspec _ rfl) hctx
                · intro hg; exact absurd hg (by simp [Good])
            | exception e v =>
                dsimp only; intro _
                exact habn s hs hp vs hvs callee _ st (hspec _ rfl) hctx (Or.inl ⟨e, v, rfl⟩)
            | finalFfi e =>
                dsimp only; intro _
                exact habn s hs hp vs hvs callee _ st (hspec _ rfl) hctx (Or.inr ⟨e, rfl⟩)
            | «break» => dsimp only; intro hg; exact absurd hg (by simp [Good])
            | «continue» => dsimp only; intro hg; exact absurd hg (by simp [Good])
            | error => dsimp only; intro hg; exact absurd hg (by simp [Good])
            | timeOut => dsimp only; intro hg; exact absurd hg (by simp [Good])

/-- `x = f(args);` for a local or global `x` (no handler). -/
theorem hoareG_callA {k : VarKind} {x : MlS} (hf : FunSpec σ X f R)
    (hret : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : PanSemStateFiniteExact 64 σ),
        R vs (callEntryStateHOLFinite s callee) (.returned v) st → InCtx st X →
        isValidValueHOLExact s.toExact k x v = true →
        Q none (setKvarHOLFinite k x v { st with locals := s.locals }))
    (habn : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee r (st : PanSemStateFiniteExact 64 σ),
        R vs (callEntryStateHOLFinite s callee) r st → InCtx st X → Abn r →
        Q (some r) (emptyLocalsHOLFinite st)) :
    HoareG σ X P (.call (some (some (k, x), none)) f args) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.call (some (some (k, x), none)) f args)]
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
        cases ho : evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body with
        | mk r st =>
          rw [ho] at hspec hctx
          dsimp only at hspec hctx
          cases r with
          | none => dsimp only; intro hg; exact absurd hg (by simp [Good])
          | some r =>
            cases r with
            | returned v =>
                dsimp only
                split
                · split
                  · rename_i hvalid
                    intro _
                    exact hret s hs hp vs hvs callee v st (hspec _ rfl) hctx hvalid
                  · intro hg; exact absurd hg (by simp [Good])
                · intro hg; exact absurd hg (by simp [Good])
            | exception e v =>
                dsimp only; intro _
                exact habn s hs hp vs hvs callee _ st (hspec _ rfl) hctx (Or.inl ⟨e, v, rfl⟩)
            | finalFfi e =>
                dsimp only; intro _
                exact habn s hs hp vs hvs callee _ st (hspec _ rfl) hctx (Or.inr ⟨e, rfl⟩)
            | «break» => dsimp only; intro hg; exact absurd hg (by simp [Good])
            | «continue» => dsimp only; intro hg; exact absurd hg (by simp [Good])
            | error => dsimp only; intro hg; exact absurd hg (by simp [Good])
            | timeOut => dsimp only; intro hg; exact absurd hg (by simp [Good])

/-- `return f(args)` (tail call). -/
theorem hoareG_tailCall (hf : FunSpec σ X f R)
    (hret : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : PanSemStateFiniteExact 64 σ),
        R vs (callEntryStateHOLFinite s callee) (.returned v) st → InCtx st X →
        Q (some (.returned v)) (emptyLocalsHOLFinite st))
    (habn : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee r (st : PanSemStateFiniteExact 64 σ),
        R vs (callEntryStateHOLFinite s callee) r st → InCtx st X → Abn r →
        Q (some r) (emptyLocalsHOLFinite st)) :
    HoareG σ X P (.call none f args) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.call none f args)]
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
        cases ho : evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body with
        | mk r st =>
          rw [ho] at hspec hctx
          dsimp only at hspec hctx
          cases r with
          | none => dsimp only; intro hg; exact absurd hg (by simp [Good])
          | some r =>
            cases r with
            | returned v =>
                dsimp only
                split
                · intro _; exact hret s hs hp vs hvs callee v st (hspec _ rfl) hctx
                · intro hg; exact absurd hg (by simp [Good])
            | exception e v =>
                dsimp only; intro _
                exact habn s hs hp vs hvs callee _ st (hspec _ rfl) hctx (Or.inl ⟨e, v, rfl⟩)
            | finalFfi e =>
                dsimp only; intro _
                exact habn s hs hp vs hvs callee _ st (hspec _ rfl) hctx (Or.inr ⟨e, rfl⟩)
            | «break» => dsimp only; intro hg; exact absurd hg (by simp [Good])
            | «continue» => dsimp only; intro hg; exact absurd hg (by simp [Good])
            | error => dsimp only; intro hg; exact absurd hg (by simp [Good])
            | timeOut => dsimp only; intro hg; exact absurd hg (by simp [Good])

/-- `f(args)` with result target `tgt` and handler `catch eid => hv { hp }`. A normal return
continues as without handler; an `eid` exception runs the handler from the caller's locals
with `hv` bound; other exceptions and final FFI events propagate. -/
theorem hoareG_callH {tgt : Option (VarKind × MlS)} {eid hv : MlS} {hp : ProgHOL 64}
    (hf : FunSpec σ X f R)
    (hret : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : PanSemStateFiniteExact 64 σ),
        R vs (callEntryStateHOLFinite s callee) (.returned v) st → InCtx st X →
        (tgt = none → Q none { st with locals := s.locals }) ∧
        (∀ k x, tgt = some (k, x) → isValidValueHOLExact s.toExact k x v = true →
          Q none (setKvarHOLFinite k x v { st with locals := s.locals })))
    (hexn : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : PanSemStateFiniteExact 64 σ),
        R vs (callEntryStateHOLFinite s callee) (.exception eid v) st → InCtx st X →
        HoareG σ X (fun t => t = setVarHOLFinite hv v { st with locals := s.locals }) hp Q)
    (habn : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee r (st : PanSemStateFiniteExact 64 σ),
        R vs (callEntryStateHOLFinite s callee) r st → InCtx st X → Abn r →
        (∀ v, r ≠ .exception eid v) → Q (some r) (emptyLocalsHOLFinite st)) :
    HoareG σ X P (.call (some (tgt, some (eid, hv, hp))) f args) Q := by
  intro s hs hpre
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.call (some (tgt, some (eid, hv, hp))) f args)]
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
        cases ho : evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body with
        | mk r st =>
          rw [ho] at hspec hctx
          dsimp only at hspec hctx
          cases r with
          | none => dsimp only; intro hg; exact absurd hg (by simp [Good])
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
                      · intro hg; exact absurd hg (by simp [Good])
                · intro hg; exact absurd hg (by simp [Good])
            | exception e v =>
                dsimp only
                split
                · rename_i he
                  subst he
                  split
                  · split
                    · intro hg
                      exact hexn s hs hpre vs hvs callee v st (hspec _ rfl) hctx _ hctx rfl hg
                    · intro hg; exact absurd hg (by simp [Good])
                  · intro hg; exact absurd hg (by simp [Good])
                · rename_i hne
                  intro _
                  exact habn s hs hpre vs hvs callee _ st (hspec _ rfl) hctx
                    (Or.inl ⟨e, v, rfl⟩) (fun v' h => hne (by cases h; rfl))
            | finalFfi e =>
                dsimp only; intro _
                exact habn s hs hpre vs hvs callee _ st (hspec _ rfl) hctx (Or.inr ⟨e, rfl⟩)
                  (fun v' h => by cases h)
            | «break» => dsimp only; intro hg; exact absurd hg (by simp [Good])
            | «continue» => dsimp only; intro hg; exact absurd hg (by simp [Good])
            | error => dsimp only; intro hg; exact absurd hg (by simp [Good])
            | timeOut => dsimp only; intro hg; exact absurd hg (by simp [Good])

/-- `var rn = f(args); k`. -/
theorem hoareG_decCall {rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64} (hf : FunSpec σ X f R)
    (hret : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : PanSemStateFiniteExact 64 σ),
        R vs (callEntryStateHOLFinite s callee) (.returned v) st → InCtx st X →
        shapeEqHOL (shapeOfHOLExact v) sh = true →
        HoareG σ X (fun t => t = setVarHOLFinite rn v { st with locals := s.locals }) k
          (fun r t => Q r { t with locals := t.locals.resVarEq (rn, s.locals.lookup rn) }))
    (habn : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee r (st : PanSemStateFiniteExact 64 σ),
        R vs (callEntryStateHOLFinite s callee) r st → InCtx st X → Abn r →
        Q (some r) (emptyLocalsHOLFinite st)) :
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
                exact hret s hs hp vs hvs callee v _ hR hctx hsh.1 _ hctx rfl hg
              · intro hg; exact absurd hg (by simp [Good])
          | exception e v =>
              dsimp only; intro _
              exact habn s hs hp vs hvs callee _ _ (hspec _ ho) hctx (Or.inl ⟨e, v, rfl⟩)
          | finalFfi e =>
              dsimp only; intro _
              exact habn s hs hp vs hvs callee _ _ (hspec _ ho) hctx (Or.inr ⟨e, rfl⟩)
          | «break» => dsimp only; intro hg; exact absurd hg (by simp [Good])
          | «continue» => dsimp only; intro hg; exact absurd hg (by simp [Good])
          | error => dsimp only; intro hg; exact absurd hg (by simp [Good])
          | timeOut => dsimp only; intro hg; exact absurd hg (by simp [Good])

end calls

end InitECandidate.Solver.MemSafe
