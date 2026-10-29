import InitECandidate.Proofs.BackendStages.Metadata.Data805
import InitECandidate.Proofs.BackendStages.Filtered805
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis805_eq : ffiLines Filtered805.lines = localFfis805 := by
  with_unfolding_all rfl
theorem ffiStep805 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis805) : LabToTarget.findFfiNames (Filtered805 :: rest) = suffixFfis805 := by
  rw [findFfiNames_section, localFfis805_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep805
end InitECandidate.Proofs.BackendStages.Metadata
