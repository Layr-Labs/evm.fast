import InitECandidate.Proofs.BackendStages.Metadata.Data503
import InitECandidate.Proofs.BackendStages.Filtered503
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis503_eq : ffiLines Filtered503.lines = localFfis503 := by
  with_unfolding_all rfl
theorem ffiStep503 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis503) : LabToTarget.findFfiNames (Filtered503 :: rest) = suffixFfis503 := by
  rw [findFfiNames_section, localFfis503_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep503
end InitECandidate.Proofs.BackendStages.Metadata
