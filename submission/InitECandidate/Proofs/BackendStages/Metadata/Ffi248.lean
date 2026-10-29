import InitECandidate.Proofs.BackendStages.Metadata.Data248
import InitECandidate.Proofs.BackendStages.Filtered248
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis248_eq : ffiLines Filtered248.lines = localFfis248 := by
  with_unfolding_all rfl
theorem ffiStep248 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis248) : LabToTarget.findFfiNames (Filtered248 :: rest) = suffixFfis248 := by
  rw [findFfiNames_section, localFfis248_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep248
end InitECandidate.Proofs.BackendStages.Metadata
