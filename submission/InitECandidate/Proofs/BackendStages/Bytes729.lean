import InitECandidate.Proofs.BackendStages.Padded729
import InitECandidate.Proofs.BackendStages.BytesData729
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes729_eq : (Padded729.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes729 := by
  with_unfolding_all rfl
#print axioms sectionBytes729_eq
end InitECandidate.Proofs.BackendStages
