import InitECandidate.Proofs.BackendStages.Metadata.Data705
import InitECandidate.Proofs.BackendStages.Filtered705
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis705_eq : ffiLines Filtered705.lines = localFfis705 := by
  with_unfolding_all rfl
theorem ffiStep705 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis705) : LabToTarget.findFfiNames (Filtered705 :: rest) = suffixFfis705 := by
  rw [findFfiNames_section, localFfis705_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep705
end InitECandidate.Proofs.BackendStages.Metadata
