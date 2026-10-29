import InitECandidate.Proofs.BackendStages.Metadata.Data304
import InitECandidate.Proofs.BackendStages.Filtered304
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis304_eq : ffiLines Filtered304.lines = localFfis304 := by
  with_unfolding_all rfl
theorem ffiStep304 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis304) : LabToTarget.findFfiNames (Filtered304 :: rest) = suffixFfis304 := by
  rw [findFfiNames_section, localFfis304_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep304
end InitECandidate.Proofs.BackendStages.Metadata
