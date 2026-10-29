import InitECandidate.Proofs.BackendStages.Metadata.Data550
import InitECandidate.Proofs.BackendStages.Filtered550
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis550_eq : ffiLines Filtered550.lines = localFfis550 := by
  with_unfolding_all rfl
theorem ffiStep550 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis550) : LabToTarget.findFfiNames (Filtered550 :: rest) = suffixFfis550 := by
  rw [findFfiNames_section, localFfis550_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep550
end InitECandidate.Proofs.BackendStages.Metadata
