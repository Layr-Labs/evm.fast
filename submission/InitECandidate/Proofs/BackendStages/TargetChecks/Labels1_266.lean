import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_266
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_266_eq : LabToTarget.sectionLabels 220688 Reencode0_266.lines [] = (222080, localLabels1_266) := by
  with_unfolding_all rfl
#print axioms localLabels1_266_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
