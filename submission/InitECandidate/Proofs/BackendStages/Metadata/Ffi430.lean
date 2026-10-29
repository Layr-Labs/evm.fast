import InitECandidate.Proofs.BackendStages.Metadata.Data430
import InitECandidate.Proofs.BackendStages.Filtered430
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis430_eq : ffiLines Filtered430.lines = localFfis430 := by
  with_unfolding_all rfl
theorem ffiStep430 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis430) : LabToTarget.findFfiNames (Filtered430 :: rest) = suffixFfis430 := by
  rw [findFfiNames_section, localFfis430_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep430
end InitECandidate.Proofs.BackendStages.Metadata
