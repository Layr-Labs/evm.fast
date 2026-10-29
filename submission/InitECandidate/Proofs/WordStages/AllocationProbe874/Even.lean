import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel874.Data8
import InitECandidate.Proofs.WordStages.Parallel874.Data9
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages.Parallel874
namespace InitECandidate.Proofs.WordStages.AllocationProbe874
@[irreducible] def colour : Spt Nat := proposed874.getD .ln
theorem checked : WordAlloc.everyEvenColour colour = true := by
  unfold colour
  kernel_rfl
#print axioms checked
end InitECandidate.Proofs.WordStages.AllocationProbe874
