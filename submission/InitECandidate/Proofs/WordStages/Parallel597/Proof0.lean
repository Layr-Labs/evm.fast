import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel597.Data0
import InitECandidate.Proofs.WordStages.Source597
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel597
theorem pass597_0_eq : WordSimp.compileExp (source597.2.2) = pass597_0 := by
  kernel_rfl
#print axioms pass597_0_eq
end InitECandidate.Proofs.WordStages.Parallel597
