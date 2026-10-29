import InitECandidate.Proofs.BackendStages.Metadata.Data529
import InitECandidate.Proofs.BackendStages.Filtered529
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis529_eq : ffiLines Filtered529.lines = localFfis529 := by
  with_unfolding_all rfl
theorem ffiStep529 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis529) : LabToTarget.findFfiNames (Filtered529 :: rest) = suffixFfis529 := by
  rw [findFfiNames_section, localFfis529_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep529
end InitECandidate.Proofs.BackendStages.Metadata
