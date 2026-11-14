import InitECandidate.Solver.MemSafe.ReaderCost.Callers.C06
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReaderCost.Insert
variable {σ : Type}
def bound : Nat := 654752733765164423206263670827865450960699850228066
theorem callee_cost : CalleeCost σ guestCtx (nm "_mpt_insert_node") bound :=
  mkMptInsertNode_sound guestCtx_code guestCtx_bounded ReaderCost.Callers.table6
    (fun f => Shards.finalState.2.1.contains f) ReaderCost.Callers.table6_sound
    (Shards.finalState_sound_guest (σ := σ)).2.1 bound (by cbv)
#print axioms callee_cost
end InitECandidate.Solver.MemSafe.ReaderCost.Insert
