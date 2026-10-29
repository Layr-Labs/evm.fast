import InitECandidate.Proofs.BackendStages.Metadata.Data273
import InitECandidate.Proofs.BackendStages.Filtered273
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis273_eq : ffiLines Filtered273.lines = localFfis273 := by
  with_unfolding_all rfl
theorem ffiStep273 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis273) : LabToTarget.findFfiNames (Filtered273 :: rest) = suffixFfis273 := by
  rw [findFfiNames_section, localFfis273_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep273
end InitECandidate.Proofs.BackendStages.Metadata
