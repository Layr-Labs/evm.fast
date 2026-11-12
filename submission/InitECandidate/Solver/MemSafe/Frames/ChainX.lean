import InitECandidate.Solver.MemSafe.Frames.Release
import InitECandidate.Solver.MemSafe.Frames.Jr
import InitECandidate.Solver.MemSafe.Frames.BKeepDef

/-!
# The chain extension (frames7, decision 2(b)/(c))

`ChainL` (Chain.lean) is generic in the type table. Facts about the frames that mention guest
types (the message's address blocks, the log list, the deletion table) are added on top of it
by **one generic extension** with two predicate parameters:

* `P Γ m p f`: a per-frame predicate (`m` the memory, `p` the allocator pointers);
* `R Γ m ch pa`: a predicate of each child / parent pair of the chain.

`ChainE P R Γ s fs` says that every frame of `fs` satisfies `P` and every adjacent pair `R`;
**`ChainX`** = `∃ fs, ChainL ∧ ChainE`.

The extension may read, beyond `Γ` and the allocator, only the cells `XKeep` names: the EV
slots `evXSlots = [11, 14, 17, 26, 28]` (log list, message, deletion table, the two marks) of every frame, the `prot`
cells of the message objects (types `msgTys`), and (for `R`) the CK slots `ckXSlots` of the child
(the chain slots and `CK_MSG`, 40: frames9). Its stability obligations are the fields of **`XCfg`**:

* `step`, `stepR`: a step of the typed heap (`GStep`'s allocator / layout facts) that keeps these
  cells (`XKeep`: the frame's EV slots `evXSlots`, every `prot` cell of a message object) keeps
  `P` / `R`;
* `release`: the release of a child to its marks keeps `P` / `R` of the frames above.

Generic lemmas: `chainE_congr`, **`chainE_step`**, **`chainE_release`**, `chainX_congr`,
`chainX_of`.
-/

set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

/-! ## The cells the extension reads -/

/-- EV slots the extension reads: the log list (`EV_LOGS`, 88), the message (`EV_MSG`, 112), the
deletion table (`EV_DELETE`, 136). -/
def evXSlots : List Nat := [11, 14, 17, 26, 28]

/-- The message of a frame (`EV_MSG`). -/
def msgOf (m : Mem) (f : Frame) : BitVec 64 := fld m f.1 112

/-- MSG offsets the extension reads: CALLER (16) and CURRENT_TARGET (32). -/
def msgXOffs : List Nat := [16, 32]

/-- The message record types (`Types.tMSGh = 4`, `Types.tMSGs = 5`) and the block driver's
types `blockTys` (`tBOS`, `tBO`, `tMCO`; package K: `BKeep`); `msgTys_guest`. The extension reads
`prot` cells of the message objects, and the block objects' cells are kept across the frame loop,
so the callees that keep the extension must not write either (`FinDefs.PWtopM`). -/
def msgTys : List Nat := [4, 5, 76, 77, 78, 80, 46, 49, 50, 51, 15, 16, 17, 18]

/-- The message types before package L (messages and block objects). -/
def msgTys0 : List Nat := [4, 5, 76, 77, 78, 80, 46, 49, 50, 51]

theorem blockTys_msgTys : ∀ t ∈ blockTys, t ∈ msgTys := by decide
theorem bkTys_msgTys : ∀ t ∈ bkTys, t ∈ msgTys := by decide
theorem msgTys0_msgTys : ∀ t ∈ msgTys0, t ∈ msgTys := by decide
theorem logTys_msgTys : ∀ t ∈ logTys, t ∈ msgTys := by decide
theorem msgTys_cases {t : Nat} (h : t ∈ msgTys) : t ∈ msgTys0 ∨ t ∈ logTys := by
  simp only [msgTys, msgTys0, logTys, List.mem_cons, List.not_mem_nil, or_false] at h ⊢
  omega

/-- Every `prot` cell of a message object of `Γ` is the same in `m` and `m'`. -/
def MsgKeep (C : Cfg) (Γ : Gam) (m m' : Mem) : Prop :=
  ∀ o ∈ Γ, o.ty ∈ msgTys → ∀ j, o.HasSlot j → (C.ty o.ty).slot j = .prot →
    rd m' (o.cell j) = rd m (o.cell j)

/-- **The cells the extension may read for the frame `f` are unchanged**: its EV slots
`evXSlots`, and the `prot` cells of every message object. -/
def XKeep (C : Cfg) (Γ : Gam) (m m' : Mem) (f : Frame) : Prop :=
  (∀ j ∈ evXSlots, fld m' f.1 (8 * j) = fld m f.1 (8 * j)) ∧ MsgKeep C Γ m m'

/-- The `prot` cells of the block objects of `L`, and the address cells of its heap messages, read
as in the ghost memory `m0`. -/
def BG (C : Cfg) (L : Gam) (m0 m : Mem) : Prop :=
  (∀ o ∈ L, o.ty ∈ bkTys → ∀ k, o.HasSlot k → (C.ty o.ty).slot k = .prot →
    rd m (o.cell k) = rd m0 (o.cell k)) ∧
  ∀ o ∈ L, o.ty = tMSGhK → ∀ k, (k = 2 ∨ k = 4) → o.HasSlot k → (C.ty o.ty).slot k = .prot →
    rd m (o.cell k) = rd m0 (o.cell k)

theorem bg_refl (C : Cfg) (L : Gam) (m : Mem) : BG C L m m :=
  ⟨fun _ _ _ _ _ _ => rfl, fun _ _ _ _ _ _ _ => rfl⟩

theorem msgOf_keep {C : Cfg} {Γ : Gam} {m m' : Mem} {f : Frame} (h : XKeep C Γ m m' f) :
    msgOf m' f = msgOf m f :=
  h.1 14 (by simp [evXSlots])

/-- The CK slots of a child the pair predicate may read: the chain slots and `CK_MSG` (40, the
message `finish_child` hands to `create_finish`; frames9). -/
def ckXSlots : List Nat := 40 :: ckChainSlots

theorem ckX_sub {k : Nat} (h : k ∈ ckChainSlots) : k ∈ ckXSlots := List.mem_cons_of_mem _ h

/-- The `ckXSlots` of a record whose first 13 slots are kept are kept. -/
theorem ckX_of13 {c : BitVec 64} {m m' : Mem}
    (h : ∀ j, j < 13 → fld m' c (8 * j) = fld m c (8 * j)) :
    ∀ k ∈ ckXSlots, fld m' c k = fld m c k := by
  intro k hk
  simp only [ckXSlots, ckChainSlots, ckParent, ckParentCont, ckKind, ckMark, ckMemMark, ckOutStart,
    ckOutSize, List.mem_cons, List.mem_nil_iff, or_false] at hk
  rcases hk with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact h 5 (by omega)
  · exact h 0 (by omega)
  · exact h 1 (by omega)
  · exact h 2 (by omega)
  · exact h 6 (by omega)
  · exact h 7 (by omega)
  · exact h 9 (by omega)
  · exact h 10 (by omega)

theorem msgKeep_refl (C : Cfg) (Γ : Gam) (m : Mem) : MsgKeep C Γ m m := fun _ _ _ _ _ _ => rfl

theorem xKeep_refl (C : Cfg) (Γ : Gam) (m : Mem) (f : Frame) : XKeep C Γ m m f :=
  ⟨fun _ _ => rfl, msgKeep_refl C Γ m⟩

/-! ## What a step keeps of the heap -/

/-- **What survives a frame-loop step.** The other two allocator regions are released, so this
speaks only of the heap: the heap pointer does not drop, every heap object survives (it may grow),
and new bytes of heap objects lie at or above the old heap pointer. The last part is what keeps a
caller's heap temporary outside the typing, and so a `BufOK`, across the whole loop. -/
def KeepH {σ : Type} (C : Cfg) (Γ Γ' : Gam) (s t : State σ) : Prop :=
  ∀ p p', ptrsOf s = some p → ptrsOf t = some p' → p.Ordered → p.hp ≤ p'.hp ∧
    (∀ x ∈ Γ, (C.ty x.ty).region = .heap → ∃ x' ∈ Γ', x'.base = x.base ∧ x'.ty = x.ty ∧ x.size ≤ x'.size) ∧
    (∀ o ∈ Γ', (C.ty o.ty).region = .heap → ∀ a : BitVec 64, o.lo ≤ a.toNat → a.toNat < o.hi →
      (∃ o0 ∈ Γ, o0.base = o.base ∧ o0.ty = o.ty ∧ o0.lo ≤ a.toNat ∧ a.toNat < o0.hi) ∨ p.hp ≤ a.toNat)

theorem keepH_of_run {σ : Type} {C : Cfg} {Γ Γ' : Gam} {s t : State σ} {p p' : Ptrs}
    (hp : ptrsOf s = some p) (hp' : ptrsOf t = some p') (hm : p.Mono p') (hx : Ext Γ Γ')
    (hnf : NewFresh Γ Γ' p p') (hL' : Layout C p' Γ') (hord' : p'.Ordered) :
    KeepH C Γ Γ' s t := by
  intro q q' hq hq' hord
  obtain rfl : q = p := Option.some.inj (hq.symm.trans hp)
  obtain rfl : q' = p' := Option.some.inj (hq'.symm.trans hp')
  refine ⟨hm.1, fun x hx' _ => hx x hx', fun o ho hr a h1 h2 => ?_⟩
  rcases hnf o ho a h1 h2 with h | h
  · exact Or.inl h
  · refine Or.inr ?_
    obtain ⟨-, h4⟩ := (live_of hL' ho).1 hr
    have hO := hord
    have hO' := hord'
    unfold Ptrs.Ordered at hO hO'
    rcases h with ⟨h5, -⟩ | ⟨h5, -⟩ | ⟨h5, -⟩ <;> omega

theorem KeepH.trans {σ : Type} {C : Cfg} {Γ Γ1 Γ2 : Gam} {s u t : State σ} {pu : Ptrs}
    (h1 : KeepH C Γ Γ1 s u) (h2 : KeepH C Γ1 Γ2 u t) (hu : ptrsOf u = some pu)
    (hordu : pu.Ordered) : KeepH C Γ Γ2 s t := by
  intro p p' hp hp' hord
  obtain ⟨a1, b1, c1⟩ := h1 p pu hp hu hord
  obtain ⟨a2, b2, c2⟩ := h2 pu p' hu hp' hordu
  refine ⟨Nat.le_trans a1 a2, fun x hx hr => ?_, fun o ho hr a l1 l2 => ?_⟩
  · obtain ⟨x1, hx1, e1, e2, e3⟩ := b1 x hx hr
    obtain ⟨x2, hx2, f1, f2, f3⟩ := b2 x1 hx1 (by rw [e2]; exact hr)
    exact ⟨x2, hx2, f1.trans e1, f2.trans e2, Nat.le_trans e3 f3⟩
  · rcases c2 o ho hr a l1 l2 with ⟨o1, ho1, g1, g2, g3, g4⟩ | h
    · rcases c1 o1 ho1 (by rw [g2]; exact hr) a g3 g4 with ⟨o0, ho0, k1, k2, k3, k4⟩ | h
      · exact Or.inl ⟨o0, ho0, k1.trans g1, k2.trans g2, k3, k4⟩
      · exact Or.inr h
    · exact Or.inr (Nat.le_trans a1 h)

theorem keepH_congr {σ : Type} {C : Cfg} {Γ Γ' : Gam} {s s' t t' : State σ}
    (hs : s'.globals = s.globals) (ht : t'.globals = t.globals) (h : KeepH C Γ Γ' s t) :
    KeepH C Γ Γ' s' t' := by
  intro p p' hp hp' hord
  refine h p p' ?_ ?_ hord
  · rw [← hp]; unfold ptrsOf gword; rw [hs]
  · rw [← hp']; unfold ptrsOf gword; rw [ht]

theorem keepH_refl {σ : Type} {C : Cfg} {Γ : Gam} {s t : State σ} (hg : t.globals = s.globals) :
    KeepH C Γ Γ s t := by
  intro p p' hp hp' _
  have : ptrsOf t = ptrsOf s := by unfold ptrsOf gword; rw [hg]
  rw [this, hp] at hp'
  obtain rfl := Option.some.inj hp'
  refine ⟨Nat.le_refl _, fun x hx _ => ⟨x, hx, rfl, rfl, Nat.le_refl _⟩, fun o ho _ a h1 h2 =>
    Or.inl ⟨o, ho, rfl, rfl, h1, h2⟩⟩

/-! ## The extension -/

/-- **The chain extension**: `P` for every frame, `R` for every child / parent pair. -/
def ChainE (P : Gam → Mem → Ptrs → Frame → Prop) (R : Gam → Mem → Frame → Frame → Prop)
    (Γ : Gam) (s : State σ) (fs : List Frame) : Prop :=
  (∀ p, ptrsOf s = some p → ∀ f ∈ fs, P Γ s.memory p f) ∧ ∀ ch pa, Adj fs ch pa → R Γ s.memory ch pa

/-- **The extended chain invariant.** -/
def ChainX (C : Cfg) (tEV tCK : Nat) (P : Gam → Mem → Ptrs → Frame → Prop)
    (R : Gam → Mem → Frame → Frame → Prop) (Γ : Gam) (s : State σ) : Prop :=
  ∃ fs, ChainL C tEV tCK Γ s fs ∧ ChainE P R Γ s fs

theorem chainX_chain {C : Cfg} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop}
    {R : Gam → Mem → Frame → Frame → Prop} {Γ : Gam} {s : State σ}
    (h : ChainX C tEV tCK P R Γ s) : Chain C tEV tCK Γ s :=
  let ⟨fs, h1, _⟩ := h; ⟨fs, h1⟩

theorem chainE_congr {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop}
    {Γ : Gam} {s s' : State σ} {fs : List Frame} (hm : s'.memory = s.memory)
    (hg : s'.globals = s.globals) (h : ChainE P R Γ s fs) : ChainE P R Γ s' fs := by
  refine ⟨fun p hp f hf => ?_, fun ch pa ha => ?_⟩
  · rw [ptrsOf_congr hg] at hp; rw [hm]; exact h.1 p hp f hf
  · rw [hm]; exact h.2 ch pa ha

/-- The extension depends only on the memory and the allocator pointers. -/
theorem chainE_congrP {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop}
    {Γ : Gam} {s s' : State σ} {fs : List Frame} (hm : s'.memory = s.memory)
    (hp : ptrsOf s' = ptrsOf s) (h : ChainE P R Γ s fs) : ChainE P R Γ s' fs := by
  refine ⟨fun p hp' f hf => ?_, fun ch pa ha => ?_⟩
  · rw [hp] at hp'; rw [hm]; exact h.1 p hp' f hf
  · rw [hm]; exact h.2 ch pa ha

theorem chainE_sub {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop}
    {Γ : Gam} {s : State σ} {f : Frame} {fs : List Frame} (h : ChainE P R Γ s (f :: fs)) :
    ChainE P R Γ s fs :=
  ⟨fun p hp g hg => h.1 p hp g (List.mem_cons_of_mem _ hg),
    fun ch pa ha => h.2 ch pa (let ⟨l1, l2, he⟩ := ha; ⟨f :: l1, l2, by rw [he]; rfl⟩)⟩

theorem chainX_congr {C : Cfg} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop}
    {R : Gam → Mem → Frame → Frame → Prop} {Γ : Gam} {s s' : State σ}
    (hm : s'.memory = s.memory) (hg : s'.globals = s.globals) (h : ChainX C tEV tCK P R Γ s) :
    ChainX C tEV tCK P R Γ s' :=
  let ⟨fs, h1, h2⟩ := h; ⟨fs, chainL_congr hm hg h1, chainE_congr hm hg h2⟩

theorem chainX_locFree {C : Cfg} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop}
    {R : Gam → Mem → Frame → Frame → Prop} {Γ : Gam} :
    LocFree (σ := σ) (ChainX C tEV tCK P R Γ) := fun _ _ _ =>
  ⟨chainX_congr rfl rfl, chainX_congr rfl rfl⟩

theorem chainX_of {C : Cfg} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop}
    {R : Gam → Mem → Frame → Frame → Prop} {Γ : Gam} {s : State σ} {fs : List Frame}
    (h1 : ChainL C tEV tCK Γ s fs) (h2 : ChainE P R Γ s fs) : ChainX C tEV tCK P R Γ s :=
  ⟨fs, h1, h2⟩

/-- The extension of the chain of `s` (it is unique). -/
theorem chainE_of_chainX {C : Cfg} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop}
    {R : Gam → Mem → Frame → Frame → Prop} {Γ : Gam} {s : State σ}
    (h : ChainX C tEV tCK P R Γ s) {fs : List Frame} (hfs : ChainOf s fs) : ChainE P R Γ s fs := by
  obtain ⟨fs', h1, h2⟩ := h
  rw [chainOf_unique hfs h1.chain]
  exact h2

/-! ## The stability obligations -/

/-- The release splits `Γ` at the marks `mk` / `mm` (the `split` field of `MarkOK`). -/
def RelSplit (C : Cfg) (Γ : Gam) (mk mm : Nat) : Prop :=
  ∀ o ∈ Γ, ((C.ty o.ty).region = .scratch → o.hi ≤ mk ∨ mk ≤ o.lo) ∧
    ((C.ty o.ty).region = .fmem → o.hi ≤ mm ∨ mm ≤ o.lo)

/-- **The stability obligations of an extension.** -/
structure XCfg (C : Cfg) (tEV tCK : Nat) (P : Gam → Mem → Ptrs → Frame → Prop)
    (R : Gam → Mem → Frame → Frame → Prop) : Prop where
  /-- A step of the typed heap that keeps the frame's extension cells keeps `P`. -/
  step : ∀ {Γ Γ' : Gam} {m m' : Mem} {p p' : Ptrs} {f : Frame}, p.Ordered → p'.Ordered →
    Layout C p Γ → Layout C p' Γ' → p.Mono p' → Ext Γ Γ' → NewFresh Γ Γ' p p' →
    XKeep C Γ m m' f → P Γ m p f → P Γ' m' p' f
  /-- A step that keeps the extension cells of both frames and the child's CK slots `ckXSlots`
  keeps `R`. -/
  stepR : ∀ {Γ Γ' : Gam} {m m' : Mem} {p p' : Ptrs} {ch pa : Frame}, p.Ordered → p'.Ordered →
    Layout C p Γ → Layout C p' Γ' → p.Mono p' → Ext Γ Γ' → NewFresh Γ Γ' p p' →
    XKeep C Γ m m' ch → XKeep C Γ m m' pa → (∀ k ∈ ckXSlots, fld m' ch.2 k = fld m ch.2 k) →
    R Γ m ch pa → R Γ' m' ch pa
  /-- The release of the child `ch` to its marks keeps the extension of the frames `fs` above
  (whose children's marks lie above `ch`'s). -/
  release : ∀ {Γ : Gam} {m : Mem} {p : Ptrs} {ch : Frame} {fs : List Frame}, p.Ordered →
    Layout C p Γ → RelSplit C Γ (mkOf m ch.2) (mmOf m ch.2) →
    p.sp < mkOf m ch.2 → mkOf m ch.2 ≤ scratchEnd → heapEnd ≤ mmOf m ch.2 → mmOf m ch.2 ≤ p.fp →
    (∀ l3 g l4, fs = l3 ++ g :: l4 → l4 ≠ [] →
      mkOf m ch.2 < mkOf m g.2 ∧ mmOf m g.2 < mmOf m ch.2) →
    (∀ f ∈ fs, P Γ m p f) → (∀ g f, Adj (ch :: fs) g f → R Γ m g f) →
    (∀ f ∈ fs, P (relKeep C (mkOf m ch.2) (mmOf m ch.2) Γ) m ⟨p.hp, mmOf m ch.2, mkOf m ch.2⟩ f) ∧
      ∀ g f, Adj fs g f → R (relKeep C (mkOf m ch.2) (mmOf m ch.2) Γ) m g f

/-! ## Root identity -/

/-- **The root frame of the chain is unchanged**: the last element of the chain of `t` is the
last element of the chain of `s` (when both have a chain). -/
def RootK {σ : Type} (s t : State σ) : Prop :=
  ∀ fs fs', ChainOf s fs → ChainOf t fs' → fs'.getLast? = fs.getLast?

theorem rootK_refl {σ : Type} (s : State σ) : RootK s s := by
  intro fs fs' h h'
  rw [chainOf_unique h h']

theorem rootK_of_same {σ : Type} {s t : State σ} {fs : List Frame} (h : ChainOf s fs)
    (h' : ChainOf t fs) : RootK s t := by
  intro a b ha hb
  obtain rfl := chainOf_unique h ha
  obtain rfl := chainOf_unique h' hb
  rfl

theorem rootK_trans {σ : Type} {s u t : State σ} (h1 : RootK s u) (h2 : RootK u t)
    (hu : ∃ fs, ChainOf u fs) : RootK s t := by
  intro fs fs' hs ht
  obtain ⟨fu, hfu⟩ := hu
  exact (h2 fu fs' hfu ht).trans (h1 fs fu hs hfu)

theorem rootK_push {σ : Type} {s t : State σ} {fs : List Frame} {x : Frame} (h : ChainOf s fs)
    (hne : fs ≠ []) (h' : ChainOf t (x :: fs)) : RootK s t := by
  intro a b ha hb
  obtain rfl := chainOf_unique h ha
  obtain rfl := chainOf_unique h' hb
  cases fs with
  | nil => exact absurd rfl hne
  | cons y ys => simp [List.getLast?_cons_cons]

theorem rootK_pop {σ : Type} {s t : State σ} {fs : List Frame} {x : Frame}
    (h : ChainOf s (x :: fs)) (hne : fs ≠ []) (h' : ChainOf t fs) : RootK s t := by
  intro a b ha hb
  obtain rfl := chainOf_unique h ha
  obtain rfl := chainOf_unique h' hb
  cases fs with
  | nil => exact absurd rfl hne
  | cons y ys => simp [List.getLast?_cons_cons]

theorem rootK_congr {σ : Type} {s s' t t' : State σ} (hs : s'.memory = s.memory)
    (hsg : s'.globals = s.globals) (ht : t'.memory = t.memory) (htg : t'.globals = t.globals)
    (h : RootK s t) : RootK s' t' := by
  intro fs fs' h1 h2
  have e1 : ChainOf s fs := by
    obtain ⟨e, c, r, a, b, c', d⟩ := h1
    exact ⟨e, c, r, a, by rw [gword_congr hsg] at b; exact b, by rw [gword_congr hsg] at c'; exact c',
      by rw [hs] at d; exact d⟩
  have e2 : ChainOf t fs' := by
    obtain ⟨e, c, r, a, b, c', d⟩ := h2
    exact ⟨e, c, r, a, by rw [gword_congr htg] at b; exact b, by rw [gword_congr htg] at c'; exact c',
      by rw [ht] at d; exact d⟩
  exact h fs fs' e1 e2

/-! ## Carrying `KeepH` in the per-frame predicate -/

/-- The heap part of `KeepH` from a fixed `L`, `h0`, as a fact about the current typing. -/
def KeepL (C : Cfg) (L : Gam) (h0 : Nat) (Γ : Gam) : Prop :=
  (∀ x ∈ L, (C.ty x.ty).region = .heap → ∃ x' ∈ Γ, x'.base = x.base ∧ x'.ty = x.ty ∧ x.size ≤ x'.size) ∧
  (∀ o ∈ Γ, (C.ty o.ty).region = .heap → ∀ a : BitVec 64, o.lo ≤ a.toNat → a.toNat < o.hi →
    (∃ o0 ∈ L, o0.base = o.base ∧ o0.ty = o.ty ∧ o0.lo ≤ a.toNat ∧ a.toNat < o0.hi) ∨ h0 ≤ a.toNat)

/-- `P` with `KeepL` and the ghost memory `m0` of the block cells: lets a proof generic in the
per-frame predicate carry `KeepH` and `BKeep`. -/
def PK (C : Cfg) (L : Gam) (h0 : Nat) (m0 : Mem) (P : Gam → Mem → Ptrs → Frame → Prop) :
    Gam → Mem → Ptrs → Frame → Prop :=
  fun Γ m p f => P Γ m p f ∧ h0 ≤ p.hp ∧ KeepL C L h0 Γ ∧ BG C L m0 m

theorem keepL_refl (C : Cfg) (L : Gam) (h0 : Nat) : KeepL C L h0 L :=
  ⟨fun x hx _ => ⟨x, hx, rfl, rfl, Nat.le_refl _⟩, fun o ho _ a h1 h2 =>
    Or.inl ⟨o, ho, rfl, rfl, h1, h2⟩⟩

theorem keepL_step {C : Cfg} {L : Gam} {h0 : Nat} {Γ Γ' : Gam} {p p' : Ptrs} (hord : p.Ordered)
    (hord' : p'.Ordered) (hL' : Layout C p' Γ') (hx : Ext Γ Γ') (hnf : NewFresh Γ Γ' p p')
    (hh : h0 ≤ p.hp) (hk : KeepL C L h0 Γ) : KeepL C L h0 Γ' := by
  refine ⟨fun x hxL hr => ?_, fun o ho hr a h1 h2 => ?_⟩
  · obtain ⟨x1, hx1, e1, e2, e3⟩ := hk.1 x hxL hr
    obtain ⟨x2, hx2, f1, f2, f3⟩ := hx x1 hx1
    exact ⟨x2, hx2, f1.trans e1, f2.trans e2, Nat.le_trans e3 f3⟩
  · rcases hnf o ho a h1 h2 with ⟨o0, ho0, e1, e2, l1, l2⟩ | h
    · rcases hk.2 o0 ho0 (by rw [e2]; exact hr) a l1 l2 with ⟨o1, ho1, f1, f2, l3, l4⟩ | h
      · exact Or.inl ⟨o1, ho1, f1.trans e1, f2.trans e2, l3, l4⟩
      · exact Or.inr h
    · refine Or.inr ?_
      obtain ⟨-, h4⟩ := (live_of hL' ho).1 hr
      have hO := hord
      have hO' := hord'
      unfold Ptrs.Ordered at hO hO'
      rcases h with ⟨h5, -⟩ | ⟨h5, -⟩ | ⟨h5, -⟩ <;> omega

/-- The ghost block cells survive a step that keeps the message / block `prot` cells. -/
theorem bg_step {C : Cfg} {L Γ : Gam} {h0 : Nat} {m0 m m' : Mem}
    (hreg : ∀ t ∈ keepTys, (C.ty t).region = .heap) (hk : KeepL C L h0 Γ)
    (hmk : MsgKeep C Γ m m') (hb : BG C L m0 m) : BG C L m0 m' := by
  refine ⟨fun o ho hty k hk' hp => ?_, fun o ho hty k hk2' hk' hp => ?_⟩
  · obtain ⟨x, hx, hxb, hxt, hxs⟩ := hk.1 o ho (hreg _ (keep_bk hty))
    have hk2 : x.HasSlot k := by unfold Obj.HasSlot at hk' ⊢; omega
    have hc : x.cell k = o.cell k := by unfold Obj.cell; rw [hxb]
    have := hmk x hx (by rw [hxt]; exact bkTys_msgTys _ hty) k hk2 (by rw [hxt]; exact hp)
    rw [hc] at this
    rw [this]
    exact hb.1 o ho hty k hk' hp
  · obtain ⟨x, hx, hxb, hxt, hxs⟩ := hk.1 o ho (by rw [hty]; exact hreg _ keep_msg)
    have hk2 : x.HasSlot k := by unfold Obj.HasSlot at hk' ⊢; omega
    have hc : x.cell k = o.cell k := by unfold Obj.cell; rw [hxb]
    have := hmk x hx (by rw [hxt, hty]; decide) k hk2 (by rw [hxt]; exact hp)
    rw [hc] at this
    rw [this]
    exact hb.2 o ho hty k hk2' hk' hp

/-- **`PK` is stable** whenever `P` is. -/
theorem xCfg_keep {C : Cfg} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop}
    {R : Gam → Mem → Frame → Frame → Prop} (hX : XCfg C tEV tCK P R)
    (hreg : ∀ t ∈ keepTys, (C.ty t).region = .heap) (L : Gam) (h0 : Nat) (m0 : Mem) :
    XCfg C tEV tCK (PK C L h0 m0 P) R where
  step := fun hord hord' hL hL' hm hx hnf hk ⟨h1, h2, h3, h4⟩ =>
    ⟨hX.step hord hord' hL hL' hm hx hnf hk h1, Nat.le_trans h2 hm.1,
      keepL_step hord hord' hL' hx hnf h2 h3, bg_step hreg h3 hk.2 h4⟩
  stepR := hX.stepR
  release := by
    intro Γ m p ch fs hord hL hs h1 h2 h3 h4 ho hP hR
    obtain ⟨r1, r2⟩ := hX.release hord hL hs h1 h2 h3 h4 ho (fun f hf => (hP f hf).1) hR
    refine ⟨fun f hf => ⟨r1 f hf, (hP f hf).2.1, ?_, (hP f hf).2.2.2⟩, r2⟩
    obtain ⟨-, -, ⟨k1, k2⟩, -⟩ := hP f hf
    refine ⟨fun x hx hr => ?_, fun o ho' hr a l1 l2 => k2 o (mem_relKeep.mp ho').1 hr a l1 l2⟩
    obtain ⟨x', hx', e1, e2, e3⟩ := k1 x hx hr
    exact ⟨x', mem_relKeep.mpr ⟨hx', above_heap (by rw [e2]; exact hr)⟩, e1, e2, e3⟩

/-- From the extended chain over `PK` (ghost memory `s.memory`): `KeepH`, `BKeep` and the chain
over `P`. -/
theorem chainX_PK {C : Cfg} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop}
    {R : Gam → Mem → Frame → Frame → Prop} {σ : Type} {Γ Γ' : Gam} {s t : State σ} {p : Ptrs}
    (hp : ptrsOf s = some p) (hpt : ∃ q, ptrsOf t = some q)
    (h : ChainX C tEV tCK (PK C Γ p.hp s.memory P) R Γ' t) :
    KeepH C Γ Γ' s t ∧ BKeep C Γ s t ∧ ChainX C tEV tCK P R Γ' t := by
  obtain ⟨fs, hch, hE⟩ := h
  obtain ⟨e, c, rest, hfs, -⟩ := hch.chain
  refine ⟨fun q q' hq0 hq' _ => ?_, ?_, ⟨fs, hch, fun q hq f hf => (hE.1 q hq f hf).1, hE.2⟩⟩
  · obtain rfl : q = p := Option.some.inj (hq0.symm.trans hp)
    obtain ⟨-, h1, ⟨h2, h3⟩, -⟩ := hE.1 q' hq' (e, c) (by rw [hfs]; exact List.mem_cons_self ..)
    exact ⟨h1, h2, h3⟩
  · obtain ⟨q', hq'⟩ := hpt
    exact (hE.1 q' hq' (e, c) (by rw [hfs]; exact List.mem_cons_self ..)).2.2.2

/-! ## Generic lemmas -/

/-- **A step keeps the extension.** -/
theorem chainE_step {C : Cfg} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop}
    {R : Gam → Mem → Frame → Frame → Prop} (hX : XCfg C tEV tCK P R) {Γ Γ' : Gam}
    {s t : State σ} {fs : List Frame} {top : BitVec 64} (hst : GStep C tEV Γ Γ' s t top)
    (hx : ∀ f ∈ fs, XKeep C Γ s.memory t.memory f)
    (hck : ∀ f ∈ fs, ∀ k ∈ ckXSlots, fld t.memory f.2 k = fld s.memory f.2 k)
    (h : ChainE P R Γ s fs) : ChainE P R Γ' t fs := by
  obtain ⟨p, p', hp, hp', hord, hord', hL, hL', hmo, hext, hnf, -⟩ := hst
  refine ⟨fun q hq f hf => ?_, fun ch pa ha => ?_⟩
  · obtain rfl := ptrs_some hp' hq
    exact hX.step hord hord' hL hL' hmo hext hnf (hx f hf) (h.1 p hp f hf)
  · obtain ⟨hch, hpa⟩ := adj_mem ha
    exact hX.stepR hord hord' hL hL' hmo hext hnf (hx ch hch) (hx pa (List.mem_of_mem_tail hpa))
      (hck ch hch) (h.2 ch pa ha)

/-- **The release keeps the extension of the frames above the child.** -/
theorem chainE_release {C : Cfg} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop}
    {R : Gam → Mem → Frame → Frame → Prop} (hX : XCfg C tEV tCK P R) {Γ : Gam}
    {s t : State σ} {ch : Frame} {fs : List Frame} {p : Ptrs} (hp : ptrsOf s = some p)
    (hord : p.Ordered) (hL : Layout C p Γ)
    (hmk : MarkOK C tEV Γ s (mkOf s.memory ch.2) (mmOf s.memory ch.2))
    (hord2 : ∀ l3 g l4, fs = l3 ++ g :: l4 → l4 ≠ [] →
      mkOf s.memory ch.2 < mkOf s.memory g.2 ∧ mmOf s.memory g.2 < mmOf s.memory ch.2)
    (hm : t.memory = s.memory)
    (hpt : ptrsOf t = some ⟨p.hp, mmOf s.memory ch.2, mkOf s.memory ch.2⟩)
    (h : ChainE P R Γ s (ch :: fs)) :
    ChainE P R (relKeep C (mkOf s.memory ch.2) (mmOf s.memory ch.2) Γ) t fs := by
  have hsp := hmk.ptrs p hp
  obtain ⟨hk1, hk2⟩ := hX.release hord hL hmk.split hsp.1 hmk.mkB.2 hmk.mmB.2 hsp.2 hord2
    (fun f hf => h.1 p hp f (List.mem_cons_of_mem _ hf)) h.2
  refine ⟨fun q hq f hf => ?_, fun g f ha => ?_⟩
  · rw [hpt] at hq; cases hq; rw [hm]; exact hk1 f hf
  · rw [hm]; exact hk2 g f ha

/-- **Pushing a frame**: the extension of `f :: fs` from that of `fs`, `P` of the new frame and
`R` of the new frame and the old head. -/
theorem chainE_push {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop}
    {Γ : Gam} {s : State σ} {f : Frame} {fs : List Frame} (h : ChainE P R Γ s fs)
    (hP : ∀ p, ptrsOf s = some p → P Γ s.memory p f)
    (hR : ∀ pa, fs.head? = some pa → R Γ s.memory f pa) : ChainE P R Γ s (f :: fs) := by
  refine ⟨fun p hp g hg => ?_, fun ch pa ha => ?_⟩
  · rcases List.mem_cons.mp hg with rfl | hg'
    · exact hP p hp
    · exact h.1 p hp g hg'
  · obtain ⟨l1, l2, he⟩ := ha
    cases l1 with
    | nil =>
        simp only [List.nil_append, List.cons.injEq] at he
        obtain ⟨rfl, rfl⟩ := he
        exact hR pa rfl
    | cons x l1 =>
        simp only [List.cons_append, List.cons.injEq] at he
        exact h.2 ch pa ⟨l1, l2, he.2⟩

/-! ## The bundle's preconditions and posts with the extension -/

section posts
variable (C : Cfg) (tEV tCK : Nat) (P : Gam → Mem → Ptrs → Frame → Prop)
  (R : Gam → Mem → Frame → Frame → Prop)

/-- `PreInvJ` with `ChainX`. -/
def PreInvX (M : Nat) (_ : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  (ChainX C tEV tCK P R Γ s ∧ Phi s ≤ M) ∧ JrNZ s

/-- `PreOpJ` with `ChainX`. -/
def PreOpX (M : Nat) (_ : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  (ChainX C tEV tCK P R Γ s ∧ Phi s ≤ M ∧ Ready s) ∧ JrNZ s

/-- `PreFinJ` with `ChainX`. -/
def PreFinX (M : Nat) (_ : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  (ChainX C tEV tCK P R Γ s ∧ Phi s ≤ M ∧ KindNZ s) ∧ JrNZ s

/-- `QStepJ` with `ChainX`, and what the step keeps of the heap. -/
def QStepX (_ : List (ValueHOL 64)) (s : State σ) (Γ : Gam) (r : PanSemResultExact 64)
    (t : State σ) (Γ' : Gam) : Prop :=
  ((∀ v, r = .returned v → ChainX C tEV tCK P R Γ' t ∧ Phi t < Phi s) ∧
    (∀ v, r = .exception nmEvmErr v → ChainX C tEV tCK P R Γ' t ∧ Phi t + 1 ≤ Phi s + act t)) ∧
  (∀ v, r = .returned v → JrNZ t) ∧ (∀ v, r = .exception nmEvmErr v → JrNZ t) ∧
  (∀ v, r = .returned v → KeepH C Γ Γ' s t) ∧ (∀ v, r = .exception nmEvmErr v → KeepH C Γ Γ' s t) ∧
  (∀ v, r = .returned v → RootK s t) ∧ (∀ v, r = .exception nmEvmErr v → RootK s t) ∧
  (∀ v, r = .returned v → BKeep C Γ s t) ∧ (∀ v, r = .exception nmEvmErr v → BKeep C Γ s t)

/-- `QExcJ` with `ChainX`. -/
def QExcX (_ : List (ValueHOL 64)) (s : State σ) (Γ : Gam) (r : PanSemResultExact 64)
    (t : State σ) (Γ' : Gam) : Prop :=
  (∀ v, r = .returned v → ChainX C tEV tCK P R Γ' t ∧ Phi t + act s ≤ Phi s) ∧
    (∀ v, r = .returned v → JrNZ t) ∧ (∀ v, r = .returned v → KeepH C Γ Γ' s t) ∧
    (∀ v, r = .returned v → RootK s t) ∧ ∀ v, r = .returned v → BKeep C Γ s t

/-- `QEpiJ` with `ChainX`. -/
def QEpiX (_ : List (ValueHOL 64)) (s : State σ) (Γ : Gam) (r : PanSemResultExact 64)
    (t : State σ) (Γ' : Gam) : Prop :=
  (∀ v, r = .returned v → ChainX C tEV tCK P R Γ' t ∧ Phi t ≤ Phi s) ∧
    (∀ v, r = .returned v → JrNZ t) ∧ (∀ v, r = .returned v → KeepH C Γ Γ' s t) ∧
    (∀ v, r = .returned v → RootK s t) ∧ ∀ v, r = .returned v → BKeep C Γ s t

end posts

theorem preInvJ_of_X {C : Cfg} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop}
    {R : Gam → Mem → Frame → Frame → Prop} {M : Nat} {vs : List (ValueHOL 64)} {s : State σ}
    {Γ : Gam} (h : PreInvX C tEV tCK P R M vs s Γ) : PreInvJ C tEV tCK M vs s Γ :=
  ⟨⟨chainX_chain h.1.1, h.1.2⟩, h.2⟩

theorem preOpJ_of_X {C : Cfg} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop}
    {R : Gam → Mem → Frame → Frame → Prop} {M : Nat} {vs : List (ValueHOL 64)} {s : State σ}
    {Γ : Gam} (h : PreOpX C tEV tCK P R M vs s Γ) : PreOpJ C tEV tCK M vs s Γ :=
  ⟨⟨chainX_chain h.1.1, h.1.2⟩, h.2⟩

theorem preFinJ_of_X {C : Cfg} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop}
    {R : Gam → Mem → Frame → Frame → Prop} {M : Nat} {vs : List (ValueHOL 64)} {s : State σ}
    {Γ : Gam} (h : PreFinX C tEV tCK P R M vs s Γ) : PreFinJ C tEV tCK M vs s Γ :=
  ⟨⟨chainX_chain h.1.1, h.1.2⟩, h.2⟩

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.chainE_step
#print axioms InitECandidate.Solver.MemSafe.Frames.chainE_release
