import InitECandidate.Proofs.BackendStages.BytePiecesData279
import InitECandidate.Proofs.BackendStages.BytePiecesData280
import InitECandidate.Proofs.BackendStages.BytePiecesData281
import InitECandidate.Proofs.BackendStages.BytePiecesData282
import InitECandidate.Proofs.BackendStages.BytePiecesData283
import InitECandidate.Bytes054
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
theorem candidate054_eq : InitECandidate.bytes054 = [piece279_1, piece280_0, piece281_0, piece282_0, piece283_0].flatten := by
  rw [piece279_1_eq, piece280_0_eq, piece281_0_eq, piece282_0_eq, piece283_0_eq]
  rfl
#print axioms candidate054_eq
end InitECandidate.Proofs.BackendStages.BytePieces
