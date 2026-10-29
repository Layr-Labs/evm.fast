import InitECandidate.Proofs.BackendStages.Metadata.Data208
import InitECandidate.Proofs.BackendStages.Filtered208
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis208_eq : ffiLines Filtered208.lines = localFfis208 := by
  with_unfolding_all rfl
theorem ffiStep208 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis208) : LabToTarget.findFfiNames (Filtered208 :: rest) = suffixFfis208 := by
  rw [findFfiNames_section, localFfis208_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep208
end InitECandidate.Proofs.BackendStages.Metadata
