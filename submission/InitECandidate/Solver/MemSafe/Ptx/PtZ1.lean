import InitECandidate.Solver.MemSafe.Ptx.PtX2

/-!
# F3h: the statement of `process_transaction`'s memory-safety post (`pt_funSpec`)

`PtPreD2` is `PtPreD` with the conjuncts the proof needs in addition:
* `own`: `OwnerHeap Γ` (no scratch-owned arrays in the entry typing);
* `coinR`: the coinbase buffer lies in the heap, `heapBase ≤ coin ∧ coin + 20 ≤ heapEnd`;
* `txbufG`, `beCoinG`: the transaction's pointer buffers and the coinbase buffer are `BufOK` at the ghost allocator `gp0 p`
  (that is, `BufOK` at `p` and every cell outside `Γ` lies in the heap below `p.hp`).

`PtPost2` is `PtPost` with `OwnerHeap Γ'`.
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

structure PtPreD2 (M : Nat) (Γ : Gam) (s : State σ) (p : Ptrs) (tx idx bo be txs rcs : BitVec 64) : Prop
    extends PtPreD M Γ s p tx idx bo be txs rcs where
  own : OwnerHeap Γ
  coinR : heapBase ≤ (rd s.memory (be + BitVec.ofNat 64 32)).toNat ∧
    (rd s.memory (be + BitVec.ofNat 64 32)).toNat + 20 ≤ heapEnd
  txbufG : TxBuf Γ (gp0 p) s.memory tx 152
  beCoinG : BufOK guestC Γ (gp0 p) (rd s.memory (be + 32)).toNat 20

structure PtPost2 (Γ : Gam) (s : State σ) (tx idx bo txs rcs : BitVec 64) (Γ' : Gam) (t : State σ) : Prop
    extends PtPost Γ s tx idx bo txs rcs Γ' t where
  owner : OwnerHeap Γ'
  jr : JrNZ t
  plk : ∀ o ∈ Γ, o.ty ∈ recKTys → ∀ k, o.HasSlot k → (guestC.ty o.ty).slot k = .prot →
    rd t.memory (o.cell k) = rd s.memory (o.cell k)

/-- The value relation of `process_transaction`. -/
def PtR2 (M : Nat) (vs : List (ValueHOL 64)) (s : State σ) (r : PanSemResultExact 64) (t : State σ) : Prop :=
  ∀ Γ, G guestC (HR σ) Γ s → ∀ (tx idx : BitVec 64), vs = [.val (.word tx), .val (.word idx)] →
    ∀ (p : Ptrs) (bo be txs rcs : BitVec 64), PtPreD2 M Γ s p tx idx bo be txs rcs →
    ∀ v, r = .returned v → ∃ Γ', PtPost2 Γ s tx idx bo txs rcs Γ' t

/-- The entry data and its precondition from `PtPreD2`. -/
def entryE (Γ : Gam) (s : State σ) (p : Ptrs) (tx idx bo be txs rcs : BitVec 64) : PtE σ :=
  ⟨Γ, s, gp0 p, tx, idx, bo, be, txs, rcs⟩

theorem ptPreX_of {M : Nat} {Γ : Gam} {s : State σ} {p : Ptrs} {tx idx bo be txs rcs : BitVec 64}
    (hG : G guestC (HR σ) Γ s) (h : PtPreD2 M Γ s p tx idx bo be txs rcs) :
    PtPreX (entryE Γ s p tx idx bo be txs rcs) where
  hG := hG
  hp := ⟨p, h.hp, rfl⟩
  hJ := h.hJ
  hev := h.hev
  hcc := h.hcc
  tx := h.txObj
  txbuf := h.txbufG
  hbo := h.hbo
  boObj := h.boObj
  htxs := h.htxs
  txsObj := h.txsObj
  hrcs := h.hrcs
  rcsObj := h.rcsObj
  logsObj := h.logsObj
  rlogsObj := h.rlogsObj
  hbe := h.hbe
  beObj := h.beObj
  beCoin := h.beCoinG
  gbs := ⟨_, h.gbs.choose_spec.1, h.gbs.choose_spec.2⟩
  gba := ⟨_, h.gba.choose_spec.1, h.gba.choose_spec.2⟩
  gbk := ⟨_, h.gbk.choose_spec.1, h.gbk.choose_spec.2⟩
  gbi := ⟨_, h.gbi.choose_spec.1, h.gbi.choose_spec.2⟩
  gbs2 := ⟨_, h.gbs2.choose_spec.1, h.gbs2.choose_spec.2⟩
  gsk := ⟨_, h.gsk.choose_spec.1, h.gsk.choose_spec.2⟩
  dis1 := h.dis1
  dis2 := h.dis2
  dis3 := h.dis3

end InitECandidate.Solver.MemSafe.Ptx
