import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_518
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_518_eq : LabToTarget.sectionLabels 421428 Reencode0_518.lines [] = (422488, localLabels1_518) := by
  with_unfolding_all rfl
#print axioms localLabels1_518_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
