import InitECandidate.Proofs.BackendStages.Metadata.Data185
import InitECandidate.Proofs.BackendStages.Filtered185
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis185_eq : ffiLines Filtered185.lines = localFfis185 := by
  with_unfolding_all rfl
theorem ffiStep185 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis185) : LabToTarget.findFfiNames (Filtered185 :: rest) = suffixFfis185 := by
  rw [findFfiNames_section, localFfis185_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep185
end InitECandidate.Proofs.BackendStages.Metadata
