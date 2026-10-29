import InitECandidate.Proofs.BackendStages.Padded858
import InitECandidate.Proofs.BackendStages.BytesData858
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes858_eq : (Padded858.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes858 := by
  with_unfolding_all rfl
#print axioms sectionBytes858_eq
end InitECandidate.Proofs.BackendStages
