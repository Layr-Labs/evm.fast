import InitECandidate.Proofs.BackendStages.Padded313
import InitECandidate.Proofs.BackendStages.BytesData313
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes313_eq : (Padded313.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes313 := by
  with_unfolding_all rfl
#print axioms sectionBytes313_eq
end InitECandidate.Proofs.BackendStages
