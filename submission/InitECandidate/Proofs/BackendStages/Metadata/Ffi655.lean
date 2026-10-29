import InitECandidate.Proofs.BackendStages.Metadata.Data655
import InitECandidate.Proofs.BackendStages.Filtered655
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis655_eq : ffiLines Filtered655.lines = localFfis655 := by
  with_unfolding_all rfl
theorem ffiStep655 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis655) : LabToTarget.findFfiNames (Filtered655 :: rest) = suffixFfis655 := by
  rw [findFfiNames_section, localFfis655_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep655
end InitECandidate.Proofs.BackendStages.Metadata
