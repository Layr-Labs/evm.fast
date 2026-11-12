import InitECandidate.Solver.Spec.Fq12.JLoop

/-!
# Cost and Hoare facts together

`CH σ X P p B Q`: from `P`, a Good run of `p` costs at most `B` ticks (`Inv.CostP`), and
every tracked result satisfies `Q` (`Hoare`). The rules thread both at once, so the outer
body of `fq12_inv` is analysed in a single pass.
-/

namespace InitECandidate.Solver.Spec.Fq12
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

def CH (σ : Type) (X : Ctx 64) (P : PanSemStateFiniteExact 64 σ → Prop) (p : ProgHOL 64) (B : Nat)
    (Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop) : Prop :=
  Inv.CostP σ X P p B ∧ Hoare σ X P p Q

theorem ch_of {P : PanSemStateFiniteExact 64 σ → Prop} {p : ProgHOL 64} {B : Nat}
    {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop}
    (hc : Cost σ X p B) (hh : Hoare σ X P p Q) : CH σ X P p B Q :=
  ⟨Inv.costP_of_cost hc, hh⟩

theorem CH.mono {P : PanSemStateFiniteExact 64 σ → Prop} {p : ProgHOL 64} {B B' : Nat}
    {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop}
    (h : CH σ X P p B Q) (hle : B ≤ B') : CH σ X P p B' Q := ⟨h.1.mono hle, h.2⟩

theorem CH.pre {P P' : PanSemStateFiniteExact 64 σ → Prop} {p : ProgHOL 64} {B : Nat}
    {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop}
    (h : CH σ X P p B Q) (hP : ∀ s, InCtx s X → P' s → P s) : CH σ X P' p B Q :=
  ⟨h.1.pre hP, hoare_pre h.2 hP⟩

theorem CH.post {P : PanSemStateFiniteExact 64 σ → Prop} {p : ProgHOL 64} {B : Nat}
    {Q Q' : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop}
    (h : CH σ X P p B Q) (hQ : ∀ r t, InCtx t X → Tracked r → Q r t → Q' r t) : CH σ X P p B Q' :=
  ⟨h.1, hoare_post h.2 hQ⟩

theorem ch_exists {α : Type} {P : α → PanSemStateFiniteExact 64 σ → Prop} {p : ProgHOL 64}
    {B : Nat} {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop}
    (h : ∀ a, CH σ X (P a) p B Q) : CH σ X (fun s => ∃ a, P a s) p B Q :=
  ⟨Inv.costP_exists fun a => (h a).1, hoare_exists fun a => (h a).2⟩

theorem ch_pure {q : Prop} {P : PanSemStateFiniteExact 64 σ → Prop} {p : ProgHOL 64} {B : Nat}
    {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop}
    (h : q → CH σ X P p B Q) : CH σ X (fun s => q ∧ P s) p B Q :=
  ⟨fun s hs ⟨hq, hp⟩ hg => (h hq).1 s hs hp hg, fun s hs ⟨hq, hp⟩ ht => (h hq).2 s hs hp ht⟩

theorem ch_seq {P : PanSemStateFiniteExact 64 σ → Prop} {a b : ProgHOL 64} {Ba Bb : Nat}
    {R Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop}
    (ha : CH σ X P a Ba R) (hab : ∀ r t, InCtx t X → r ≠ none → Tracked r → R r t → Q r t)
    (hb : CH σ X (R none) b Bb Q) : CH σ X P (.seq a b) (Ba + Bb) Q :=
  ⟨Inv.costP_seq ha.1 (hoare_post ha.2 fun r t _ _ h hr => hr ▸ h) hb.1, hoare_seq ha.2 hab hb.2⟩

theorem ch_ite {P : PanSemStateFiniteExact 64 σ → Prop} {c : ExpHOL 64} {a b : ProgHOL 64}
    {Ba Bb : Nat} {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop}
    (ha : CH σ X (fun s => P s ∧ ∃ w, ev s c = some (.val (.word w)) ∧ w ≠ 0) a Ba Q)
    (hb : CH σ X (fun s => P s ∧ ev s c = some (.val (.word 0))) b Bb Q) :
    CH σ X P (.ite c a b) (max Ba Bb) Q :=
  ⟨Inv.costP_ite ha.1 hb.1, hoare_ite ha.2 hb.2⟩

theorem ch_dec {P : PanSemStateFiniteExact 64 σ → Prop} {n : MlS} {sh : ShapeHOL}
    {e : ExpHOL 64} {body : ProgHOL 64} {B : Nat}
    {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop}
    (h : ∀ s, InCtx s X → P s → ∀ v, ev s e = some v → shapeEqHOL sh (shapeOfHOLExact v) = true →
      CH σ X (fun t => t = setVarHOLFinite n v s) body B
        (fun r t => Q r { t with locals := t.locals.resVarEq (n, s.locals.lookup n) })) :
    CH σ X P (.dec n sh e body) B Q :=
  ⟨Inv.costP_dec fun s hs hp v hv hsh => (h s hs hp v hv hsh).1,
    hoare_dec fun s hs hp v hv hsh => (h s hs hp v hv hsh).2⟩

theorem ch_decCallS {P : PanSemStateFiniteExact 64 σ → Prop} {rn f : MlS} {sh : ShapeHOL}
    {args : List (ExpHOL 64)} {k : ProgHOL 64} {Bf Bk : Nat}
    {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop}
    {R : List (ValueHOL 64) → PanSemStateFiniteExact 64 σ → PanSemResultExact 64 →
      PanSemStateFiniteExact 64 σ → Prop}
    (hf : CalleeCost σ X f Bf) (hR : FunSpec σ X f R)
    (h : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs → ∀ callee v st,
      R vs (callEntryStateHOLFinite s callee) (.returned v) st → InCtx st X →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      CH σ X (fun t => t = setVarHOLFinite rn v { st with locals := s.locals }) k Bk
        (fun r t => Q r { t with locals := t.locals.resVarEq (rn, s.locals.lookup rn) })) :
    CH σ X P (.decCall rn sh f args k) (1 + Bf + Bk) Q :=
  ⟨costP_decCallS hf hR fun s hs hp vs hvs callee v st hr hst hsh =>
      (h s hs hp vs hvs callee v st hr hst hsh).1,
    hoare_decCallS hR fun s hs hp vs hvs callee v st hr hst hsh =>
      (h s hs hp vs hvs callee v st hr hst hsh).2⟩

theorem ch_callD {P : PanSemStateFiniteExact 64 σ → Prop} {f : MlS} {args : List (ExpHOL 64)}
    {Bf : Nat} {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop}
    {R : List (ValueHOL 64) → PanSemStateFiniteExact 64 σ → PanSemResultExact 64 →
      PanSemStateFiniteExact 64 σ → Prop}
    (hf : CalleeCost σ X f Bf) (hR : FunSpec σ X f R)
    (h : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs → ∀ callee v st,
      R vs (callEntryStateHOLFinite s callee) (.returned v) st → InCtx st X →
      Q none { st with locals := s.locals }) :
    CH σ X P (.call (some (none, none)) f args) (1 + Bf + 0) Q :=
  ⟨Inv.costP_of_cost (cost_call hf (by intro _ _ _ _ h; cases h)), hoare_callD hR h⟩

end InitECandidate.Solver.Spec.Fq12
