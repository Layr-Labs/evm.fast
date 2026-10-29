import InitECandidate.Proofs.BackendStages.Padded184
import InitECandidate.Proofs.BackendStages.BytesData184
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes184_eq : (Padded184.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes184 := by
  with_unfolding_all rfl
#print axioms sectionBytes184_eq
end InitECandidate.Proofs.BackendStages
