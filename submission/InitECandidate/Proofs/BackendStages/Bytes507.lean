import InitECandidate.Proofs.BackendStages.Padded507
import InitECandidate.Proofs.BackendStages.BytesData507
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes507_eq : (Padded507.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes507 := by
  with_unfolding_all rfl
#print axioms sectionBytes507_eq
end InitECandidate.Proofs.BackendStages
