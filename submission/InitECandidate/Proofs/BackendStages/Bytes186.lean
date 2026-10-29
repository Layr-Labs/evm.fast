import InitECandidate.Proofs.BackendStages.Padded186
import InitECandidate.Proofs.BackendStages.BytesData186
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes186_eq : (Padded186.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes186 := by
  with_unfolding_all rfl
#print axioms sectionBytes186_eq
end InitECandidate.Proofs.BackendStages
