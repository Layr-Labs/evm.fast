import InitECandidate.Proofs.BackendStages.Metadata.Data228
import InitECandidate.Proofs.BackendStages.Filtered228
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis228_eq : ffiLines Filtered228.lines = localFfis228 := by
  with_unfolding_all rfl
theorem ffiStep228 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis228) : LabToTarget.findFfiNames (Filtered228 :: rest) = suffixFfis228 := by
  rw [findFfiNames_section, localFfis228_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep228
end InitECandidate.Proofs.BackendStages.Metadata
