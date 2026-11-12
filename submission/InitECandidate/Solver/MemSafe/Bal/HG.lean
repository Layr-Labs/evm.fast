import InitECandidate.Solver.MemSafe.Bal.GetPre

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

section hg
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

/-- Tracking with the footprint of the capabilities `cs`. -/
abbrev TrkC (cs : List Cap) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (Γ : Gam) (t : State σ) : Prop :=
  Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (cpw cs Γ0 s0 p0) Γ t

/-- The post of an exception-aware body: every non-abortive result keeps the six BAL globals and the tracking. -/
def GQ4 (cs : List Cap) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ rr, r = some rr → ¬ Abortive rr → (∀ g ∈ bal4, t.globals.lookup g = s0.globals.lookup g) ∧
    ∃ Γ, TrkC cs Γ0 s0 p0 Γ t

theorem gq4_locals (hH : HooksLawful guestC (guestHooksR (σ := σ))) {cs : List Cap}
    (r : Option (PanSemResultExact 64)) (t : State σ) (L : HolFiniteMapExact MlS (ValueHOL 64))
    (h : GQ4 cs Γ0 s0 p0 r t) : GQ4 cs Γ0 s0 p0 r { t with locals := L } := by
  intro rr hr hna
  obtain ⟨hb, Γ, hT⟩ := h rr hr hna
  exact ⟨hb, Γ, Struct.trk_congr hH hT rfl rfl rfl rfl⟩

theorem gq4_ab (cs : List Cap) (r : Option (PanSemResultExact 64)) (t : State σ) {rr}
    (hr : r = some rr) (h : Abortive rr) : GQ4 cs Γ0 s0 p0 r t :=
  fun rr' hr' hna => by rw [hr] at hr'; cases hr'; exact absurd h hna

