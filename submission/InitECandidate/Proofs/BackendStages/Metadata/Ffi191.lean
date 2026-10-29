import InitECandidate.Proofs.BackendStages.Metadata.Data191
import InitECandidate.Proofs.BackendStages.Filtered191
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis191_eq : ffiLines Filtered191.lines = localFfis191 := by
  with_unfolding_all rfl
theorem ffiStep191 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis191) : LabToTarget.findFfiNames (Filtered191 :: rest) = suffixFfis191 := by
  rw [findFfiNames_section, localFfis191_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep191
end InitECandidate.Proofs.BackendStages.Metadata
