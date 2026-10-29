import InitECandidate.Proofs.BackendStages.Padded789
import InitECandidate.Proofs.BackendStages.BytesData789
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes789_eq : (Padded789.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes789 := by
  with_unfolding_all rfl
#print axioms sectionBytes789_eq
end InitECandidate.Proofs.BackendStages
