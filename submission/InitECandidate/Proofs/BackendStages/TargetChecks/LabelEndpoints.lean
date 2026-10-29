import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1
set_option autoImplicit false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Phase0.labels_eq : LabToTarget.computeLabelsAlt 0 Initial.program .ln = Target.labels0 := Labels0.labels_eq
theorem Phase1.labels_eq : LabToTarget.computeLabelsAlt 0 Phase0.program .ln = Target.labels1 := Labels1.labels_eq
#print axioms Phase0.labels_eq
#print axioms Phase1.labels_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
