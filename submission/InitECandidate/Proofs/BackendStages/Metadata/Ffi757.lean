import InitECandidate.Proofs.BackendStages.Metadata.Data757
import InitECandidate.Proofs.BackendStages.Filtered757
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis757_eq : ffiLines Filtered757.lines = localFfis757 := by
  with_unfolding_all rfl
theorem ffiStep757 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis757) : LabToTarget.findFfiNames (Filtered757 :: rest) = suffixFfis757 := by
  rw [findFfiNames_section, localFfis757_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep757
end InitECandidate.Proofs.BackendStages.Metadata
