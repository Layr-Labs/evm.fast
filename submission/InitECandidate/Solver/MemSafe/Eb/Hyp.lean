import InitECandidate.Solver.MemSafe.Eb.Call
import InitECandidate.Solver.MemSafe.Rec.TxBuf

/-!
# `execute_block`: the hypotheses (stated once)

All are `CallR` contracts (Eb/Call.lean): from `G`, good globals and `Pre`, a return is an `Stp` step (typed-heap step, journal
globals and `ev` / `cur_cont` good, `PlKeep`, block cells outside the write set `D` unchanged) with the extra post `Q`.

* `HypKeepG`: F3's `G_keepOwnerHeap` (`Ptx/DropOwn.lean`), copied verbatim; main swaps F3's theorem in.
* `HypSft`: `state_fresh_tx` (F3 `Ptx.sf_spec`: every `prot` cell kept, `ts` a `tTS` object afterwards).
* `HypPuc`: `process_unchecked_system_transaction` (no owner yet).
* `HypPt M`: `process_transaction` (F3's `PtPreD` / `PtPost`, copied; plus `PlKeep` from package PmM).
`PlKeep` is main's shape (`Eb/PlKeep.lean`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

def HO (Γ : Gam) : Prop := ∀ o ∈ Γ, (guestC.ty o.ty).region = .heap

def OwnerHeap (Γ : Gam) : Prop := ∀ o ∈ Γ, ownBase ≤ o.ty → o.ty - ownBase < heapEnd
def ScratchOwn (t : Nat) : Prop := ownBase ≤ t ∧ heapEnd ≤ t - ownBase
instance : DecidablePred ScratchOwn := fun t => by unfold ScratchOwn; infer_instance
abbrev keepG (Γ : Gam) : Gam :=
  (Γ.filter fun o => (guestC.ty o.ty).region == .heap).filter fun o => decide (¬ ScratchOwn o.ty)

/-- F3's `G_keepOwnerHeap` (hypothesis until merge). -/
def HypKeepG (σ : Type) : Prop :=
  ∀ {Γ : Gam} {s : State σ}, G guestC (Hooks.guestHooksR (σ := σ)) Γ s →
    (∃ e, gword s nmEv = some e ∧ e.toNat < nullMax) → (∃ c, gword s nmCC = some c ∧ c.toNat < nullMax) →
    G guestC (Hooks.guestHooksR (σ := σ)) (keepG Γ) s ∧ OwnerHeap (keepG Γ)

/-- What every block-level call needs of the typing. -/
def CPre (Γ : Gam) : Prop := HO Γ ∧ OwnerHeap Γ

def tsPost (Γ' : Gam) (t : State σ) : Prop :=
  ∃ w, gword t (nm "ts") = some w ∧ ∃ o ∈ Γ', o.base = w ∧ o.ty = tTS

/-- A global holds the base of an object of type `ty`. -/
def GObj (Γ : Gam) (s : State σ) (g : MlS) (ty : Nat) : Prop :=
  ∃ w, gword s g = some w ∧ ∃ o ∈ Γ, o.base = w ∧ o.ty = ty

/-- The block-state globals the `incorporate_tx_into_block` summary needs (`Bal.UbPre`'s shape). -/
structure BalG (Γ : Gam) (s : State σ) : Prop where
  gbs : GObj Γ s (nm "bs") tBS
  gba : GObj Γ s (nm "bal_accounts") tHTd20
  gbk : GObj Γ s (nm "bal_key_buf") tB64
  gbi : GObj Γ s (nm "bal_idx_accts") tHTh28
  gbs2 : GObj Γ s (nm "bal_idx_stor") tHTh60
  gsk : GObj Γ s (nm "sk_buf") tB64

/-- `state_fresh_tx`: no block cell changes; `ts` is a `tTS` object afterwards. -/
def HypSft (σ : Type) : Prop :=
  CallR (σ := σ) (nm "state_fresh_tx") (fun _ _ Γ _ => CPre Γ) (fun _ _ _ _ => False)
    (fun _ _ _ _ _ t Γ' _ => tsPost Γ' t)

/-- `process_unchecked_system_transaction(target, data, n)`: no block cell changes; the result is a `tMCO` object whose return-data
length is below `2^32`; `ts` is a `tTS` object afterwards. The block environment `be` is read (`BE_BASE_FEE`) and handed on in the
message; `BalG` is `incorporate_tx_into_block`'s. -/
def HypPuc (σ : Type) : Prop :=
  CallR (σ := σ) (nm "process_unchecked_system_transaction")
    (fun vs s Γ p => CPre Γ ∧ BalG Γ s ∧ ∃ T D N, vs = [.val (.word T), .val (.word D), .val (.word N)] ∧
      BufOK guestC Γ p T.toNat 20 ∧ N.toNat < 2 ^ 32) (fun _ _ _ _ => False)
    (fun _ _ _ _ v t Γ' _ => ∃ out, v = .val (.word out) ∧ ∃ o ∈ Γ', o.base = out ∧ o.ty = tMCO ∧
      (rd t.memory (out + BitVec.ofNat 64 48)).toNat < 2 ^ 32 ∧ tsPost Γ' t)

/-- The cells `process_transaction` writes in block objects. -/
def PtW (bo txs rcs idx : BitVec 64) (a : BitVec 64) : Prop :=
  a = bo ∨ a = bo + 8 ∨ a = bo + 16 ∨ a = bo + 48 ∨ a = txs + idx * 16 ∨ a = txs + idx * 16 + 8 ∨
  a = rcs + idx * 16 ∨ a = rcs + idx * 16 + 8

/-- The entry facts `process_transaction(tx, idx)` needs (F3's `Ptx.PtPreD`, verbatim). -/
structure PtPreD (M : Nat) (Γ : Gam) (s : State σ) (p : Ptrs) (tx idx bo be txs rcs : BitVec 64) : Prop where
  hp : ptrsOf s = some p
  hJ : JrNZ s
  hev : ∃ e, gword s nmEv = some e ∧ e.toNat < nullMax
  hcc : ∃ c, gword s nmCC = some c ∧ c.toNat < nullMax
  hM : 2 ^ 24 + 2 ≤ M
  txObj : ∃ o ∈ Γ, o.base = tx ∧ o.ty = tTX
  txbuf : Rec.TxBuf Γ p s.memory tx 152
  hbo : gword s (nm "bo") = some bo
  boObj : ∃ o ∈ Γ, o.base = bo ∧ o.ty = tBO
  htxs : rd s.memory (bo + 24) = txs
  txsObj : ∃ o ∈ Γ, o.base = txs ∧ o.ty = tBOS ∧ idx.toNat * 16 + 16 ≤ o.size
  hrcs : rd s.memory (bo + 32) = rcs
  rcsObj : ∃ o ∈ Γ, o.base = rcs ∧ o.ty = tBOS ∧ idx.toNat * 16 + 16 ≤ o.size
  logsObj : ∃ o ∈ Γ, o.base = rd s.memory (bo + 40) ∧ o.ty = tLSTh
  rlogsObj : ∃ o ∈ Γ, o.base = rd s.memory (bo + 72) ∧ o.ty = tLSTh
  hbe : gword s (nm "be") = some be
  beObj : ∃ o ∈ Γ, o.base = be ∧ o.ty = tBOS ∧ 120 ≤ o.size
  beCoin : BufOK guestC Γ p (rd s.memory (be + 32)).toNat 20
  dis1 : be ≠ txs
  dis2 : be ≠ rcs
  dis3 : txs ≠ rcs
  bal : BalG Γ s

/-- **The precondition of `process_transaction`** (`HypPt`'s): `PtPreD`, and the buffers at the ghost allocator `gp0 p` (every cell outside
the typing is a heap cell below `p.hp`): the transaction's pointer buffers, and the coinbase buffer, which lies in the heap. -/
def PtPreE (M : Nat) : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop :=
  fun vs s Γ p => CPre Γ ∧ ∃ tx idx bo be txs rcs, vs = [.val (.word tx), .val (.word idx)] ∧
    PtPreD M Γ s p tx idx bo be txs rcs ∧
    (heapBase ≤ (rd s.memory (be + BitVec.ofNat 64 32)).toNat ∧
      (rd s.memory (be + BitVec.ofNat 64 32)).toNat + 20 ≤ heapEnd) ∧
    Rec.TxBuf Γ (Exb.gp0 p) s.memory tx 152 ∧
    BufOK guestC Γ (Exb.gp0 p) (rd s.memory (be + BitVec.ofNat 64 32)).toNat 20

/-- **`process_transaction`**: the block cells outside `PtW` keep their value; both new slices lie in `tVAL` objects of `Γ'`. -/
def HypPt (σ : Type) (M : Nat) : Prop :=
  CallR (σ := σ) (nm "process_transaction") (PtPreE M)
    (fun vs s _ a => ∃ idx bo, vs.length = 2 ∧ argW vs 1 = some idx ∧ gword s (nm "bo") = some bo ∧
      PtW bo (rd s.memory (bo + 24)) (rd s.memory (bo + 32)) idx a)
    (fun vs s _ _ _ t Γ' _ => ∃ idx bo, argW vs 1 = some idx ∧ gword s (nm "bo") = some bo ∧
      Hooks.VInR tVAL Γ' (rd t.memory (rd s.memory (bo + 24) + idx * 16))
        (rd t.memory (rd s.memory (bo + 24) + idx * 16 + 8)) ∧
      Hooks.VInR tVAL Γ' (rd t.memory (rd s.memory (bo + 32) + idx * 16))
        (rd t.memory (rd s.memory (bo + 32) + idx * 16 + 8)))

end InitECandidate.Solver.MemSafe.Eb
