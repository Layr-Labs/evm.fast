import InitECandidate.Proofs.BackendStages.Padded99
import InitECandidate.Proofs.BackendStages.BytesData99
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes99_eq : (Padded99.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes99 := by
  with_unfolding_all rfl
#print axioms sectionBytes99_eq
end InitECandidate.Proofs.BackendStages
