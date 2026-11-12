import InitECandidate.Solver.MemSafe.Frames.Layout

/-!
# The frame chain and the measure `Φ`

The frames of a state: `(ev, cur_cont)`, then repeatedly `(CK_PARENT, CK_PARENT_CONT)` of the
continuation record, up to the first record of kind `0` (inclusive). `IsChain` describes such
a list, `ChainOf s fs` says `fs` is *the* chain of `s` (it is unique, `chainOf_unique`).

* `wt m (e, c) = GAS_LEFT(e) + STATE_GAS_SPILLED(e) + 1 + [CK_DONE(c) = 0 ∧ RUNNING(e) ≠ 0]`;
* `Phi s` = the sum of `wt` over the chain of `s` (`0` if there is none); `phi_eq`.
* `Chain C tEV tCK Γ s`: the chain exists, its EV / CK records are objects of `Γ` of types
  `tEV` / `tCK`, pairwise distinct, and every suspended frame satisfies the facts of design
  §2.4 that the frame driver relies on:
  - `SP < STACK_CAP` (hazard 1: `finish_child`'s `stack_push` never reallocates);
  - `CK_MEM_MARK(child) = MEM(parent) + MEM_CAP(parent)` (hazard 2: frame memory is LIFO);
  - `CK_OUT_SIZE(child) = 0 ∨ CK_OUT_START + CK_OUT_SIZE ≤ MEM_LEN(parent)` (hazard 3).

`Chain` and `Phi` read only the globals `ev` / `cur_cont` and cells of the chain's EV and CK
records at the offsets below; with these slots `prot` in the type table, only hand-verified
code can change them.
-/

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

/-! ## The chain -/

/-- The record of the root frame: kind `0`, and a null parent. The loop's exit assigns the parent
to the typed globals `ev` / `cur_cont`, so `G` after the loop needs this. -/
def RootCk (m : Mem) (c : BitVec 64) : Prop :=
  fld m c ckKind = 0 ∧ (fld m c ckParent).toNat < nullMax ∧ (fld m c ckParentCont).toNat < nullMax

/-- `fs` is a frame chain in `m`: every record but the last has a kind `≠ 0` and names the
next frame as its parent; the last is a root record. -/
inductive IsChain (m : Mem) : List Frame → Prop
  | base {e c : BitVec 64} : RootCk m c → IsChain m [(e, c)]
  | step {e c : BitVec 64} {rest : List Frame} : fld m c ckKind ≠ 0 →
      rest.head? = some (fld m c ckParent, fld m c ckParentCont) → IsChain m rest →
      IsChain m ((e, c) :: rest)

theorem isChain_unique {m : Mem} {l1 : List Frame} (h1 : IsChain m l1) :
    ∀ {l2 : List Frame}, IsChain m l2 → l1.head? = l2.head? → l1 = l2 := by
  induction h1 with
  | base hk =>
      intro l2 h2 hh
      cases h2 with
      | base _ => simp only [List.head?_cons, Option.some.injEq] at hh; rw [hh]
      | step hk' _ _ =>
          simp only [List.head?_cons, Option.some.injEq, Prod.mk.injEq] at hh
          obtain ⟨rfl, rfl⟩ := hh
          exact absurd hk.1 hk'
  | step hk hp _ ih =>
      intro l2 h2 hh
      cases h2 with
      | base hk' =>
          simp only [List.head?_cons, Option.some.injEq, Prod.mk.injEq] at hh
          obtain ⟨rfl, rfl⟩ := hh
          exact absurd hk'.1 hk
      | step _ hp' h2' =>
          simp only [List.head?_cons, Option.some.injEq, Prod.mk.injEq] at hh
          obtain ⟨rfl, rfl⟩ := hh
          rw [ih h2' (hp.trans hp'.symm)]

/-- `fs` is the chain of `s`, starting at `(ev, cur_cont)`. -/
def ChainOf (s : State σ) (fs : List Frame) : Prop :=
  ∃ e c rest, fs = (e, c) :: rest ∧ gword s nmEv = some e ∧ gword s nmCC = some c ∧
    IsChain s.memory fs

