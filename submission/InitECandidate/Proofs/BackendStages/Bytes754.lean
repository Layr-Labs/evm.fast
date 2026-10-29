import InitECandidate.Proofs.BackendStages.Padded754
import InitECandidate.Proofs.BackendStages.BytesData754
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes754_eq : (Padded754.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes754 := by
  with_unfolding_all rfl
#print axioms sectionBytes754_eq
end InitECandidate.Proofs.BackendStages
