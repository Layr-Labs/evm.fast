import InitECandidate.Proofs.BackendStages.Padded166
import InitECandidate.Proofs.BackendStages.BytesData166
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes166_eq : (Padded166.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes166 := by
  with_unfolding_all rfl
#print axioms sectionBytes166_eq
end InitECandidate.Proofs.BackendStages
