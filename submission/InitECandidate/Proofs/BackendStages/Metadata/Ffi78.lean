import InitECandidate.Proofs.BackendStages.Metadata.Data78
import InitECandidate.Proofs.BackendStages.Filtered78
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis78_eq : ffiLines Filtered78.lines = localFfis78 := by
  with_unfolding_all rfl
theorem ffiStep78 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis78) : LabToTarget.findFfiNames (Filtered78 :: rest) = suffixFfis78 := by
  rw [findFfiNames_section, localFfis78_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep78
end InitECandidate.Proofs.BackendStages.Metadata