theorem chainOf_unique {s : State σ} {fs fs' : List Frame} (h : ChainOf s fs)
    (h' : ChainOf s fs') : fs = fs' := by
  obtain ⟨e, c, rest, rfl, he, hc, hch⟩ := h
  obtain ⟨e', c', rest', rfl, he', hc', hch'⟩ := h'
  rw [he] at he'
  rw [hc] at hc'
  cases he'
  cases hc'
  exact isChain_unique hch hch' rfl

/-! ## The measure -/

/-- The weight of a frame. -/
def wt (m : Mem) (f : Frame) : Nat :=
  (fld m f.1 evGasLeft).toNat + (fld m f.1 evSpilled).toNat + 1 +
    (if fld m f.2 ckDone = 0 ∧ fld m f.1 evRunning ≠ 0 then 1 else 0)

def wsum (m : Mem) (fs : List Frame) : Nat := (fs.map (wt m)).sum

open Classical in
/-- **The measure `Φ`**: the weight of the chain (design §2.1). -/
noncomputable def Phi (s : State σ) : Nat :=
  if h : ∃ fs, ChainOf s fs then wsum s.memory (Classical.choose h) else 0

theorem phi_eq {s : State σ} {fs : List Frame} (h : ChainOf s fs) : Phi s = wsum s.memory fs := by
  have hex : ∃ fs, ChainOf s fs := ⟨fs, h⟩
  unfold Phi
  rw [dif_pos hex, chainOf_unique (Classical.choose_spec hex) h]

theorem wt_pos (m : Mem) (f : Frame) : 1 ≤ wt m f := by
  unfold wt; omega

theorem length_le_wsum (m : Mem) (fs : List Frame) : fs.length ≤ wsum m fs := by
  induction fs with
  | nil => simp [wsum]
  | cons f fs ih =>
      have := wt_pos m f
      simp only [wsum, List.map_cons, List.sum_cons, List.length_cons] at ih ⊢
      omega

theorem phi_locFree : LocFreeN (σ := σ) Phi := fun _ _ _ => rfl

/-! ## The chain invariant -/

/-! ## The release invariant

`finish_child` releases scratch to the child's `CK_MARK` and frame memory to its `CK_MEM_MARK`.
The objects that survive are the `Above` ones; `MarkOK` says that the release keeps `G` for them
(no object straddles a mark, the surviving EV records keep their stack / memory, a surviving
object keeps the array directly below it). -/

/-- `o` survives a release of scratch to `mk` and of frame memory to `mm`. -/
def Above (C : Cfg) (mk mm : Nat) (o : Obj) : Prop :=
  match (C.ty o.ty).region with
  | .heap => True
  | .scratch => mk ≤ o.lo
  | .fmem => o.hi ≤ mm

/-- Array types whose objects a hook of the object directly above may depend on (the scratch
hash-table and list arrays `Types.tHTAs`, `Types.tLSTAs`). -/
def adjTys : List Nat := [14, 18]

/-- **The release invariant** for the marks `mk` / `mm`. -/
structure MarkOK (C : Cfg) (tEV : Nat) (Γ : Gam) (s : State σ) (mk mm : Nat) : Prop where
  rg : (C.ty tEV).region = .scratch ∧ ∀ t ∈ adjTys, (C.ty t).region = .scratch
  ptrs : ∀ p, ptrsOf s = some p → p.sp < mk ∧ mm ≤ p.fp
  mkB : mk % 8 = 0 ∧ mk ≤ scratchEnd
  mmB : mm % 8 = 0 ∧ heapEnd ≤ mm
  split : ∀ o ∈ Γ, ((C.ty o.ty).region = .scratch → o.hi ≤ mk ∨ mk ≤ o.lo) ∧
    ((C.ty o.ty).region = .fmem → o.hi ≤ mm ∨ mm ≤ o.lo)
  evDeps : ∀ e ∈ Γ, e.ty = tEV → Above C mk mm e →
    (∃ x ∈ Γ, x.base = fld s.memory e.base 8 ∧ Above C mk mm x) ∧
    (∃ x ∈ Γ, x.base = fld s.memory e.base 24 ∧ Above C mk mm x)
  adj : ∀ o ∈ Γ, Above C mk mm o → ∀ x ∈ Γ, x.ty ∈ adjTys → x.hi = o.lo → Above C mk mm x

/-- The scratch mark of a continuation record. -/
def mkOf (m : Mem) (c : BitVec 64) : Nat := (fld m c ckMark).toNat
/-- The frame-memory mark of a continuation record. -/
def mmOf (m : Mem) (c : BitVec 64) : Nat := (fld m c ckMemMark).toNat

/-- The records of the frame `f` survive the release to `mk` / `mm`. -/
def FrameAbove (C : Cfg) (tEV tCK : Nat) (Γ : Gam) (mk mm : Nat) (f : Frame) : Prop :=
  ∀ o ∈ Γ, (o.base = f.1 ∧ o.ty = tEV) ∨ (o.base = f.2 ∧ o.ty = tCK) → Above C mk mm o

/-- The release facts of the child frame `ch` with parent `pa` (and the frames `l2` above): the
invariant for its marks, the EV records of `ch` and the frames below (`l1`) do not survive, the
frames above do, the marks are below those of every child frame above, and the frame mark is
below `frame_mem_ptr`. -/
def ChildMarks (C : Cfg) (tEV tCK : Nat) (Γ : Gam) (s : State σ) (l1 : List Frame) (ch pa : Frame)
    (l2 : List Frame) : Prop :=
  MarkOK C tEV Γ s (mkOf s.memory ch.2) (mmOf s.memory ch.2) ∧
  (∀ f ∈ l1 ++ [ch], ∀ o ∈ Γ, o.base = f.1 → o.ty = tEV →
    ¬ Above C (mkOf s.memory ch.2) (mmOf s.memory ch.2) o) ∧
  (∀ f ∈ pa :: l2, FrameAbove C tEV tCK Γ (mkOf s.memory ch.2) (mmOf s.memory ch.2) f) ∧
  (∀ l3 f l4, pa :: l2 = l3 ++ f :: l4 → l4 ≠ [] →
    mkOf s.memory ch.2 < mkOf s.memory f.2 ∧ mmOf s.memory f.2 < mmOf s.memory ch.2) ∧
  (∀ p, ptrsOf s = some p → mmOf s.memory ch.2 < p.fp)

/-- `set_retdata`'s buffer: `RETDATA_CAP = 0`, or `RETDATA` is an all-scalar heap object of `Γ`
of at least `RETDATA_CAP` bytes. -/
def RetOK (C : Cfg) (Γ : Gam) (m : Mem) (e : BitVec 64) : Prop :=
  fld m e evRetdCap = 0 ∨ ∃ o ∈ Γ, o.base = fld m e evRetd ∧ (∀ k, (C.ty o.ty).slot k = .scalar) ∧
    (C.ty o.ty).region = .heap ∧ (fld m e evRetdCap).toNat ≤ o.size

/-- `ch` is the child of `pa` in `fs`. -/
def Adj (fs : List Frame) (ch pa : Frame) : Prop := ∃ l1 l2, fs = l1 ++ ch :: pa :: l2

/-- The chain invariant for the chain `fs` of `s` under the typing `Γ`. -/
structure ChainL (C : Cfg) (tEV tCK : Nat) (Γ : Gam) (s : State σ) (fs : List Frame) :
    Prop where
  chain : ChainOf s fs
  objs : ∀ f ∈ fs, (∃ o ∈ Γ, o.base = f.1 ∧ o.ty = tEV) ∧ (∃ o ∈ Γ, o.base = f.2 ∧ o.ty = tCK)
  nodupE : (fs.map Prod.fst).Nodup
  nodupC : (fs.map Prod.snd).Nodup
  stack : ∀ ch pa, Adj fs ch pa →
    (fld s.memory pa.1 evSp).toNat < (fld s.memory pa.1 evStackCap).toNat
  memMark : ∀ ch pa, Adj fs ch pa →
    (fld s.memory ch.2 ckMemMark).toNat =
      (fld s.memory pa.1 evMem).toNat + (fld s.memory pa.1 evMemCap).toNat
  outRange : ∀ ch pa, Adj fs ch pa → fld s.memory ch.2 ckOutSize = 0 ∨
    (fld s.memory ch.2 ckOutStart).toNat + (fld s.memory ch.2 ckOutSize).toNat ≤
      (fld s.memory pa.1 evMemLen).toNat
  /-- The running frame's memory ends at `frame_mem_ptr` (`extend_memory`'s precondition). -/
  topMem : ∀ e c rest, fs = (e, c) :: rest → ∀ p, ptrsOf s = some p →
    (fld s.memory e evMem).toNat + (fld s.memory e evMemCap).toNat = p.fp
  /-- The release invariant of every child frame. -/
  marks : ∀ l1 ch pa l2, fs = l1 ++ ch :: pa :: l2 → ChildMarks C tEV tCK Γ s l1 ch pa l2
  /-- `set_retdata`'s buffer of every frame. -/
  retd : ∀ f ∈ fs, RetOK C Γ s.memory f.1

