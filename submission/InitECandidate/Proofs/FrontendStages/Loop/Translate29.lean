import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.LoopKernelComputation
import InitECandidate.Proofs.FrontendStages.Crep.Data29
import InitECandidate.Proofs.FrontendStages.Loop.Data29
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
theorem translate29_eq :
    (93, List.range Crep.output29.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output29.2.1 (crepSimpProgHOL Crep.output29.2.2))) = output29 := by
  rw [InitECandidate.Proofs.LoopKernelComputation.optimiseStructural_eq]
  kernel_rfl
#print axioms translate29_eq
end InitECandidate.Proofs.FrontendStages.Loop
