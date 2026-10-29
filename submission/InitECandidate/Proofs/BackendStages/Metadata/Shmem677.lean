import InitECandidate.Proofs.BackendStages.Metadata.Data677
import InitECandidate.Proofs.BackendStages.Padded677
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep677 : walkShmemLines Padded677.lines 604200 beforeFfis677 beforeShmem677 = (604220, afterFfis677, afterShmem677) := by
  kernel_rfl
theorem shmemStep677 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded677 :: rest) 604200 beforeFfis677 beforeShmem677 = LabToTarget.getShmemInfo rest 604220 afterFfis677 afterShmem677 := by
  rw [getShmemInfo_section, walkStep677]
theorem symbolLength677 : LabToTarget.secLength Padded677.lines 0 = 20 := by
  kernel_rfl
#print axioms shmemStep677
#print axioms symbolLength677
end InitECandidate.Proofs.BackendStages.Metadata
