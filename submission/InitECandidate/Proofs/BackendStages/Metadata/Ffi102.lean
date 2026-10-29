import InitECandidate.Proofs.BackendStages.Metadata.Data102
import InitECandidate.Proofs.BackendStages.Filtered102
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis102_eq : ffiLines Filtered102.lines = localFfis102 := by
  with_unfolding_all rfl
theorem ffiStep102 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis102) : LabToTarget.findFfiNames (Filtered102 :: rest) = suffixFfis102 := by
  rw [findFfiNames_section, localFfis102_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep102
end InitECandidate.Proofs.BackendStages.Metadata
