import InitECandidate.Proofs.BackendStages.Padded83
import InitECandidate.Proofs.BackendStages.BytesData83
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes83_eq : (Padded83.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes83 := by
  with_unfolding_all rfl
#print axioms sectionBytes83_eq
end InitECandidate.Proofs.BackendStages
