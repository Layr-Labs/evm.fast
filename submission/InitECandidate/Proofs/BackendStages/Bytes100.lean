import InitECandidate.Proofs.BackendStages.Padded100
import InitECandidate.Proofs.BackendStages.BytesData100
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes100_eq : (Padded100.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes100 := by
  with_unfolding_all rfl
#print axioms sectionBytes100_eq
end InitECandidate.Proofs.BackendStages
