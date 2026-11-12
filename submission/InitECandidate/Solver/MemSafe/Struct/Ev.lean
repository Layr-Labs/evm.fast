import InitECandidate.Solver.MemSafe.Struct.Base
import InitECandidate.Solver.MemSafe.Struct.StackCode
import InitECandidate.Solver.Spec.Inv.BePreserved

/-!
# EV records: the stack/memory hook and its configuration

The EVM stack and memory of a frame are described by six `prot` slots of its EV record
(`guest/src/evm.pnk`): `EV_STACK = 8` (slot 1), `EV_SP = 16` (slot 2), `EV_MEM = 24` (slot 3),
`EV_MEM_LEN = 32` (slot 4), `EV_MEM_CAP = 40` (slot 5), `EV_STACK_CAP = 232` (slot 29).

* `EvSM T Γ m e`: the stack/memory invariant of the EV object `e`:
  `SP ≤ STACK_CAP`, `0 < STACK_CAP ≤ 1024`, the stack is a `Γ` object of type `T.stk` of at
  least `32·STACK_CAP` bytes; `MEM_LEN ≤ MEM_CAP`, `MEM_LEN % 32 = 0`, `MEM_CAP % 8 = 0`, the
  memory is a `Γ` object of type `T.mem` of at least `MEM_CAP` bytes. It reads only the six
  slots (`SMCell`) and `Γ`, and it is monotone in `Γ` (`evSM_ext`).
* `EvCfg C T`: what the specs need of the configuration (slot kinds, regions, `ev` typed,
  allocator globals neither typed nor protected).
* `EvHook C H T`: how the shared hook `H` contains `EvSM`: `get` (EV hooks imply it), `put`
  (an EV hook is re-established from `EvSM` and its other cells), `loc` (only an EV object's
  own hook reads its six cells), stack and memory objects have trivial hooks.
-/

namespace InitECandidate.Solver.MemSafe.Struct
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe

variable {σ : Type}

/-- The type indices of the structures. -/
structure STy where
  ev : Nat
  stk : Nat
  mem : Nat

/-- The stack/memory slots of an EV record. -/
def smSlots : List Nat := [1, 2, 3, 4, 5, 29]

/-- `a` is one of the stack/memory cells of the EV object `e`. -/
def SMCell (e : Obj) (a : BitVec 64) : Prop := ∃ k ∈ smSlots, a = e.cell k

/-- Field readers. -/
def fSTK (m : Mem) (e : Obj) : BitVec 64 := rd m (e.cell 1)
def fSP (m : Mem) (e : Obj) : BitVec 64 := rd m (e.cell 2)
def fMEM (m : Mem) (e : Obj) : BitVec 64 := rd m (e.cell 3)
def fLEN (m : Mem) (e : Obj) : BitVec 64 := rd m (e.cell 4)
def fMCAP (m : Mem) (e : Obj) : BitVec 64 := rd m (e.cell 5)
def fCAP (m : Mem) (e : Obj) : BitVec 64 := rd m (e.cell 29)

/-- The stack part of the invariant. -/
def StkOK (T : STy) (Γ : Gam) (m : Mem) (e : Obj) : Prop :=
  (fSP m e).toNat ≤ (fCAP m e).toNat ∧ 0 < (fCAP m e).toNat ∧ (fCAP m e).toNat ≤ 1024 ∧
    ∃ o ∈ Γ, o.base = fSTK m e ∧ o.ty = T.stk ∧ 32 * (fCAP m e).toNat ≤ o.size

/-- The memory part of the invariant. -/
def MemOK (T : STy) (Γ : Gam) (m : Mem) (e : Obj) : Prop :=
  (fLEN m e).toNat ≤ (fMCAP m e).toNat ∧ (fLEN m e).toNat % 32 = 0 ∧ (fMCAP m e).toNat % 8 = 0 ∧
    ∃ o ∈ Γ, o.base = fMEM m e ∧ o.ty = T.mem ∧ (fMCAP m e).toNat ≤ o.size

