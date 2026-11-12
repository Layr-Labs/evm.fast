import InitECandidate.Solver.MemSafe.Frames.FinCode
import InitECandidate.Solver.MemSafe.Frames.Jr
import InitECandidate.Solver.MemSafe.Frames.ChainX

/-!
# `finish_child`: callee shapes and the parent-side invariant

* `FpQ`, `NoE`, `NoFrameCell`, `PWtop ks`: `frame_mem_ptr` kept; no `EvmErr`; a cell outside
  every EV / CK record; slots `ks` of the running EV record or cells outside every record (the
  `prot` cells a callee of `finish_child` may write).
* `NoMsgCell`, **`PWtopM ks`** (frames7): `PWtop ks` outside every message object (`msgTys`): the
  footprint of `finish_child`'s callees, so that the chain extension (`ChainX.lean`) survives
  them; `msgKeep_of`, `evX_keep`, **`xKeep_of`**.
* `sumCore_prot`, `frame_keep`: a summary core changes no `prot` cell outside its `PW`; in
  particular no `prot` slot of a record other than the running EV's slots `ks`.
* `FinB`: what `finish_child` tracks after the switch to the parent (`ev = e'`, `cur_cont = c'`)
  until the release: `G`, the records' cells, the child's release invariant, the tail's chain
  facts. **`finB_step`**: a callee with `PWtop ks` (`ks` avoids the parent's stack / memory /
  running slots), keeping `frame_mem_ptr`, keeps `FinB`.
-/

set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-! ## Callee shapes -/

/-- `frame_mem_ptr` is unchanged. -/
def FpQ (s t : State σ) : Prop := ∀ p p', ptrsOf s = some p → ptrsOf t = some p' → p'.fp = p.fp

/-- The result is not an `EvmErr`. -/
def NoE (r : PanSemResultExact 64) : Prop := ∀ v, r ≠ .exception nmEvmErr v

/-- A cell outside every EV and CK record of `Γ`. -/
def NoFrameCell (tEV tCK : Nat) (Γ : Gam) (a : BitVec 64) : Prop :=
  ∀ o ∈ Γ, o.ty = tEV ∨ o.ty = tCK → ¬ InO o a

/-- The `prot` cells a callee of `finish_child` may write: slots `ks` of the running EV record,
or cells outside every record. -/
def PWtop (tEV tCK : Nat) (ks : List Nat) (_ : List (ValueHOL 64)) (s : State σ) (Γ : Gam)
    (a : BitVec 64) : Prop :=
  (∃ e, EvRun tEV Γ s e ∧ ∃ k ∈ ks, a = e.cell k) ∨ NoFrameCell tEV tCK Γ a

/-! ## `prot` cells outside the footprint -/

