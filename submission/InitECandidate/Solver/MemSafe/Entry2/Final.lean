import InitECandidate.Solver.MemSafe.Entry2.Pmc
import InitECandidate.Solver.MemSafe.FramesAsm
import InitECandidate.Solver.MemSafe.Dn.Cfg
import InitECandidate.Solver.MemSafe.D0.Wire
import InitECandidate.Solver.MemSafe.Entry.PmPost

/-!
# The message entries' costs with no hypotheses

After stage 2b, the frame loop's hypothesis bundle (`Frames.fhypsB_of_stage`), `op_dispatch`'s conditional cost
(`Dn.op_dispatch_condCost_Cfg`) and `depth0_prepare`'s spec (`D0.d0Spec_final`) have no hypotheses, so
`process_message`, `process_create_message` and `process_message_call` have conditional costs that assume only `M < 2^64`
(their precondition `PmPre M` is what the block driver must establish).
-/

set_option autoImplicit false

namespace InitECandidate.Solver.MemSafe.Entry2
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-- The bound of one `op_dispatch` call (`Dn.op_dispatch_condCost_Cfg`). -/
abbrev bOp : Nat := InitECandidate.Solver.Band.odN *
  (1 + max (2 ^ 269) (max InitECandidate.Solver.Band3.oslB InitECandidate.Solver.Band3.ossB))

theorem pm_condCost_final {M : Nat} (hM : M < 2 ^ 64) :
    CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "process_message") (sg1 [])
      (PmPre M) (pmB M bOp) :=
  pm_condCost fhypsB_of_stage D0.d0Spec_final hM Dn.op_dispatch_condCost_Cfg

theorem pcm_condCost_final {M : Nat} (hM : M < 2 ^ 64) :
    CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "process_create_message") (sg1 [])
      (PmPre M) (pcmB M bOp) :=
  pcm_condCost fhypsB_of_stage D0.d0Spec_final hM Dn.op_dispatch_condCost_Cfg

theorem pmc_condCost_final {M : Nat} (hM : M < 2 ^ 64) :
    CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "process_message_call") (sg1 [])
      (PmPre M) (pmcB M bOp) :=
  pmc_condCost fhypsB_of_stage D0.d0Spec_final hM Dn.op_dispatch_condCost_Cfg

/-- **`process_message`'s post on a return, with no hypotheses** (`PmR`: `MarkV` for the returned `child`, `G`,
`ev` / `cur_cont` null): the frame lane's bundle (`fhypsB_of_stage`), `depth0_prepare`'s spec with the
slot-112 keep fact (`D0.d0SpecH_final`), the record-hook fact (`D0.recNoMsg_proved`) and `op_dispatch`'s cost. -/
theorem pm_post_closed {M : Nat} (hM : M < 2 ^ 64) :
    FunSpec σ guestCtx (nm "process_message") (PmR M) :=
  pm_post fhypsB_of_stage D0.recNoMsg_proved D0.d0SpecH_final hM Dn.op_dispatch_condCost_Cfg

end InitECandidate.Solver.MemSafe.Entry2

#print axioms InitECandidate.Solver.MemSafe.Entry2.pm_condCost_final
#print axioms InitECandidate.Solver.MemSafe.Entry2.pcm_condCost_final
#print axioms InitECandidate.Solver.MemSafe.Entry2.pmc_condCost_final
#print axioms InitECandidate.Solver.MemSafe.Entry2.pm_post_closed
