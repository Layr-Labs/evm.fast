import InitECandidate.Solver.MemSafe.Ops7.Cost
import InitECandidate.Solver.MemSafe.Mod.PreModexpR
import InitECandidate.Solver.MemSafe.Fq.FullR
import InitECandidate.Solver.MemSafe.Ops4.All
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# Hypotheses of the CREATE handlers (sonnet-create)

* **`CcaHyp σ`**: the summary of `compute_contract_address(addr, nonce, out)` as a fold-table
  entry would state it: signature `[any, any, buf 20]`, no protected globals, no growth, no
  capabilities (it writes only the 20 bytes of `out`; its temporaries live in a heap window
  released at return). The merged `tab26` rejects the function ("call to rlp_encode_word:
  arguments do not fit", `research/notes/memsafe-handproofs.md`), because `p = p + w` leaves the
  fold's alias analysis; `compute_create2_contract_address` is in `tab26`.
* `preHyps_proved`: `PreHyps σ` from the three proved fields `pm`, `pc`, `rpG` of `FHypsB`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ops7
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

/-- `compute_contract_address`'s table signature. -/
def ccaSg : Sig := ⟨[.any, .any, .buf 20], [], [], false⟩

/-- **The hypothesis**: `compute_contract_address`'s capability summary (`cs = []`) and
`KeepsFp`. -/
structure CcaHyp (σ : Type) : Prop where
  summ : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "compute_contract_address")
    ccaSg []
  fp : KeepsFp σ guestCtx (nm "compute_contract_address")

def ccaE : GEnv := ⟨[], [nm "compute_contract_address"], [Hooks.gJn]⟩

theorem cca_ok : PlainOKB ccaE (nm "compute_contract_address") ccaSg [] 3 := by decide +kernel

theorem preHyps_proved : PreHyps σ :=
  preHyps_of Mod.csumm_pre_modexp_guestR Fq.csumm_pairing_check_guestR Ops4.rpG_guestR

end InitECandidate.Solver.MemSafe.Ops7

#print axioms InitECandidate.Solver.MemSafe.Ops7.cca_ok
#print axioms InitECandidate.Solver.MemSafe.Ops7.preHyps_proved
