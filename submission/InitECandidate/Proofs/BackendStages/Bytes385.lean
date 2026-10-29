import InitECandidate.Proofs.BackendStages.Padded385
import InitECandidate.Proofs.BackendStages.BytesData385
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes385_eq : (Padded385.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes385 := by
  with_unfolding_all rfl
#print axioms sectionBytes385_eq
end InitECandidate.Proofs.BackendStages
