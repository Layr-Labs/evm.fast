import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_516
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_516_eq : LabToTarget.sectionLabels 420076 Reencode0_516.lines [] = (420836, localLabels1_516) := by
  with_unfolding_all rfl
#print axioms localLabels1_516_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
