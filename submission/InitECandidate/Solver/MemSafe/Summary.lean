import InitECandidate.Solver.Spec.HoareG
import InitECandidate.Solver.Spec.Inv.CostI
import InitECandidate.Solver.Spec.Code

/-!
# The frozen memory-safety interface (M0)

Every function summary of the memory-safety framework — checker-generated or hand-proved
(helpers, structures, frames, MPT) — is stated in the shape below. Design and rationale:
scratchpad `memsafety-design.md`; usage notes: scratchpad `memsafe-interface.md`.

* **Configuration** `Cfg` (computable, read by the checker): the type table `T` (per type:
  region, slot kinds, minimum size), the typed globals `GT`, the protected globals `PG`
  (written only by hand-verified code, e.g. `ev`, `cur_cont`, `journal_n`).
* **Slot kinds** `FK`: `scalar` (any word), `ptr t` / `nptr t` (base of a `Γ` object of type
  `t`; `nptr` also allows values `< nullMax = 2^16`, which every dereference turns into an
  error),
  `uptr ts` (nullable tagged union: the object's type is selected by the word at its base,
  e.g. MPT nodes), `bnd` (a word below `2^32`: the frame's `EV_OUTPUT_N`, eon), `prot` (written only by hand-verified code).
* **Ghost heap typing** `Γ : Gam`, a list of objects `⟨base, type, size⟩`.
* **The invariant** `G C H Γ s`: the allocator pointers are ordered (`Ptrs.Ordered`:
  `heapBase ≤ heap_ptr ≤ heapEnd ≤ frame_mem_ptr ≤ scratch_ptr ≤ scratchEnd`, all 8-aligned);
  objects are aligned, at least `minSz`, inside the live part of their region and pairwise
  disjoint (`Layout`); every non-`prot` slot fits its kind (`Fields`); typed globals fit
  (`Globs`); every object satisfies the per-type hook `H.wf` (TableWF, LST/journal/EV
  invariants, ...). Hooks must be `HooksLawful`: they may depend only on `prot` cells of `Γ`
  objects, the protected globals, `memaddrs` and `be`.
* **Summaries** `SumSpec σ X C H f sg Pre PW Q`: a `FunSpec` (`Spec/HoareExt.lean`) over every
  good result — returns *and exceptions* (`run_frames` catches `EvmErr`). From `G C H Γ s`,
  arguments fitting `sg.params` and the extra precondition `Pre`, the call ends in `G C H Γ' t`
  for an extension `Γ'` of `Γ` (new objects only in fresh space), the allocator pointers move
  monotonically, memory changes only in non-`prot` cells of `Γ` objects, the argument
  buffers, cells unallocated at entry and the declared protected cells `PW`, protected
  globals outside
  `sg.gw` keep their values, the result fits `sg.ret` (`SumCore`), and the extra post `Q`
  (which may mention `Γ'`) holds.
  `Summ` is the plain case (`Pre = True`, `PW = ∅`, `Q = True`) the checker produces.
* **Costs** use `Spec.Inv.CostP` / `Spec.Inv.CalleeCostP` (`Spec/Inv/CostI.lean`), never
  `Spec.CostP`. `CondCost` is the conditional table entry under `G`.
* **Built-in allocator specs** (`AllocSpec`, `MarkSpec`, `ReleaseSpec`) are stated here and
  proved in `MemSafe/Alloc.lean`.
* `G_frame`: `G` survives any memory change outside all `Γ` objects (temporaries), with the
  allocator state and the typed/protected globals unchanged.

`Mem`, `rd`, `InR` and `ModifiesOnly` are definitionally those of `Spec.Inv` (htab specs), so
`Spec.Inv.ModifiesOnly (TableRegion m T) m m'` is used as is.
-/

namespace InitECandidate.Solver.MemSafe
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

abbrev State (σ : Type) := PanSemStateFiniteExact 64 σ

/-! ## Memory (as `Spec.Inv`) -/

abbrev Mem := BitVec 64 → HolWordLab 64

/-- The word in cell `a`. -/
def rd (m : Mem) (a : BitVec 64) : BitVec 64 :=
  match m a with
  | .word w => w

/-- `a` lies in the byte range `[base, base + len)`. -/
def InR (a base : BitVec 64) (len : Nat) : Prop := base.toNat ≤ a.toNat ∧ a.toNat < base.toNat + len

/-- `m'` agrees with `m` outside `R`. -/
def ModifiesOnly (R : BitVec 64 → Prop) (m m' : Mem) : Prop := ∀ a, ¬ R a → m' a = m a

theorem ModifiesOnly.mono {R R' : BitVec 64 → Prop} {m m' : Mem} (h : ModifiesOnly R m m')
    (hR : ∀ a, R a → R' a) : ModifiesOnly R' m m' := fun a ha => h a (fun hr => ha (hR a hr))

theorem ModifiesOnly.trans {R : BitVec 64 → Prop} {m m' m'' : Mem} (h : ModifiesOnly R m m')
    (h' : ModifiesOnly R m' m'') : ModifiesOnly R m m'' := fun a ha => (h' a ha).trans (h a ha)

/-! ## Layout (`config.h`) and the allocator state -/

def heapBase : Nat := 2701131776   -- 0xa1000000 = HEAP_BASE = @base
def heapEnd : Nat := 2952790016    -- 0xb0000000 = HEAP_END = SCRATCH_BASE
def scratchEnd : Nat := 2965299200 -- 0xb0bee000 = SCRATCH_END
/-- Null-like values of nullable slots (`0`, `ACCT_NONE = 1`, ...) are below `nullMax`; a
dereference at such a value plus an offset below `heapBase - nullMax` leaves the memory
domain and errors (`NullSafe`). -/
def nullMax : Nat := 65536

def gHeap : MlS := nm "heap_ptr"
def gFrame : MlS := nm "frame_mem_ptr"
def gScratch : MlS := nm "scratch_ptr"

/-- The word value of a global. -/
def gword {σ : Type} (s : State σ) (g : MlS) : Option (BitVec 64) :=
  match s.globals.lookup g with
  | some (.val (.word w)) => some w
  | _ => none

/-- The three allocator pointers (`heap_ptr`, `frame_mem_ptr`, `scratch_ptr`). -/
structure Ptrs where
  hp : Nat
  fp : Nat
  sp : Nat

def ptrsOf {σ : Type} (s : State σ) : Option Ptrs :=
  match gword s gHeap, gword s gFrame, gword s gScratch with
  | some h, some f, some p => some ⟨h.toNat, f.toNat, p.toNat⟩
  | _, _, _ => none

/-- Allocator discipline. -/
def Ptrs.Ordered (p : Ptrs) : Prop :=
  heapBase ≤ p.hp ∧ p.hp ≤ heapEnd ∧ heapEnd ≤ p.fp ∧ p.fp ≤ p.sp ∧ p.sp ≤ scratchEnd ∧
    p.hp % 8 = 0 ∧ p.fp % 8 = 0 ∧ p.sp % 8 = 0

/-- `AllocOK`: the allocator pointers exist and are ordered (the MPT loops' precondition). -/
def AllocOK {σ : Type} (s : State σ) : Prop := ∃ p, ptrsOf s = some p ∧ p.Ordered

/-- Monotone allocator moves (no net release). -/
def Ptrs.Mono (p p' : Ptrs) : Prop := p.hp ≤ p'.hp ∧ p.fp ≤ p'.fp ∧ p'.sp ≤ p.sp

/-- Byte `a` is allocated: live heap, live frame memory or live scratch. -/
def Ptrs.Allocated (p : Ptrs) (a : Nat) : Prop :=
  (heapBase ≤ a ∧ a < p.hp) ∨ (heapEnd ≤ a ∧ a < p.fp) ∨ (p.sp ≤ a ∧ a < scratchEnd)

/-- Cell `a` was allocated between `p` and `p'`. -/
def Fresh (p p' : Ptrs) (a : BitVec 64) : Prop :=
  (p.hp ≤ a.toNat ∧ a.toNat < p'.hp) ∨ (p.fp ≤ a.toNat ∧ a.toNat < p'.fp) ∨
    (p'.sp ≤ a.toNat ∧ a.toNat < p.sp)

inductive Region where
  | heap
  | fmem
  | scratch
  deriving DecidableEq, Repr

/-- `[b, b + n)` lies in the live part of the region. -/
def Region.Live (p : Ptrs) : Region → Nat → Nat → Prop
  | .heap, b, n => heapBase ≤ b ∧ b + n ≤ p.hp
  | .fmem, b, n => heapEnd ≤ b ∧ b + n ≤ p.fp
  | .scratch, b, n => p.sp ≤ b ∧ b + n ≤ scratchEnd

/-! ## Types -/

inductive FK where
  | scalar
  | ptr (t : Nat)
  | nptr (t : Nat)
  | uptr (ts : List Nat)
  | bnd
  | prot
  deriving DecidableEq, Repr

/-- An object type: region, kinds of the first slots, kind of all later slots, minimum size. -/
structure TyD where
  region : Region
  fixed : List FK
  rest : FK
  minSz : Nat
  deriving Repr

instance : Inhabited TyD := ⟨⟨.heap, [], .prot, 0⟩⟩

def TyD.slot (d : TyD) (k : Nat) : FK := d.fixed.getD k d.rest

/-- The checker's configuration. `tags`: `(type, tag)` for the members of `uptr` unions; the
tag is the word in slot 0 (which must be `prot`). -/
structure Cfg where
  T : List TyD
  GT : List (MlS × FK)
  PG : List MlS
  tags : List (Nat × Nat) := []

def Cfg.ty (C : Cfg) (t : Nat) : TyD := C.T.getD t default

/-- A ghost object. -/
structure Obj where
  base : BitVec 64
  ty : Nat
  size : Nat

abbrev Gam := List Obj

def Obj.lo (o : Obj) : Nat := o.base.toNat
def Obj.hi (o : Obj) : Nat := o.base.toNat + o.size

/-- Slot `k` of `o` (byte offset `8 k`). -/
def Obj.cell (o : Obj) (k : Nat) : BitVec 64 := o.base + BitVec.ofNat 64 (8 * k)

def Obj.HasSlot (o : Obj) (k : Nat) : Prop := 8 * k + 8 ≤ o.size

/-- Byte `a` lies in some object of `Γ`. -/
def InObj (Γ : Gam) (a : Nat) : Prop := ∃ o ∈ Γ, o.lo ≤ a ∧ a < o.hi

/-- The word `v` fits the slot kind `k`. -/
def Fits (Γ : Gam) : FK → BitVec 64 → Prop
  | .scalar, _ => True
  | .prot, _ => True
  | .ptr t, v => ∃ o ∈ Γ, o.base = v ∧ o.ty = t
  | .nptr t, v => v.toNat < nullMax ∨ ∃ o ∈ Γ, o.base = v ∧ o.ty = t
  | .uptr ts, v => v.toNat < nullMax ∨ ∃ o ∈ Γ, o.base = v ∧ o.ty ∈ ts
  | .bnd, v => v.toNat < 2 ^ 32

/-! ## The invariant -/

def Layout (C : Cfg) (p : Ptrs) (Γ : Gam) : Prop :=
  (∀ o ∈ Γ, o.lo % 8 = 0 ∧ o.size % 8 = 0 ∧ 0 < o.size ∧ (C.ty o.ty).minSz ≤ o.size ∧
    (C.ty o.ty).region.Live p o.lo o.size) ∧
  ∀ (i j : Nat) (hi : i < Γ.length) (hj : j < Γ.length), i ≠ j →
    Γ[i].hi ≤ Γ[j].lo ∨ Γ[j].hi ≤ Γ[i].lo

def Fields (C : Cfg) (Γ : Gam) (m : Mem) : Prop :=
  ∀ o ∈ Γ, ∀ k, o.HasSlot k → Fits Γ ((C.ty o.ty).slot k) (rd m (o.cell k))

/-- Tagged objects carry their tag in slot 0. -/
def Tags (C : Cfg) (Γ : Gam) (m : Mem) : Prop :=
  ∀ o ∈ Γ, ∀ tag, C.tags.lookup o.ty = some tag → rd m o.base = BitVec.ofNat 64 tag

def Globs {σ : Type} (C : Cfg) (Γ : Gam) (s : State σ) : Prop :=
  ∀ g k, C.GT.lookup g = some k → ∃ v, gword s g = some v ∧ Fits Γ k v

/-- Per-object well-formedness hooks (TableWF, LST, journal, EV, MPT node invariants, ...):
`wf Γ s o`, reading only the cells `fp Γ s o` (e.g. `TableRegion` for a table header). -/
structure Hooks (σ : Type) where
  wf : Gam → State σ → Obj → Prop
  fp : Gam → State σ → Obj → BitVec 64 → Prop

/-- **The global heap invariant.** -/
def G {σ : Type} (C : Cfg) (H : Hooks σ) (Γ : Gam) (s : State σ) : Prop :=
  ∃ p, ptrsOf s = some p ∧ p.Ordered ∧ Layout C p Γ ∧ Fields C Γ s.memory ∧
    Tags C Γ s.memory ∧ Globs C Γ s ∧ ∀ o ∈ Γ, H.wf Γ s o

/-! ## Cells and the hook laws -/

/-- A `prot` cell of an object of `Γ`. -/
def ProtCell (C : Cfg) (Γ : Gam) (a : BitVec 64) : Prop :=
  ∃ o ∈ Γ, ∃ k, o.HasSlot k ∧ (C.ty o.ty).slot k = .prot ∧ a = o.cell k

/-- A non-`prot` cell of an object of `Γ` (writable by checked code, type-correctly). -/
def WCell (C : Cfg) (Γ : Gam) (a : BitVec 64) : Prop :=
  ∃ o ∈ Γ, ∃ k, o.HasSlot k ∧ (C.ty o.ty).slot k ≠ .prot ∧ a = o.cell k

/-- A `scalar` cell of an object of `Γ` (writable with any data). -/
def SCell (C : Cfg) (Γ : Gam) (a : BitVec 64) : Prop :=
  ∃ o ∈ Γ, ∃ k, o.HasSlot k ∧ (C.ty o.ty).slot k = .scalar ∧ a = o.cell k

/-- Hook laws: a hook's cells are `prot` cells of `Γ` objects, and the hook (and its cell set)
survives every change that keeps those cells, the protected globals, `memaddrs` and `be`
(the shape of `tableWF_frame`). -/
def HooksLawful {σ : Type} (C : Cfg) (H : Hooks σ) : Prop :=
  (∀ Γ (s : State σ) o a, o ∈ Γ → H.wf Γ s o → H.fp Γ s o a → ProtCell C Γ a) ∧
  ∀ Γ (s s' : State σ) o, H.wf Γ s o → s'.memaddrs = s.memaddrs → s'.be = s.be →
    (∀ a, H.fp Γ s o a → s'.memory a = s.memory a) →
    (∀ g ∈ C.PG, s'.globals.lookup g = s.globals.lookup g) →
      H.wf Γ s' o ∧ H.fp Γ s' o = H.fp Γ s o

/-- `Γ'` keeps every object of `Γ` (same base and type, size not smaller). -/
def Ext (Γ Γ' : Gam) : Prop := ∀ o ∈ Γ, ∃ o' ∈ Γ', o'.base = o.base ∧ o'.ty = o.ty ∧ o.size ≤ o'.size

/-- Every cell of a `Γ'` object lies in a `Γ` object of the same base and type (an old
object, possibly grown) or was allocated between `p` and `p'`: objects are created, and grow,
only in fresh space. -/
def NewFresh (Γ Γ' : Gam) (p p' : Ptrs) : Prop :=
  ∀ o ∈ Γ', ∀ a : BitVec 64, o.lo ≤ a.toNat → a.toNat < o.hi →
    (∃ o0 ∈ Γ, o0.base = o.base ∧ o0.ty = o.ty ∧ o0.lo ≤ a.toNat ∧ a.toNat < o0.hi) ∨
      Fresh p p' a

/-! ## Arguments and results -/

/-- The aligned cell `a` overlaps the byte range `[b, b + n)`. -/
def Overlap (b n : Nat) (a : BitVec 64) : Prop := a.toNat % 8 = 0 ∧ b < a.toNat + 8 ∧ a.toNat < b + n

/-- `n` bytes at `b` may be written with arbitrary data: every overlapped cell is a `scalar`
cell of a `Γ` object, or an allocated cell outside all `Γ` objects (a caller temporary). -/
def BufOK (C : Cfg) (Γ : Gam) (p : Ptrs) (b n : Nat) : Prop :=
  ∀ a, Overlap b n a → SCell C Γ a ∨ (¬ InObj Γ a.toNat ∧ p.Allocated a.toNat)

def wordOf : ValueHOL 64 → Option (BitVec 64)
  | .val (.word w) => some w
  | _ => none

/-- Parameter types. -/
inductive PT where
  | any                        -- no constraint (scalars, structs, read-only pointers)
  | fits (k : FK)              -- one word fitting `k`
  | buf (n : Nat)              -- pointer to `n` writable bytes
  | bufArg (i c d : Nat)       -- pointer to `c * (word argument i) + d` writable bytes
  | eq (c : Nat)               -- exactly the word `c` (signature instances)
  deriving DecidableEq, Repr

def argW (vs : List (ValueHOL 64)) (i : Nat) : Option (BitVec 64) :=
  match vs[i]? with
  | some v => wordOf v
  | none => none

def ArgOK (C : Cfg) (Γ : Gam) (p : Ptrs) (vs : List (ValueHOL 64)) :
    PT → ValueHOL 64 → Prop
  | .any, _ => True
  | .fits k, v => ∃ w, wordOf v = some w ∧ Fits Γ k w
  | .buf n, v => ∃ w, wordOf v = some w ∧ BufOK C Γ p w.toNat n
  | .bufArg i c d, v => ∃ w x, wordOf v = some w ∧ argW vs i = some x ∧
      BufOK C Γ p w.toNat (c * x.toNat + d)
  | .eq c, v => wordOf v = some (BitVec.ofNat 64 c)

def ArgsOK (C : Cfg) (Γ : Gam) (p : Ptrs) (ps : List PT) (vs : List (ValueHOL 64)) : Prop :=
  ps.length = vs.length ∧ ∀ (i : Nat) (pt : PT) (v : ValueHOL 64), ps[i]? = some pt →
    vs[i]? = some v → ArgOK C Γ p vs pt v

/-- The cells covered by the argument buffers. -/
def ArgCells (ps : List PT) (vs : List (ValueHOL 64)) (a : BitVec 64) : Prop :=
  ∃ i w, argW vs i = some w ∧
    ((∃ n, ps[i]? = some (.buf n) ∧ Overlap w.toNat n a) ∨
      (∃ j c d x, ps[i]? = some (.bufArg j c d) ∧ argW vs j = some x ∧
        Overlap w.toNat (c * x.toNat + d) a))

/-- Result types (per word of the flattened result; missing entries: no constraint). -/
inductive RT where
  | any
  | fits (k : FK)
  | fresh (n : Nat)            -- an 8-aligned fresh allocation of `n` bytes, outside `Γ'`
  | freshArg (i c d : Nat)     -- the same, of `c * (word argument i) + d` bytes
  deriving DecidableEq, Repr

def FreshBuf (Γ' : Gam) (p p' : Ptrs) (w : BitVec 64) (n : Nat) : Prop :=
  w.toNat % 8 = 0 ∧ ∀ a, Overlap w.toNat n a → Fresh p p' a ∧ ¬ InObj Γ' a.toNat

def RetOK (Γ' : Gam) (p p' : Ptrs) (vs : List (ValueHOL 64)) (rt : List RT)
    (v : ValueHOL 64) : Prop :=
  ∀ (i : Nat) (r : RT) (w : BitVec 64), rt[i]? = some r →
    (flattenHOL v)[i]? = some (HolWordLab.word w) →
    match r with
    | .any => True
    | .fits k => Fits Γ' k w
    | .fresh n => FreshBuf Γ' p p' w n
    | .freshArg j c d => ∃ x, argW vs j = some x ∧ FreshBuf Γ' p p' w (c * x.toNat + d)

/-- A signature. `gw`: protected globals the function may write (hand-verified only).
`grows := false` promises that `Γ'` has no cells outside the objects of `Γ` (no new or grown
objects), which callers need inside heap/scratch windows. -/
structure Sig where
  params : List PT
  ret : List RT := []
  gw : List MlS := []
  grows : Bool := true
  deriving Repr

/-! ## Summaries -/

/-- The core post of every summary, for the post typing `Γ'` and allocator states `p`, `p'`.
`PW`: the extra (protected) cells it may write. -/
def SumCore {σ : Type} (C : Cfg) (H : Hooks σ) (sg : Sig) (PW : BitVec 64 → Prop) (Γ : Gam)
    (s : State σ) (vs : List (ValueHOL 64)) (r : PanSemResultExact 64) (t : State σ)
    (Γ' : Gam) (p p' : Ptrs) : Prop :=
  ptrsOf s = some p ∧ ptrsOf t = some p' ∧ p.Mono p' ∧ Ext Γ Γ' ∧ NewFresh Γ Γ' p p' ∧
    G C H Γ' t ∧
    ModifiesOnly (fun a => WCell C Γ a ∨ ArgCells sg.params vs a ∨ ¬ p.Allocated a.toNat ∨ PW a)
      s.memory t.memory ∧
    (∀ g ∈ C.PG, g ∉ sg.gw → t.globals.lookup g = s.globals.lookup g) ∧
    (sg.grows = false → NewFresh Γ Γ' p p)  ∧
    ∀ v, r = .returned v → RetOK Γ' p p' vs sg.ret v

/-- **The frozen summary shape.** For every good result (returns and exceptions): from `G`,
fitting arguments and `Pre`, the call ends with `SumCore` for some `Γ'` (writing at most the
`prot` cells `PW` selects, beyond the default footprint) and the extra post `Q`, which may
mention `Γ'`. -/
def SumSpec (σ : Type) (X : Ctx 64) (C : Cfg) (H : Hooks σ) (f : MlS) (sg : Sig)
    (Pre : List (ValueHOL 64) → State σ → Gam → Prop)
    (PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop)
    (Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop) :
    Prop :=
  FunSpec σ X f (fun vs s r t => Good (some r) → ∀ Γ, G C H Γ s →
    (∃ p, ptrsOf s = some p ∧ ArgsOK C Γ p sg.params vs) → Pre vs s Γ →
      ∃ Γ' p p', SumCore C H sg (fun a => ProtCell C Γ a ∧ PW vs s Γ a) Γ s vs r t Γ' p p' ∧
        Q vs s Γ r t Γ')

/-- The plain summary (what the checker produces and consumes). -/
def Summ (σ : Type) (X : Ctx 64) (C : Cfg) (H : Hooks σ) (f : MlS) (sg : Sig) : Prop :=
  SumSpec σ X C H f sg (fun _ _ _ => True) (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)

/-- A summary table (several signatures per function = instances). -/
abbrev SumTab := List (MlS × Sig)

def TabSound (σ : Type) (X : Ctx 64) (C : Cfg) (H : Hooks σ) (tab : SumTab) : Prop :=
  ∀ f sg, (f, sg) ∈ tab → Summ σ X C H f sg

/-- **Conditional cost under `G`** (`Spec.Inv.CalleeCostP`): every body of `f`, run from a
state satisfying `G`, fitting arguments and `Pre`, costs at most `B`. -/
def CondCost (σ : Type) (X : Ctx 64) (C : Cfg) (H : Hooks σ) (f : MlS) (sg : Sig)
    (Pre : List (ValueHOL 64) → State σ → Gam → Prop) (B : Nat) : Prop :=
  Spec.Inv.CalleeCostP σ X f (fun vs s => ∃ Γ p, G C H Γ s ∧ ptrsOf s = some p ∧
    ArgsOK C Γ p sg.params vs ∧ Pre vs s Γ) B

/-- The memory domain lies above `heapBase`: dereferencing a value `< heapBase` plus an
offset below `heapBase` errors (what makes `nptr` / `uptr` null values safe). -/
def NullSafe (X : Ctx 64) : Prop := ∀ a, X.memaddrs a → heapBase ≤ a.toNat

/-! ## Built-in allocator specifications (proved in `MemSafe/Alloc.lean`) -/

/-- The allocator global of a region. -/
def Region.global : Region → MlS
  | .heap => gHeap
  | .fmem => gFrame
  | .scratch => gScratch

/-- `alloc` / `frame_mem_alloc` / `scratch_alloc` (`fn`, allocating in region `rg`): memory
and all other globals unchanged; the allocator state stays ordered and moves monotonically;
a return is an 8-aligned block of `n` bytes inside the live part of `rg` that was free
before. (A good non-return is the `TrapErr` exception, with the state unchanged.) -/
def AllocSpec (σ : Type) (X : Ctx 64) (fn : MlS) (rg : Region) : Prop :=
  FunSpec σ X fn (fun vs s r t => Good (some r) → ∀ n p, vs = [.val (.word n)] →
    ptrsOf s = some p → p.Ordered →
      t.memory = s.memory ∧ (∀ g, g ≠ rg.global → t.globals.lookup g = s.globals.lookup g) ∧
      ∃ p', ptrsOf t = some p' ∧ p'.Ordered ∧ p.Mono p' ∧
        ∀ v, r = .returned v → ∃ q, v = .val (.word q) ∧ q.toNat % 8 = 0 ∧
          rg.Live p' q.toNat n.toNat ∧ ∀ a, q.toNat ≤ a → a < q.toNat + n.toNat →
            ¬ p.Allocated a)

/-- `heap_mark` / `frame_mem_mark` / `scratch_mark`: return the allocator global `g`,
nothing else changes. -/
def MarkSpec (σ : Type) (X : Ctx 64) (fn g : MlS) : Prop :=
  FunSpec σ X fn (fun vs s r t => Good (some r) → vs = [] →
    t.memory = s.memory ∧ t.globals = s.globals ∧
      ∀ v, r = .returned v → ∃ w, gword s g = some w ∧ v = .val (.word w))

/-- `heap_release` / `frame_mem_release` / `scratch_release`: set the allocator global `g` to
the argument, nothing else changes. -/
def ReleaseSpec (σ : Type) (X : Ctx 64) (fn g : MlS) : Prop :=
  FunSpec σ X fn (fun vs s r t => Good (some r) → ∀ w, vs = [.val (.word w)] →
    t.memory = s.memory ∧ t.globals.lookup g = some (.val (.word w)) ∧
      ∀ g', g' ≠ g → t.globals.lookup g' = s.globals.lookup g')

/-! ## Cells and framing `G` -/

theorem cell_toNat {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    {o : Obj} (ho : o ∈ Γ) {k : Nat} (hk : o.HasSlot k) :
    (o.cell k).toNat = o.lo + 8 * k ∧ o.lo + o.size ≤ scratchEnd := by
  have h1 := (hL.1 o ho).2.2.2.2
  have he : heapEnd ≤ scratchEnd := by decide
  have hs : scratchEnd < 2 ^ 64 := by decide
  unfold Ptrs.Ordered at hord
  have hb : o.lo + o.size ≤ scratchEnd := by
    unfold Region.Live at h1
    split at h1 <;> omega
  unfold Obj.HasSlot at hk
  refine ⟨?_, hb⟩
  unfold Obj.cell Obj.lo at *
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega : 8 * k < 2 ^ 64),
    Nat.mod_eq_of_lt (by omega)]

theorem cell_in {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    {o : Obj} (ho : o ∈ Γ) {k : Nat} (hk : o.HasSlot k) : InObj Γ (o.cell k).toNat := by
  obtain ⟨h1, -⟩ := cell_toNat hord hL ho hk
  unfold Obj.HasSlot at hk
  refine ⟨o, ho, ?_, ?_⟩
  · rw [h1]; omega
  · rw [h1]; unfold Obj.hi Obj.lo; omega

theorem slot0 {C : Cfg} {p : Ptrs} {Γ : Gam} (hL : Layout C p Γ) {o : Obj} (ho : o ∈ Γ) :
    o.HasSlot 0 ∧ o.cell 0 = o.base := by
  have h1 := (hL.1 o ho).2.1
  have h2 := (hL.1 o ho).2.2.1
  refine ⟨by unfold Obj.HasSlot; omega, by simp [Obj.cell]⟩

/-- A cell names one object and slot. -/
theorem cell_inj {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    {o o' : Obj} (ho : o ∈ Γ) (ho' : o' ∈ Γ) {k k' : Nat} (hk : o.HasSlot k)
    (hk' : o'.HasSlot k') (h : o.cell k = o'.cell k') : o = o' ∧ k = k' := by
  have e := congrArg BitVec.toNat h
  obtain ⟨h1, -⟩ := cell_toNat hord hL ho hk
  obtain ⟨h2, -⟩ := cell_toNat hord hL ho' hk'
  rw [h1, h2] at e
  obtain ⟨i, hi, rfl⟩ := List.mem_iff_getElem.mp ho
  obtain ⟨j, hj, rfl⟩ := List.mem_iff_getElem.mp ho'
  unfold Obj.HasSlot at hk hk'
  by_cases hij : i = j
  · subst hij
    exact ⟨rfl, by omega⟩
  · have hd := hL.2 i j hi hj hij
    unfold Obj.lo Obj.hi at *
    omega

/-- **`G` under a write outside `Γ`** (temporaries, fresh allocations). -/
theorem G_frame {σ : Type} {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {Γ : Gam}
    {s t : State σ} (hG : G C H Γ s) (hp : ptrsOf t = ptrsOf s)
    (hglob : ∀ g k, C.GT.lookup g = some k → gword t g = gword s g)
    (hpg : ∀ g ∈ C.PG, t.globals.lookup g = s.globals.lookup g)
    (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be)
    (hm : ∀ a : BitVec 64, InObj Γ a.toNat → t.memory a = s.memory a) : G C H Γ t := by
  obtain ⟨p, hps, hord, hL, hF, hT, hGl, hW⟩ := hG
  refine ⟨p, hp ▸ hps, hord, hL, ?_, ?_, ?_, ?_⟩
  · intro o ho k hk
    have e := hm _ (cell_in hord hL ho hk)
    have hr : rd t.memory (o.cell k) = rd s.memory (o.cell k) := by rw [rd, rd, e]
    rw [hr]
    exact hF o ho k hk
  · intro o ho tag ht
    obtain ⟨h0, hc⟩ := slot0 hL ho
    have e := hm _ (hc ▸ cell_in hord hL ho h0)
    have hr : rd t.memory o.base = rd s.memory o.base := by rw [rd, rd, e]
    rw [hr]
    exact hT o ho tag ht
  · intro g k hk
    obtain ⟨v, hv, hf⟩ := hGl g k hk
    exact ⟨v, (hglob g k hk).trans hv, hf⟩
  · intro o ho
    refine (hH.2 Γ s t o (hW o ho) hd hbe (fun a ha => ?_) hpg).1
    obtain ⟨o', ho', k, hk, _, rfl⟩ := hH.1 Γ s o a ho (hW o ho) ha
    exact hm _ (cell_in hord hL ho' hk)

/-- **`G` under a change of `prot` cells** — the adapter for hand-verified mutators (e.g. the
hash-table API with `R = TableRegion s.memory T`). The changed cells are `prot` cells of `Γ`
objects but no tags; every object whose hook reads a changed cell has its hook re-established
in `t`; all other hooks survive by `HooksLawful`. -/
theorem G_frame_prot {σ : Type} {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {Γ : Gam}
    {s t : State σ} (hG : G C H Γ s) (hp : ptrsOf t = ptrsOf s)
    (hglob : ∀ g k, C.GT.lookup g = some k → gword t g = gword s g)
    (hpg : ∀ g ∈ C.PG, t.globals.lookup g = s.globals.lookup g)
    (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be) {R : BitVec 64 → Prop}
    (hmod : ModifiesOnly R s.memory t.memory) (hR : ∀ a, R a → ProtCell C Γ a)
    (htag : ∀ o ∈ Γ, (C.tags.lookup o.ty).isSome → ¬ R o.base)
    (hwf : ∀ o ∈ Γ, (∃ a, R a ∧ H.fp Γ s o a) → H.wf Γ t o) : G C H Γ t := by
  obtain ⟨p, hps, hord, hL, hF, hT, hGl, hW⟩ := hG
  refine ⟨p, hp ▸ hps, hord, hL, ?_, ?_, ?_, ?_⟩
  · intro o ho k hk
    by_cases hpk : (C.ty o.ty).slot k = .prot
    · rw [hpk]
      exact trivial
    · have hnot : ¬ R (o.cell k) := by
        intro hr
        obtain ⟨o', ho', k', hk', hprot, he⟩ := hR _ hr
        obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho ho' hk hk' he
        exact hpk hprot
      have hr : rd t.memory (o.cell k) = rd s.memory (o.cell k) := by rw [rd, rd, hmod _ hnot]
      rw [hr]
      exact hF o ho k hk
  · intro o ho tag ht
    have hnot := htag o ho (by rw [ht]; rfl)
    have hr : rd t.memory o.base = rd s.memory o.base := by rw [rd, rd, hmod _ hnot]
    rw [hr]
    exact hT o ho tag ht
  · intro g k hk
    obtain ⟨v, hv, hf⟩ := hGl g k hk
    exact ⟨v, (hglob g k hk).trans hv, hf⟩
  · intro o ho
    by_cases hx : ∃ a, R a ∧ H.fp Γ s o a
    · exact hwf o ho hx
    · exact (hH.2 Γ s t o (hW o ho) hd hbe
        (fun a ha => hmod _ (fun hr => hx ⟨a, hr, ha⟩)) hpg).1


/-! ## Revisions 5 and 6 (additions only; every rev. 4 definition is unchanged)

* `HooksMono` (rev. 5, moved here from `Struct/Base.lean`; `Frames.HooksMonoF` is the same
  statement).
* `Abortive r`: the result ends the run (a final FFI event or the never-caught `TrapErr`).
  `SumSpecA` is `SumSpec` without obligations for abortive results; `sumSpecA_of_sumSpec`
  turns every rev. 4 summary into it.
* Rev. 6: the release law is `HooksShrinkR` (with a dependency relation) instead of rev. 5's
  `HooksShrink`; `ownBase`, the first owner-encoded type index.
-/

/-- Hooks survive extending `Γ` (objects kept with the same base and type, possibly grown; new
objects added), as long as the extension is laid out. -/
def HooksMono {σ : Type} (C : Cfg) (H : Hooks σ) : Prop :=
  ∀ (Γ Γ' : Gam) (s : State σ) (p : Ptrs) (o o' : Obj), Layout C p Γ' → Ext Γ Γ' → o ∈ Γ →
    o' ∈ Γ' → o'.base = o.base → o'.ty = o.ty → H.wf Γ s o → H.wf Γ' s o'

/-- **The release law (rev. 6).** Hooks survive dropping objects from `Γ` (a sub-collection)
that no kept hook depends on: `Ref Γ s o b` means that the hook of `o` depends on the object at
base `b` (an EV record on its stack and memory, a table on the objects covering its region).
Rev. 5's `HooksShrink` (no dependency condition) is unsatisfiable together with `EvHook`: a
sub-collection may drop the stack an EV hook requires (`Hooks.shrink_ev_absurd`). -/
def HooksShrinkR {σ : Type} (_C : Cfg) (H : Hooks σ)
    (Ref : Gam → State σ → Obj → BitVec 64 → Prop) : Prop :=
  ∀ (Γ Γs : Gam) (s : State σ) (o : Obj), (∀ o' ∈ Γs, o' ∈ Γ) → o ∈ Γs → H.wf Γ s o →
    (∀ x ∈ Γ, Ref Γ s o x.base → x ∈ Γs) → H.wf Γs s o

/-- **Owner-encoded types (rev. 6).** Type indices from `ownBase` on are not in any type table
(`C.ty` gives the default all-`prot` heap descriptor of minimum size 0). The guest uses
`ownBase + b.toNat` for the heap arrays of the hash table whose header is at `b`, so that an
array object names its table. -/
def ownBase : Nat := 128

/-- A slot kind whose pointer targets are heap types (`true` for non-pointer kinds). -/
def fkHeap (C : Cfg) : FK → Bool
  | .ptr t => (C.ty t).region == .heap
  | .nptr t => (C.ty t).region == .heap
  | .uptr ts => ts.all fun t => (C.ty t).region == .heap
  | _ => true

/-- Every pointer slot (and `prot` slots trivially) targets heap types only: objects outside
the heap are never the target of a typed slot (rev. 5). -/
def HeapPtrs (C : Cfg) : Prop := ∀ t k, fkHeap C ((C.ty t).slot k) = true

/-- The exception `trap_with` raises; no guest code catches it. -/
def trapErr : MlS := nm "TrapErr"

/-- Results that end the run: a final FFI event, or the never-caught `TrapErr`. -/
def Abortive : PanSemResultExact 64 → Prop
  | .finalFfi _ => True
  | .exception e _ => e = trapErr
  | _ => False

/-- `SumSpec` without obligations for abortive results. -/
def SumSpecA (σ : Type) (X : Ctx 64) (C : Cfg) (H : Hooks σ) (f : MlS) (sg : Sig)
    (Pre : List (ValueHOL 64) → State σ → Gam → Prop)
    (PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop)
    (Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop) :
    Prop :=
  FunSpec σ X f (fun vs s r t => Good (some r) → ¬ Abortive r → ∀ Γ, G C H Γ s →
    (∃ p, ptrsOf s = some p ∧ ArgsOK C Γ p sg.params vs) → Pre vs s Γ →
      ∃ Γ' p p', SumCore C H sg (fun a => ProtCell C Γ a ∧ PW vs s Γ a) Γ s vs r t Γ' p p' ∧
        Q vs s Γ r t Γ')

theorem sumSpecA_of_sumSpec {σ : Type} {X : Ctx 64} {C : Cfg} {H : Hooks σ} {f : MlS} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (h : SumSpec σ X C H f sg Pre PW Q) : SumSpecA σ X C H f sg Pre PW Q :=
  fun vs body callee rs hl s hs hloc r hr hg _ => h vs body callee rs hl s hs hloc r hr hg

/-- The abortive-exempt plain summary. -/
def SummA (σ : Type) (X : Ctx 64) (C : Cfg) (H : Hooks σ) (f : MlS) (sg : Sig) : Prop :=
  SumSpecA σ X C H f sg (fun _ _ _ => True) (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)

theorem summA_of_summ {σ : Type} {X : Ctx 64} {C : Cfg} {H : Hooks σ} {f : MlS} {sg : Sig}
    (h : Summ σ X C H f sg) : SummA σ X C H f sg :=
  sumSpecA_of_sumSpec h

end InitECandidate.Solver.MemSafe
