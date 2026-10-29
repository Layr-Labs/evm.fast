import InitECandidate.Proofs.BackendStages.Padded201
import InitECandidate.Proofs.BackendStages.BytesData201
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes201_eq : (Padded201.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes201 := by
  with_unfolding_all rfl
#print axioms sectionBytes201_eq
end InitECandidate.Proofs.BackendStages
