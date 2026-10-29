import InitECandidate.Proofs.BackendStages.Padded762
import InitECandidate.Proofs.BackendStages.BytesData762
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes762_eq : (Padded762.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes762 := by
  with_unfolding_all rfl
#print axioms sectionBytes762_eq
end InitECandidate.Proofs.BackendStages
