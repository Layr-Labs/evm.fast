import InitECandidate.Proofs.BackendStages.Padded452
import InitECandidate.Proofs.BackendStages.BytesData452
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes452_eq : (Padded452.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes452 := by
  with_unfolding_all rfl
#print axioms sectionBytes452_eq
end InitECandidate.Proofs.BackendStages
