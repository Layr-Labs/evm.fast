import InitECandidate.Solver.MemSafe.Eb.Tail4
import InitECandidate.Solver.MemSafe.Eb.CallK

/-!
# `execute_block`: the hypotheses for `process_withdrawals` and `process_general_purpose_requests`

Both are proved from `HypSft` / `HypPuc` and the table summaries once `Eb/Wd*.lean` and `Eb/Gpr*.lean` land; until then they are
two hypotheses, stated here once. Each carries the global-keep clause: every global outside `pucW` is kept.
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

/-- The globals `process_withdrawals` / `process_general_purpose_requests` may write (those of `process_unchecked_system_transaction`). -/
def WgW (g : MlS) : Prop := pucW.contains g = true

/-- `process_withdrawals(pl)`: `pl` is a `tPL` object; no block cell changes; globals outside `pucW` are kept. -/
def HypWd (σ : Type) : Prop :=
  CallR (σ := σ) (nm "process_withdrawals")
    (fun vs s Γ _ => CPre Γ ∧ BalG Γ s ∧ ∃ pl, vs = [.val (.word pl)] ∧ ∃ o ∈ Γ, o.base = pl ∧ o.ty = tPL)
    (fun _ _ _ _ => False) (fun _ _ _ _ _ _ _ _ => True) ∧
  GwK (σ := σ) (nm "process_withdrawals") WgW

/-- What `process_general_purpose_requests` needs of the block object: `bo`, its requests array `rq` (a `tBOS` object of at least
`8 * 16` bytes), its request count `0`, and its receipt-log list. -/
def GprPre (Γ : Gam) (s : State σ) : Prop :=
  ∃ bo rq rl : BitVec 64, gword s (nm "bo") = some bo ∧ (∃ o ∈ Γ, o.base = bo ∧ o.ty = tBO ∧ 88 ≤ o.size) ∧
    rd s.memory (bo + BitVec.ofNat 64 56) = rq ∧ (∃ o ∈ Γ, o.base = rq ∧ o.ty = tBOS ∧ 128 ≤ o.size) ∧
    rd s.memory (bo + BitVec.ofNat 64 64) = 0 ∧ rd s.memory (bo + BitVec.ofNat 64 72) = rl ∧
    (∃ o ∈ Γ, o.base = rl ∧ o.ty = tLSTh)

/-- The cells it writes: the request count and at most five request entries. -/
def GprD (s : State σ) (a : BitVec 64) : Prop :=
  ∃ bo rq : BitVec 64, gword s (nm "bo") = some bo ∧ rd s.memory (bo + BitVec.ofNat 64 56) = rq ∧
    (a = bo + BitVec.ofNat 64 64 ∨ ∃ j : Nat, j < 5 ∧ (a = rq + BitVec.ofNat 64 (16 * j) ∨ a = rq + BitVec.ofNat 64 (16 * j + 8)))

/-- `process_general_purpose_requests()`: writes only `GprD`; afterwards the request count is `k <= 5`. -/
def HypGpr (σ : Type) : Prop :=
  CallR (σ := σ) (nm "process_general_purpose_requests")
    (fun vs s Γ _ => vs = [] ∧ CPre Γ ∧ BalG Γ s ∧ GprPre Γ s) (fun _ s _ a => GprD s a)
    (fun _ s _ _ _ t _ _ => ∃ bo : BitVec 64, ∃ k : Nat, gword s (nm "bo") = some bo ∧ k ≤ 5 ∧
      rd t.memory (bo + BitVec.ofNat 64 64) = BitVec.ofNat 64 k) ∧
  GwK (σ := σ) (nm "process_general_purpose_requests") WgW

end InitECandidate.Solver.MemSafe.Eb
