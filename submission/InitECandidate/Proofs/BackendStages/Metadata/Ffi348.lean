import InitECandidate.Proofs.BackendStages.Metadata.Data348
import InitECandidate.Proofs.BackendStages.Filtered348
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis348_eq : ffiLines Filtered348.lines = localFfis348 := by
  with_unfolding_all rfl
theorem ffiStep348 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis348) : LabToTarget.findFfiNames (Filtered348 :: rest) = suffixFfis348 := by
  rw [findFfiNames_section, localFfis348_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep348
end InitECandidate.Proofs.BackendStages.Metadata
