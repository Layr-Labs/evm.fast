import InitECandidate.Proofs.BackendStages.Metadata.Data815
import InitECandidate.Proofs.BackendStages.Filtered815
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis815_eq : ffiLines Filtered815.lines = localFfis815 := by
  with_unfolding_all rfl
theorem ffiStep815 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis815) : LabToTarget.findFfiNames (Filtered815 :: rest) = suffixFfis815 := by
  rw [findFfiNames_section, localFfis815_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep815
end InitECandidate.Proofs.BackendStages.Metadata
