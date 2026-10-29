import InitECandidate.Proofs.BackendStages.Metadata.Data781
import InitECandidate.Proofs.BackendStages.Filtered781
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis781_eq : ffiLines Filtered781.lines = localFfis781 := by
  with_unfolding_all rfl
theorem ffiStep781 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis781) : LabToTarget.findFfiNames (Filtered781 :: rest) = suffixFfis781 := by
  rw [findFfiNames_section, localFfis781_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep781
end InitECandidate.Proofs.BackendStages.Metadata
