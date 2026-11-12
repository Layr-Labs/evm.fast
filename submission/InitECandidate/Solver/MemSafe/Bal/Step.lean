import InitECandidate.Solver.MemSafe.Bal.BufKit

set_option maxRecDepth 100000
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

section st
variable (cs : List Cap) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs)

/-- Tracked, and the six BAL globals as at entry. -/
def IV (Γ : Gam) (t : State σ) : Prop :=
  TrkC cs Γ0 s0 p0 Γ t ∧ ∀ g ∈ bal4, t.globals.lookup g = s0.globals.lookup g

def PI (L : Gam → State σ → Prop) (Γ : Gam) (t : State σ) : Prop := IV cs Γ0 s0 p0 Γ t ∧ L Γ t

def RR (L : Gam → State σ → Prop) (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  (r = none ∧ ∃ Γ, PI cs Γ0 s0 p0 L Γ t) ∨ (r ≠ none ∧ GQ4 cs Γ0 s0 p0 r t)

variable {cs Γ0 s0 p0}

theorem gq4_of_iv {Γ : Gam} {t : State σ} (r : Option (PanSemResultExact 64)) (h : IV cs Γ0 s0 p0 Γ t) :
    GQ4 cs Γ0 s0 p0 r t := fun _ _ _ => ⟨h.2, Γ, h.1⟩

theorem rr_ab {L} (r : PanSemResultExact 64) (t : State σ) (h : Abortive r) :
    RR cs Γ0 s0 p0 L (some r) t := Or.inr ⟨by simp, gq4_ab cs _ t rfl h⟩

theorem rr_locals (hH : HooksLawful guestC (guestHooksR (σ := σ))) {L : Gam → State σ → Prop}
    (hL : ∀ Γ t M, L Γ t → L Γ { t with locals := M })
    (r : Option (PanSemResultExact 64)) (t : State σ) (M : HolFiniteMapExact MlS (ValueHOL 64))
    (h : RR cs Γ0 s0 p0 L r t) : RR cs Γ0 s0 p0 L r { t with locals := M } := by
  rcases h with ⟨hr, Γ, ⟨hT, hg⟩, hl⟩ | ⟨hr, hq⟩
  · exact Or.inl ⟨hr, Γ, ⟨Struct.trk_congr hH hT rfl rfl rfl rfl, hg⟩, hL Γ t M hl⟩
  · exact Or.inr ⟨hr, gq4_locals hH r t M hq⟩

theorem hseq {P L : Gam → State σ → Prop} {a b : ProgHOL 64}
    (ha : HoareG σ guestCtx (fun s => ∃ Γ, P Γ s) a (RR cs Γ0 s0 p0 L))
    (hb : HoareG σ guestCtx (fun s => ∃ Γ, PI cs Γ0 s0 p0 L Γ s) b (GQ4 cs Γ0 s0 p0)) :
    HoareG σ guestCtx (fun s => ∃ Γ, P Γ s) (.seq a b) (GQ4 cs Γ0 s0 p0) :=
  hoareG_seq ha (fun r t _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2))
    (hoareG_pre hb (fun t _ h => by
      rcases h with ⟨-, h⟩ | ⟨hr, -⟩
      · exact h
      · exact absurd rfl hr))

