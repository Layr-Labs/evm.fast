import InitECandidate.Proofs.BackendStages.Padded676
import InitECandidate.Proofs.BackendStages.BytesData676
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes676_eq : (Padded676.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes676 := by
  with_unfolding_all rfl
#print axioms sectionBytes676_eq
end InitECandidate.Proofs.BackendStages
