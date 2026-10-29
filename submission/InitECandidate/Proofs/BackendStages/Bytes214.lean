import InitECandidate.Proofs.BackendStages.Padded214
import InitECandidate.Proofs.BackendStages.BytesData214
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes214_eq : (Padded214.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes214 := by
  with_unfolding_all rfl
#print axioms sectionBytes214_eq
end InitECandidate.Proofs.BackendStages
