import InitECandidate.Proofs.BackendStages.Metadata.Data545
import InitECandidate.Proofs.BackendStages.Filtered545
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis545_eq : ffiLines Filtered545.lines = localFfis545 := by
  with_unfolding_all rfl
theorem ffiStep545 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis545) : LabToTarget.findFfiNames (Filtered545 :: rest) = suffixFfis545 := by
  rw [findFfiNames_section, localFfis545_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep545
end InitECandidate.Proofs.BackendStages.Metadata
