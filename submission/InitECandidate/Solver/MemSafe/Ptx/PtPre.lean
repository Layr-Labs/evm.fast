import InitECandidate.Solver.MemSafe.Ptx.PtHoare

/-!
# F3d: the precondition of `process_transaction` (stated once)

`PtPre E`: what the caller (`execute_block`'s loop) must establish at the entry `(Γ0, s0)` of
`process_transaction(tx, index)`.
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

/-- `g` holds a non-null object of type `ty` (the shape of `Bal.UbPre`). -/
def GObj (Γ : Gam) (s : State σ) (g : MlS) (ty : Nat) : Prop :=
  ∃ w, gword s g = some w ∧ ∃ o ∈ Γ, o.base = w ∧ o.ty = ty

/-- **The precondition of `process_transaction(tx, index)`** at the entry data `E`. -/
structure PtPre (E : PtE σ) : Prop where
  hG : G guestC (HR σ) E.Γ0 E.s0
  hp : ∃ q, ptrsOf E.s0 = some q ∧ E.p0 = gp0 q
  hJ : JrNZ E.s0
  hev : ∃ e, gword E.s0 nmEv = some e ∧ e.toNat < nullMax
  hcc : ∃ c, gword E.s0 nmCC = some c ∧ c.toNat < nullMax
  -- the transaction record
  tx : ∃ o ∈ E.Γ0, o.base = E.tx ∧ o.ty = tTX
  txbuf : TxBuf E.Γ0 E.p0 E.s0.memory E.tx 152
  -- the block output record and its arrays
  hbo : gword E.s0 (nm "bo") = some E.bo
  boObj : ∃ o ∈ E.Γ0, o.base = E.bo ∧ o.ty = tBO
  htxs : rd E.s0.memory (E.bo + 24) = E.txs
  txsObj : ∃ o ∈ E.Γ0, o.base = E.txs ∧ o.ty = tBOS ∧ E.idx.toNat * 16 + 16 ≤ o.size
  hrcs : rd E.s0.memory (E.bo + 32) = E.rcs
  rcsObj : ∃ o ∈ E.Γ0, o.base = E.rcs ∧ o.ty = tBOS ∧ E.idx.toNat * 16 + 16 ≤ o.size
  logsObj : ∃ o ∈ E.Γ0, o.base = rd E.s0.memory (E.bo + 40) ∧ o.ty = tLSTh
  rlogsObj : ∃ o ∈ E.Γ0, o.base = rd E.s0.memory (E.bo + 72) ∧ o.ty = tLSTh
  -- the block environment `be` (a global scalar holding the base of a `tBOS` object)
  hbe : gword E.s0 (nm "be") = some E.be
  beObj : ∃ o ∈ E.Γ0, o.base = E.be ∧ o.ty = tBOS ∧ 120 ≤ o.size
  beCoin : BufOK guestC E.Γ0 E.p0 (rd E.s0.memory (E.be + 32)).toNat 20
  -- `Bal.UbPre`'s globals (`ts` is reallocated by `state_fresh_tx`)
  gbs : GObj E.Γ0 E.s0 (nm "bs") tBS
  gba : GObj E.Γ0 E.s0 (nm "bal_accounts") tHTd20
  gbk : GObj E.Γ0 E.s0 (nm "bal_key_buf") tB64
  gbi : GObj E.Γ0 E.s0 (nm "bal_idx_accts") tHTh28
  gbs2 : GObj E.Γ0 E.s0 (nm "bal_idx_stor") tHTh60
  gsk : GObj E.Γ0 E.s0 (nm "sk_buf") tB64

end InitECandidate.Solver.MemSafe.Ptx
