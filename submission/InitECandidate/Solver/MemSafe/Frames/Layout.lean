import InitECandidate.Solver.MemSafe.Frames.RunFramesGen

/-!
# Frame records: layout, field reads, and `G` ignoring locals

The base of the frame driver that does not depend on the chain (`Chain.lean`): the record
offsets, `fld`, and the frame-independent facts about `G`. The checker's base table
(`Shards/BaseCaps.lean`) and the configuration proofs (`Annot/`) depend only on this layer
(`Layout`, `Lib0`, `GasCode`, `Cells`, `EvSum`, `Ctor`).
-/

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

/-! ## Record layout (`evm.pnk`, `evm_calls.pnk`) -/

def evSp : Nat := 16
def evMem : Nat := 24
def evMemLen : Nat := 32
def evMemCap : Nat := 40
def evGasLeft : Nat := 64
def evRunning : Nat := 104
def evSpilled : Nat := 192
def evStackCap : Nat := 232

def ckParent : Nat := 0
def ckParentCont : Nat := 8
def ckKind : Nat := 16
def ckDone : Nat := 32
def ckMark : Nat := 48
def ckMemMark : Nat := 56
def ckOutStart : Nat := 72
def ckOutSize : Nat := 80

def evRetd : Nat := 144
def evRetdCap : Nat := 216

/-- The word at `b + k`. -/
def fld (m : Mem) (b : BitVec 64) (k : Nat) : BitVec 64 := rd m (b + BitVec.ofNat 64 k)

/-- Valid frame marks (`EV_STACK_MARK`, `EV_MEM_MARK`): a release to them leaves ordered, aligned
allocator pointers. They were the pointers at `frame_new`'s entry. -/
def MarkVals (mk mm : BitVec 64) : Prop :=
  heapEnd ≤ mm.toNat ∧ mm.toNat ≤ mk.toNat ∧ mk.toNat ≤ scratchEnd ∧ mk.toNat % 8 = 0 ∧ mm.toNat % 8 = 0

/-- The marks of the frame record `e` are valid. `process_transaction` releases to them after the
frame loop, reading them from memory. -/
def MarkV (m : Mem) (e : BitVec 64) : Prop := MarkVals (fld m e 208) (fld m e 224)

/-- A frame: its EV record and its continuation record. -/
abbrev Frame := BitVec 64 × BitVec 64

theorem gword_congr {s s' : State σ} (hg : s'.globals = s.globals) (x : MlS) :
    gword s' x = gword s x := by
  unfold gword; rw [hg]

/-! ## `G` ignores locals and the clock -/

theorem ptrsOf_congr {s s' : State σ} (hg : s'.globals = s.globals) : ptrsOf s' = ptrsOf s := by
  unfold ptrsOf; rw [gword_congr hg, gword_congr hg, gword_congr hg]

/-- `G` depends only on the memory, the globals, the domain and the endianness. -/
theorem G_congr {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {Γ : Gam} {s s' : State σ}
    (hm : s'.memory = s.memory) (hg : s'.globals = s.globals) (hd : s'.memaddrs = s.memaddrs)
    (hbe : s'.be = s.be) (h : G C H Γ s) : G C H Γ s' := by
  obtain ⟨p, hps, hord, hL, hF, hT, hGl, hW⟩ := h
  refine ⟨p, by rw [ptrsOf_congr hg]; exact hps, hord, hL, by rw [hm]; exact hF,
    by rw [hm]; exact hT, ?_, fun o ho => ?_⟩
  · intro g k hk
    obtain ⟨v, hv, hf⟩ := hGl g k hk
    exact ⟨v, by rw [gword_congr hg]; exact hv, hf⟩
  · exact (hH.2 Γ s s' o (hW o ho) hd hbe (fun a _ => by rw [hm])
      (fun g _ => by rw [hg])).1

theorem G_locFree {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {Γ : Gam} :
    LocFree (σ := σ) (G C H Γ) := fun _ _ _ =>
  ⟨G_congr hH rfl rfl rfl rfl, G_congr hH rfl rfl rfl rfl⟩

end InitECandidate.Solver.MemSafe.Frames
