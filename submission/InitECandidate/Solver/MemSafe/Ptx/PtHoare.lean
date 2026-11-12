import InitECandidate.Solver.MemSafe.Ptx.PtFacts
import InitECandidate.Solver.MemSafe.Entry.PmPost

/-!
# F3d: the walk's state predicate `PA` and the Hoare combinators

`PtE`: the entry data. `PB E L u`: a run invariant `PtRun D ..` (with dirty map `D` inside the written set `WSet`)
and the facts `L`. `LK Ls u`: tracked locals. `PA E Ls L := PB ∧ LK`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-- The entry data of `process_transaction(tx, index)`. -/
structure PtE (σ : Type) where
  Γ0 : Gam
  s0 : State σ
  p0 : Ptrs
  tx : BitVec 64
  idx : BitVec 64
  bo : BitVec 64
  be : BitVec 64
  txs : BitVec 64
  rcs : BitVec 64

/-- The block cells `process_transaction` writes: four `bo` counters and the two slice entries of each array. -/
def PtE.WSet (E : PtE σ) (a : BitVec 64) : Prop :=
  a = E.bo ∨ a = E.bo + 8 ∨ a = E.bo + 16 ∨ a = E.bo + 48 ∨
  a = E.txs + E.idx * 16 ∨ a = E.txs + E.idx * 16 + 8 ∨
  a = E.rcs + E.idx * 16 ∨ a = E.rcs + E.idx * 16 + 8

abbrev Env := MlS → Option (ValueHOL 64)

def Env.set (E : Env) (x : MlS) (v : ValueHOL 64) : Env := fun y => if y = x then some v else E y

theorem env_set_self (E : Env) (x : MlS) (v : ValueHOL 64) : (E.set x v) x = some v := by simp [Env.set]
theorem env_set_ne (E : Env) {x y : MlS} (v : ValueHOL 64) (h : y ≠ x) : (E.set x v) y = E y := by
  simp [Env.set, h]

def PB (E : PtE σ) (S : FS) (u : State σ) : Prop :=
  ∃ D Γ p, PtRun D E.Γ0 E.s0 E.p0 Γ u p ∧ (∀ a, D a ≠ none → E.WSet a) ∧ HoldsAll E.p0 Γ p u S

/-- The tracked locals. -/
def LKE (En : Env) (u : State σ) : Prop := ∀ x v, En x = some v → u.locals.lookup x = some v

def PA (E : PtE σ) (En : Env) (S : FS) (u : State σ) : Prop := PB E S u ∧ LKE En u

theorem pb_loc {E : PtE σ} {S : FS} {u : State σ} (h : PB E S u) (l : Locs) (c : Nat) :
    PB E S { u with locals := l, clock := c } := by
  obtain ⟨D, Γ, p, hr, hD, hL⟩ := h
  exact ⟨D, Γ, p, ptRun_loc hr l c, hD, holdsAll_loc hL l c⟩

theorem lke_set_other {En : Env} {u : State σ} (h : LKE En u) {n : MlS} (hn : En n = none)
    (v : ValueHOL 64) : LKE En (setVarHOLFinite n v u) := by
  intro x w hx
  have hne : x ≠ n := fun e => by rw [e, hn] at hx; cases hx
  rw [lk_set_ne u v (Ne.symm hne)]
  exact h x w hx

theorem lke_set {En : Env} {u : State σ} (h : LKE En u) (n : MlS) (v : ValueHOL 64) :
    LKE (En.set n v) (setVarHOLFinite n v u) := by
  intro x w hx
  by_cases hxn : x = n
  · subst hxn
    rw [env_set_self] at hx
    cases hx
    exact lk_set_self _ _ _
  · rw [env_set_ne En v hxn] at hx
    rw [lk_set_ne u v (Ne.symm hxn)]
    exact h x w hx

theorem lke_restore {En : Env} {s st : State σ} (h : LKE En s) : LKE En { st with locals := s.locals } := h

theorem lke_mono {En En' : Env} {u : State σ} (h : LKE En u) (hs : ∀ x v, En' x = some v → En x = some v) :
    LKE En' u := fun x v hx => h x v (hs x v hx)

