import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_184
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_184_eq : LabToTarget.sectionLabels 105676 Reencode0_184.lines [] = (105864, localLabels1_184) := by
  with_unfolding_all rfl
#print axioms localLabels1_184_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
