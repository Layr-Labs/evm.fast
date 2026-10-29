import InitECandidate.Proofs.BackendStages.Metadata.Data95
import InitECandidate.Proofs.BackendStages.Filtered95
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis95_eq : ffiLines Filtered95.lines = localFfis95 := by
  with_unfolding_all rfl
theorem ffiStep95 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis95) : LabToTarget.findFfiNames (Filtered95 :: rest) = suffixFfis95 := by
  rw [findFfiNames_section, localFfis95_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep95
end InitECandidate.Proofs.BackendStages.Metadata
