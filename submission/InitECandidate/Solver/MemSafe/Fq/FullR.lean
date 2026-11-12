import InitECandidate.Solver.MemSafe.Fq.InvR
import InitECandidate.Solver.MemSafe.Fq.Pairing
import InitECandidate.Solver.MemSafe.Mod.PreModexpR
import InitECandidate.Solver.MemSafe.Fq.Full
import InitECandidate.Solver.MemSafe.Rec.WireR
import InitECandidate.Solver.MemSafe.ShardsJL.AllR
import InitECandidate.Solver.MemSafe.Hooks.Rec

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Fq
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

theorem csumm_pairing_check_guestR {σ : Type} :
    CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ))
      (nm "pre_alt_bn128_pairing_check") Pre.preSig Pre.evCaps :=
  csumm_pairing_check Rec.foldOK_guestR Wire.tab_guestR csumm_fq12_inv_guestR

/-- **`run_precompile`, no hypotheses.** -/
theorem run_precompile_guestR_full {σ : Type} :
    Pre.RpS σ (Hooks.guestHooksR (σ := σ)) :=
  Mod.run_precompile_guestR' csumm_pairing_check_guestR

end InitECandidate.Solver.MemSafe.Fq

#print axioms InitECandidate.Solver.MemSafe.Fq.csumm_pairing_check_guestR
#print axioms InitECandidate.Solver.MemSafe.Fq.run_precompile_guestR_full
