import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_129
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_129_eq : LabToTarget.sectionLabels 24816 Reencode0_129.lines [] = (26028, localLabels1_129) := by
  with_unfolding_all rfl
#print axioms localLabels1_129_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
