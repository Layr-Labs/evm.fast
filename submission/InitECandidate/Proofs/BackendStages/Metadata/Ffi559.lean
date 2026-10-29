import InitECandidate.Proofs.BackendStages.Metadata.Data559
import InitECandidate.Proofs.BackendStages.Filtered559
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis559_eq : ffiLines Filtered559.lines = localFfis559 := by
  with_unfolding_all rfl
theorem ffiStep559 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis559) : LabToTarget.findFfiNames (Filtered559 :: rest) = suffixFfis559 := by
  rw [findFfiNames_section, localFfis559_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep559
end InitECandidate.Proofs.BackendStages.Metadata
