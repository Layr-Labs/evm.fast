import InitECandidate.Proofs.BackendStages.Metadata.Data544
import InitECandidate.Proofs.BackendStages.Filtered544
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis544_eq : ffiLines Filtered544.lines = localFfis544 := by
  with_unfolding_all rfl
theorem ffiStep544 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis544) : LabToTarget.findFfiNames (Filtered544 :: rest) = suffixFfis544 := by
  rw [findFfiNames_section, localFfis544_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep544
end InitECandidate.Proofs.BackendStages.Metadata
