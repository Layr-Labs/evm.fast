import InitECandidate.Proofs.BackendStages.Padded427
import InitECandidate.Proofs.BackendStages.BytesData427
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes427_eq : (Padded427.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes427 := by
  with_unfolding_all rfl
#print axioms sectionBytes427_eq
end InitECandidate.Proofs.BackendStages