theorem prot_alloc {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    {a : BitVec 64} (h : ProtCell C Γ a) : p.Allocated a.toNat := by
  obtain ⟨o, ho, k, hk, -, rfl⟩ := h
  exact Helpers.allocated_of_inObj hL (cell_in hord hL ho hk)

/-- **A summary core changes no `prot` cell outside `PW`**, for any cell set `PWx` of the core
whose `prot` cells are in `PW` (argument buffers avoid `prot` cells). -/
theorem sumCore_protW {C : Cfg} {H : Hooks σ} {sg : Sig} {PWx PW : BitVec 64 → Prop} {Γ Γ' : Gam}
    {s t : State σ} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs}
    (hc : SumCore C H sg PWx Γ s vs r t Γ' p p') (hG : G C H Γ s)
    (hac : ∀ a, ArgCells sg.params vs a → ¬ ProtCell C Γ a)
    (hpw : ∀ a, ProtCell C Γ a → PWx a → PW a) :
    ∀ a, ProtCell C Γ a → ¬ PW a → t.memory a = s.memory a := by
  intro a hpc hnpw
  obtain ⟨q, hq, hord, hL, -⟩ := hG
  obtain rfl : q = p := Option.some.inj (hq.symm.trans hc.1)
  refine hc.2.2.2.2.2.2.1 a ?_
  rintro (⟨o, ho, k, hk, hpr, rfl⟩ | h | h | h)
  · obtain ⟨o', ho', k', hk', hpr', he⟩ := hpc
    obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho ho' hk hk' he
    exact hpr hpr'
  · exact hac a h hpc
  · exact h (prot_alloc hord hL hpc)
  · exact hnpw (hpw a hpc h)

/-- **A summary core changes no `prot` cell outside its `PW`** (argument buffers avoid `prot`
cells). -/
theorem sumCore_prot {C : Cfg} {H : Hooks σ} {sg : Sig} {PW : BitVec 64 → Prop} {Γ Γ' : Gam}
    {s t : State σ} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs}
    (hc : SumCore C H sg (fun a => ProtCell C Γ a ∧ PW a) Γ s vs r t Γ' p p') (hG : G C H Γ s)
    (hac : ∀ a, ArgCells sg.params vs a → ¬ ProtCell C Γ a) :
    ∀ a, ProtCell C Γ a → ¬ PW a → t.memory a = s.memory a :=
  sumCore_protW hc hG hac fun _ _ h => h.2

theorem argCells_any {ps : List PT} (hps : ∀ pt ∈ ps, pt = .any) {vs : List (ValueHOL 64)}
    {a : BitVec 64} : ¬ ArgCells ps vs a := by
  rintro ⟨i, w, -, ⟨n, hn, -⟩ | ⟨j, c, d, x, hn, -⟩⟩
  · exact absurd (hps _ (List.mem_of_getElem? hn)) (by simp)
  · exact absurd (hps _ (List.mem_of_getElem? hn)) (by simp)

/-- A `prot` slot of an EV / CK record keeps its value under a change confined to `PWtop ks`
outside `prot` cells, unless it is one of the running EV's slots `ks`. -/
theorem frame_keep {C : Cfg} {tEV tCK : Nat} {p : Ptrs} {Γ : Gam} (hord : p.Ordered)
    (hL : Layout C p Γ) {s : State σ} {m m' : Mem} {ks : List Nat} {vs : List (ValueHOL 64)}
    (hesz : ∀ e ∈ Γ, e.ty = tEV → ∀ k ∈ ks, e.HasSlot k)
    (hk : ∀ a, ProtCell C Γ a → ¬ PWtop tEV tCK ks vs s Γ a → m' a = m a)
    {o : Obj} (ho : o ∈ Γ) (hot : o.ty = tEV ∨ o.ty = tCK) {j : Nat} (hj : o.HasSlot j)
    (hpr : (C.ty o.ty).slot j = .prot) (hnr : gword s nmEv = some o.base → j ∉ ks) :
    fld m' o.base (8 * j) = fld m o.base (8 * j) := by
  have h := hk (o.cell j) ⟨o, ho, j, hj, hpr, rfl⟩ ?_
  · unfold Obj.cell at h; unfold fld rd; rw [h]
  rintro (⟨e, ⟨he, het, heb⟩, k, hkk, hek⟩ | hnf)
  · obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho he hj (hesz e he het k hkk) hek
    exact hnr heb hkk
  · exact hnf o ho hot (inO_cell hord hL ho (k := 8 * j) (by unfold Obj.HasSlot at hj; omega))

/-! ## The footprint that keeps the chain extension (frames7) -/

/-- A cell outside every message object of `Γ`. -/
def NoMsgCell (Γ : Gam) (a : BitVec 64) : Prop := ∀ o ∈ Γ, o.ty ∈ msgTys → ¬ InO o a

/-- **`PWtop ks` outside the message objects**: the `prot` cells a callee of `finish_child` (or
of a frame step) may write while the chain extension is kept. -/
def PWtopM (tEV tCK : Nat) (ks : List Nat) (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam)
    (a : BitVec 64) : Prop :=
  PWtop tEV tCK ks vs s Γ a ∧ NoMsgCell Γ a

/-- A footprint inside `PWtopM` keeps the `prot` cells outside `PWtop`. -/
theorem keep_pwtop {C : Cfg} {tEV tCK : Nat} {ks : List Nat} {vs : List (ValueHOL 64)}
    {s : State σ} {Γ : Gam} {m m' : Mem}
    (hk : ∀ a, ProtCell C Γ a → ¬ PWtopM tEV tCK ks vs s Γ a → m' a = m a) :
    ∀ a, ProtCell C Γ a → ¬ PWtop tEV tCK ks vs s Γ a → m' a = m a :=
  fun a hp hn => hk a hp fun h => hn h.1

/-- **A footprint inside `PWtopM` keeps every message `prot` cell.** -/
theorem msgKeep_of {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    {tEV tCK : Nat} {ks : List Nat} {vs : List (ValueHOL 64)} {s : State σ} {m m' : Mem}
    (hk : ∀ a, ProtCell C Γ a → ¬ PWtopM tEV tCK ks vs s Γ a → m' a = m a) :
    MsgKeep C Γ m m' := by
  intro o ho hot j hj hpr
  have h := hk (o.cell j) ⟨o, ho, j, hj, hpr, rfl⟩ fun ⟨_, hnm⟩ =>
    hnm o ho hot (inO_cell hord hL ho (k := 8 * j) (by unfold Obj.HasSlot at hj; omega))
  unfold rd; rw [h]

/-- The extension slots of an EV record survive a footprint inside `PWtop ks` (`ks` avoids
them). -/
theorem evX_keep {C : Cfg} {tEV tCK : Nat} {p : Ptrs} {Γ : Gam} (hord : p.Ordered)
    (hL : Layout C p Γ) {s : State σ} {m m' : Mem} {ks : List Nat} {vs : List (ValueHOL 64)}
    (hevX : ∀ j ∈ evXSlots, (C.ty tEV).slot j = .prot) (hksX : ∀ k ∈ ks, k ∉ evXSlots)
    (hesz : ∀ e ∈ Γ, e.ty = tEV → ∀ k ∈ ks, e.HasSlot k)
    (hk : ∀ a, ProtCell C Γ a → ¬ PWtop tEV tCK ks vs s Γ a → m' a = m a)
    {o : Obj} (ho : o ∈ Γ) (hot : o.ty = tEV) (hsz : 280 ≤ o.size) :
    ∀ j ∈ evXSlots, fld m' o.base (8 * j) = fld m o.base (8 * j) := by
  intro j hj
  have hj' : j ≤ 28 := by simp [evXSlots] at hj; omega
  exact frame_keep hord hL hesz hk ho (Or.inl hot) (by unfold Obj.HasSlot; omega)
    (by rw [hot]; exact hevX j hj) fun _ hjk => hksX j hjk hj

/-- **`XKeep` for a frame whose EV record is an object of `Γ`**, under a footprint inside
`PWtopM ks`. -/
theorem xKeep_of {C : Cfg} {tEV tCK : Nat} {p : Ptrs} {Γ : Gam} (hord : p.Ordered)
    (hL : Layout C p Γ) {s : State σ} {m m' : Mem} {ks : List Nat} {vs : List (ValueHOL 64)}
    (hevX : ∀ j ∈ evXSlots, (C.ty tEV).slot j = .prot) (hksX : ∀ k ∈ ks, k ∉ evXSlots)
    (hesz : ∀ e ∈ Γ, e.ty = tEV → ∀ k ∈ ks, e.HasSlot k) (hevSz : 280 ≤ (C.ty tEV).minSz)
    (hk : ∀ a, ProtCell C Γ a → ¬ PWtopM tEV tCK ks vs s Γ a → m' a = m a)
    {f : Frame} (hfo : ∃ o ∈ Γ, o.base = f.1 ∧ o.ty = tEV) : XKeep C Γ m m' f := by
  obtain ⟨o, ho, hob, hot⟩ := hfo
  have hsz : 280 ≤ o.size := by
    have := (lay_obj hL ho).2.2.2.1; rw [hot] at this; omega
  refine ⟨fun j hj => ?_, msgKeep_of hord hL hk⟩
  rw [← hob]
  exact evX_keep hord hL hevX hksX hesz (keep_pwtop hk) ho hot hsz j hj

/-- A cell of an EV / CK record is outside every message object. -/
theorem noMsg_of_frame {C : Cfg} {p : Ptrs} {Γ : Gam} (hL : Layout C p Γ) {tEV tCK : Nat}
    (hmt : tEV ∉ msgTys ∧ tCK ∉ msgTys) {o : Obj} (ho : o ∈ Γ) (hot : o.ty = tEV ∨ o.ty = tCK)
    {a : BitVec 64} (ha : InO o a) : NoMsgCell Γ a := by
  intro x hx hxt hxa
  have hne : o ≠ x := by
    rintro rfl
    rcases hot with h | h <;> rw [h] at hxt
    · exact hmt.1 hxt
    · exact hmt.2 hxt
  rcases lay_disj hL ho hx hne with h | h <;> unfold InO at ha hxa <;> lo_omega

/-- A cell of an object of a non-message type is outside every message object. -/
theorem noMsg_of_ty {C : Cfg} {p : Ptrs} {Γ : Gam} (hL : Layout C p Γ) {o : Obj} (ho : o ∈ Γ)
    (hot : o.ty ∉ msgTys) {a : BitVec 64} (ha : InO o a) : NoMsgCell Γ a := by
  intro x hx hxt hxa
  have hne : o ≠ x := by rintro rfl; exact hot hxt
  rcases lay_disj hL ho hx hne with h | h <;> unfold InO at ha hxa <;> lo_omega

/-- **A summary core whose `prot` writes lie in `PWtopM ks` keeps the chain extension** of the
frames `fs` (whose records are objects of `Γ`), `ks` avoiding the extension's EV slots (any core
cell set `PWx` whose `prot` cells are in `PWtopM ks`). -/
theorem chainE_sumCoreW {C : Cfg} {H : Hooks σ} {tEV tCK : Nat}
    {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop}
    (hF : FrameCfg C H tEV tCK) (hX : XCfg C tEV tCK P R)
    (hevX : ∀ j ∈ evXSlots, (C.ty tEV).slot j = .prot) {sg : Sig} {ks : List Nat}
    (hks : ∀ k ∈ ks, 8 * k + 8 ≤ 280) (hksX : ∀ k ∈ ks, k ∉ evXSlots)
    {PWx : BitVec 64 → Prop} {Γ Γ' : Gam} {s t : State σ} {vs : List (ValueHOL 64)}
    {r : PanSemResultExact 64} {p p' : Ptrs} (hG : G C H Γ s)
    (hc : SumCore C H sg PWx Γ s vs r t Γ' p p')
    (hac : ∀ a, ArgCells sg.params vs a → ¬ ProtCell C Γ a)
    (hpw : ∀ a, ProtCell C Γ a → PWx a → PWtopM tEV tCK ks vs s Γ a)
    {top : BitVec 64} (htop : gword s nmEv = some top)
    (htopo : ∃ o ∈ Γ, o.base = top ∧ o.ty = tEV) {fs : List Frame}
    (hobj : ∀ f ∈ fs, (∃ o ∈ Γ, o.base = f.1 ∧ o.ty = tEV) ∧ (∃ o ∈ Γ, o.base = f.2 ∧ o.ty = tCK))
    (h : ChainE P R Γ s fs) : ChainE P R Γ' t fs := by
  have hpkM : ∀ a, ProtCell C Γ a → ¬ PWtopM tEV tCK ks vs s Γ a → t.memory a = s.memory a :=
    sumCore_protW hc hG hac hpw
  have hpk := keep_pwtop hpkM
  obtain ⟨hpu, hpt, hmo, hext, hnf, hG', -⟩ := hc
  obtain ⟨q, hq, hord, hL, -⟩ := hG
  obtain rfl : p = q := Option.some.inj (hpu.symm.trans hq)
  obtain ⟨q', hq', hord', hL', -⟩ := hG'
  obtain rfl : p' = q' := Option.some.inj (hpt.symm.trans hq')
  have hesz : ∀ x ∈ Γ, x.ty = tEV → ∀ k ∈ ks, x.HasSlot k := by
    intro x hx hxt k hk
    have := ev_size hF hL hx hxt
    unfold Obj.HasSlot; have := hks k hk; omega
  have hst : GStep C tEV Γ Γ' s t top := by
    refine ⟨p, p', hpu, hpt, hord, hord', hL, hL', hmo, hext, hnf, fun x hx hxt hne => ?_⟩
    have hsz := ev_size hF hL hx hxt
    have hnr : ∀ j, gword s nmEv = some x.base → j ∉ ks := fun j hb =>
      absurd ((Option.some.inj (htop.symm.trans hb)).symm) hne
    exact ⟨frame_keep hord hL hesz hpk hx (Or.inl hxt) (j := 1) (by unfold Obj.HasSlot; omega)
        (by rw [hxt]; exact hF.evProt 1 (by simp [evProtSlots])) (hnr 1),
      frame_keep hord hL hesz hpk hx (Or.inl hxt) (j := 3) (by unfold Obj.HasSlot; omega)
        (by rw [hxt]; exact hF.evProt 3 (by simp [evProtSlots])) (hnr 3)⟩
  have hck : ∀ f ∈ fs, ∀ k ∈ ckXSlots, fld t.memory f.2 k = fld s.memory f.2 k := by
    intro f hf
    obtain ⟨o, ho, hob, hot⟩ := (hobj f hf).2
    have hsz := ck_size hF hL ho hot
    have hck1 : ∀ j, j < 13 → fld t.memory o.base (8 * j) = fld s.memory o.base (8 * j) := by
      intro j hj
      refine frame_keep hord hL hesz hpk ho (Or.inr hot) (by unfold Obj.HasSlot; omega)
        (by rw [hot]; exact hF.ckProt j hj) fun heb => ?_
      exfalso
      obtain ⟨o', ho', hob', hot'⟩ := htopo
      exact base_ne_of_ty hL ho ho' (by rw [hot, hot']; exact hF.ne.symm)
        ((Option.some.inj (heb.symm.trans htop)).trans hob'.symm)
    rw [← hob]
    exact ckX_of13 hck1
  exact chainE_step hX hst (fun f hf => xKeep_of hord hL hevX hksX hesz hF.evSz hpkM (hobj f hf).1)
    hck h

/-- **`chainE_sumCoreW` for a core of the `SumSpecA` shape** (`prot` writes in `PW`). -/
theorem chainE_sumCoreM {C : Cfg} {H : Hooks σ} {tEV tCK : Nat}
    {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop}
    (hF : FrameCfg C H tEV tCK) (hX : XCfg C tEV tCK P R)
    (hevX : ∀ j ∈ evXSlots, (C.ty tEV).slot j = .prot) {sg : Sig} {ks : List Nat}
    (hks : ∀ k ∈ ks, 8 * k + 8 ≤ 280) (hksX : ∀ k ∈ ks, k ∉ evXSlots)
    {PW : BitVec 64 → Prop} {Γ Γ' : Gam} {s t : State σ} {vs : List (ValueHOL 64)}
    {r : PanSemResultExact 64} {p p' : Ptrs} (hG : G C H Γ s)
    (hc : SumCore C H sg (fun a => ProtCell C Γ a ∧ PW a) Γ s vs r t Γ' p p')
    (hac : ∀ a, ArgCells sg.params vs a → ¬ ProtCell C Γ a)
    (hpw : ∀ a, ProtCell C Γ a → PW a → PWtopM tEV tCK ks vs s Γ a)
    {top : BitVec 64} (htop : gword s nmEv = some top)
    (htopo : ∃ o ∈ Γ, o.base = top ∧ o.ty = tEV) {fs : List Frame}
    (hobj : ∀ f ∈ fs, (∃ o ∈ Γ, o.base = f.1 ∧ o.ty = tEV) ∧ (∃ o ∈ Γ, o.base = f.2 ∧ o.ty = tCK))
    (h : ChainE P R Γ s fs) : ChainE P R Γ' t fs :=
  chainE_sumCoreW hF hX hevX hks hksX hG hc hac (fun a hp h => hpw a hp h.2) htop htopo hobj h

end InitECandidate.Solver.MemSafe.Frames
