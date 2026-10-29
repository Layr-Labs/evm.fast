import InitECandidate.Proofs.BackendStages.Padded373
import InitECandidate.Proofs.BackendStages.BytesData373
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes373_eq : (Padded373.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes373 := by
  with_unfolding_all rfl
#print axioms sectionBytes373_eq
end InitECandidate.Proofs.BackendStages
