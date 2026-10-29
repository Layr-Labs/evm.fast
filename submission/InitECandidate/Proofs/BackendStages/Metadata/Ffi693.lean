import InitECandidate.Proofs.BackendStages.Metadata.Data693
import InitECandidate.Proofs.BackendStages.Filtered693
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis693_eq : ffiLines Filtered693.lines = localFfis693 := by
  with_unfolding_all rfl
theorem ffiStep693 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis693) : LabToTarget.findFfiNames (Filtered693 :: rest) = suffixFfis693 := by
  rw [findFfiNames_section, localFfis693_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep693
end InitECandidate.Proofs.BackendStages.Metadata
