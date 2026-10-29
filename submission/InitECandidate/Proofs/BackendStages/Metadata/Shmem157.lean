import InitECandidate.Proofs.BackendStages.Metadata.Data157
import InitECandidate.Proofs.BackendStages.Padded157
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep157 : walkShmemLines Padded157.lines 86072 beforeFfis157 beforeShmem157 = (86444, afterFfis157, afterShmem157) := by
  kernel_rfl
theorem shmemStep157 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded157 :: rest) 86072 beforeFfis157 beforeShmem157 = LabToTarget.getShmemInfo rest 86444 afterFfis157 afterShmem157 := by
  rw [getShmemInfo_section, walkStep157]
theorem symbolLength157 : LabToTarget.secLength Padded157.lines 0 = 372 := by
  kernel_rfl
#print axioms shmemStep157
#print axioms symbolLength157
end InitECandidate.Proofs.BackendStages.Metadata
