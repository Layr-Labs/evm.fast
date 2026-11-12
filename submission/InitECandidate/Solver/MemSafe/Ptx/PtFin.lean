import InitECandidate.Solver.MemSafe.Ptx.PtSfx
import InitECandidate.Solver.MemSafe.Ptx.PcmFun
import InitECandidate.Solver.MemSafe.Bal.Ub9

/-!
# F3d: the precondition, the post and the explicit hypotheses of `process_transaction`

Hypotheses (each stated once, here):
* `HypRcpt σ` (with `LogsK`): `encode_receipt` returns a slice inside a block allocated by the call, writes only that block, cells of
  `Γ`'s non-protected slots and cells unallocated at entry (package `rcpt_fresh`, main);
* `HypEncTx σ`: the same for `encode_transaction` (main assigns the proof; `Rec.csumm_tx_encode_generic_guestR` is the base);
* `HypPmM σ M`, `HypCfL σ` (`PcmDef.lean`), `Bal.HGS σ` (`ws_get_storage`'s summary).
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

/-- The result and footprint of an encoder that returns a slice of a fresh block. -/
def EncOut (Γ : Gam) (p : Ptrs) (s t : State σ) (v : ValueHOL 64) : Prop :=
  ∃ (Γ' : Gam) (p' : Ptrs) (rp rl : BitVec 64), G guestC (HR σ) Γ' t ∧ ptrsOf t = some p' ∧ Ext Γ Γ' ∧
    NewFresh Γ Γ' p p' ∧ p.Mono p' ∧ (∀ g ∈ guestC.PG, t.globals.lookup g = s.globals.lookup g) ∧
    flattenHOL v = [.word rp, .word rl] ∧ 1 ≤ rl.toNat ∧
    ∃ buf n : Nat, buf % 8 = 0 ∧ n % 8 = 0 ∧ p.hp ≤ buf ∧ buf ≤ rp.toNat ∧ rp.toNat + rl.toNat ≤ buf + n ∧
      buf + n ≤ p'.hp ∧ (∀ a : Nat, buf ≤ a → a < buf + n → ¬ InObj Γ' a) ∧
      ModifiesOnly (fun x => WCell guestC Γ x ∨ (buf ≤ x.toNat ∧ x.toNat < buf + n) ∨ ¬ p.Allocated x.toNat)
        s.memory t.memory

