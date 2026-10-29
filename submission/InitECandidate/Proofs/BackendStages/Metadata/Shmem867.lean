import InitECandidate.Proofs.BackendStages.Metadata.Data867
import InitECandidate.Proofs.BackendStages.Padded867
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep867 : walkShmemLines Padded867.lines 965328 beforeFfis867 beforeShmem867 = (968200, afterFfis867, afterShmem867) := by
  kernel_rfl
theorem shmemStep867 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded867 :: rest) 965328 beforeFfis867 beforeShmem867 = LabToTarget.getShmemInfo rest 968200 afterFfis867 afterShmem867 := by
  rw [getShmemInfo_section, walkStep867]
theorem symbolLength867 : LabToTarget.secLength Padded867.lines 0 = 2872 := by
  kernel_rfl
#print axioms shmemStep867
#print axioms symbolLength867
end InitECandidate.Proofs.BackendStages.Metadata
