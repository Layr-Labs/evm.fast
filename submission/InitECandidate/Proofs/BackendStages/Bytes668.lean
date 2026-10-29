import InitECandidate.Proofs.BackendStages.Padded668
import InitECandidate.Proofs.BackendStages.BytesData668
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes668_eq : (Padded668.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes668 := by
  with_unfolding_all rfl
#print axioms sectionBytes668_eq
end InitECandidate.Proofs.BackendStages
