import InitECandidate.Proofs.BackendStages.Metadata.Data64
import InitECandidate.Proofs.BackendStages.Filtered64
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis64_eq : ffiLines Filtered64.lines = localFfis64 := by
  with_unfolding_all rfl
theorem ffiStep64 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis64) : LabToTarget.findFfiNames (Filtered64 :: rest) = suffixFfis64 := by
  rw [findFfiNames_section, localFfis64_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep64
end InitECandidate.Proofs.BackendStages.Metadata
