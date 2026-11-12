import InitECandidate.Solver.MemSafe.Node.Ctors2
import InitECandidate.Solver.MemSafe.Node.NodeHashJL

set_option autoImplicit false

/-!
# The node constructors for `guestHooksJL`

`HooksMono guestC guestHooksJL` is `Hooks.guestHooksJL_mono`; the node hook is trivial
(`nodeHooks_guestJL`). Each `*_guestJL` is the `CSumm` (`caps = []`) form of the fold's table.
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Node
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers

set_option maxRecDepth 100000

theorem node_new_leaf_guestJL {σ : Type} :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "node_new_leaf") nlSig [] :=
  csumm_of_summA (sumSpecA_node_new_leaf Wire.foldOK_guestJL Hooks.guestHooksJL_mono
    nodeHooks_guestJL)

theorem node_new_branch_guestJL {σ : Type} :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "node_new_branch") nbSig [] :=
  csumm_of_summA (sumSpecA_node_new_branch Wire.foldOK_guestJL Hooks.guestHooksJL_mono
    nodeHooks_guestJL)

theorem node_new_ext_guestJL {σ : Type} :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "node_new_ext") neSig [] :=
  csumm_of_summA (sumSpecA_node_new_ext Wire.foldOK_guestJL Hooks.guestHooksJL_mono
    nodeHooks_guestJL)

theorem node_new_hashed_guestJL {σ : Type} :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "node_new_hashed") nhSig [] :=
  csumm_of_summA (sumSpecA_node_new_hashed Wire.foldOK_guestJL Hooks.guestHooksJL_mono
    fun Γ s o h => nodeHooks_guestJL Γ s o (by rw [h]; simp [nodeTys]))

end InitECandidate.Solver.MemSafe.Node

#print axioms InitECandidate.Solver.MemSafe.Node.node_new_leaf_guestJL
#print axioms InitECandidate.Solver.MemSafe.Node.node_new_branch_guestJL
#print axioms InitECandidate.Solver.MemSafe.Node.node_new_ext_guestJL
#print axioms InitECandidate.Solver.MemSafe.Node.node_new_hashed_guestJL
