import InitECandidate.Solver.MemSafe.Fq.Inv
import InitECandidate.Solver.MemSafe.Wire.Helpers
import InitECandidate.Solver.MemSafe.Shards.CtabFind

set_option autoImplicit false

/-!
# `fq12_inv` at the final hook family

No hypotheses: the callee entries `fq_poly_deg` (312), `fq_inv` (345), `fq_mul` (347),
`u256_is_zero` (445), `memzero` (592), `memcpy` (593) are read off the merged fold `ShardsJL.tab26`;
`fq_poly_submul` is `Wire.fq_poly_submul_guestJL`.
-/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Fq
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

theorem csumm_fq12_inv_guestJL {σ : Type} :
    CSumm σ guestCtx guestC (Hooks.guestHooksJL (σ := σ)) (nm "fq12_inv") invSig [] :=
  csumm_fq12_inv Wire.foldOK_guestJL
    (ctab% Wire.tab_guestJL)
    (ctab% Wire.tab_guestJL)
    (ctab% Wire.tab_guestJL)
    (ctab% Wire.tab_guestJL)
    (ctab% Wire.tab_guestJL)
    (ctab% Wire.tab_guestJL)
    Wire.fq_poly_submul_guestJL

end InitECandidate.Solver.MemSafe.Fq

#print axioms InitECandidate.Solver.MemSafe.Fq.csumm_fq12_inv_guestJL
