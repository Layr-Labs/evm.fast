import InitECandidate.Proofs.BackendStages.Metadata.Data99
import InitECandidate.Proofs.BackendStages.Filtered99
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis99_eq : ffiLines Filtered99.lines = localFfis99 := by
  with_unfolding_all rfl
theorem ffiStep99 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis99) : LabToTarget.findFfiNames (Filtered99 :: rest) = suffixFfis99 := by
  rw [findFfiNames_section, localFfis99_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep99
end InitECandidate.Proofs.BackendStages.Metadata
