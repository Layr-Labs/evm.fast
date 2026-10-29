import InitECandidate.Proofs.BackendStages.Metadata.Data436
import InitECandidate.Proofs.BackendStages.Filtered436
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis436_eq : ffiLines Filtered436.lines = localFfis436 := by
  with_unfolding_all rfl
theorem ffiStep436 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis436) : LabToTarget.findFfiNames (Filtered436 :: rest) = suffixFfis436 := by
  rw [findFfiNames_section, localFfis436_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep436
end InitECandidate.Proofs.BackendStages.Metadata
