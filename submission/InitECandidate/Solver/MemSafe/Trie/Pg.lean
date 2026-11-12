import InitECandidate.Solver.MemSafe.Trie.Begin
import InitECandidate.Solver.MemSafe.Trie.FinG

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# `PG`-style statement rules

`PG S E`: normal ends satisfy `S`, abnormal ends satisfy `E`, and nothing returns or breaks. Rules for
sequences, declarations and calls in this form.
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.Spec.Mpt InitECandidate.Solver.Spec.Mpt.Leaves

variable {σ : Type} {X : Ctx 64}

theorem pg_none {S E : State σ → Prop} {t : State σ} (h : S t) : PG S E none t :=
  ⟨fun _ => h, fun r' hr' => nomatch hr'⟩

theorem pg_abn {S E : State σ → Prop} {t : State σ} {r : PanSemResultExact 64} (hr : Abn r)
    (h : E t) : PG S E (some r) t :=
  And.intro (fun h' => nomatch h') (fun r' hr' => by cases hr'; exact ⟨hr, h⟩)

theorem pg_mono {S S' E E' : State σ → Prop} {r : Option (PanSemResultExact 64)} {t : State σ}
    (h : PG S E r t) (hS : ∀ t, S t → S' t) (hE : ∀ t, E t → E' t) : PG S' E' r t :=
  ⟨fun hr => hS _ (h.1 hr), fun r' hr' => ⟨(h.2 r' hr').1, hE _ (h.2 r' hr').2⟩⟩

theorem hoareG_seqP {P S1 S2 E : State σ → Prop} {a b : ProgHOL 64}
    (ha : HoareG σ X P a (PG S1 E)) (hb : HoareG σ X S1 b (PG S2 E)) :
    HoareG σ X P (.seq a b) (PG S2 E) :=
  hoareG_seq ha (fun r t _ hr _ h => ⟨fun h' => absurd h' hr, h.2⟩)
    (hoareG_pre hb fun t _ h => h.1 rfl)

theorem hoareG_preP {P P' S E : State σ → Prop} {a : ProgHOL 64}
    (ha : HoareG σ X P a (PG S E)) (h : ∀ t, P' t → P t) : HoareG σ X P' a (PG S E) :=
  hoareG_pre ha fun t _ ht => h t ht

theorem hoareG_decP {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64}
    {P Sin S E : State σ → Prop}
    (hres : ∀ t : State σ, Sin t → ∀ old, S { t with locals := t.locals.resVarEq (x, old) })
    (hE : ∀ t : State σ, E t → ∀ old, E { t with locals := t.locals.resVarEq (x, old) })
    (h : ∀ s, InCtx s X → P s → ∀ v, ev s e = some v → shapeEqHOL sh (shapeOfHOLExact v) = true →
      HoareG σ X (fun t => t = setVarHOLFinite x v s) body (PG Sin E)) :
    HoareG σ X P (.dec x sh e body) (PG S E) :=
  hoareG_dec fun s hs hp v hv hsh => hoareG_conseq (h s hs hp v hv hsh) (fun t _ ht => ht)
    fun r t _ _ hq => ⟨fun hr => hres t (hq.1 hr) _,
      fun r' hr' => ⟨(hq.2 r' hr').1, hE _ (hq.2 r' hr').2 _⟩⟩

theorem hoareG_callAP {x : MlS} {f : MlS} {args : List (ExpHOL 64)}
    {R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf : FunSpec σ X f R) {P S E : State σ → Prop}
    (hret : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : State σ), R vs (callEntryStateHOLFinite s callee) (.returned v) st →
        InCtx st X → isValidValueHOLExact s.toExact .local x v = true →
        S { st with locals := s.locals.update (x, v) })
    (habn : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee r (st : State σ), R vs (callEntryStateHOLFinite s callee) r st → InCtx st X →
        Abn r → E (emptyLocalsHOLFinite st)) :
    HoareG σ X P (.call (some (some (.local, x), none)) f args) (PG S E) :=
  hoareG_callA hf (fun s hs hp vs hvs callee v st hR hst hval =>
      pg_none (hret s hs hp vs hvs callee v st hR hst hval))
    (fun s hs hp vs hvs callee r st hR hst habn' =>
      pg_abn habn' (habn s hs hp vs hvs callee r st hR hst habn'))

theorem hoareG_callDP {f : MlS} {args : List (ExpHOL 64)}
    {R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf : FunSpec σ X f R) {P S E : State σ → Prop}
    (hret : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : State σ), R vs (callEntryStateHOLFinite s callee) (.returned v) st →
        InCtx st X → S { st with locals := s.locals })
    (habn : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee r (st : State σ), R vs (callEntryStateHOLFinite s callee) r st → InCtx st X →
        Abn r → E (emptyLocalsHOLFinite st)) :
    HoareG σ X P (.call (some (none, none)) f args) (PG S E) :=
  hoareG_callD hf (fun s hs hp vs hvs callee v st hR hst =>
      pg_none (hret s hs hp vs hvs callee v st hR hst))
    (fun s hs hp vs hvs callee r st hR hst habn' =>
      pg_abn habn' (habn s hs hp vs hvs callee r st hR hst habn'))

theorem hoareG_decCallP {rn : MlS} {sh : ShapeHOL} {f : MlS} {args : List (ExpHOL 64)}
    {k : ProgHOL 64} {R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf : FunSpec σ X f R) {P Sin S E : State σ → Prop}
    (hres : ∀ t : State σ, Sin t → ∀ old, S { t with locals := t.locals.resVarEq (rn, old) })
    (hE : ∀ t : State σ, E t → ∀ old, E { t with locals := t.locals.resVarEq (rn, old) })
    (hk : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : State σ), R vs (callEntryStateHOLFinite s callee) (.returned v) st →
        InCtx st X → shapeEqHOL (shapeOfHOLExact v) sh = true →
        HoareG σ X (fun t => t = setVarHOLFinite rn v { st with locals := s.locals }) k (PG Sin E))
    (habn : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee r (st : State σ), R vs (callEntryStateHOLFinite s callee) r st → InCtx st X →
        Abn r → E (emptyLocalsHOLFinite st)) :
    HoareG σ X P (.decCall rn sh f args k) (PG S E) :=
  hoareG_decCall hf (fun s hs hp vs hvs callee v st hR hst hsh =>
      hoareG_conseq (hk s hs hp vs hvs callee v st hR hst hsh) (fun t _ ht => ht)
        fun r t _ _ hq => ⟨fun hr => hres t (hq.1 hr) _,
          fun r' hr' => ⟨(hq.2 r' hr').1, hE _ (hq.2 r' hr').2 _⟩⟩)
    (fun s hs hp vs hvs callee r st hR hst habn' =>
      pg_abn habn' (habn s hs hp vs hvs callee r st hR hst habn'))

end InitECandidate.Solver.MemSafe.Trie
