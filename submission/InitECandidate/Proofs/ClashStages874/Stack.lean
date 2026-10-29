import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages874.Data
import InitECandidate.Proofs.WordStages.Parallel874.Data8
import InitECandidate.Proofs.WordStages.Parallel874.Data9
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages.Parallel874
namespace InitECandidate.Proofs.ClashStages874
theorem stack_eq : everyStackVarHOL (fun x => decide (2 * (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) ≤ x)) pass874_9 = true := by
  kernel_rfl
#print axioms stack_eq
end InitECandidate.Proofs.ClashStages874
