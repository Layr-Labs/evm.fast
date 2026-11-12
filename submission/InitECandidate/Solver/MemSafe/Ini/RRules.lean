import InitECandidate.Solver.MemSafe.Ini.Rules

/-!
# A statement kit for proofs that only speak about returns (`NQr`)

`NQr J F r t`: a normal end satisfies `J`; a return satisfies `F`; every other end (an exception that is not
abortive, ...) owes nothing. Used for `state_init`, whose exceptions (a bad witness) end the run.
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

def NQr (J : State σ → Prop) (F : State σ → ValueHOL 64 → Prop)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  (r = none → J t) ∧ ∀ r', r = some r' → ∀ v, r' = .returned v → F t v

section rrules
variable {J J' J1 J2 J3 : State σ → Prop} {F : State σ → ValueHOL 64 → Prop}

theorem nqr_seq {P : State σ → Prop} {c k : ProgHOL 64} (hc : HoareG σ X P c (NQr J F))
    (hk : HoareG σ X J k (NQr J' F)) : HoareG σ X P (.seq c k) (NQr J' F) :=
  hoareG_seq hc (fun r t _ hr _ h => ⟨fun h' => absurd h' hr, h.2⟩) (hoareG_pre hk fun _ _ h => h.1 rfl)

theorem nqr_assign {P : State σ → Prop} {k : VarKind} {x : MlS} {e : ExpHOL 64}
    (h : ∀ s : State σ, InCtx s X → P s → ∀ v, ev s e = some v →
      isValidValueHOLFinite s k x v = true → J' (setKvarHOLFinite k x v s)) :
    HoareG σ X P (.assign k x e) (NQr J' F) :=
  hoareG_assignK fun s hs hJ v hv hval => ⟨fun _ => h s hs hJ v hv hval, fun r' h => by cases h⟩

theorem nqr_ret {P : State σ → Prop} {e : ExpHOL 64}
    (h : ∀ s : State σ, InCtx s X → P s → ∀ v, ev s e = some v → F (emptyLocalsHOLFinite s) v) :
    HoareG σ X P (.return e) (NQr J' F) :=
  hoareG_return fun s hs hJ v hv => by
    refine ⟨(fun h' => by cases h'), fun r' hr' w hw => ?_⟩
    cases hr'
    cases hw
    exact h s hs hJ v hv

theorem nqr_store {P : State σ → Prop} {ea e : ExpHOL 64}
    (h : ∀ s : State σ, InCtx s X → P s → ∀ w v (mem : Mem), ev s ea = some (.val (.word w)) →
      ev s e = some v →
      @panMemStoresHOL 64 _ w (flattenHOL v) s.memaddrs
        (fun x => Classical.propDecidable (s.memaddrs x)) s.memory = some mem →
      J' { s with memory := mem }) :
    HoareG σ X P (.store ea e) (NQr J' F) :=
  hoareG_store fun s hs hJ w v mem hw hv hm => ⟨fun _ => h s hs hJ w v mem hw hv hm, fun r' h => by cases h⟩

/-- `var rn = f(args); k` against a `FunSpec` relation `R`; the continuation's post is the statement's. -/
theorem nqr_decCall (hF' : CongrF F) {rn : MlS} {sh : ShapeHOL} {f : MlS}
    {args : List (ExpHOL 64)}
    {R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf : FunSpec σ X f R)
    {J1 : ValueHOL 64 → State σ → Prop} {k : ProgHOL 64} {P : State σ → Prop}
    (hpost : ∀ s : State σ, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : State σ), R vs (callEntryStateHOLFinite s callee) (.returned v) st →
        InCtx st X → shapeEqHOL (shapeOfHOLExact v) sh = true →
        J1 v (setVarHOLFinite rn v { st with locals := s.locals }))
    (hk : ∀ v, HoareG σ X (J1 v) k (NQr J2 F))
    (hres : ∀ s t : State σ, P s → J2 t →
      J3 { t with locals := t.locals.resVarEq (rn, s.locals.lookup rn) }) :
    HoareG σ X P (.decCall rn sh f args k) (NQr J3 F) := by
  refine hoareG_decCall hf ?_ ?_
  · intro s hs hJ vs hvs callee v st hR hst hsh
    refine hoareG_conseq (hk v) (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
    · subst ht
      exact hpost s hs hJ vs hvs callee v st hR hst hsh
    · refine ⟨fun hr => hres s t hJ (hq.1 hr), fun r' hr' w hw => ?_⟩
      exact hF' t _ w rfl rfl rfl rfl (hq.2 r' hr' w hw)
  · intro s hs hJ vs hvs callee r st hR hst habn
    refine ⟨(fun h => by cases h), fun r' hr' w hw => ?_⟩
    cases hr'
    exact absurd hw (abn_ne' habn w)

/-- `x = f(args);` (a local or global `x`) against a `FunSpec` relation `R`. -/
theorem nqr_callA {k : VarKind} {x : MlS} {f : MlS} {args : List (ExpHOL 64)}
    {R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf : FunSpec σ X f R) {P : State σ → Prop}
    (hret : ∀ s : State σ, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : State σ), R vs (callEntryStateHOLFinite s callee) (.returned v) st →
        InCtx st X → isValidValueHOLExact s.toExact k x v = true →
        J' (setKvarHOLFinite k x v { st with locals := s.locals })) :
    HoareG σ X P (.call (some (some (k, x), none)) f args) (NQr J' F) := by
  refine hoareG_callA hf ?_ ?_
  · intro s hs hJ vs hvs callee v st hR hst hval
    exact ⟨fun _ => hret s hs hJ vs hvs callee v st hR hst hval, fun r' h => by cases h⟩
  · intro s hs hJ vs hvs callee r st hR hst habn
    refine ⟨(fun h => by cases h), fun r' hr' w hw => ?_⟩
    cases hr'
    exact absurd hw (abn_ne' habn w)

end rrules

end InitECandidate.Solver.MemSafe.Ini

#print axioms InitECandidate.Solver.MemSafe.Ini.nqr_callA
