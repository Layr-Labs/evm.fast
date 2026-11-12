import InitECandidate.Solver.MemSafe.Node.NodeHash
import InitECandidate.Solver.MemSafe.Wire.Helpers

set_option autoImplicit false

/-!
# `node_hash_cached` and `node_write_ref` for `guestHooksJL`

The fold's `mpt_fail` (`Wire.mptFail_guestJL`) and `keccak256` (`Wire.keccak256_guestJL`) entries
discharge the hypotheses.
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Node
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.MptH

theorem csumm_node_hash_cached_guestJL {σ : Type} :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "node_hash_cached") nhcSig [] :=
  csumm_node_hash_cached Wire.foldOK_guestJL Wire.mptFail_guestJL Wire.keccak256_guestJL

/-- **`node_write_ref`'s summary for `guestHooksJL`**, every hypothesis discharged. -/
theorem node_write_ref_guestJL {σ : Type} :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "node_write_ref") nwrSig
      (fun _ _ _ => True) (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) :=
  sumSpec_node_write_ref_guestJL Wire.mptFail_guestJL csumm_node_hash_cached_guestJL

end InitECandidate.Solver.MemSafe.Node

#print axioms InitECandidate.Solver.MemSafe.Node.csumm_node_hash_cached_guestJL
#print axioms InitECandidate.Solver.MemSafe.Node.node_write_ref_guestJL
