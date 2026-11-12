import InitECandidate.Solver.MemSafe.Rcpt.Main6
import InitECandidate.Solver.MemSafe.ShardsR.All
import InitECandidate.Solver.MemSafe.Shards.CtabFind

set_option autoImplicit false

/-!
# `Ptx.HypRcptFresh` (with `LogsK`): the receipt fits the block `encode_receipt` allocates

`logs_bloom`'s summary comes from the checked table `ShardsR.tab_soundR` (`ctab%`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Rcpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Shards

variable {σ : Type}

theorem bloom_csumm :
    CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "logs_bloom") bloomSig [] :=
  ctab% ShardsR.tab_soundR

/-- **`rcpt_fresh`**: `encode_receipt` returns a slice inside a block that was fresh at entry and lies
below the exit heap pointer, writing only `WCell`s, that block, and cells unallocated at entry. -/
theorem funSpec_rcptFresh :
    FunSpec σ guestCtx (nm "encode_receipt") (fun vs s r t => ∀ v, r = .returned v →
      ∀ (Γ : Gam) (h0 : Nat) (p : Ptrs) (logs : BitVec 64),
        G guestC (Hooks.guestHooksR (σ := σ)) Γ s → ptrsOf s = some p → Aw.Below Γ h0 → h0 % 8 = 0 →
        heapBase ≤ h0 → h0 ≤ p.hp → argW vs 3 = some logs → LogsK Γ p s.memory h0 logs →
        ∃ p' rp rl, ptrsOf t = some p' ∧ flattenHOL v = [.word rp, .word rl] ∧ 1 ≤ rl.toNat ∧
          ∃ buf n : Nat, buf % 8 = 0 ∧ n % 8 = 0 ∧ p.hp ≤ buf ∧ buf ≤ rp.toNat ∧
            rp.toNat + rl.toNat ≤ buf + n ∧ buf + n ≤ p'.hp ∧
            ModifiesOnly (fun x => WCell guestC Γ x ∨ (buf ≤ x.toNat ∧ x.toNat < buf + n) ∨
              ¬ p.Allocated x.toNat) s.memory t.memory) :=
  funSpec_rcptFresh_of bloom_csumm

end InitECandidate.Solver.MemSafe.Rcpt

#print axioms InitECandidate.Solver.MemSafe.Rcpt.funSpec_rcptFresh
#print axioms InitECandidate.Solver.MemSafe.Rcpt.funSpec_encode_logsX
#print axioms InitECandidate.Solver.MemSafe.Rcpt.funSpec_bound
#print axioms InitECandidate.Solver.MemSafe.Rcpt.funSpec_rcptFresh_of
