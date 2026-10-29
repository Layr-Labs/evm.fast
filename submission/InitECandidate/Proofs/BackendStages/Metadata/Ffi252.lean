import InitECandidate.Proofs.BackendStages.Metadata.Data252
import InitECandidate.Proofs.BackendStages.Filtered252
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis252_eq : ffiLines Filtered252.lines = localFfis252 := by
  with_unfolding_all rfl
theorem ffiStep252 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis252) : LabToTarget.findFfiNames (Filtered252 :: rest) = suffixFfis252 := by
  rw [findFfiNames_section, localFfis252_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep252
end InitECandidate.Proofs.BackendStages.Metadata
