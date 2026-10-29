import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.LoopKernelComputation
import InitECandidate.Proofs.FrontendStages.Crep.Data231
import InitECandidate.Proofs.FrontendStages.Loop.Data231
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
theorem translate231_eq :
    (295, List.range Crep.output231.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output231.2.1 (crepSimpProgHOL Crep.output231.2.2))) = output231 := by
  rw [InitECandidate.Proofs.LoopKernelComputation.optimiseStructural_eq]
  kernel_rfl
#print axioms translate231_eq
end InitECandidate.Proofs.FrontendStages.Loop
