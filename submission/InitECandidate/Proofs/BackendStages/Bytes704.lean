import InitECandidate.Proofs.BackendStages.Padded704
import InitECandidate.Proofs.BackendStages.BytesData704
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes704_eq : (Padded704.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes704 := by
  with_unfolding_all rfl
#print axioms sectionBytes704_eq
end InitECandidate.Proofs.BackendStages
