import InitECandidate.Proofs.BackendStages.Padded212
import InitECandidate.Proofs.BackendStages.BytesData212
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes212_eq : (Padded212.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes212 := by
  with_unfolding_all rfl
#print axioms sectionBytes212_eq
end InitECandidate.Proofs.BackendStages
