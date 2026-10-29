import InitECandidate.Proofs.BackendStages.Metadata.Data701
import InitECandidate.Proofs.BackendStages.Filtered701
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis701_eq : ffiLines Filtered701.lines = localFfis701 := by
  with_unfolding_all rfl
theorem ffiStep701 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis701) : LabToTarget.findFfiNames (Filtered701 :: rest) = suffixFfis701 := by
  rw [findFfiNames_section, localFfis701_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep701
end InitECandidate.Proofs.BackendStages.Metadata
