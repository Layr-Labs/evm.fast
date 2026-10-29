import InitECandidate.Proofs.BackendStages.Padded398
import InitECandidate.Proofs.BackendStages.BytesData398
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes398_eq : (Padded398.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes398 := by
  with_unfolding_all rfl
#print axioms sectionBytes398_eq
end InitECandidate.Proofs.BackendStages
