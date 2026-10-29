import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_144
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_144_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 33168 riscvConfig.encode Initial144.lines [] true = (Reencode0_144.lines, 33888, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_144_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
