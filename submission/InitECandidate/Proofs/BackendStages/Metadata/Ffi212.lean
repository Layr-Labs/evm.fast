import InitECandidate.Proofs.BackendStages.Metadata.Data212
import InitECandidate.Proofs.BackendStages.Filtered212
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis212_eq : ffiLines Filtered212.lines = localFfis212 := by
  with_unfolding_all rfl
theorem ffiStep212 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis212) : LabToTarget.findFfiNames (Filtered212 :: rest) = suffixFfis212 := by
  rw [findFfiNames_section, localFfis212_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep212
end InitECandidate.Proofs.BackendStages.Metadata
