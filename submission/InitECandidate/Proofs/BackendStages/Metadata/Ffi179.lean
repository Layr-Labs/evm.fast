import InitECandidate.Proofs.BackendStages.Metadata.Data179
import InitECandidate.Proofs.BackendStages.Filtered179
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis179_eq : ffiLines Filtered179.lines = localFfis179 := by
  with_unfolding_all rfl
theorem ffiStep179 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis179) : LabToTarget.findFfiNames (Filtered179 :: rest) = suffixFfis179 := by
  rw [findFfiNames_section, localFfis179_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep179
end InitECandidate.Proofs.BackendStages.Metadata
