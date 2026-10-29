import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_680
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_680_eq : LabToTarget.sectionLabels 665140 Reencode0_680.lines [] = (665648, localLabels1_680) := by
  with_unfolding_all rfl
#print axioms localLabels1_680_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