/-! `LogsK` (copied from the receipt package's `Rcpt/Defs.lean`, same text, so the two match at merge). -/
def lgN (m : Mem) (logs : BitVec 64) : Nat := (rd m (logs + 8)).toNat
def lgP (m : Mem) (logs : BitVec 64) : BitVec 64 := rd m logs
def lgArr (m : Mem) (logs : BitVec 64) (i : Nat) : BitVec 64 := lgP m logs + BitVec.ofNat 64 (8 * i)
def lgRec (m : Mem) (logs : BitVec 64) (i : Nat) : BitVec 64 := rd m (lgArr m logs i)
def lgNt (m : Mem) (logs : BitVec 64) (i : Nat) : Nat := (rd m (lgRec m logs i + 16)).toNat
def lgDn (m : Mem) (logs : BitVec 64) (i : Nat) : Nat := (rd m (lgRec m logs i + 32)).toNat

/-- A list cell lies below `h0` or at or above `heapEnd`, is allocated and is not a written (non-`prot`) cell of `Γ`. -/
def CellOK (Γ : Gam) (p : Ptrs) (h0 : Nat) (c : BitVec 64) : Prop :=
  (c.toNat + 8 ≤ h0 ∨ heapEnd ≤ c.toNat) ∧ p.Allocated c.toNat ∧ ¬ WCell guestC Γ c

def LogsK (Γ : Gam) (p : Ptrs) (m : Mem) (h0 : Nat) (logs : BitVec 64) : Prop :=
  RecsBelow Γ m h0 logs ∧ CellOK Γ p h0 logs ∧ CellOK Γ p h0 (logs + 8) ∧
    (∀ i, i < lgN m logs → CellOK Γ p h0 (lgArr m logs i)) ∧
    lgN m logs ≤ 2 ^ 25

/-- `encode_receipt` (package `rcpt_fresh`). -/
def HypRcpt (σ : Type) : Prop :=
  FunSpec σ guestCtx (nm "encode_receipt") (fun vs s r t => ∀ v, r = .returned v →
    ∀ (Γ : Gam) (h0 : Nat) (p : Ptrs) (logs : BitVec 64),
      G guestC (HR σ) Γ s → ptrsOf s = some p → Aw.Below Γ h0 → h0 % 8 = 0 → heapBase ≤ h0 → h0 ≤ p.hp →
      argW vs 3 = some logs → LogsK Γ p s.memory h0 logs → EncOut Γ p s t v)

/-- `encode_transaction` (main assigns the proof). -/
def HypEncTx (σ : Type) : Prop :=
  FunSpec σ guestCtx (nm "encode_transaction") (fun vs s r t => ∀ v, r = .returned v →
    ∀ (Γ : Gam) (p : Ptrs) (tx : BitVec 64), G guestC (HR σ) Γ s → ptrsOf s = some p → vs = [.val (.word tx)] →
      (∃ o ∈ Γ, o.base = tx ∧ o.ty = tTX) → EncOut Γ p s t v)

/-- The entry facts `process_transaction(tx, index)` needs (`execute_block`'s loop establishes them). -/
structure PtPreD (M : Nat) (Γ : Gam) (s : State σ) (p : Ptrs) (tx idx bo be txs rcs : BitVec 64) : Prop where
  hp : ptrsOf s = some p
  hJ : JrNZ s
  hev : ∃ e, gword s nmEv = some e ∧ e.toNat < nullMax
  hcc : ∃ c, gword s nmCC = some c ∧ c.toNat < nullMax
  hM : 2 ^ 24 + 2 ≤ M
  txObj : ∃ o ∈ Γ, o.base = tx ∧ o.ty = tTX
  txbuf : TxBuf Γ p s.memory tx 152
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
  gbs : ∃ w, gword s (nm "bs") = some w ∧ ∃ o ∈ Γ, o.base = w ∧ o.ty = tBS
  gba : ∃ w, gword s (nm "bal_accounts") = some w ∧ ∃ o ∈ Γ, o.base = w ∧ o.ty = tHTd20
  gbk : ∃ w, gword s (nm "bal_key_buf") = some w ∧ ∃ o ∈ Γ, o.base = w ∧ o.ty = tB64
  gbi : ∃ w, gword s (nm "bal_idx_accts") = some w ∧ ∃ o ∈ Γ, o.base = w ∧ o.ty = tHTh28
  gbs2 : ∃ w, gword s (nm "bal_idx_stor") = some w ∧ ∃ o ∈ Γ, o.base = w ∧ o.ty = tHTh60
  gsk : ∃ w, gword s (nm "sk_buf") = some w ∧ ∃ o ∈ Γ, o.base = w ∧ o.ty = tB64

/-- The cells `process_transaction` writes in block objects. -/
def PtW (bo txs rcs idx : BitVec 64) (a : BitVec 64) : Prop :=
  a = bo ∨ a = bo + 8 ∨ a = bo + 16 ∨ a = bo + 48 ∨ a = txs + idx * 16 ∨ a = txs + idx * 16 + 8 ∨
  a = rcs + idx * 16 ∨ a = rcs + idx * 16 + 8

/-- **The post.** -/
structure PtPost (Γ : Gam) (s : State σ) (tx idx bo txs rcs : BitVec 64) (Γ' : Gam) (t : State σ) : Prop where
  hG : G guestC (HR σ) Γ' t
  keep : KeepH guestC Γ Γ' s t
  bkeep : ∀ o ∈ Γ, o.ty ∈ blockTys → ∀ k, o.HasSlot k → (guestC.ty o.ty).slot k = .prot →
    ¬ PtW bo txs rcs idx (o.cell k) → rd t.memory (o.cell k) = rd s.memory (o.cell k)
  hev : ∃ e, gword t nmEv = some e ∧ e.toNat < nullMax
  hcc : ∃ c, gword t nmCC = some c ∧ c.toNat < nullMax
  txSlice : Hooks.VInR tVAL Γ' (rd t.memory (txs + idx * 16)) (rd t.memory (txs + idx * 16 + 8))
  rcSlice : Hooks.VInR tVAL Γ' (rd t.memory (rcs + idx * 16)) (rd t.memory (rcs + idx * 16 + 8))

/-- The value relation of `process_transaction`. -/
def PtR (M : Nat) (vs : List (ValueHOL 64)) (s : State σ) (r : PanSemResultExact 64) (t : State σ) : Prop :=
  ∀ Γ, G guestC (HR σ) Γ s → ∀ (tx idx : BitVec 64), vs = [.val (.word tx), .val (.word idx)] →
    ∀ (p : Ptrs) (bo be txs rcs : BitVec 64), PtPreD M Γ s p tx idx bo be txs rcs →
    ∀ v, r = .returned v → ∃ Γ', PtPost Γ s tx idx bo txs rcs Γ' t

end InitECandidate.Solver.MemSafe.Ptx
