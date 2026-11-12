import InitECandidate.Solver.MemSafe.Wire.Guest
import InitECandidate.Solver.MemSafe.Frames.BundleJ
import InitECandidate.Solver.MemSafe.HtabEntries.JL

/-!
# Wiring: the `run_frames` bundle for the final hook family

`bundle_ofA_JL` instantiates `Frames.bundle_ofA` at the challenge context and the final hook
family `guestHooksJL`:

* the frame configuration `frameCfg_guestHooksJL`;
* `state_restore`'s summary `csumm_state_restoreL` (the generic journal proofs at `guestHooksJL`);
* `state_restore`'s "keeps `frame_mem_ptr`" fact and its table cost, read off the kernel-checked
  tables.

What remains are the summaries and conditional costs of `op_dispatch` and `finish_child`.
-/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Wire
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- `state_restore`'s table cost. -/
abbrev srBGuest : Nat := 6277101735386680783572166704622097299025671267688351006720

/-- **The `run_frames` bundle for `guestHooksJL`**, from the summaries and conditional costs of
`op_dispatch` and `finish_child`. -/
theorem bundle_ofA_JL {σ : Type} {M Bop Bfin : Nat}
    (opSum : JSpec σ guestCtx guestC (Hooks.guestHooksJL (σ := σ)) (nm "op_dispatch")
      (fun vs s Γ => vs.length = 1 ∧ PreOpJ guestC tEV tCK M vs s Γ) (QStepJ guestC tEV tCK))
    (opCost : CondCost σ guestCtx guestC Hooks.guestHooksJL (nm "op_dispatch") (sg1 [])
      (PreOpJ guestC tEV tCK M) Bop)
    (finSum : JSpec σ guestCtx guestC Hooks.guestHooksJL (nm "finish_child")
      (fun vs s Γ => vs = [] ∧ PreFinJ guestC tEV tCK M vs s Γ) (QStepJ guestC tEV tCK))
    (finCost : CondCost σ guestCtx guestC Hooks.guestHooksJL (nm "finish_child") (sg0 [])
      (PreFinJ guestC tEV tCK M) Bfin) :
    BundleJ σ guestCtx guestC Hooks.guestHooksJL tEV tCK M Bop 2 (max (1 + srBGuest + 0) 0 + 0)
      Bfin :=
  bundle_ofA guestCtx_code Hooks.frameCfg_guestHooksJL
    (HtabEntries.csumm_state_restoreL foldOK_guestJL) opSum opCost finSum finCost
    (keepsFp_guest (by decide_cbv)) (calleeCost_guest (by decide_cbv))

end InitECandidate.Solver.MemSafe.Wire

#print axioms InitECandidate.Solver.MemSafe.Wire.bundle_ofA_JL
