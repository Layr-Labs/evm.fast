import InitECandidate.Proofs.BackendStages.Metadata.Data314
import InitECandidate.Proofs.BackendStages.Filtered314
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis314_eq : ffiLines Filtered314.lines = localFfis314 := by
  with_unfolding_all rfl
theorem ffiStep314 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis314) : LabToTarget.findFfiNames (Filtered314 :: rest) = suffixFfis314 := by
  rw [findFfiNames_section, localFfis314_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep314
end InitECandidate.Proofs.BackendStages.Metadata
