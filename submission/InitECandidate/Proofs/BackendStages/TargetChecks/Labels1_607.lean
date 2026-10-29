import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_607
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_607_eq : LabToTarget.sectionLabels 531144 Reencode0_607.lines [] = (532160, localLabels1_607) := by
  with_unfolding_all rfl
#print axioms localLabels1_607_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
