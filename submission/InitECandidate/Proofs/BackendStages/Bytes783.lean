import InitECandidate.Proofs.BackendStages.Padded783
import InitECandidate.Proofs.BackendStages.BytesData783
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes783_eq : (Padded783.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes783 := by
  with_unfolding_all rfl
#print axioms sectionBytes783_eq
end InitECandidate.Proofs.BackendStages
