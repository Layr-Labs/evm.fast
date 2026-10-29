import InitECandidate.Proofs.BackendStages.Metadata.Data838
import InitECandidate.Proofs.BackendStages.Filtered838
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis838_eq : ffiLines Filtered838.lines = localFfis838 := by
  with_unfolding_all rfl
theorem ffiStep838 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis838) : LabToTarget.findFfiNames (Filtered838 :: rest) = suffixFfis838 := by
  rw [findFfiNames_section, localFfis838_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep838
end InitECandidate.Proofs.BackendStages.Metadata
