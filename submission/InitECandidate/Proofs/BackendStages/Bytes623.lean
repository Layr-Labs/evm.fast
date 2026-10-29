import InitECandidate.Proofs.BackendStages.Padded623
import InitECandidate.Proofs.BackendStages.BytesData623
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes623_eq : (Padded623.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes623 := by
  with_unfolding_all rfl
#print axioms sectionBytes623_eq
end InitECandidate.Proofs.BackendStages
