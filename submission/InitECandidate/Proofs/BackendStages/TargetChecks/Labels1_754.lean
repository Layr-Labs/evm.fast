import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_754
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_754_eq : LabToTarget.sectionLabels 822528 Reencode0_754.lines [] = (826296, localLabels1_754) := by
  with_unfolding_all rfl
#print axioms localLabels1_754_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
