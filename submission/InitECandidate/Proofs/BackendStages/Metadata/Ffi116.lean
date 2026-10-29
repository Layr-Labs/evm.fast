import InitECandidate.Proofs.BackendStages.Metadata.Data116
import InitECandidate.Proofs.BackendStages.Filtered116
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis116_eq : ffiLines Filtered116.lines = localFfis116 := by
  with_unfolding_all rfl
theorem ffiStep116 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis116) : LabToTarget.findFfiNames (Filtered116 :: rest) = suffixFfis116 := by
  rw [findFfiNames_section, localFfis116_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep116
end InitECandidate.Proofs.BackendStages.Metadata
