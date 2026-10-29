import InitECandidate.Proofs.BackendStages.Metadata.Data600
import InitECandidate.Proofs.BackendStages.Filtered600
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis600_eq : ffiLines Filtered600.lines = localFfis600 := by
  with_unfolding_all rfl
theorem ffiStep600 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis600) : LabToTarget.findFfiNames (Filtered600 :: rest) = suffixFfis600 := by
  rw [findFfiNames_section, localFfis600_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep600
end InitECandidate.Proofs.BackendStages.Metadata
