import InitECandidate.Proofs.BackendStages.Metadata.Data850
import InitECandidate.Proofs.BackendStages.Filtered850
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis850_eq : ffiLines Filtered850.lines = localFfis850 := by
  with_unfolding_all rfl
theorem ffiStep850 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis850) : LabToTarget.findFfiNames (Filtered850 :: rest) = suffixFfis850 := by
  rw [findFfiNames_section, localFfis850_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep850
end InitECandidate.Proofs.BackendStages.Metadata
