import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_743
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_743_eq : LabToTarget.sectionLabels 811800 Reencode0_743.lines [] = (813664, localLabels1_743) := by
  with_unfolding_all rfl
#print axioms localLabels1_743_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