/-- **A summarised call `f(args);`** from a tracked state. -/
theorem gcallD {f : MlS} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW' : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hsum : SumSpecA σ guestCtx guestC (guestHooksR (σ := σ)) f sg Pre PW' Q)
    (hf : (balFns.map Prod.fst).contains f = true) (hsg : ∀ g ∈ guestC.PG, g ∉ sg.gw)
    {cs : List Cap} (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0)
    {args : List (ExpHOL 64)} {P : Gam → State σ → Prop}
    (hTP : ∀ Γ s, P Γ s → TrkC cs Γ0 s0 p0 Γ s)
    (hdata : ∀ Γ s, P Γ s → ∀ vs, evs s args = some vs → ∀ callee,
      (∃ p, ptrsOf s = some p ∧ ArgsOK guestC Γ p sg.params vs) ∧
      Pre vs (callEntryStateHOLFinite s callee) Γ ∧
      (∀ a, ArgCells sg.params vs a → WCell guestC Γ a ∨ ¬ p0.Allocated a.toNat ∨ cpw cs Γ0 s0 p0 a) ∧
      (∀ y, ProtCell guestC Γ y → PW' vs (callEntryStateHOLFinite s callee) Γ y → cpw cs Γ0 s0 p0 y))
    {X : Option (PanSemResultExact 64) → State σ → Prop}
    (hXab : ∀ r t, Abortive r → X (some r) t)
    (hret : ∀ Γ s vs callee v Γ1 (st : State σ), P Γ s → evs s args = some vs → TrkC cs Γ0 s0 p0 Γ1 st →
      (∀ g ∈ bal4, st.globals.lookup g = s.globals.lookup g) →
      (∃ p p', ptrsOf s = some p ∧ ptrsOf st = some p' ∧ p.Mono p' ∧ Ext Γ Γ1 ∧ NewFresh Γ Γ1 p p') →
      Q vs (callEntryStateHOLFinite s callee) Γ (.returned v) st Γ1 → X none { st with locals := s.locals })
    (habn : ∀ Γ s r (st : State σ) Γ1, P Γ s → TrkC cs Γ0 s0 p0 Γ1 st →
      (∀ g ∈ bal4, st.globals.lookup g = s.globals.lookup g) → X (some r) (emptyLocalsHOLFinite st)) :
    HoareG σ guestCtx (fun s => ∃ Γ, P Γ s) (.call (some (none, none)) f args) X := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  refine hoareG_callD (FunSpec.and (sumRel_fun hsum) (FunSpec.and (Frames.funSpec_dom _)
    (funSpec_bal_gw4 hF.hX hf))) ?_ ?_
  · intro s hs ⟨Γ, hP⟩ vs hvs callee v st ⟨hS, ⟨hd, hbe⟩, hgw⟩ hst
    obtain ⟨hargs, hpre, hArg, hPW⟩ := hdata Γ s hP vs hvs callee
    obtain ⟨Γ1, pp, pp', hc, hq, hT2⟩ := call_cs hH (hTP Γ s hP) hord0 hL0 (sg := sg) (Pre := Pre)
      (PW' := PW') (Q := Q) (vs := vs) (r := .returned v) (callee := callee) (st := st) hS
      (by simp [Good]) (by simp [Abortive]) hargs hpre hsg hArg hPW hd hbe
    exact hret Γ s vs callee v Γ1 st hP hvs hT2 hgw ⟨pp, pp', (Frames.ptrsOf_congr rfl).symm.trans hc.1, hc.2.1, hc.2.2.1, hc.2.2.2.1, hc.2.2.2.2.1⟩ hq
  · intro s hs ⟨Γ, hP⟩ vs hvs callee r st ⟨hS, ⟨hd, hbe⟩, hgw⟩ hst habn'
    by_cases hab : Abortive r
    · exact hXab r _ hab
    · obtain ⟨hargs, hpre, hArg, hPW⟩ := hdata Γ s hP vs hvs callee
      obtain ⟨Γ1, pp, pp', hc, hq, hT2⟩ := call_cs hH (hTP Γ s hP) hord0 hL0 (sg := sg) (Pre := Pre)
        (PW' := PW') (Q := Q) (vs := vs) (r := r) (callee := callee) (st := st) hS
        (abn_good habn') hab hargs hpre hsg hArg hPW hd hbe
      exact habn Γ s r st Γ1 hP hT2 hgw

/-- **A summarised call `var rn = f(args); k`**. -/
theorem gdecCall {f : MlS} {sg : Sig} {rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW' : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hsum : SumSpecA σ guestCtx guestC (guestHooksR (σ := σ)) f sg Pre PW' Q)
    (hf : (balFns.map Prod.fst).contains f = true) (hsg : ∀ g ∈ guestC.PG, g ∉ sg.gw)
    {cs : List Cap} (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0)
    {args : List (ExpHOL 64)} {P : Gam → State σ → Prop}
    (hTP : ∀ Γ s, P Γ s → TrkC cs Γ0 s0 p0 Γ s)
    (hdata : ∀ Γ s, P Γ s → ∀ vs, evs s args = some vs → ∀ callee,
      (∃ p, ptrsOf s = some p ∧ ArgsOK guestC Γ p sg.params vs) ∧
      Pre vs (callEntryStateHOLFinite s callee) Γ ∧
      (∀ a, ArgCells sg.params vs a → WCell guestC Γ a ∨ ¬ p0.Allocated a.toNat ∨ cpw cs Γ0 s0 p0 a) ∧
      (∀ y, ProtCell guestC Γ y → PW' vs (callEntryStateHOLFinite s callee) Γ y → cpw cs Γ0 s0 p0 y))
    {X : Option (PanSemResultExact 64) → State σ → Prop}
    (hXl : ∀ r t L, X r t → X r { t with locals := L })
    (hXab : ∀ r t, Abortive r → X (some r) t)
    (hk : ∀ Γ s vs callee v Γ1 (st : State σ), P Γ s → evs s args = some vs → TrkC cs Γ0 s0 p0 Γ1 st →
      (∀ g ∈ bal4, st.globals.lookup g = s.globals.lookup g) →
      (∃ p p', ptrsOf s = some p ∧ ptrsOf st = some p' ∧ p.Mono p' ∧ Ext Γ Γ1 ∧ NewFresh Γ Γ1 p p') →
      Q vs (callEntryStateHOLFinite s callee) Γ (.returned v) st Γ1 →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoareG σ guestCtx (fun t => t = setVarHOLFinite rn v { st with locals := s.locals }) k X)
    (habn : ∀ Γ s r (st : State σ) Γ1, P Γ s → TrkC cs Γ0 s0 p0 Γ1 st →
      (∀ g ∈ bal4, st.globals.lookup g = s.globals.lookup g) → X (some r) (emptyLocalsHOLFinite st)) :
    HoareG σ guestCtx (fun s => ∃ Γ, P Γ s) (.decCall rn sh f args k) X := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  refine hoareG_decCall (FunSpec.and (sumRel_fun hsum) (FunSpec.and (Frames.funSpec_dom _)
    (funSpec_bal_gw4 hF.hX hf))) ?_ ?_
  · intro s hs ⟨Γ, hP⟩ vs hvs callee v st ⟨hS, ⟨hd, hbe⟩, hgw⟩ hst hsh
    obtain ⟨hargs, hpre, hArg, hPW⟩ := hdata Γ s hP vs hvs callee
    obtain ⟨Γ1, pp, pp', hc, hq, hT2⟩ := call_cs hH (hTP Γ s hP) hord0 hL0 (sg := sg) (Pre := Pre)
      (PW' := PW') (Q := Q) (vs := vs) (r := .returned v) (callee := callee) (st := st) hS
      (by simp [Good]) (by simp [Abortive]) hargs hpre hsg hArg hPW hd hbe
    exact hoareG_conseq (hk Γ s vs callee v Γ1 st hP hvs hT2 hgw ⟨pp, pp', (Frames.ptrsOf_congr rfl).symm.trans hc.1, hc.2.1, hc.2.2.1, hc.2.2.2.1, hc.2.2.2.2.1⟩ hq hsh) (fun s _ h => h)
      (fun r t _ _ hq' => hXl r t _ hq')
  · intro s hs ⟨Γ, hP⟩ vs hvs callee r st ⟨hS, ⟨hd, hbe⟩, hgw⟩ hst habn'
    by_cases hab : Abortive r
    · exact hXab r _ hab
    · obtain ⟨hargs, hpre, hArg, hPW⟩ := hdata Γ s hP vs hvs callee
      obtain ⟨Γ1, pp, pp', hc, hq, hT2⟩ := call_cs hH (hTP Γ s hP) hord0 hL0 (sg := sg) (Pre := Pre)
        (PW' := PW') (Q := Q) (vs := vs) (r := r) (callee := callee) (st := st) hS
        (abn_good habn') hab hargs hpre hsg hArg hPW hd hbe
      exact habn Γ s r st Γ1 hP hT2 hgw


theorem sa_of_cs {f : MlS} {sg : Sig} {cs : List Cap}
    (h : CSumm σ guestCtx guestC (guestHooksR (σ := σ)) f sg cs) :
    SumSpecA σ guestCtx guestC (guestHooksR (σ := σ)) f sg (fun _ s Γ => ReqOK cs s Γ)
      (fun _ s Γ a => CapPW cs s Γ a) (fun _ _ _ _ _ _ => True) := h

end hg

end InitECandidate.Solver.MemSafe.Bal
