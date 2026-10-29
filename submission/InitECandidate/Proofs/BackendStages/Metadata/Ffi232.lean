import InitECandidate.Proofs.BackendStages.Metadata.Data232
import InitECandidate.Proofs.BackendStages.Filtered232
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis232_eq : ffiLines Filtered232.lines = localFfis232 := by
  with_unfolding_all rfl
theorem ffiStep232 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis232) : LabToTarget.findFfiNames (Filtered232 :: rest) = suffixFfis232 := by
  rw [findFfiNames_section, localFfis232_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep232
end InitECandidate.Proofs.BackendStages.Metadata