/-- **The stack/memory invariant of an EV record.** -/
def EvSM (T : STy) (Γ : Gam) (m : Mem) (e : Obj) : Prop := StkOK T Γ m e ∧ MemOK T Γ m e

/-- `EvSM` reads only the six cells (and `Γ`). -/
theorem evSM_congr {T : STy} {Γ : Gam} {m m' : Mem} {e : Obj}
    (h : ∀ a, SMCell e a → m' a = m a) (hs : EvSM T Γ m e) : EvSM T Γ m' e := by
  have r : ∀ k ∈ smSlots, rd m' (e.cell k) = rd m (e.cell k) := fun k hk => by
    rw [rd, rd, h _ ⟨k, hk, rfl⟩]
  have h1 := r 1 (by decide); have h2 := r 2 (by decide); have h3 := r 3 (by decide)
  have h4 := r 4 (by decide); have h5 := r 5 (by decide); have h29 := r 29 (by decide)
  unfold EvSM StkOK MemOK fSTK fSP fMEM fLEN fMCAP fCAP at *
  rw [h1, h2, h3, h4, h5, h29]
  exact hs

/-- `EvSM` is monotone in `Γ`. -/
theorem evSM_ext {T : STy} {Γ Γ' : Gam} {m : Mem} {e : Obj} (hx : Ext Γ Γ') (hs : EvSM T Γ m e) :
    EvSM T Γ' m e := by
  obtain ⟨⟨a1, a2, a3, o, ho, hb, ht, hsz⟩, ⟨b1, b2, b3, o', ho', hb', ht', hsz'⟩⟩ := hs
  obtain ⟨x, hx1, hxb, hxt, hxs⟩ := hx o ho
  obtain ⟨y, hy1, hyb, hyt, hys⟩ := hx o' ho'
  exact ⟨⟨a1, a2, a3, x, hx1, hxb.trans hb, hxt.trans ht, le_trans hsz hxs⟩,
    ⟨b1, b2, b3, y, hy1, hyb.trans hb', hyt.trans ht', le_trans hsz' hys⟩⟩

/-! ## Configuration and hook assumptions -/

def gEv : MlS := nm "ev"

/-- What the stack/memory specs need of the configuration. -/
structure EvCfg (C : Cfg) (T : STy) : Prop where
  ev_prot : ∀ k ∈ smSlots, (C.ty T.ev).slot k = .prot
  ev_min : 240 ≤ (C.ty T.ev).minSz
  ev_glob : C.GT.lookup gEv = some (.ptr T.ev)
  ev_pg : gEv ∈ C.PG
  stk_scalar : ∀ k, (C.ty T.stk).slot k = .scalar
  stk_region : (C.ty T.stk).region = .scratch
  stk_min : (C.ty T.stk).minSz ≤ 64
  stk_tag : C.tags.lookup T.stk = none
  mem_scalar : ∀ k, (C.ty T.mem).slot k = .scalar
  mem_region : (C.ty T.mem).region = .fmem
  mem_tag : C.tags.lookup T.mem = none
  ev_stk : T.ev ≠ T.stk
  ev_mem : T.ev ≠ T.mem
  alloc_gt : ∀ g ∈ [gHeap, gFrame, gScratch], C.GT.lookup g = none
  alloc_pg : ∀ g ∈ [gHeap, gFrame, gScratch], g ∉ C.PG

/-- How the shared hook contains `EvSM`. -/
structure EvHook (C : Cfg) (H : Hooks σ) (T : STy) : Prop where
  get : ∀ Γ (s : State σ) o, o ∈ Γ → o.ty = T.ev → H.wf Γ s o → EvSM T Γ s.memory o
  put : ∀ Γ (s t : State σ) o, o ∈ Γ → o.ty = T.ev → H.wf Γ s o → EvSM T Γ t.memory o →
    t.memaddrs = s.memaddrs → t.be = s.be →
    (∀ g ∈ C.PG, t.globals.lookup g = s.globals.lookup g) →
    (∀ a, H.fp Γ s o a → ¬ SMCell o a → t.memory a = s.memory a) → H.wf Γ t o
  loc : ∀ Γ (s : State σ) o o' a, o ∈ Γ → o' ∈ Γ → o'.ty = T.ev → H.wf Γ s o → H.fp Γ s o a →
    SMCell o' a → o = o'
  stk_wf : ∀ Γ (s : State σ) o, o.ty = T.stk → H.wf Γ s o
  mem_wf : ∀ Γ (s : State σ) o, o.ty = T.mem → H.wf Γ s o

/-! ## The running frame -/

/-- The EV object of the running frame: the object `ev` points at. -/
def EvObj (T : STy) (Γ : Gam) (s : State σ) (e : Obj) : Prop :=
  e ∈ Γ ∧ e.ty = T.ev ∧ s.globals.lookup gEv = some (.val (.word e.base))

theorem evObj_of_G {C : Cfg} {H : Hooks σ} {T : STy} (hE : EvCfg C T) {Γ : Gam} {s : State σ}
    (hG : G C H Γ s) : ∃ e, EvObj T Γ s e := by
  obtain ⟨-, -, -, -, -, -, hGl, -⟩ := hG
  obtain ⟨v, hv, o, ho, hb, ht⟩ := hGl gEv _ hE.ev_glob
  refine ⟨o, ho, ht, ?_⟩
  unfold gword at hv
  split at hv
  · rename_i w hw
    cases hv
    rw [hw, hb]
  · cases hv

theorem evObj_unique {T : STy} {Γ : Gam} {s : State σ} {e e' : Obj} {C : Cfg} {p : Ptrs}
    (hL : Layout C p Γ) (h : EvObj T Γ s e) (h' : EvObj T Γ s e') : e = e' := by
  have hb : e.base = e'.base := by
    have := h.2.2.symm.trans h'.2.2
    simpa using this
  obtain ⟨i, hi, rfl⟩ := List.mem_iff_getElem.mp h.1
  obtain ⟨j, hj, rfl⟩ := List.mem_iff_getElem.mp h'.1
  by_cases hij : i = j
  · subst hij; rfl
  · have hd := hL.2 i j hi hj hij
    have h1 := (hL.1 _ h.1).2.2.1
    have h2 := (hL.1 _ h'.1).2.2.1
    unfold Obj.hi Obj.lo at hd
    rw [hb] at hd
    omega

/-- The protected cells a stack/memory function may write: slots `ks` of the running EV. -/
def PWev (T : STy) (ks : List Nat) (_ : List (ValueHOL 64)) (s : State σ) (Γ : Gam)
    (a : BitVec 64) : Prop :=
  ∃ e, EvObj T Γ s e ∧ ∃ k ∈ ks, a = e.cell k

/-- EV cells are cells: the slot arithmetic of an EV object. -/
theorem ev_hasSlot {C : Cfg} {T : STy} (hE : EvCfg C T) {p : Ptrs} {Γ : Gam}
    (hL : Layout C p Γ) {e : Obj} (he : e ∈ Γ) (ht : e.ty = T.ev) {k : Nat} (hk : k ≤ 29) :
    e.HasSlot k := by
  have := (hL.1 e he).2.2.2.1
  rw [ht] at this
  have := hE.ev_min
  unfold Obj.HasSlot
  omega

theorem cell_add (o : Obj) (k : Nat) : o.base + BitVec.ofNat 64 (8 * k) = o.cell k := rfl

/-- `ev + c` as a cell. -/
theorem evc (e : Obj) (k : Nat) : e.base + BitVec.ofNat 64 (8 * k) = e.cell k := rfl

/-! ## Reading memory words -/

theorem mem_word (m : Mem) (a : BitVec 64) : m a = .word (rd m a) := by
  unfold rd; split; rename_i w h; exact h

end InitECandidate.Solver.MemSafe.Struct
