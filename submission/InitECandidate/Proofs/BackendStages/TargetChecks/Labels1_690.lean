import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_690
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_690_eq : LabToTarget.sectionLabels 693628 Reencode0_690.lines [] = (694292, localLabels1_690) := by
  with_unfolding_all rfl
#print axioms localLabels1_690_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
