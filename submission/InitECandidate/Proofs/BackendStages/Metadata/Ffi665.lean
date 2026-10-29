import InitECandidate.Proofs.BackendStages.Metadata.Data665
import InitECandidate.Proofs.BackendStages.Filtered665
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis665_eq : ffiLines Filtered665.lines = localFfis665 := by
  with_unfolding_all rfl
theorem ffiStep665 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis665) : LabToTarget.findFfiNames (Filtered665 :: rest) = suffixFfis665 := by
  rw [findFfiNames_section, localFfis665_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep665
end InitECandidate.Proofs.BackendStages.Metadata
