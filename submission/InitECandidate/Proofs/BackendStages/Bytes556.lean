import InitECandidate.Proofs.BackendStages.Padded556
import InitECandidate.Proofs.BackendStages.BytesData556
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes556_eq : (Padded556.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes556 := by
  with_unfolding_all rfl
#print axioms sectionBytes556_eq
end InitECandidate.Proofs.BackendStages
