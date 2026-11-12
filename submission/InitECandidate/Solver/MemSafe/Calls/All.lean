import InitECandidate.Solver.MemSafe.Calls.OpCall
import InitECandidate.Solver.MemSafe.Calls.StaticCall
import InitECandidate.Solver.MemSafe.Calls.DelegateCall
import InitECandidate.Solver.MemSafe.Calls.CcOp
import InitECandidate.Solver.MemSafe.Calls.DlgProof
import InitECandidate.Solver.MemSafe.Mod.PreModexpR
import InitECandidate.Solver.MemSafe.Fq.FullR
import InitECandidate.Solver.MemSafe.Ops4.All
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# The CALL family (frames14): entry point

* **`preHyps_guestR : PreHyps σ`** (from the proved `pre_modexp` / pairing-check summaries and
  `rpG_guestR`);
* **`j_op_call hCH : OpStepB σ guestCtx guestHooksR (nm "op_call")`** and
  **`j_op_staticcall hCH`**, **`j_op_delegatecall hCH`** (same shape), open only in
  `CallHyps σ` (`DlgHyp`: the delegated code address is a `BufOK 20` block, now proved as `dlgHyp_proved`;
  `EcoHyp`: the code length bound of `ext_code_of`, open) and `j_op_callcode hCH`, so
  `callHyps_of_eco : EcoHyp σ → CallHyps σ` leaves only `EcoHyp` open.
-/

set_option autoImplicit false

namespace InitECandidate.Solver.MemSafe.Calls
open InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

/-- `frame_prologue`'s helper facts, from the proved precompile summaries. -/
theorem preHyps_guestR : PreHyps σ :=
  preHyps_of Mod.csumm_pre_modexp_guestR Fq.csumm_pairing_check_guestR Ops4.rpG_guestR

/-- **`op_call`'s bounded step spec**, open only in `CallHyps`. -/
theorem j_op_call (hCH : CallHyps σ) :
    OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_call") :=
  j_op_call_of preHyps_guestR hCH

/-- **`op_staticcall`'s bounded step spec**, open only in `CallHyps`. -/
theorem j_op_staticcall (hCH : CallHyps σ) :
    OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_staticcall") :=
  j_op_staticcall_of preHyps_guestR hCH

/-- **`op_delegatecall`'s bounded step spec**, open only in `CallHyps`. -/
theorem j_op_delegatecall (hCH : CallHyps σ) :
    OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_delegatecall") :=
  j_op_delegatecall_of preHyps_guestR hCH

/-- **`CallHyps` from `EcoHyp` alone**: `DlgHyp` is proved (`DlgProof.lean`). -/
theorem callHyps_of_eco (hE : EcoHyp σ) : CallHyps σ := ⟨dlgHyp_proved, hE⟩

/-- **`op_callcode`'s bounded step spec**, open only in `CallHyps`. -/
theorem j_op_callcode (hCH : CallHyps σ) :
    OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_callcode") :=
  j_op_callcode_of preHyps_guestR hCH

end InitECandidate.Solver.MemSafe.Calls

#print axioms InitECandidate.Solver.MemSafe.Calls.preHyps_guestR
#print axioms InitECandidate.Solver.MemSafe.Calls.j_op_call
#print axioms InitECandidate.Solver.MemSafe.Calls.j_op_staticcall
#print axioms InitECandidate.Solver.MemSafe.Calls.j_op_delegatecall
#print axioms InitECandidate.Solver.MemSafe.Calls.j_op_callcode
#print axioms InitECandidate.Solver.MemSafe.Calls.callHyps_of_eco