/-- **A summarised call `f(args);` in an invariant-carrying body.** -/
theorem gstepD (hH : HooksLawful guestC (guestHooksR (σ := σ)))
    {f : MlS} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW' : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hsum : SumSpecA σ guestCtx guestC (guestHooksR (σ := σ)) f sg Pre PW' Q)
    (hf : (balFns.map Prod.fst).contains f = true) (hsg : ∀ g ∈ guestC.PG, g ∉ sg.gw)
    (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0)
    {args : List (ExpHOL 64)} {L Ln : Gam → State σ → Prop}
    (hdata : ∀ Γ s, PI cs Γ0 s0 p0 L Γ s → ∀ vs, evs s args = some vs → ∀ callee,
      (∃ p, ptrsOf s = some p ∧ ArgsOK guestC Γ p sg.params vs) ∧
      Pre vs (callEntryStateHOLFinite s callee) Γ ∧
      (∀ a, ArgCells sg.params vs a → WCell guestC Γ a ∨ ¬ p0.Allocated a.toNat ∨ cpw cs Γ0 s0 p0 a) ∧
      (∀ y, ProtCell guestC Γ y → PW' vs (callEntryStateHOLFinite s callee) Γ y → cpw cs Γ0 s0 p0 y))
    (hnext : ∀ Γ s vs callee v Γ1 (st : State σ), PI cs Γ0 s0 p0 L Γ s → evs s args = some vs →
      TrkC cs Γ0 s0 p0 Γ1 st →
      (∃ p p', ptrsOf s = some p ∧ ptrsOf st = some p' ∧ p.Mono p' ∧ Ext Γ Γ1 ∧ NewFresh Γ Γ1 p p') →
      Q vs (callEntryStateHOLFinite s callee) Γ (.returned v) st Γ1 → Ln Γ1 { st with locals := s.locals }) :
    HoareG σ guestCtx (fun s => ∃ Γ, PI cs Γ0 s0 p0 L Γ s) (.call (some (none, none)) f args)
      (RR cs Γ0 s0 p0 Ln) := by
  refine gcallD hsum hf hsg hord0 hL0 (cs := cs) (P := PI cs Γ0 s0 p0 L) (fun Γ s h => h.1.1) hdata
    (fun r t h => rr_ab r t h) ?_ ?_
  · intro Γ s vs callee v Γ1 st hP hvs hT2 hgw hinfo hq
    refine Or.inl ⟨rfl, Γ1, ⟨⟨hT2, fun g hg => (hgw g hg).trans (hP.1.2 g hg)⟩, hnext Γ s vs callee v Γ1 st hP hvs hT2 hinfo hq⟩⟩
  · intro Γ s r st Γ1 hP hT2 hgw
    exact Or.inr ⟨by simp, gq4_of_iv _ ⟨Struct.trk_congr (hH) hT2 rfl rfl rfl rfl, fun g hg => (hgw g hg).trans (hP.1.2 g hg)⟩⟩

/-- **A summarised call `var rn = f(args); k`**. -/
theorem gstepDec (hH : HooksLawful guestC (guestHooksR (σ := σ)))
    {f : MlS} {sg : Sig} {rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW' : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hsum : SumSpecA σ guestCtx guestC (guestHooksR (σ := σ)) f sg Pre PW' Q)
    (hf : (balFns.map Prod.fst).contains f = true) (hsg : ∀ g ∈ guestC.PG, g ∉ sg.gw)
    (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0)
    {args : List (ExpHOL 64)} {L Ln : Gam → State σ → Prop}
    (hdata : ∀ Γ s, PI cs Γ0 s0 p0 L Γ s → ∀ vs, evs s args = some vs → ∀ callee,
      (∃ p, ptrsOf s = some p ∧ ArgsOK guestC Γ p sg.params vs) ∧
      Pre vs (callEntryStateHOLFinite s callee) Γ ∧
      (∀ a, ArgCells sg.params vs a → WCell guestC Γ a ∨ ¬ p0.Allocated a.toNat ∨ cpw cs Γ0 s0 p0 a) ∧
      (∀ y, ProtCell guestC Γ y → PW' vs (callEntryStateHOLFinite s callee) Γ y → cpw cs Γ0 s0 p0 y))
    (hnext : ∀ Γ s vs callee v Γ1 (st : State σ), PI cs Γ0 s0 p0 L Γ s → evs s args = some vs →
      shapeEqHOL (shapeOfHOLExact v) sh = true → TrkC cs Γ0 s0 p0 Γ1 st →
      (∃ p p', ptrsOf s = some p ∧ ptrsOf st = some p' ∧ p.Mono p' ∧ Ext Γ Γ1 ∧ NewFresh Γ Γ1 p p') →
      Q vs (callEntryStateHOLFinite s callee) Γ (.returned v) st Γ1 →
      Ln Γ1 (setVarHOLFinite rn v { st with locals := s.locals }))
    (hk : HoareG σ guestCtx (fun s => ∃ Γ, PI cs Γ0 s0 p0 Ln Γ s) k (GQ4 cs Γ0 s0 p0)) :
    HoareG σ guestCtx (fun s => ∃ Γ, PI cs Γ0 s0 p0 L Γ s) (.decCall rn sh f args k) (GQ4 cs Γ0 s0 p0) := by
  refine gdecCall hsum hf hsg hord0 hL0 (cs := cs) (P := PI cs Γ0 s0 p0 L) (fun Γ s h => h.1.1) hdata
    (fun r t M h => gq4_locals hH r t M h) (fun r t h => fun rr hr hna => by
      cases hr; exact absurd h hna) ?_ ?_
  · intro Γ s vs callee v Γ1 st hP hvs hT2 hgw hinfo hq hsh
    refine hoareG_pre hk (fun t _ ht => ?_)
    subst ht
    exact ⟨Γ1, ⟨Struct.trk_congr hH hT2 rfl rfl rfl rfl, fun g hg => (hgw g hg).trans (hP.1.2 g hg)⟩,
      hnext Γ s vs callee v Γ1 st hP hvs hsh hT2 hinfo hq⟩
  · intro Γ s r st Γ1 hP hT2 hgw
    exact gq4_of_iv _ ⟨Struct.trk_congr hH hT2 rfl rfl rfl rfl, fun g hg => (hgw g hg).trans (hP.1.2 g hg)⟩

end st

end InitECandidate.Solver.MemSafe.Bal
