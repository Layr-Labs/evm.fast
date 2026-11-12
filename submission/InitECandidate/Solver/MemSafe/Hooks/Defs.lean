import InitECandidate.Solver.MemSafe.Hooks.FrameA
import InitECandidate.Solver.MemSafe.Shards.BaseCaps
import InitECandidate.Solver.MemSafe.Shrink

/-!
# The concrete guest hook family (definitions)

`guestHooks : Hooks σ` is the per-object invariant every memory-safety proof is parametric in.
It is non-trivial on two object classes (`hkOf`):

* **EV records** (`tEV`): `evW Γ s e` = `e ∈ Γ`, the layout facts `GamOK Γ`, and ms-struct's
  stack/memory invariant `EvSM sty Γ s.memory e`. Footprint: the six stack/memory slots
  (`SMCell e`).
* **Hash-table headers** (`hdrTys`): `tabW Γ s T` = `T ∈ Γ`, `GamOK Γ`, and
  `TabOK`: `TableWF s T.base` (the htab agent's invariant), every aligned cell of the table's
  region lies in a `Γ` object the table owns (`ArrIn`, `Owns`: the header itself, a heap array
  of the owner-encoded type `tOwn T.base`, or a scratch array `tHTAs` ending where the header
  starts; one object may cover all the arrays an operation allocates), and the leaf values
  fit the header type's value kind (`ValOK`; `tHTt20` tables hold `ptr tHTh32` values), and the
  key length is the header type's (`KLOK`, `htKL`).
  Footprint: the 8-aligned cells of `TableRegion` (`TableWF` reads only those,
  `tableWF_frameA`). Since an array object names its table, two tables never share cells
  (`own_unique`, rev. 6 decision C-b′).

Every other type has the trivial hook (`True`, empty footprint).

Each non-trivial hook carries `GamOK Γ`, the `Γ`-only part of `Layout` (alignment, sizes,
scratch objects below `scratchEnd`, pairwise disjointness as a set). The laws that quantify
over arbitrary objects without a `Layout` hypothesis (`EvHook.loc`, the `FrameCfg` clauses
`hookEV` / `hookCK`) need it, and it survives extension (from the `Layout` premise of
`HooksMono`) and shrinking (sub-collections).

The footprint is guarded by the hook (`gfp Γ s o a` implies `gwf Γ s o`), so the laws that
quantify over objects whose hook may not hold see an empty footprint.

`refG Γ s o b`: the bases of the objects the hook of `o` depends on (EV: stack and memory;
table: the objects covering its region, and the leaf values of a table with pointer values). This is the dependency
relation of the release law `HooksShrinkR` (see `Laws.lean`).
-/

namespace InitECandidate.Solver.MemSafe.Hooks
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Struct
open InitECandidate.Solver.Spec

variable {σ : Type}

/-! ## Object classes -/

/-- The hooked object classes. -/
inductive HK where
  | ev
  | tab
  | none
  deriving DecidableEq, Repr

/-- The class of a type: EV record, hash-table header, or unhooked. -/
def hkOf (t : Nat) : HK :=
  if t = tEV then .ev else if t ∈ hdrTys then .tab else .none

theorem hkOf_ev {t : Nat} (h : hkOf t = .ev) : t = tEV := by
  unfold hkOf at h
  split_ifs at h with h1 h2
  · exact h1

theorem hkOf_tab {t : Nat} (h : hkOf t = .tab) : t ∈ hdrTys := by
  unfold hkOf at h
  split_ifs at h with h1 h2
  · exact h2

theorem hkOf_tEV : hkOf tEV = .ev := rfl

theorem hkOf_of_tab {t : Nat} (h : t ∈ hdrTys) : hkOf t = .tab := by
  unfold hkOf
  rw [if_neg (fun e => by subst e; revert h; decide), if_pos h]

theorem hkOf_none {t : Nat} (h1 : t ≠ tEV) (h2 : t ∉ hdrTys) : hkOf t = .none := by
  unfold hkOf
  rw [if_neg h1, if_neg h2]

/-! ## Facts about the header types -/

theorem hdr_prot : ∀ t ∈ hdrTys, ∀ k, (guestC.ty t).slot k = .prot := fun t ht =>
  slot_all ((by decide : ∀ t ∈ hdrTys, ∀ x ∈ (guestC.ty t).fixed, x = .prot) t ht)
    ((by decide : ∀ t ∈ hdrTys, (guestC.ty t).rest = .prot) t ht)

theorem hdr_minSz : ∀ t ∈ hdrTys, (guestC.ty t).minSz = 88 := by decide

theorem hdr_small : ∀ t ∈ hdrTys, t ≠ tEV ∧ t ≠ tCK ∧ t ≠ tHTAs ∧ t < ownBase := by decide

theorem hdr_untagged : ∀ t ∈ hdrTys, guestC.tags.lookup t = none := by decide

theorem hdr_region : ∀ t ∈ hdrTys, (guestC.ty t).region = .heap ∨ (guestC.ty t).region = .scratch := by
  decide

/-! ## Layout facts carried by the hooks -/

/-- The `Γ`-only part of `Layout`: alignment, sizes, scratch objects end below `scratchEnd`,
and distinct objects are disjoint. -/
def GamOK (Γ : Gam) : Prop :=
  (∀ x ∈ Γ, x.lo % 8 = 0 ∧ x.size % 8 = 0 ∧ 0 < x.size ∧ (guestC.ty x.ty).minSz ≤ x.size ∧
      ((guestC.ty x.ty).region = .scratch → x.hi ≤ scratchEnd)) ∧
    ∀ x ∈ Γ, ∀ y ∈ Γ, x ≠ y → x.hi ≤ y.lo ∨ y.hi ≤ x.lo

/-! ## Tables -/

/-- The array types: scratch arrays and the owner-encoded heap arrays (rev. 6; the type
`tHTAh` is no longer used for tables). -/
def IsArrTy (t : Nat) : Prop := t = tHTAs ∨ ownBase ≤ t

/-- The types of a table's objects: headers and arrays. -/
def IsTabTy (t : Nat) : Prop := hkOf t = .tab ∨ IsArrTy t

/-- `x` belongs to the table whose header is `o` (rev. 6, C-b′): the header itself, a heap
array of the owner-encoded type `tOwn o.base`, or a scratch array (`tHTAs`) that ends where the
header starts (`htab_new_scratch` allocates the arrays directly below the header; growth moves
them to the heap). -/
def Owns (o x : Obj) : Prop :=
  x.base = o.base ∨ x.ty = tOwn o.base ∨ (x.ty = tHTAs ∧ x.hi = o.lo)

/-- Every 8-aligned cell of the region of the table at `o` lies in a `Γ` object the table owns
(after growth the arrays may lie in an object that covers several allocations). -/
def ArrIn (Γ : Gam) (m : Mem) (o : Obj) : Prop :=
  ∀ a, Spec.Inv.TableRegion m o.base a → a.toNat % 8 = 0 →
    ∃ x ∈ Γ, Owns o x ∧ x.lo ≤ a.toNat ∧ a.toNat < x.hi

/-- The value kind of a header type (`tHTt`: `ptr tHTh`; otherwise `scalar`). -/
def valK (t : Nat) : FK := (htVal t).getD .scalar

/-- Leaf values fit the value kind of the header's type. -/
def ValOK (Γ : Gam) (m : Mem) (o : Obj) : Prop :=
  ∀ w, Spec.Inv.LeafVal m o.base w → Fits Γ (valK o.ty) w

/-- The key length of the table is the one of its header type (rev. 6: the mutators take their
key as a `buf (htKL t)` parameter). -/
def KLOK (m : Mem) (o : Obj) : Prop :=
  Spec.Inv.hdr m o.base 0 = BitVec.ofNat 64 (htKL o.ty)

/-- The table invariant of a header object. -/
def TabOK (Γ : Gam) (s : State σ) (o : Obj) : Prop :=
  Spec.Inv.TableWF s o.base ∧ ArrIn Γ s.memory o ∧ ValOK Γ s.memory o ∧ KLOK s.memory o

/-! ## The hooks -/

/-- The EV hook. -/
def evW (Γ : Gam) (s : State σ) (o : Obj) : Prop :=
  o ∈ Γ ∧ GamOK Γ ∧ EvSM Shards.sty Γ s.memory o

/-- The table hook. -/
def tabW (Γ : Gam) (s : State σ) (o : Obj) : Prop :=
  o ∈ Γ ∧ GamOK Γ ∧ TabOK Γ s o

def gwf (Γ : Gam) (s : State σ) (o : Obj) : Prop :=
  match hkOf o.ty with
  | .ev => evW Γ s o
  | .tab => tabW Γ s o
  | .none => True

def gfp (Γ : Gam) (s : State σ) (o : Obj) (a : BitVec 64) : Prop :=
  match hkOf o.ty with
  | .ev => evW Γ s o ∧ SMCell o a
  | .tab => tabW Γ s o ∧ Spec.Inv.TableRegion s.memory o.base a ∧ a.toNat % 8 = 0
  | .none => False

/-- **The guest hook family.** -/
def guestHooks : Hooks σ := ⟨gwf, gfp⟩

/-- The objects (by base) the hook of `o` depends on: the release law's closure condition. -/
def refG (Γ : Gam) (s : State σ) (o : Obj) (b : BitVec 64) : Prop :=
  match hkOf o.ty with
  | .ev => b = fSTK s.memory o ∨ b = fMEM s.memory o
  | .tab => (∃ x ∈ Γ, x.base = b ∧ Owns o x ∧ ∃ a : BitVec 64,
        Spec.Inv.TableRegion s.memory o.base a ∧ a.toNat % 8 = 0 ∧ x.lo ≤ a.toNat ∧ a.toNat < x.hi) ∨
      (valK o.ty ≠ .scalar ∧ Spec.Inv.LeafVal s.memory o.base b)
  | .none => False

/-! ## Characterizations -/

theorem gwf_ev {Γ : Gam} {s : State σ} {o : Obj} (h : hkOf o.ty = .ev) :
    gwf Γ s o ↔ evW Γ s o := by
  simp only [gwf, h]

theorem gwf_tab {Γ : Gam} {s : State σ} {o : Obj} (h : hkOf o.ty = .tab) :
    gwf Γ s o ↔ tabW Γ s o := by
  simp only [gwf, h]

theorem gwf_none {Γ : Gam} {s : State σ} {o : Obj} (h : hkOf o.ty = .none) : gwf Γ s o := by
  simp only [gwf, h]

theorem gfp_ev {Γ : Gam} {s : State σ} {o : Obj} {a : BitVec 64} (h : hkOf o.ty = .ev) :
    gfp Γ s o a ↔ evW Γ s o ∧ SMCell o a := by
  simp only [gfp, h]

theorem gfp_tab {Γ : Gam} {s : State σ} {o : Obj} {a : BitVec 64} (h : hkOf o.ty = .tab) :
    gfp Γ s o a ↔
      tabW Γ s o ∧ Spec.Inv.TableRegion s.memory o.base a ∧ a.toNat % 8 = 0 := by
  simp only [gfp, h]

theorem gfp_none {Γ : Gam} {s : State σ} {o : Obj} {a : BitVec 64} (h : hkOf o.ty = .none) :
    ¬ gfp Γ s o a := by
  simp only [gfp, h, not_false_eq_true]

/-- The footprint implies the hook. -/
theorem gwf_of_gfp {Γ : Gam} {s : State σ} {o : Obj} {a : BitVec 64} (h : gfp Γ s o a) :
    gwf Γ s o := by
  cases hk : hkOf o.ty with
  | ev => exact (gwf_ev hk).2 ((gfp_ev hk).1 h).1
  | tab => exact (gwf_tab hk).2 ((gfp_tab hk).1 h).1
  | none => exact gwf_none hk

theorem guestHooks_wf (Γ : Gam) (s : State σ) (o : Obj) :
    (guestHooks (σ := σ)).wf Γ s o = gwf Γ s o := rfl

theorem guestHooks_fp (Γ : Gam) (s : State σ) (o : Obj) :
    (guestHooks (σ := σ)).fp Γ s o = gfp Γ s o := rfl

end InitECandidate.Solver.MemSafe.Hooks
