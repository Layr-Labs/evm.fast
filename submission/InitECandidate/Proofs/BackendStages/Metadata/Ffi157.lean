import InitECandidate.Proofs.BackendStages.Metadata.Data157
import InitECandidate.Proofs.BackendStages.Filtered157
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis157_eq : ffiLines Filtered157.lines = localFfis157 := by
  with_unfolding_all rfl
theorem ffiStep157 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis157) : LabToTarget.findFfiNames (Filtered157 :: rest) = suffixFfis157 := by
  rw [findFfiNames_section, localFfis157_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep157
end InitECandidate.Proofs.BackendStages.Metadata