/-- **The chain invariant** (`Chain` of the loop invariant `I`). -/
def Chain (C : Cfg) (tEV tCK : Nat) (Γ : Gam) (s : State σ) : Prop :=
  ∃ fs, ChainL C tEV tCK Γ s fs

theorem chainOf_congr {s s' : State σ} (hm : s'.memory = s.memory)
    (hg : s'.globals = s.globals) {fs : List Frame} (h : ChainOf s fs) : ChainOf s' fs := by
  obtain ⟨e, c, rest, h1, h2, h3, h4⟩ := h
  exact ⟨e, c, rest, h1, by rw [gword_congr hg]; exact h2, by rw [gword_congr hg]; exact h3,
    by rw [hm]; exact h4⟩

theorem markOK_congr {C : Cfg} {tEV : Nat} {Γ : Gam} {s s' : State σ} {mk mm : Nat}
    (hm : s'.memory = s.memory) (hp : ptrsOf s' = ptrsOf s) (h : MarkOK C tEV Γ s mk mm) :
    MarkOK C tEV Γ s' mk mm :=
  ⟨h.rg, fun p hq => h.ptrs p (hp ▸ hq), h.mkB, h.mmB, h.split, by rw [hm]; exact h.evDeps, h.adj⟩

/-- The chain invariant depends only on the memory and the globals. -/
theorem chainL_congr {C : Cfg} {tEV tCK : Nat} {Γ : Gam} {s s' : State σ}
    (hm : s'.memory = s.memory) (hg : s'.globals = s.globals) {fs : List Frame}
    (h : ChainL C tEV tCK Γ s fs) : ChainL C tEV tCK Γ s' fs := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10⟩ := h
  have hpp : ptrsOf s' = ptrsOf s := by unfold ptrsOf gword; rw [hg]
  refine ⟨chainOf_congr hm hg h1, h2, h3, h4, by rw [hm]; exact h5, by rw [hm]; exact h6,
    by rw [hm]; exact h7, fun e c rest hfs p hp => ?_, fun l1 ch pa l2 he => ?_,
    by rw [hm]; exact h10⟩
  · rw [hpp] at hp
    rw [hm]; exact h8 e c rest hfs p hp
  · unfold ChildMarks
    rw [hm]
    obtain ⟨a, b, c, d, e⟩ := h9 l1 ch pa l2 he
    exact ⟨markOK_congr hm hpp a, b, c, d, fun p hp => e p (hpp ▸ hp)⟩

theorem chain_congr {C : Cfg} {tEV tCK : Nat} {Γ : Gam} {s s' : State σ}
    (hm : s'.memory = s.memory) (hg : s'.globals = s.globals) (h : Chain C tEV tCK Γ s) :
    Chain C tEV tCK Γ s' :=
  let ⟨fs, h⟩ := h; ⟨fs, chainL_congr hm hg h⟩

theorem chain_locFree {C : Cfg} {tEV tCK : Nat} {Γ : Gam} :
    LocFree (σ := σ) (Chain C tEV tCK Γ) := fun _ _ _ =>
  ⟨chain_congr rfl rfl, chain_congr rfl rfl⟩

end InitECandidate.Solver.MemSafe.Frames
