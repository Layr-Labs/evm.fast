import InitECandidate.Proofs.BackendStages.Metadata.Data452
import InitECandidate.Proofs.BackendStages.Filtered452
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis452_eq : ffiLines Filtered452.lines = localFfis452 := by
  with_unfolding_all rfl
theorem ffiStep452 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis452) : LabToTarget.findFfiNames (Filtered452 :: rest) = suffixFfis452 := by
  rw [findFfiNames_section, localFfis452_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep452
end InitECandidate.Proofs.BackendStages.Metadata
