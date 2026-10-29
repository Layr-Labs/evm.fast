import InitECandidate.Proofs.BackendStages.Padded650
import InitECandidate.Proofs.BackendStages.BytesData650
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes650_eq : (Padded650.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes650 := by
  with_unfolding_all rfl
#print axioms sectionBytes650_eq
end InitECandidate.Proofs.BackendStages
