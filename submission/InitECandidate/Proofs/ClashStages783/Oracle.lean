import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages783.Data
import InitECandidate.Proofs.WordStages.Parallel783.Data8
import InitECandidate.Proofs.WordStages.Parallel783.Data9
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages.Parallel783
namespace InitECandidate.Proofs.ClashStages783
theorem oracle_eq : proposed783 = some colour := by
  kernel_rfl
#print axioms oracle_eq
end InitECandidate.Proofs.ClashStages783