theorem pa_set_other {E : PtE σ} {En : Env} {S : FS} {u : State σ} (h : PA E En S u) {n : MlS}
    (hn : En n = none) (v : ValueHOL 64) : PA E En S (setVarHOLFinite n v u) :=
  ⟨pb_loc h.1 _ _, lke_set_other h.2 hn v⟩

theorem pa_set {E : PtE σ} {En : Env} {S : FS} {u : State σ} (h : PA E En S u) (n : MlS)
    (v : ValueHOL 64) : PA E (En.set n v) S (setVarHOLFinite n v u) :=
  ⟨pb_loc h.1 _ _, lke_set h.2 n v⟩

theorem pa_mono {E : PtE σ} {En En' : Env} {S S' : FS} {u : State σ} (h : PA E En S u)
    (he : ∀ x v, En' x = some v → En x = some v) (hs : ∀ f, S' f → S f) : PA E En' S' u := by
  obtain ⟨⟨D, Γ, p, hr, hD, hL⟩, hk⟩ := h
  exact ⟨⟨D, Γ, p, hr, hD, holdsAll_mono hL hs⟩, lke_mono hk he⟩

/-! ## Combinators -/

/-- A locals-insensitive postcondition. -/
def LocIns (Q : Option (PanSemResultExact 64) → State σ → Prop) : Prop :=
  ∀ r (t : State σ) (l : Locs) (c : Nat), Q r t → Q r { t with locals := l, clock := c }

/-- A postcondition that survives restoring the declared variable `n` (the exit of its scope). -/
def ResIns (n : MlS) (Q : Option (PanSemResultExact 64) → State σ → Prop) : Prop :=
  ∀ r (t : State σ) (old : Option (ValueHOL 64)), Q r t → Q r { t with locals := t.locals.resVarEq (n, old) }

theorem locIns_resIns {Q : Option (PanSemResultExact 64) → State σ → Prop} (h : LocIns Q) (n : MlS) :
    ResIns n Q := fun r t old hq => h r t _ t.clock hq

theorem hdecK {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop} {n : MlS}
    (hQ : ResIns n Q) {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64}
    (h : ∀ s : State σ, InCtx s guestCtx → P s → ∀ v, ev s e = some v →
      shapeEqHOL sh (shapeOfHOLExact v) = true →
      Hoare σ guestCtx (fun t => t = setVarHOLFinite n v s) body Q) :
    Hoare σ guestCtx P (.dec n sh e body) Q := by
  refine hoare_dec fun s hs hp v hv hsh => ?_
  exact hoare_post (h s hs hp v hv hsh) fun r t _ _ hq => hQ r t _ hq

theorem hdecCallK {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {rn f : MlS} (hQ : ResIns rn Q) {sh : ShapeHOL} {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf : FunSpec σ guestCtx f R)
    (h : ∀ s : State σ, InCtx s guestCtx → P s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : State σ), R vs (callEntryStateHOLFinite s callee) (.returned v) st →
        InCtx st guestCtx → shapeEqHOL (shapeOfHOLExact v) sh = true →
        Hoare σ guestCtx (fun t => t = setVarHOLFinite rn v { st with locals := s.locals }) k Q) :
    Hoare σ guestCtx P (.decCall rn sh f args k) Q := by
  refine hoare_decCallS hf fun s hs hp vs hvs callee v st hR hst hsh => ?_
  exact hoare_post (h s hs hp vs hvs callee v st hR hst hsh) fun r t _ _ hq => hQ r t _ hq

