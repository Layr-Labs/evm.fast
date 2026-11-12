import InitECandidate.Solver.MemSafe.Fq.Inv
import InitECandidate.Solver.MemSafe.Wire.HelpersR
import InitECandidate.Solver.MemSafe.Fq.InvJL
import InitECandidate.Solver.MemSafe.Rec.WireR
import InitECandidate.Solver.MemSafe.ShardsJL.AllR
import InitECandidate.Solver.MemSafe.Hooks.Rec
import InitECandidate.Solver.MemSafe.Shards.CtabFind

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Fq
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

theorem csumm_fq12_inv_guestR {σ : Type} :
    CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "fq12_inv") invSig [] :=
  csumm_fq12_inv Rec.foldOK_guestR
    (ctab% Wire.tab_guestR)
    (ctab% Wire.tab_guestR)
    (ctab% Wire.tab_guestR)
    (ctab% Wire.tab_guestR)
    (ctab% Wire.tab_guestR)
    (ctab% Wire.tab_guestR)
    Wire.fq_poly_submul_guestR

end InitECandidate.Solver.MemSafe.Fq

#print axioms InitECandidate.Solver.MemSafe.Fq.csumm_fq12_inv_guestR
