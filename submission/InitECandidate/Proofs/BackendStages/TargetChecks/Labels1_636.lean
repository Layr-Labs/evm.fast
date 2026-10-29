import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_636
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_636_eq : LabToTarget.sectionLabels 587916 Reencode0_636.lines [] = (588040, localLabels1_636) := by
  with_unfolding_all rfl
#print axioms localLabels1_636_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
