import InitECandidate.Solver.MemSafe.Ini.Tab

/-!
# A statement kit for net-effect proofs (`NQ`)

`NQ J F r t`: a normal end satisfies the state predicate `J` (locals included); any other end is
abortive or a return whose value and final state satisfy `F` (which reads only memory, globals,
domain and byte order: `CongrF F`). Calls take a `FunSpec` relation `R` that includes "a good result
is a return or abortive" (`hne`), so no summary and no `G` is needed.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Ini
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

def NX (F : State σ → ValueHOL 64 → Prop) (r' : PanSemResultExact 64) (t : State σ) : Prop :=
  Abortive r' ∨ ∃ v, r' = .returned v ∧ F t v

def NQ (J : State σ → Prop) (F : State σ → ValueHOL 64 → Prop)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  (r = none → J t) ∧ ∀ r', r = some r' → NX F r' t

def CongrF (F : State σ → ValueHOL 64 → Prop) : Prop :=
  ∀ (t t' : State σ) v, t'.memory = t.memory → t'.globals = t.globals → t'.memaddrs = t.memaddrs →
    t'.be = t.be → F t v → F t' v

theorem abn_ne' {r : PanSemResultExact 64} (h : Abn r) (v : ValueHOL 64) : r ≠ .returned v := by
  rcases h with ⟨e, v', rfl⟩ | ⟨e, rfl⟩ <;> intro he <;> cases he

theorem abn_good2 {r : PanSemResultExact 64} (h : Abn r) : Good (some r) := by
  rcases h with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> simp [Good]

section rules
variable {J J' J1 J2 J3 Jx : State σ → Prop} {F : State σ → ValueHOL 64 → Prop}

theorem nq_seq {P : State σ → Prop} {c k : ProgHOL 64} (hc : HoareG σ X P c (NQ J F))
    (hk : HoareG σ X J k (NQ J' F)) : HoareG σ X P (.seq c k) (NQ J' F) :=
  hoareG_seq hc (fun r t _ hr _ h => ⟨fun h' => absurd h' hr, h.2⟩) (hoareG_pre hk fun _ _ h => h.1 rfl)

theorem nq_skip {P : State σ → Prop} (hP : ∀ s : State σ, P s → J s) :
    HoareG σ X P .skip (NQ J F) :=
  hoareG_skip fun s _ h => ⟨fun _ => hP s h, fun r' h => by cases h⟩

theorem nq_assign {P : State σ → Prop} {x : MlS} {e : ExpHOL 64}
    (h : ∀ s : State σ, InCtx s X → P s → ∀ v, ev s e = some v → J' (setVarHOLFinite x v s)) :
    HoareG σ X P (.assign .local x e) (NQ J' F) :=
  hoareG_assign fun s hs hJ v hv _ => ⟨fun _ => h s hs hJ v hv, fun r' h => by cases h⟩

/-- `var x = e; body`. -/
theorem nq_dec (hF' : CongrF F) {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64}
    (h : ∀ s : State σ, InCtx s X → J s → ∀ v, ev s e = some v → J1 (setVarHOLFinite x v s))
    (hk : HoareG σ X J1 body (NQ J2 F))
    (hres : ∀ s t : State σ, J s → J2 t → J3 { t with locals := t.locals.resVarEq (x, s.locals.lookup x) }) :
    HoareG σ X J (.dec x sh e body) (NQ J3 F) := by
  refine hoareG_dec fun s hs hJ v hv _ => ?_
  refine hoareG_conseq hk (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
  · subst ht
    exact h s hs hJ v hv
  · refine ⟨fun hr => hres s t hJ (hq.1 hr), fun r' hr' => ?_⟩
    rcases hq.2 r' hr' with h1 | ⟨w, hw, hF⟩
    · exact Or.inl h1
    · exact Or.inr ⟨w, hw, hF' t _ w rfl rfl rfl rfl hF⟩

theorem nq_ret {e : ExpHOL 64}
    (h : ∀ s : State σ, InCtx s X → J s → ∀ v, ev s e = some v → F (emptyLocalsHOLFinite s) v) :
    HoareG σ X J (.return e) (NQ J' F) :=
  hoareG_return fun s hs hJ v hv => by
    refine ⟨(fun h' => by cases h'), fun r' hr' => ?_⟩
    cases hr'
    exact Or.inr ⟨v, rfl, h s hs hJ v hv⟩

/-- The loop: the body never `continue`s or `break`s. -/
theorem nq_while {c : ExpHOL 64} {body : ProgHOL 64}
    (hclk : ∀ s : State σ, J s → J (decClockHOLFinite s))
    (hb : HoareG σ X (fun s => J s ∧ CondTrue s c) body (NQ J F))
    (hexit : ∀ s : State σ, InCtx s X → J s → ev s c = some (.val (.word 0)) → Jx s) :
    HoareG σ X J (.while c body) (NQ Jx F) := by
  refine hoareG_while (I := J) hclk ?_ (fun s hs hi hc => ⟨fun _ => hexit s hs hi hc,
    fun r' h => by cases h⟩)
  · refine hoareG_conseq hb (fun s _ h => h) ?_
    intro r t _ _ h
    have hnab : ∀ r', r = some r' → (r' = .continue ∨ r' = .break) → False := by
      intro r' hr' hcb
      rcases h.2 r' hr' with hab | ⟨v, hv, -⟩
      · rcases hcb with rfl | rfl <;> exact hab
      · rcases hcb with rfl | rfl <;> cases hv
    refine ⟨fun hr => h.1 hr, fun hc => (hnab _ hc (Or.inl rfl)).elim,
      fun hbk => (hnab _ hbk (Or.inr rfl)).elim, fun r' hr' h1 h2 => ?_⟩
    exact ⟨fun hr => by simp [hr'] at hr, h.2⟩

/-- **`f(args);`** against a `FunSpec` relation `R`. -/
theorem nq_call {f : MlS} {args : List (ExpHOL 64)}
    {R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf : FunSpec σ X f R)
    (hne : ∀ vs s r t, R vs s r t → Good (some r) → (∃ v, r = .returned v) ∨ Abortive r)
    (hret : ∀ s : State σ, InCtx s X → J s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : State σ), R vs (callEntryStateHOLFinite s callee) (.returned v) st →
        InCtx st X → J' { st with locals := s.locals }) :
    HoareG σ X J (.call (some (none, none)) f args) (NQ J' F) := by
  refine hoareG_callD hf ?_ ?_
  · intro s hs hJ vs hvs callee v st hR hst
    exact ⟨fun _ => hret s hs hJ vs hvs callee v st hR hst, fun r' h => by cases h⟩
  · intro s hs hJ vs hvs callee r st hR hst habn
    refine ⟨(fun h => by cases h), fun r' hr' => ?_⟩
    cases hr'
    rcases hne _ _ _ _ hR (abn_good2 habn) with ⟨v, hv⟩ | hab
    · exact absurd hv (abn_ne' habn v)
    · exact Or.inl hab

/-- **`var rn = f(args); k`** against a `FunSpec` relation `R`. -/
theorem nq_decCall (hF' : CongrF F) {rn : MlS} {sh : ShapeHOL} {f : MlS}
    {args : List (ExpHOL 64)}
    {R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf : FunSpec σ X f R)
    (hne : ∀ vs s r t, R vs s r t → Good (some r) → (∃ v, r = .returned v) ∨ Abortive r)
    {J1 : ValueHOL 64 → State σ → Prop} {k : ProgHOL 64}
    (hpost : ∀ s : State σ, InCtx s X → J s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : State σ), R vs (callEntryStateHOLFinite s callee) (.returned v) st →
        InCtx st X → shapeEqHOL (shapeOfHOLExact v) sh = true →
        J1 v (setVarHOLFinite rn v { st with locals := s.locals }))
    (hk : ∀ v, HoareG σ X (J1 v) k (NQ J2 F))
    (hres : ∀ s t : State σ, J s → J2 t →
      J3 { t with locals := t.locals.resVarEq (rn, s.locals.lookup rn) }) :
    HoareG σ X J (.decCall rn sh f args k) (NQ J3 F) := by
  refine hoareG_decCall hf ?_ ?_
  · intro s hs hJ vs hvs callee v st hR hst hsh
    refine hoareG_conseq (hk v)
      (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
    · subst ht
      exact hpost s hs hJ vs hvs callee v st hR hst hsh
    · refine ⟨fun hr => hres s t hJ (hq.1 hr), fun r' hr' => ?_⟩
      rcases hq.2 r' hr' with h1 | ⟨w, hw, hF⟩
      · exact Or.inl h1
      · exact Or.inr ⟨w, hw, hF' t _ w rfl rfl rfl rfl hF⟩
  · intro s hs hJ vs hvs callee r st hR hst habn
    refine ⟨(fun h => by cases h), fun r' hr' => ?_⟩
    cases hr'
    rcases hne _ _ _ _ hR (abn_good2 habn) with ⟨v, hv⟩ | hab
    · exact absurd hv (abn_ne' habn v)
    · exact Or.inl hab

end rules

end InitECandidate.Solver.MemSafe.Ini

#print axioms InitECandidate.Solver.MemSafe.Ini.nq_while
#print axioms InitECandidate.Solver.MemSafe.Ini.nq_decCall
#print axioms InitECandidate.Solver.MemSafe.Ini.nq_call