/-- A statement that completes normally into `P'`. -/
abbrev HN (P : State σ → Prop) (c : ProgHOL 64) (P' : State σ → Prop) : Prop :=
  Hoare σ guestCtx P c (fun r t => r = none ∧ P' t)

theorem hseqN {P P1 : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {a b : ProgHOL 64} (ha : HN P a P1) (hb : Hoare σ guestCtx P1 b Q) :
    Hoare σ guestCtx P (.seq a b) Q := hoare_seqP ha hb

theorem hn_skip {P : State σ → Prop} : HN P .skip P := hoare_skip fun s _ h => ⟨rfl, h⟩

theorem hn_seq {P P1 P2 : State σ → Prop} {a b : ProgHOL 64} (ha : HN P a P1) (hb : HN P1 b P2) :
    HN P (.seq a b) P2 := hoare_seqP ha hb

theorem hn_pre {P P' Q : State σ → Prop} {c : ProgHOL 64} (h : HN P c Q)
    (hP : ∀ s : State σ, InCtx s guestCtx → P' s → P s) : HN P' c Q := hoare_pre h hP

theorem hn_post {P Q Q' : State σ → Prop} {c : ProgHOL 64} (h : HN P c Q)
    (hQ : ∀ t : State σ, InCtx t guestCtx → Q t → Q' t) : HN P c Q' :=
  hoare_post h fun _ t hc _ h => ⟨h.1, hQ t hc h.2⟩

theorem hn_ite {P Q : State σ → Prop} {c : ExpHOL 64} {a b : ProgHOL 64}
    (ha : HN (fun s => P s ∧ ∃ w, ev s c = some (.val (.word w)) ∧ w ≠ 0) a Q)
    (hb : HN (fun s => P s ∧ ev s c = some (.val (.word 0))) b Q) : HN P (.ite c a b) Q :=
  hoare_ite ha hb

/-! ## Calls to summarized state-object functions -/

theorem inObj_of_wcell {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout guestC p Γ) {a : BitVec 64}
    (h : WCell guestC Γ a) : InObj Γ a.toNat := by
  obtain ⟨o, ho, k, hk, -, rfl⟩ := h
  exact cell_in hord hL ho hk

theorem inObj_of_protCell {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout guestC p Γ) {a : BitVec 64}
    (h : ProtCell guestC Γ a) : InObj Γ a.toNat := by
  obtain ⟨o, ho, k, hk, -, rfl⟩ := h
  exact cell_in hord hL ho hk

/-- A summary core leaves an allocated cell outside `Γ` alone unless it is an argument cell. -/
theorem mem_outside_keep {sg : Sig} {PW : BitVec 64 → Prop} {vs : List (ValueHOL 64)}
    {r : PanSemResultExact 64} {Γ Γ' : Gam} {u t : State σ} {p p' : Ptrs}
    (hG : G guestC (HR σ) Γ u) (hc : SumCore guestC (HR σ) sg PW Γ u vs r t Γ' p p')
    (hPW : ∀ a, PW a → ProtCell guestC Γ a) {a : BitVec 64} (hn : ¬ InObj Γ a.toNat)
    (hal : p.Allocated a.toNat) (hna : ¬ ArgCells sg.params vs a) : t.memory a = u.memory a := by
  obtain ⟨q, hq, hord, hL, -⟩ := id hG
  obtain rfl : q = p := Option.some.inj (hq.symm.trans hc.1)
  refine hc.2.2.2.2.2.2.1 a ?_
  rintro (h | h | h | h)
  · exact hn (inObj_of_wcell hord hL h)
  · exact hna h
  · exact h hal
  · exact hn (inObj_of_protCell hord hL (hPW a h))

theorem protCell_not_wcell {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout guestC p Γ) {a : BitVec 64}
    (hp : ProtCell guestC Γ a) (hw : WCell guestC Γ a) : False := by
  obtain ⟨o, ho, k, hk, hpr, rfl⟩ := hp
  obtain ⟨o', ho', k', hk', hnp, he⟩ := hw
  obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho ho' hk hk' he
  exact hnp hpr

/-- A prot cell of a non-state object is left alone by a core unless it is an argument cell. -/
theorem mem_nonstate_keep {sg : Sig} {PW : BitVec 64 → Prop} {vs : List (ValueHOL 64)}
    {r : PanSemResultExact 64} {Γ Γ' : Gam} {u t : State σ} {p p' : Ptrs}
    (hG : G guestC (HR σ) Γ u) (hc : SumCore guestC (HR σ) sg PW Γ u vs r t Γ' p p')
    (hPW : ∀ a, PW a → ProtCell guestC Γ a ∧ StCell guestSt Γ a) {o : Obj} {k : Nat} (ho : o ∈ Γ)
    (hst : guestSt o.ty = false) (hk : o.HasSlot k) (hp : (guestC.ty o.ty).slot k = .prot)
    (hna : ¬ ArgCells sg.params vs (o.cell k)) : t.memory (o.cell k) = u.memory (o.cell k) := by
  obtain ⟨q, hq, hord, hL, -⟩ := id hG
  obtain rfl : q = p := Option.some.inj (hq.symm.trans hc.1)
  refine hc.2.2.2.2.2.2.1 _ ?_
  rintro (h | h | h | h)
  · exact protCell_not_wcell hord hL ⟨o, ho, k, hk, hp, rfl⟩ h
  · exact hna h
  · exact h (Helpers.allocated_of_inObj hL (cell_in hord hL ho hk))
  · obtain ⟨-, e, he, hse, k', hk', hc'⟩ := hPW _ h
    obtain ⟨rfl, -⟩ := cell_inj hord hL ho he hk hk' hc'
    rw [hst] at hse; cases hse

/-- **The core of a call to a summarized state-object function** from a `PtRun` state. -/
theorem call_core {E : PtE σ} {S : FS} {sg : Sig} {vs : List (ValueHOL 64)}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PWx : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    {s st : State σ} {callee : Locs} {v : ValueHOL 64} {D : BitVec 64 → Option (BitVec 64)} {Γ : Gam}
    {p : Ptrs}
    (hR : SumRelX guestC (HR σ) sg Pre (fun vs s Γ a => ProtCell guestC Γ a ∧ PWx vs s Γ a) Q vs
      (callEntryStateHOLFinite s callee) (.returned v) st)
    (hgl : ∀ g, cW.contains g = false → st.globals.lookup g = s.globals.lookup g)
    (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hJo : JrOut sg.gw) (hjn : ∀ g ∈ sg.gw, g = Hooks.gJn)
    (hPW : ∀ vs s Γ a, PWx vs s Γ a → StCell guestSt Γ a)
    (hr : PtRun D E.Γ0 E.s0 E.p0 Γ s p) (hL : HoldsAll E.p0 Γ p s S)
    (hargs : ArgsOK guestC Γ p sg.params vs) (hpre : Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hm : ∀ f, S f → ∀ a, f.reads a → ¬ ArgCells sg.params vs a)
    (hgo : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false) :
    ∃ Γ' p', ∃ hc : SumCore guestC (HR σ) sg (fun a => ProtCell guestC Γ a ∧ PWx vs (callEntryStateHOLFinite s callee) Γ a)
        Γ (callEntryStateHOLFinite s callee) vs (.returned v) st Γ' p p',
      PtRun D E.Γ0 E.s0 E.p0 Γ' { st with locals := s.locals } p' ∧
      StepD Γ p s Γ' p' { st with locals := s.locals } ∧
      HoldsAll E.p0 Γ' p' { st with locals := s.locals } S ∧
      Q vs (callEntryStateHOLFinite s callee) Γ (.returned v) st Γ' := by
  have hre : PtRun D E.Γ0 E.s0 E.p0 Γ (callEntryStateHOLFinite s callee) p :=
    ptRun_loc hr callee (s.clock - 1)
  have hLe : HoldsAll E.p0 Γ p (callEntryStateHOLFinite s callee) S := holdsAll_loc hL callee (s.clock - 1)
  have hGe := ptRun_G hre
  obtain ⟨Γ', p0', p', hc, hq⟩ := hR (by simp [Good]) (not_abortive_ret v) Γ hGe
    ⟨p, ptRun_ptrs hre, hargs⟩ hpre
  obtain rfl : p = p0' := (Option.some.inj (hc.1.symm.trans (ptRun_ptrs hre))).symm
  have hc' := sumCore_pwM (PW' := fun a => ProtCell guestC Γ a ∧ StCell guestSt Γ a) hc
    (fun a h => ⟨h.1, hPW vs _ Γ a h.2⟩)
  have hrun := ptRun_core hre hargs hc' hgw hJo hjn (fun g hg => hgl g (cW_of_ptW hg))
  have hstep : StepD Γ p (callEntryStateHOLFinite s callee) Γ' p' st := stepD_of_core hGe hc
  have hstep' : StepD Γ p s Γ' p' { st with locals := s.locals } := by
    obtain ⟨a1, a2, a3, a4, a5, a6, a7⟩ := hstep
    exact ⟨ptRun_ptrs hr, (ptrsOf_congr rfl).trans a2, a3, a4, a5,
      ptRun_G hr, (G_locFree Hooks.guestHooksR_lawful st s.locals st.clock).mpr a7⟩
  refine ⟨Γ', p', hc, ptRun_loc hrun s.locals st.clock, hstep', ?_, hq⟩
  have hL' := holds_step (S := S) hstep (ptRun_ord0 hre) ?_ ?_ hLe
  · exact holdsAll_loc hL' s.locals st.clock
  · intro f hf a ha
    have hh := hLe f hf
    by_cases hcv : ∃ a' v', f = Fct.cellv a' v'
    · obtain ⟨a', v', rfl⟩ := hcv
      have ha0 := ha
      obtain rfl : a = a' := ha
      obtain ⟨-, o, ho, hst, k, hk, hp, rfl⟩ := hh
      exact mem_nonstate_keep hGe hc (fun a h => ⟨h.1, hPW vs _ Γ a h.2⟩) ho hst hk hp (hm _ hf _ ha0)
    · obtain ⟨hn, hal⟩ := Fct.reads_alloc hh (ptRun_ord0 hr) (ptRun_ord hr)
        (fun a v h => hcv ⟨a, v, h⟩) ha
      exact mem_outside_keep hGe hc (fun a h => h.1) hn hal (hm f hf a ha)
  · intro g ty hmem
    have := hgl g (hgo g ty hmem)
    unfold gword
    show (match st.globals.lookup g with | some (ValueHOL.val (HolWordLab.word w)) => some w | x => none) = (match s.globals.lookup g with | some (ValueHOL.val (HolWordLab.word w)) => some w | x => none)
    rw [this]

/-! ## Capability summaries (`CSumm`) -/

theorem capPW_st {cs : List Cap} (hcs : ∀ c ∈ cs, c.ks = [] ∧ (c.all = true → guestSt c.t = true))
    {s : State σ} {Γ : Gam} {a : BitVec 64} (hw : CapPW cs s Γ a) : StCell guestSt Γ a := by
  obtain ⟨c, hc, ⟨e, -, k, hk, -⟩ | ⟨hall, e, he, hty, k, hks, rfl⟩⟩ := hw
  · rw [(hcs c hc).1] at hk; cases hk
  · refine ⟨e, he, ?_, k, hks, rfl⟩
    rcases hty with h | h
    · rw [h]; exact (hcs c hc).2 hall
    · exact guestSt_own _ h

theorem reqOK_of_pt {cs : List Cap}
    (hg : ∀ c ∈ cs, c.g ≠ anyG → (c.g = nmJr ∧ c.t = tJOURNAL) ∨ (c.g = nmSk ∧ c.t = tB64))
    {Γ : Gam} {s : State σ} (hG : G guestC (HR σ) Γ s) (hJ : JrNZ s) : ReqOK cs s Γ :=
  reqOK_jrs hg hG hJ

/-- A capability summary as the pieces `hn_call` and friends need. -/
structure CsOK (cs : List Cap) : Prop where
  st : ∀ c ∈ cs, c.ks = [] ∧ (c.all = true → guestSt c.t = true)
  gl : ∀ c ∈ cs, c.g ≠ anyG → (c.g = nmJr ∧ c.t = tJOURNAL) ∨ (c.g = nmSk ∧ c.t = tB64)


section csumm
variable {E : PtE σ} {En : Env} {S : FS} {f : MlS} {sg : Sig} {cs : List Cap} {args : List (ExpHOL 64)}

theorem preC {s : State σ} {D Γ p} (callee : Locs) (hcs : CsOK cs)
    (hr : PtRun D E.Γ0 E.s0 E.p0 Γ s p) :
    ReqOK cs (callEntryStateHOLFinite s callee) Γ :=
  reqOK_jrs hcs.gl ((G_locFree Hooks.guestHooksR_lawful s _ _).mpr (ptRun_G hr))
    (jrNZ_congr (s := s) rfl (ptRun_jr hr))

/-- The side conditions of a table call in the walk. -/
structure CallOK (E : PtE σ) (En : Env) (S : FS) (f : MlS) (sg : Sig) (cs : List Cap)
    (args : List (ExpHOL 64)) : Prop where
  csok : CsOK cs
  gw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw
  jo : JrOut sg.gw
  jn : ∀ g ∈ sg.gw, g = Hooks.gJn
  fin : ptAllNames.contains f = true
  argsok : ∀ s : State σ, PA E En S s → ∀ vs, evs s args = some vs → ∀ D Γ p,
    PtRun D E.Γ0 E.s0 E.p0 Γ s p → HoldsAll E.p0 Γ p s S → ArgsOK guestC Γ p sg.params vs
  memok : ∀ s : State σ, PA E En S s → ∀ vs, evs s args = some vs → ∀ g, S g → ∀ a, g.reads a →
    ¬ ArgCells sg.params vs a
  globok : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false

theorem hn_callC (hf : CSumm σ guestCtx guestC (HR σ) f sg cs) (h : CallOK E En S f sg cs args) :
    HN (PA E En S) (.call (some (none, none)) f args) (PA E En S) := by
  refine hoare_callD ((sumSpecA_relX hf).and (funSpec_pt_gw_all guestCtx_code h.fin)) ?_
  intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst
  obtain ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩ := hpa
  have hpa : PA E En S s := ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩
  obtain ⟨Γ', p', hc, hrun, -, hL', -⟩ :=
    call_core hR hgl h.gw h.jo h.jn (fun _ _ Γ a hw => capPW_st h.csok.st hw) hr hL
      (h.argsok s hpa vs hvs D Γ p hr hL) (preC callee h.csok hr) (h.memok s hpa vs hvs) h.globok
  exact ⟨rfl, ⟨D, Γ', p', hrun, hD, hL'⟩, hlk⟩

/-- `var rn = f(args); k`: the result is bound to `rn`, the facts `NF v` hold for it. -/
theorem hdecCallC {rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64}
    {QT : Option (PanSemResultExact 64) → State σ → Prop} (hQT : ResIns rn QT)
    (hf : CSumm σ guestCtx guestC (HR σ) f sg cs) (h : CallOK E En S f sg cs args)
    (NF : ValueHOL 64 → FS)
    (hq : ∀ (s : State σ) (vs : List (ValueHOL 64)) (callee : Locs) (v : ValueHOL 64) (st : State σ)
      (D : BitVec 64 → Option (BitVec 64)) (Γ Γ' : Gam) (p p' : Ptrs),
      PtRun D E.Γ0 E.s0 E.p0 Γ s p → HoldsAll E.p0 Γ p s S →
      StepD Γ p s Γ' p' { st with locals := s.locals } →
      PtRun D E.Γ0 E.s0 E.p0 Γ' { st with locals := s.locals } p' →
      SumCore guestC (HR σ) sg (fun a => ProtCell guestC Γ a ∧ CapPW cs (callEntryStateHOLFinite s callee) Γ a)
        Γ (callEntryStateHOLFinite s callee) vs (.returned v) st Γ' p p' →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoldsAll E.p0 Γ' p' { st with locals := s.locals } (NF v))
    (hk : ∀ v, shapeEqHOL (shapeOfHOLExact v) sh = true →
      Hoare σ guestCtx (PA E (En.set rn v) (fun g => S g ∨ NF v g) ) k QT) :
    Hoare σ guestCtx (PA E En S) (.decCall rn sh f args k) QT := by
  refine hdecCallK hQT ((sumSpecA_relX hf).and (funSpec_pt_gw_all guestCtx_code h.fin)) ?_
  intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst hsh
  obtain ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩ := hpa
  have hpa : PA E En S s := ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩
  obtain ⟨Γ', p', hc, hrun, hstep, hL', -⟩ :=
    call_core hR hgl h.gw h.jo h.jn (fun _ _ Γ a hw => capPW_st h.csok.st hw) hr hL
      (h.argsok s hpa vs hvs D Γ p hr hL) (preC callee h.csok hr) (h.memok s hpa vs hvs) h.globok
  have hN := hq s vs callee v st D Γ Γ' p p' hr hL hstep hrun hc hsh
  refine hoare_pre (hk v hsh) ?_
  intro t _ ht
  subst ht
  refine ⟨⟨D, Γ', p', ptRun_set hrun rn _, hD, ?_⟩, lke_set (lke_restore hlk) rn v⟩
  intro g hg
  rcases hg with hg | hg
  · exact (holdsAll_loc hL' _ _) g hg |> fun x => by cases g <;> exact x
  · have := hN g hg
    cases g <;> first | exact this | simpa [Fct.holds, gword, rd] using this

end csumm

end InitECandidate.Solver.MemSafe.Ptx
