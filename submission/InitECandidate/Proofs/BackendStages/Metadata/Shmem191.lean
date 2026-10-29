import InitECandidate.Proofs.BackendStages.Metadata.Data191
import InitECandidate.Proofs.BackendStages.Padded191
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep191 : walkShmemLines Padded191.lines 101108 beforeFfis191 beforeShmem191 = (102120, afterFfis191, afterShmem191) := by
  kernel_rfl
theorem shmemStep191 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded191 :: rest) 101108 beforeFfis191 beforeShmem191 = LabToTarget.getShmemInfo rest 102120 afterFfis191 afterShmem191 := by
  rw [getShmemInfo_section, walkStep191]
theorem symbolLength191 : LabToTarget.secLength Padded191.lines 0 = 1012 := by
  kernel_rfl
#print axioms shmemStep191
#print axioms symbolLength191
end InitECandidate.Proofs.BackendStages.Metadata
