import InitECandidate.Proofs.BackendStages.Padded600
import InitECandidate.Proofs.BackendStages.BytesData600
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes600_eq : (Padded600.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes600 := by
  with_unfolding_all rfl
#print axioms sectionBytes600_eq
end InitECandidate.Proofs.BackendStages
