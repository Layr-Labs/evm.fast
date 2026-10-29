import InitECandidate.Proofs.BackendStages.Padded219
import InitECandidate.Proofs.BackendStages.BytesData219
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes219_eq : (Padded219.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes219 := by
  with_unfolding_all rfl
#print axioms sectionBytes219_eq
end InitECandidate.Proofs.BackendStages
