import InitECandidate.Proofs.BackendStages.Padded189
import InitECandidate.Proofs.BackendStages.BytesData189
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes189_eq : (Padded189.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes189 := by
  with_unfolding_all rfl
#print axioms sectionBytes189_eq
end InitECandidate.Proofs.BackendStages
