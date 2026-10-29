import InitECandidate.Proofs.BackendStages.Metadata.Data851
import InitECandidate.Proofs.BackendStages.Filtered851
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis851_eq : ffiLines Filtered851.lines = localFfis851 := by
  with_unfolding_all rfl
theorem ffiStep851 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis851) : LabToTarget.findFfiNames (Filtered851 :: rest) = suffixFfis851 := by
  rw [findFfiNames_section, localFfis851_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep851
end InitECandidate.Proofs.BackendStages.Metadata
