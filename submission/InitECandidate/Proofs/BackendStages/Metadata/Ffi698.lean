import InitECandidate.Proofs.BackendStages.Metadata.Data698
import InitECandidate.Proofs.BackendStages.Filtered698
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis698_eq : ffiLines Filtered698.lines = localFfis698 := by
  with_unfolding_all rfl
theorem ffiStep698 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis698) : LabToTarget.findFfiNames (Filtered698 :: rest) = suffixFfis698 := by
  rw [findFfiNames_section, localFfis698_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep698
end InitECandidate.Proofs.BackendStages.Metadata
