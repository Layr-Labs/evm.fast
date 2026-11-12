import InitECandidate.Solver.MemSafe.Frames.ChildMsg
import InitECandidate.Solver.MemSafe.Frames.BKeep

/-!
# `start_child` fix (decision 2): footprint-free runs, state objects

`start_child`'s kind-2 callees (`destroy_storage`, `mark_account_created`, `increment_nonce`)
write `prot` cells of *state objects* (journal records, table regions), and take the target
address as a `buf 20` argument (an allocated block outside `Γ`). `frame_start` (through
`frame_prologue → move_ether`) writes the address blocks of the running message as well. None
of these cells is in a plain summary footprint of `start_child`, so the new `start_child`
summary is **footprint-free** (`SumSpecT`: `SumCore` with `PW := True`), and the run facts
carried through its body are `RunT` (`Run` without the memory clause). Its consumers
(`generic_call`, `generic_create`, the CALL / CREATE handlers, `op_dispatch`'s `JSpec`) need no
footprint: they end right after `start_child`.

* `RunT` and its lemmas (`runT_trans` needs no footprint argument).
* State objects: `St : Nat → Bool` selects the state types; `nst St Γ` drops the state objects;
  `ProtKeep C (nst St Γ)` is the weakened `ProtKeep` ("`prot` cells outside state objects").
  `StCell St Γ` are the cells of state objects.
* `StSum`: the accepted callee shape (Pre `JrNZ`, `prot` writes in state objects, keeps
  `frame_mem_ptr`); `stSum_of_csumm` builds it from a fold / hand `CSumm` and `KeepsFp`.
* `argCells_not_prot`, `bufOK_step`: argument buffers avoid `prot` cells; `BufOK` survives a
  step.
* `SumRelX`, `SumSpecT`, `run_callT`: calls to summarized functions from `RunT`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-! ## Footprint-free runs -/

/-- A run from `s` to `t` without a footprint clause; its memory clause is `BKeep`: the `prot`
cells of the block objects of `Γ` are unchanged. -/
def RunT (C : Cfg) (H : Hooks σ) (gw : List MlS) (Γ : Gam) (s : State σ) (Γ' : Gam)
    (t : State σ) (p p' : Ptrs) : Prop :=
  ptrsOf s = some p ∧ ptrsOf t = some p' ∧ p.Mono p' ∧ Ext Γ Γ' ∧ NewFresh Γ Γ' p p' ∧
    G C H Γ' t ∧ (∀ g ∈ C.PG, g ∉ gw → t.globals.lookup g = s.globals.lookup g) ∧ BKeep C Γ s t

section runT
variable {C : Cfg} {H : Hooks σ}

theorem keepH_of_runT {gw : List MlS} {Γ Γ' : Gam} {s t : State σ} {p p' : Ptrs}
    (h : RunT C H gw Γ s Γ' t p p') : KeepH C Γ Γ' s t := by
  obtain ⟨h1, h2, h3, h4, h5, hG, -⟩ := h
  obtain ⟨q, hq, hord', hL', -⟩ := hG
  obtain rfl : q = p' := Option.some.inj (hq.symm.trans h2)
  exact keepH_of_run h1 h2 h3 h4 h5 hL' hord'

/-- A run followed by a summarized call keeps the heap. -/
theorem keepH_of_runT_sumCore {gw : List MlS} {sg : Sig} {PW : BitVec 64 → Prop} {vs : List (ValueHOL 64)}
    {r : PanSemResultExact 64} {Γ0 Γ1 Γ' : Gam} {s0 u e t : State σ} {p0 p1 q q' : Ptrs}
    (hrun : RunT C H gw Γ0 s0 Γ1 u p0 p1) (he : e.globals = u.globals)
    (hc : SumCore C H sg PW Γ1 e vs r t Γ' q q') : KeepH C Γ0 Γ' s0 t := by
  obtain ⟨c1, c2, c3, c4, c5, cG, -⟩ := hc
  obtain ⟨y, hy, hordy, hLy, -⟩ := cG
  obtain rfl : y = q' := Option.some.inj (hy.symm.trans c2)
  have hqe : ptrsOf u = some q := by rw [← c1]; unfold ptrsOf gword; rw [he]
  obtain ⟨z, hz, hordz, -⟩ := hrun.2.2.2.2.2.1
  obtain rfl : z = q := Option.some.inj (hz.symm.trans hqe)
  exact (keepH_of_runT hrun).trans (keepH_congr he.symm rfl (keepH_of_run c1 c2 c3 c4 c5 hLy hordy)) hqe hordz

theorem bkeep_of_runT {gw : List MlS} {Γ Γ' : Gam} {s t : State σ} {p p' : Ptrs}
    (h : RunT C H gw Γ s Γ' t p p') : BKeep C Γ s t := h.2.2.2.2.2.2.2

theorem runT_of_run {gw : List MlS} {Γ Γ' : Gam} {s t : State σ} {p p' : Ptrs}
    (h : Run C H gw Γ s Γ' t p p') (hb : BKeep C Γ s t) : RunT C H gw Γ s Γ' t p p' :=
  let ⟨h1, h2, h3, h4, h5, h6, _, h8⟩ := h; ⟨h1, h2, h3, h4, h5, h6, h8, hb⟩

theorem runT_refl {gw : List MlS} {Γ : Gam} {s : State σ} {p : Ptrs} (hG : G C H Γ s)
    (hp : ptrsOf s = some p) : RunT C H gw Γ s Γ s p p :=
  runT_of_run (run_refl hG hp) (bkeep_refl C Γ s)

theorem runT_trans {gw : List MlS} {Γ Γ1 Γ2 : Gam} {s t1 t2 : State σ} {p p1 p2 : Ptrs}
    (h1 : RunT C H gw Γ s Γ1 t1 p p1) (h2 : RunT C H gw Γ1 t1 Γ2 t2 p1 p2) :
    RunT C H gw Γ s Γ2 t2 p p2 := by
  obtain ⟨hp, -, hm1, he1, hn1, -, hg1, hb1⟩ := h1
  obtain ⟨-, hp2, hm2, he2, hn2, hG2, hg2, hb2⟩ := h2
  exact ⟨hp, hp2, mono_trans hm1 hm2, ext_trans he1 he2, newFresh_trans hm1 hm2 hn1 hn2, hG2,
    fun g hg hgw => (hg2 g hg hgw).trans (hg1 g hg hgw), bkeep_trans he1 hb1 hb2⟩

theorem runT_locals {gw : List MlS} {Γ Γ' : Gam} {s t : State σ} {p p' : Ptrs}
    (hH : HooksLawful C H) (h : RunT C H gw Γ s Γ' t p p') (l : Locs) :
    RunT C H gw Γ s Γ' { t with locals := l } p p' := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h8, hb⟩ := h
  exact ⟨h1, by rw [ptrsOf_congr rfl]; exact h2, h3, h4, h5, (G_locFree hH t l t.clock).mpr h6, h8,
    bkeep_congr rfl rfl hb⟩

theorem runT_emptyLocals {gw : List MlS} {Γ Γ' : Gam} {s t : State σ} {p p' : Ptrs}
    (hH : HooksLawful C H) (h : RunT C H gw Γ s Γ' t p p') :
    RunT C H gw Γ s Γ' (emptyLocalsHOLFinite t) p p' := runT_locals hH h _

theorem runT_gw {gw gw' : List MlS} (hsub : ∀ g, g ∈ gw → g ∈ gw') {Γ Γ' : Gam} {s t : State σ}
    {p p' : Ptrs} (h : RunT C H gw Γ s Γ' t p p') : RunT C H gw' Γ s Γ' t p p' :=
  let ⟨h1, h2, h3, h4, h5, h6, h8, hb⟩ := h
  ⟨h1, h2, h3, h4, h5, h6, fun g hg hgw => h8 g hg fun h => hgw (hsub g h), hb⟩

theorem runT_same (hH : HooksLawful C H) {gw : List MlS} {Γ Γ' : Gam} {s u t : State σ}
    {p p' : Ptrs} (h : RunT C H gw Γ s Γ' u p p') (hm : t.memory = u.memory)
    (hg : t.globals = u.globals) (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be) :
    RunT C H gw Γ s Γ' t p p' := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h8, hb⟩ := h
  exact ⟨h1, by rw [ptrsOf_congr hg]; exact h2, h3, h4, h5, G_congr hH hm hg hd hbe h6,
    fun g hg' hgw => by rw [hg]; exact h8 g hg' hgw, bkeep_congr rfl hm hb⟩

/-- **A callee summary core as a run** (any arguments, any protected writes), given that it
keeps the block cells (`bkeep_of_sumCore`). -/
theorem runT_of_sumCore {sg : Sig} {gw : List MlS} (hgw : ∀ g, g ∈ sg.gw → g ∈ gw)
    {PW : BitVec 64 → Prop} {Γ Γ' : Gam} {s t : State σ} {vs : List (ValueHOL 64)}
    {r : PanSemResultExact 64} {p p' : Ptrs} (hc : SumCore C H sg PW Γ s vs r t Γ' p p')
    (hb : BKeep C Γ s t) : RunT C H gw Γ s Γ' t p p' :=
  let ⟨h1, h2, h3, h4, h5, h6, _, hpg, _, _⟩ := hc
  ⟨h1, h2, h3, h4, h5, h6, fun g hg hg' => hpg g hg (fun h => hg' (hgw g h)), hb⟩

/-- **A run as a summary core writing anything but the block cells** (no result typing,
growing signature). -/
theorem sumCoreT_of_runT {sg : Sig} (hret : sg.ret = []) (hgrow : sg.grows = true) {Γ Γ' : Gam}
    {s t : State σ} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs}
    (h : RunT C H sg.gw Γ s Γ' t p p') :
    SumCore C H sg (fun a => ¬ KCell C Γ a) Γ s vs r t Γ' p p' := by
  obtain ⟨h1, h2, h3, h4, h5, h6, hpg, hb⟩ := h
  refine ⟨h1, h2, h3, h4, h5, h6, fun a ha => ?_, hpg,
    fun h => absurd (hgrow.symm.trans h) (by decide), fun v _ i rt w hrt => ?_⟩
  · have hB : KCell C Γ a := by
      by_contra hn
      exact ha (Or.inr (Or.inr (Or.inr hn)))
    exact mem_eq_of_rd (bkeep_iff.mp hb a hB)
  · rw [hret] at hrt; simp at hrt

theorem jrNZ_runT (hJ : JrPG C) {gw : List MlS} (hgJ : JrOut (gw)) {Γ Γ' : Gam}
    {s t : State σ} {p p' : Ptrs} (h : RunT C H gw Γ s Γ' t p p') (hs : JrNZ s) : JrNZ t :=
  jrNZ_of_lookup (fun g hg => h.2.2.2.2.2.2.1 _ (hJ g hg) (hgJ g hg)) hs

end runT

/-! ## State objects and the weakened `ProtKeep` -/

/-- `Γ` without its state objects (`St o.ty = true`). -/
def nst (St : Nat → Bool) (Γ : Gam) : Gam := Γ.filter fun o => !St o.ty

theorem mem_nst {St : Nat → Bool} {Γ : Gam} {o : Obj} : o ∈ nst St Γ ↔ o ∈ Γ ∧ St o.ty = false := by
  unfold nst; simp [List.mem_filter]

theorem ext_nst {St : Nat → Bool} {Γ Γ' : Gam} (h : Ext Γ Γ') : Ext (nst St Γ) (nst St Γ') := by
  intro o ho
  obtain ⟨ho, hs⟩ := mem_nst.mp ho
  obtain ⟨o', ho', hb, ht, hsz⟩ := h o ho
  exact ⟨o', mem_nst.mpr ⟨ho', by rw [ht]; exact hs⟩, hb, ht, hsz⟩

theorem protKeep_nst_of {C : Cfg} {St : Nat → Bool} {Γ : Gam} {s t : State σ}
    (h : ProtKeep C Γ s t) : ProtKeep C (nst St Γ) s t := by
  rintro a ⟨o, ho, k, hk, hp, rfl⟩
  exact h _ ⟨o, (mem_nst.mp ho).1, k, hk, hp, rfl⟩

/-- A cell of a state object. -/
def StCell (St : Nat → Bool) (Γ : Gam) (a : BitVec 64) : Prop :=
  ∃ o ∈ Γ, St o.ty = true ∧ ∃ k, o.HasSlot k ∧ a = o.cell k

/-- A state-object cell (state types disjoint from the block types) is no block cell. -/
theorem not_kCell_of_stCell {C : Cfg} {p : Ptrs} {Γ : Gam} {St : Nat → Bool}
    (hSt : ∀ t ∈ keepTys, St t = false) (hord : p.Ordered) (hL : Layout C p Γ)
    {a : BitVec 64} (h : StCell St Γ a) : ¬ KCell C Γ a := by
  intro hbc
  obtain ⟨o, ho, hty, k, hk, -, rfl⟩ := kCell_keep hbc
  obtain ⟨o', ho', hs, k', hk', he⟩ := h
  obtain ⟨rfl, -⟩ := cell_inj hord hL ho' ho hk' hk he.symm
  rw [hSt _ hty] at hs; cases hs

/-- The `prot` cells of the non-state objects of the run's start typing. -/
theorem protCell_nst {C : Cfg} {St : Nat → Bool} {Γ : Gam} {o : Obj} (ho : o ∈ Γ)
    (hs : St o.ty = false) {k : Nat} (hk : o.HasSlot k) (hp : (C.ty o.ty).slot k = .prot) :
    ProtCell C (nst St Γ) (o.cell k) :=
  ⟨o, mem_nst.mpr ⟨ho, hs⟩, k, hk, hp, rfl⟩

/-! ## Argument buffers -/

/-- `BufOK` survives a step of the typed heap. -/
theorem bufOK_step {C : Cfg} {Γ Γ' : Gam} {p p' : Ptrs} (hord : p.Ordered) (hord' : p'.Ordered)
    (hm : p.Mono p') (hext : Ext Γ Γ') (hnf : NewFresh Γ Γ' p p') {b n : Nat}
    (h : BufOK C Γ p b n) : BufOK C Γ' p' b n := by
  intro a ha
  rcases h a ha with ⟨o, ho, k, hk, hsc, rfl⟩ | ⟨hni, hal⟩
  · obtain ⟨o', ho', hb, ht, hsz⟩ := hext o ho
    refine Or.inl ⟨o', ho', k, ?_, by rw [ht]; exact hsc, by unfold Obj.cell; rw [hb]⟩
    unfold Obj.HasSlot at hk ⊢; omega
  · refine Or.inr ⟨fun ⟨o', ho', h1, h2⟩ => ?_, allocated_mono hm hal⟩
    rcases hnf o' ho' a h1 h2 with ⟨o0, ho0, -, -, h3, h4⟩ | hf
    · exact hni ⟨o0, ho0, h3, h4⟩
    · exact fresh_not_alloc hord hord' hm hf hal

theorem bufOK_runT {C : Cfg} {H : Hooks σ} {gw : List MlS} {Γ Γ' : Gam} {s t : State σ}
    {p p' : Ptrs} (hG : G C H Γ s) (h : RunT C H gw Γ s Γ' t p p') {b n : Nat}
    (hb : BufOK C Γ p b n) : BufOK C Γ' p' b n := by
  obtain ⟨h1, h2, h3, h4, h5, h6, -⟩ := h
  obtain ⟨q, hq, hord, -⟩ := hG
  obtain rfl : q = p := Option.some.inj (hq.symm.trans h1)
  obtain ⟨q', hq', hord', -⟩ := h6
  obtain rfl : q' = p' := Option.some.inj (hq'.symm.trans h2)
  exact bufOK_step hord hord' h3 h4 h5 hb

/-- **A state-object summary core keeps the `prot` cells outside state objects.** -/
theorem protKeep_nst_of_sumCore {C : Cfg} {H : Hooks σ} {St : Nat → Bool} {sg : Sig}
    {Γ Γ' : Gam} {s t : State σ} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64}
    {p p' : Ptrs} (hG : G C H Γ s) (hargs : ArgsOK C Γ p sg.params vs)
    (hc : SumCore C H sg (fun a => ProtCell C Γ a ∧ StCell St Γ a) Γ s vs r t Γ' p p') :
    ProtKeep C (nst St Γ) s t := by
  obtain ⟨q, hq, hord, hL, -⟩ := id hG
  obtain rfl : q = p := Option.some.inj (hq.symm.trans hc.1)
  rintro a ⟨o, ho, k, hk, hpr, rfl⟩
  obtain ⟨ho, hs⟩ := mem_nst.mp ho
  refine sumCore_prot hc hG (fun a ha => argCells_not_prot hord hL hargs ha) _
    ⟨o, ho, k, hk, hpr, rfl⟩ ?_
  rintro ⟨o', ho', hs', k', hk', he⟩
  obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho ho' hk hk' he
  rw [hs] at hs'; cases hs'

theorem protKeep_trans_nst {C : Cfg} {St : Nat → Bool} {Γ Γ1 : Gam} {s u t : State σ}
    (hext : Ext Γ Γ1) (h1 : ProtKeep C (nst St Γ) s u) (h2 : ProtKeep C (nst St Γ1) u t) :
    ProtKeep C (nst St Γ) s t :=
  protKeep_trans (ext_nst hext) h1 h2

theorem protKeep_ckwS {C : Cfg} {St : Nat → Bool} {Γ : Gam} {s0 w : State σ} {p : Ptrs}
    (hord : p.Ordered) (hL : Layout C p Γ) (hk : ProtKeep C (nst St Γ) s0 w) {a : BitVec 64}
    (hfresh : ¬ p.Allocated a.toNat) (x : BitVec 64) :
    ProtKeep C (nst St Γ) s0 { w with memory := upd w.memory a x } := by
  intro b hb
  show upd w.memory a x b = _
  rw [upd_ne _ _ fun he => ?_, hk b hb]
  subst he
  obtain ⟨o, ho, k, hk', -, rfl⟩ := hb
  exact hfresh (Helpers.allocated_of_inObj hL (cell_in hord hL (mem_nst.mp ho).1 hk'))

/-! ## The frame records under the weakened `ProtKeep` -/

theorem framesKept_of_protKeepS {C : Cfg} {H : Hooks σ} {tEV tCK : Nat}
    (hF : FrameCfg C H tEV tCK) {St : Nat → Bool} (hSt : St tEV = false ∧ St tCK = false)
    {Γ : Gam} {s t : State σ} {fs : List Frame} {p : Ptrs}
    (hL : Layout C p Γ) (hch : ChainL C tEV tCK Γ s fs)
    (hk : ProtKeep C (nst St Γ) s t) : FramesKept fs s t := by
  intro f hf
  refine ⟨fun j hj => ?_, fun j hj => ?_⟩
  · obtain ⟨o, ho, hob, hot⟩ := ev_obj hch hf
    have hsz := ev_size hF hL ho hot
    have hj' : j ≤ 29 := by simp [evProtSlots] at hj; omega
    rw [← hob]
    have h := hk _ (protCell_nst (St := St) ho (by rw [hot]; exact hSt.1)
      (k := j) (by unfold Obj.HasSlot; omega) (by rw [hot]; exact hF.evProt j hj))
    unfold Obj.cell at h
    unfold fld rd
    rw [h]
  · obtain ⟨o, ho, hob, hot⟩ := ck_obj hch hf
    have hsz := ck_size hF hL ho hot
    rw [← hob]
    have h := hk _ (protCell_nst (St := St) ho (by rw [hot]; exact hSt.2)
      (k := j) (by unfold Obj.HasSlot; omega) (by rw [hot]; exact hF.ckProt j hj))
    unfold Obj.cell at h
    unfold fld rd
    rw [h]

theorem ev13_of_protKeepS {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK)
    {St : Nat → Bool} (hSt : St tEV = false) {Γ : Gam} {s u : State σ} {p : Ptrs}
    (hL : Layout C p Γ) (hk : ProtKeep C (nst St Γ) s u) {e : Obj} (he : e ∈ Γ) (het : e.ty = tEV) :
    fld u.memory e.base 8 = fld s.memory e.base 8 ∧ fld u.memory e.base 24 = fld s.memory e.base 24 := by
  have hsz := ev_size hF hL he het
  have key : ∀ j, j ∈ evProtSlots → j ≤ 29 →
      fld u.memory e.base (8 * j) = fld s.memory e.base (8 * j) := by
    intro j hj hj'
    have h := hk _ (protCell_nst (St := St) he (by rw [het]; exact hSt)
      (k := j) (by unfold Obj.HasSlot; omega) (by rw [het]; exact hF.evProt j hj))
    unfold Obj.cell at h
    unfold fld rd
    rw [h]
  exact ⟨key 1 (by simp [evProtSlots]) (by omega), key 3 (by simp [evProtSlots]) (by omega)⟩

/-- A run keeping the `prot` cells outside state objects is a step of the typed heap. -/
theorem gStep_of_runT {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK)
    {St : Nat → Bool} (hSt : St tEV = false) {gw : List MlS} {Γ Γ1 : Gam} {s u : State σ}
    {p p1 : Ptrs} (hG : G C H Γ s) (hrun : RunT C H gw Γ s Γ1 u p p1)
    (hk : ProtKeep C (nst St Γ) s u) (top : BitVec 64) :
    GStep C tEV Γ Γ1 s u top := by
  obtain ⟨q, hq, hord, hL, _⟩ := hG
  obtain rfl : q = p := Option.some.inj (hq.symm.trans hrun.1)
  obtain ⟨h1, h2, h3, h4, h5, h6, -⟩ := hrun
  obtain ⟨q1, hq1, hord1, hL1, _⟩ := h6
  obtain rfl : q1 = p1 := Option.some.inj (hq1.symm.trans h2)
  exact ⟨q, q1, h1, h2, hord, hord1, hL, hL1, h3, h4, h5, fun e he het _ =>
    ev13_of_protKeepS hF hSt hL hk he het⟩

/-- The chain under a run that keeps the `prot` cells outside state objects, `ev`, `cur_cont`
and `frame_mem_ptr`. -/
theorem chain_of_keepT {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK)
    {St : Nat → Bool} (hSt : St tEV = false ∧ St tCK = false)
    {gw : List MlS} (hgw : nmEv ∉ gw ∧ nmCC ∉ gw) {Γ Γ1 : Gam} {s u : State σ} {p p1 : Ptrs}
    (hG : G C H Γ s) (hrun : RunT C H gw Γ s Γ1 u p p1) (hfp : p1.fp = p.fp)
    (hk : ProtKeep C (nst St Γ) s u) {fs : List Frame} (hch : ChainL C tEV tCK Γ s fs) :
    ChainL C tEV tCK Γ1 u fs ∧ Phi u = Phi s := by
  obtain ⟨q, hq, hord, hL, _⟩ := hG
  rw [hrun.1, Option.some.injEq] at hq
  subst hq
  have hfk := framesKept_of_protKeepS hF hSt hL hch hk
  have hkeep : ChainKeep s u fs := by
    refine ⟨?_, ?_, fun f hf k hk' => fk_ck hfk hf ?_, fun f hf k hk' => fk_ev hfk
      (List.mem_of_mem_tail hf) ?_, fun f hf k hk' => fk_ev hfk (List.mem_of_mem_head? hf) ?_,
      fun p' hp' => ⟨p, hrun.1, ?_⟩, fun f hf k hk' => fk_rd hfk hf hk'⟩
    · unfold gword; rw [hrun.2.2.2.2.2.2.1 _ hF.pgEv hgw.1]
    · unfold gword; rw [hrun.2.2.2.2.2.2.1 _ hF.pgCC hgw.2]
    · simp only [ckChainSlots, ckParent, ckParentCont, ckKind, ckMark, ckMemMark, ckOutStart, ckOutSize,
        List.mem_cons, List.mem_nil_iff, or_false] at hk' ⊢; omega
    · simp only [evParentSlots, evSp, evStackCap, evMem, evMemCap, evMemLen,
        List.mem_cons, List.mem_nil_iff, or_false] at hk' ⊢; omega
    · simp only [evMem, evMemCap, List.mem_cons, List.mem_nil_iff, or_false] at hk' ⊢; omega
    · rw [hrun.2.1, Option.some.injEq] at hp'; subst hp'; exact hfp
  have hc' := chainL_keep hch hkeep (top := (fs.head?.map Prod.fst).getD 0)
    (fun f hf => by rw [Option.mem_def] at hf; rw [hf]; rfl)
    (gStep_of_runT hF hSt.1 ⟨p, hrun.1, hord, hL, ‹_›⟩ hrun hk _)
  refine ⟨hc', ?_⟩
  rw [phi_eq hc'.chain, phi_eq hch.chain]
  refine wsum_keep fun f hf => ⟨fun k hk' => fk_ev hfk hf ?_, fk_ck hfk hf (by simp [ckDone])⟩
  simp only [evGasLeft, evSpilled, evRunning, List.mem_cons, List.mem_nil_iff, or_false] at hk' ⊢
  omega

/-- A write to a `prot` slot (`0 < k < 13`) of a CK object of the run's typing lying in space
unallocated at the run's start. -/
theorem runT_ckw {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK)
    {gw : List MlS} {Γ0 Γ1 : Gam} {s0 w : State σ} {p0 p1 : Ptrs}
    (hCK : tCK ∉ keepTys)
    (hrun : RunT C H gw Γ0 s0 Γ1 w p0 p1) {o : Obj} (ho : o ∈ Γ1) (hot : o.ty = tCK) {j : Nat}
    (hj0 : 0 < j) (hj : j < 13) (x : BitVec 64) :
    RunT C H gw Γ0 s0 Γ1 { w with memory := upd w.memory (o.cell j) x } p0 p1 := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h8, hb⟩ := hrun
  have ⟨q, hq, hord, hL, _⟩ := h6
  have hnB : ¬ KCell C Γ0 (o.cell j) := by
    intro hbc
    obtain ⟨o0, ho0, hty0, k, hk, -, he⟩ := kCell_keep hbc
    obtain ⟨o0', ho0', hb0, ht0, hsz⟩ := h4 o0 ho0
    have hk' : o0'.HasSlot k := by unfold Obj.HasSlot at hk ⊢; omega
    have he' : o.cell j = o0'.cell k := by rw [he]; unfold Obj.cell; rw [hb0]
    have hj' : o.HasSlot j := by have := ck_size hF hL ho hot; unfold Obj.HasSlot; omega
    obtain ⟨rfl, -⟩ := cell_inj hord hL ho ho0' hj' hk' he'
    exact hCK (by rw [← hot, ht0]; exact hty0)
  have hsafe : SafeCells C H Γ1 w (fun a => a = o.cell j) := by
    rintro a rfl
    exact safe_ck hF hL ho hot hj0 hj rfl
  exact ⟨h1, h2, h3, h4, h5, G_safe hF.hooks h6 hsafe
    (modifiesOnly_upd (R := fun a => a = o.cell j) (modifiesOnly_refl _ _) rfl _) rfl rfl rfl, h8,
    bkeep_of_upd hb hnB⟩

/-! ## Summaries and calls -/

/-- The relation of a summary whose `SumCore` has the cell set `PWx` (the `SumSpecA` relation
for `PWx := ProtCell ∧ PW`, the footprint-free one for `PWx := True`). -/
def SumRelX (C : Cfg) (H : Hooks σ) (sg : Sig)
    (Pre : List (ValueHOL 64) → State σ → Gam → Prop)
    (PWx : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop)
    (Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop)
    (vs : List (ValueHOL 64)) (s : State σ) (r : PanSemResultExact 64) (t : State σ) : Prop :=
  Good (some r) → ¬ Abortive r → ∀ Γ, G C H Γ s →
    (∃ p, ptrsOf s = some p ∧ ArgsOK C Γ p sg.params vs) → Pre vs s Γ →
      ∃ Γ' p p', SumCore C H sg (PWx vs s Γ) Γ s vs r t Γ' p p' ∧ Q vs s Γ r t Γ'

/-- **A footprint-free summary**: `SumSpecA` whose `SumCore` allows writes to any cell but the
`prot` cells of the block objects (`¬ KCell`; `Mono`, `Ext`, `NewFresh`, `G`, the protected
globals outside `gw` and the result typing remain). -/
def SumSpecT (σ : Type) (X : Ctx 64) (C : Cfg) (H : Hooks σ) (f : MlS) (sg : Sig)
    (Pre : List (ValueHOL 64) → State σ → Gam → Prop)
    (Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop) :
    Prop :=
  FunSpec σ X f (fun vs s r t => SumRelX C H sg Pre (fun _ _ Γ a => ¬ KCell C Γ a) Q vs s r t)

theorem sumSpecA_relX {C : Cfg} {H : Hooks σ} {f : MlS} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (h : SumSpecA σ X C H f sg Pre PW Q) :
    FunSpec σ X f (fun vs s r t =>
      SumRelX C H sg Pre (fun vs s Γ a => ProtCell C Γ a ∧ PW vs s Γ a) Q vs s r t) := h

theorem sumSpecT_of_sumSpecA {C : Cfg} {H : Hooks σ} {f : MlS} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (h : SumSpecA σ X C H f sg Pre PW Q)
    (hB : ∀ vs s Γ a, PW vs s Γ a → ¬ KCell C Γ a) : SumSpecT σ X C H f sg Pre Q := by
  refine FunSpec.mono h fun vs s r t hR hg hna Γ hG ha hp => ?_
  obtain ⟨Γ', p, p', hc, hq⟩ := hR hg hna Γ hG ha hp
  exact ⟨Γ', p, p', sumCore_pw hc fun a h => hB vs s Γ a h.2, hq⟩

theorem sumSpecT_mono {C : Cfg} {H : Hooks σ} {f : MlS} {sg : Sig}
    {Pre Pre' : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q Q' : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (h : SumSpecT σ X C H f sg Pre Q) (hP : ∀ vs s Γ, Pre' vs s Γ → Pre vs s Γ)
    (hQ : ∀ vs s Γ r t Γ', Pre' vs s Γ → Q vs s Γ r t Γ' → Q' vs s Γ r t Γ') :
    SumSpecT σ X C H f sg Pre' Q' :=
  FunSpec.mono h fun vs s r t hR hg hna Γ hG ha hp =>
    let ⟨Γ', p, p', hc, hq⟩ := hR hg hna Γ hG ha (hP vs s Γ hp)
    ⟨Γ', p, p', hc, hQ vs s Γ r t Γ' hp hq⟩

/-- A footprint-free summary (unconstrained arguments) as a bundle fact. -/
theorem jSpec_of_sumSpecT {C : Cfg} {H : Hooks σ} {f : MlS} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (h : SumSpecT σ X C H f sg Pre Q) (hps : ∀ pt ∈ sg.params, pt = .any) :
    JSpec σ X C H f (fun vs s Γ => vs.length = sg.params.length ∧ Pre vs s Γ) Q := by
  refine FunSpec.mono h fun vs s r t hR hg hna Γ hG ⟨hlen, hpre⟩ => ?_
  have ⟨p, hps', _⟩ := hG
  obtain ⟨Γ', p, p', hcore, hq⟩ := hR hg hna Γ hG ⟨p, hps', argsOK_any hps hlen⟩ hpre
  exact ⟨Γ', sumCore_G hcore, hq⟩

/-- **A call to a summarized function from a run-tracked state**: the run extends, the callee's
summary core and post hold for the typing reached. `hBK`: the call keeps the block cells (from
the cell set, `run_callT`, or from the callee's exact memory effect). -/
theorem run_callT_bk {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {sg : Sig} {gw : List MlS}
    (hsub : ∀ g, g ∈ sg.gw → g ∈ gw)
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PWx : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    {Γ0 Γ1 : Gam} {s0 s : State σ} {p0 p1 : Ptrs}
    (hrun : RunT C H gw Γ0 s0 Γ1 s p0 p1) {vs : List (ValueHOL 64)} {callee : Locs}
    {r : PanSemResultExact 64} {st : State σ}
    (hR : SumRelX C H sg Pre PWx Q vs (callEntryStateHOLFinite s callee) r st)
    (hg : Good (some r)) (hna : ¬ Abortive r) (hargs : ArgsOK C Γ1 p1 sg.params vs)
    (hpre : Pre vs (callEntryStateHOLFinite s callee) Γ1)
    (hBK : BKeep C Γ1 (callEntryStateHOLFinite s callee) st) :
    ∃ Γ2 p2, RunT C H gw Γ0 s0 Γ2 st p0 p2 ∧
      SumCore C H sg (PWx vs (callEntryStateHOLFinite s callee) Γ1) Γ1
        (callEntryStateHOLFinite s callee) vs r st Γ2 p1 p2 ∧
      Q vs (callEntryStateHOLFinite s callee) Γ1 r st Γ2 := by
  have hG1 := hrun.2.2.2.2.2.1
  have hGe : G C H Γ1 (callEntryStateHOLFinite s callee) := (G_locFree hH s _ _).mpr hG1
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p1 :=
    (ptrsOf_congr rfl).trans hrun.2.1
  obtain ⟨Γ2, q1, q2, hc, hQ⟩ := hR hg hna Γ1 hGe ⟨p1, hpe, hargs⟩ hpre
  obtain rfl : q1 = p1 := Option.some.inj (hc.1.symm.trans hpe)
  exact ⟨Γ2, q2, runT_trans hrun (runT_of_sumCore hsub hc hBK), hc, hQ⟩

theorem run_callT {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {sg : Sig} {gw : List MlS}
    (hsub : ∀ g, g ∈ sg.gw → g ∈ gw)
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PWx : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    {Γ0 Γ1 : Gam} {s0 s : State σ} {p0 p1 : Ptrs}
    (hrun : RunT C H gw Γ0 s0 Γ1 s p0 p1) {vs : List (ValueHOL 64)} {callee : Locs}
    {r : PanSemResultExact 64} {st : State σ}
    (hR : SumRelX C H sg Pre PWx Q vs (callEntryStateHOLFinite s callee) r st)
    (hg : Good (some r)) (hna : ¬ Abortive r) (hargs : ArgsOK C Γ1 p1 sg.params vs)
    (hpre : Pre vs (callEntryStateHOLFinite s callee) Γ1)
    (hB : ∀ a, PWx vs (callEntryStateHOLFinite s callee) Γ1 a → ¬ KCell C Γ1 a) :
    ∃ Γ2 p2, RunT C H gw Γ0 s0 Γ2 st p0 p2 ∧
      SumCore C H sg (PWx vs (callEntryStateHOLFinite s callee) Γ1) Γ1
        (callEntryStateHOLFinite s callee) vs r st Γ2 p1 p2 ∧
      Q vs (callEntryStateHOLFinite s callee) Γ1 r st Γ2 := by
  have hG1 := hrun.2.2.2.2.2.1
  have hGe : G C H Γ1 (callEntryStateHOLFinite s callee) := (G_locFree hH s _ _).mpr hG1
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p1 :=
    (ptrsOf_congr rfl).trans hrun.2.1
  obtain ⟨Γ2, q1, q2, hc, hQ⟩ := hR hg hna Γ1 hGe ⟨p1, hpe, hargs⟩ hpre
  obtain rfl : q1 = p1 := Option.some.inj (hc.1.symm.trans hpe)
  exact ⟨Γ2, q2, runT_trans hrun (runT_of_sumCore hsub hc (bkeep_of_sumCore
    (s := callEntryStateHOLFinite s callee) hGe hargs hc hB)), hc, hQ⟩

/-! ## The accepted state-object callee shape -/

/-- **A state-object summary** (decision 2): needs `JrNZ`, writes only `prot` cells of state
objects, keeps `frame_mem_ptr`. -/
def StSum (σ : Type) (X : Ctx 64) (C : Cfg) (H : Hooks σ) (St : Nat → Bool) (f : MlS)
    (sg : Sig) : Prop :=
  SumSpecA σ X C H f sg (fun _ s _ => JrNZ s) (fun _ _ Γ a => StCell St Γ a)
    (fun _ s _ _ t _ => FpQ s t)

/-- **A fold / hand capability summary as a state-object summary**: its global capabilities
follow from `JrNZ`, its capabilities write whole objects of state types only. -/
theorem stSum_of_csumm {C : Cfg} {H : Hooks σ} {St : Nat → Bool} {f : MlS} {sg : Sig}
    {cs : List Cap} (h : CSumm σ X C H f sg cs) (hfp : KeepsFp σ X f)
    (hreq : ∀ Γ (s : State σ), G C H Γ s → JrNZ s → ReqOK cs s Γ)
    (hcs : ∀ c ∈ cs, c.ks = [] ∧ (c.all = true → St c.t = true))
    (hown : ∀ t, ownBase ≤ t → St t = true) : StSum σ X C H St f sg := by
  intro vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs hJ
  obtain ⟨Γ', p, p', core, -⟩ := h vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs
    (hreq Γ s hG hJ)
  refine ⟨Γ', p, p', sumCore_pw core fun a ⟨hpc, hw⟩ => ⟨hpc, ?_⟩,
    fpQ_of_fp (hfp vs body callee rs hl s hs hloc r hr hg hna)⟩
  obtain ⟨c, hc, ⟨e, -, k, hk, -⟩ | ⟨hall, e, he, hty, k, hks, rfl⟩⟩ := hw
  · rw [(hcs c hc).1] at hk; cases hk
  · refine ⟨e, he, ?_, k, hks, rfl⟩
    rcases hty with h | h
    · rw [h]; exact (hcs c hc).2 hall
    · exact hown _ h

/-- A summary with an unconstrained argument is one with a `buf n` argument. -/
theorem sumSpecA_any_buf {C : Cfg} {H : Hooks σ} {f : MlS} {gw : List MlS} {n : Nat}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (h : SumSpecA σ X C H f ⟨[.any], [], gw, true⟩ Pre PW Q) :
    SumSpecA σ X C H f ⟨[.buf n], [], gw, true⟩ Pre PW Q := by
  intro vs body callee rs hl s hs hloc r hr hg hna Γ hG ⟨p0, hp0, hargs⟩ hpre
  obtain ⟨Γ', p, p', core, hq⟩ := h vs body callee rs hl s hs hloc r hr hg hna Γ hG
    ⟨p0, hp0, ⟨hargs.1, fun i pt v hpt _ => by
      have : pt = .any := by
        have := List.mem_of_getElem? hpt; simpa using this
      subst this; trivial⟩⟩ hpre
  obtain ⟨c1, c2, c3, c4, c5, c6, hmod, c8, c9, c10⟩ := core
  refine ⟨Γ', p, p', ⟨c1, c2, c3, c4, c5, c6, hmod.mono fun a ha => ?_, c8, c9, c10⟩, hq⟩
  rcases ha with h | h | h | h
  · exact Or.inl h
  · exact absurd h (argCells_any (by intro pt hpt; simpa using hpt))
  · exact Or.inr (Or.inr (Or.inl h))
  · exact Or.inr (Or.inr (Or.inr h))

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.protKeep_nst_of_sumCore
#print axioms InitECandidate.Solver.MemSafe.Frames.stSum_of_csumm
#print axioms InitECandidate.Solver.MemSafe.Frames.chain_of_keepT
#print axioms InitECandidate.Solver.MemSafe.Frames.run_callT
#print axioms InitECandidate.Solver.MemSafe.Frames.sumSpecA_any_buf
