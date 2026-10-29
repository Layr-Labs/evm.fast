import InitECandidate.Proofs.BackendStages.Metadata.Data543
import InitECandidate.Proofs.BackendStages.Filtered543
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis543_eq : ffiLines Filtered543.lines = localFfis543 := by
  with_unfolding_all rfl
theorem ffiStep543 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis543) : LabToTarget.findFfiNames (Filtered543 :: rest) = suffixFfis543 := by
  rw [findFfiNames_section, localFfis543_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep543
end InitECandidate.Proofs.BackendStages.Metadata
