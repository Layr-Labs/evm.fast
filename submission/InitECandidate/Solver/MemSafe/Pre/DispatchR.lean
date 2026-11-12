import InitECandidate.Solver.MemSafe.Wire.FoldR
import InitECandidate.Solver.MemSafe.Pre.Dispatch
import InitECandidate.Solver.MemSafe.Pre.RpHand
import InitECandidate.Solver.MemSafe.Rec.WireR
import InitECandidate.Solver.MemSafe.ShardsJL.AllR
import InitECandidate.Solver.MemSafe.Hooks.Rec
import InitECandidate.Solver.MemSafe.Shards.CtabFind

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Pre
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS ProgHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- At the challenge context: `pre_modexp` and the pairing check remain hypotheses. -/
theorem sumSpecA_run_precompile_guestR {σ : Type}
    (hPM : CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "pre_modexp") preSig evCaps)
    (hPC : CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ))
      (nm "pre_alt_bn128_pairing_check") preSig evCaps) :
    RpS σ (Hooks.guestHooksR (σ := σ)) :=
  sumSpecA_run_precompile Rec.foldOK_guestR
    (ctabSound_cons (ctabSound_cons Wire.tab_guestR hPC) hPM)
    (sumSpecA_pre_identity Rec.foldOK_guestR (ctab% Wire.tab_guestR) (ctab% Wire.tab_guestR))

end InitECandidate.Solver.MemSafe.Pre

#print axioms InitECandidate.Solver.MemSafe.Pre.sumSpecA_run_precompile_guestR
