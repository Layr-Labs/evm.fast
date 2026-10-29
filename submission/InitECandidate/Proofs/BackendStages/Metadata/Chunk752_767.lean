import InitECandidate.Proofs.BackendStages.Metadata.Ffi752
import InitECandidate.Proofs.BackendStages.Metadata.Shmem752
import InitECandidate.Proofs.BackendStages.Metadata.Ffi753
import InitECandidate.Proofs.BackendStages.Metadata.Shmem753
import InitECandidate.Proofs.BackendStages.Metadata.Ffi754
import InitECandidate.Proofs.BackendStages.Metadata.Shmem754
import InitECandidate.Proofs.BackendStages.Metadata.Ffi755
import InitECandidate.Proofs.BackendStages.Metadata.Shmem755
import InitECandidate.Proofs.BackendStages.Metadata.Ffi756
import InitECandidate.Proofs.BackendStages.Metadata.Shmem756
import InitECandidate.Proofs.BackendStages.Metadata.Ffi757
import InitECandidate.Proofs.BackendStages.Metadata.Shmem757
import InitECandidate.Proofs.BackendStages.Metadata.Ffi758
import InitECandidate.Proofs.BackendStages.Metadata.Shmem758
import InitECandidate.Proofs.BackendStages.Metadata.Ffi759
import InitECandidate.Proofs.BackendStages.Metadata.Shmem759
import InitECandidate.Proofs.BackendStages.Metadata.Ffi760
import InitECandidate.Proofs.BackendStages.Metadata.Shmem760
import InitECandidate.Proofs.BackendStages.Metadata.Ffi761
import InitECandidate.Proofs.BackendStages.Metadata.Shmem761
import InitECandidate.Proofs.BackendStages.Metadata.Ffi762
import InitECandidate.Proofs.BackendStages.Metadata.Shmem762
import InitECandidate.Proofs.BackendStages.Metadata.Ffi763
import InitECandidate.Proofs.BackendStages.Metadata.Shmem763
import InitECandidate.Proofs.BackendStages.Metadata.Ffi764
import InitECandidate.Proofs.BackendStages.Metadata.Shmem764
import InitECandidate.Proofs.BackendStages.Metadata.Ffi765
import InitECandidate.Proofs.BackendStages.Metadata.Shmem765
import InitECandidate.Proofs.BackendStages.Metadata.Ffi766
import InitECandidate.Proofs.BackendStages.Metadata.Shmem766
import InitECandidate.Proofs.BackendStages.Metadata.Ffi767
import InitECandidate.Proofs.BackendStages.Metadata.Shmem767
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata

theorem ffiChunk752_767 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis767) : LabToTarget.findFfiNames ([Filtered752, Filtered753, Filtered754, Filtered755, Filtered756, Filtered757, Filtered758, Filtered759, Filtered760, Filtered761, Filtered762, Filtered763, Filtered764, Filtered765, Filtered766, Filtered767] ++ rest) = suffixFfis752 := by
  exact ffiStep752 _ ( ffiStep753 _ ( ffiStep754 _ ( ffiStep755 _ ( ffiStep756 _ ( ffiStep757 _ ( ffiStep758 _ ( ffiStep759 _ ( ffiStep760 _ ( ffiStep761 _ ( ffiStep762 _ ( ffiStep763 _ ( ffiStep764 _ ( ffiStep765 _ ( ffiStep766 _ ( ffiStep767 _ (h))))))))))))))))
theorem shmemChunk752_767 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo ([Padded752, Padded753, Padded754, Padded755, Padded756, Padded757, Padded758, Padded759, Padded760, Padded761, Padded762, Padded763, Padded764, Padded765, Padded766, Padded767] ++ rest) 747984 beforeFfis752 beforeShmem752 = LabToTarget.getShmemInfo rest 767408 afterFfis767 afterShmem767 := by
  simp only [List.cons_append, List.nil_append]
  change LabToTarget.getShmemInfo _ 747984 beforeFfis752 beforeShmem752 = _
  rw [shmemStep752]
  change LabToTarget.getShmemInfo _ 750844 beforeFfis753 beforeShmem753 = _
  rw [shmemStep753]
  change LabToTarget.getShmemInfo _ 751780 beforeFfis754 beforeShmem754 = _
  rw [shmemStep754]
  change LabToTarget.getShmemInfo _ 755152 beforeFfis755 beforeShmem755 = _
  rw [shmemStep755]
  change LabToTarget.getShmemInfo _ 755300 beforeFfis756 beforeShmem756 = _
  rw [shmemStep756]
  change LabToTarget.getShmemInfo _ 755564 beforeFfis757 beforeShmem757 = _
  rw [shmemStep757]
  change LabToTarget.getShmemInfo _ 756220 beforeFfis758 beforeShmem758 = _
  rw [shmemStep758]
  change LabToTarget.getShmemInfo _ 758016 beforeFfis759 beforeShmem759 = _
  rw [shmemStep759]
  change LabToTarget.getShmemInfo _ 758024 beforeFfis760 beforeShmem760 = _
  rw [shmemStep760]
  change LabToTarget.getShmemInfo _ 758304 beforeFfis761 beforeShmem761 = _
  rw [shmemStep761]
  change LabToTarget.getShmemInfo _ 759836 beforeFfis762 beforeShmem762 = _
  rw [shmemStep762]
  change LabToTarget.getShmemInfo _ 761380 beforeFfis763 beforeShmem763 = _
  rw [shmemStep763]
  change LabToTarget.getShmemInfo _ 762892 beforeFfis764 beforeShmem764 = _
  rw [shmemStep764]
  change LabToTarget.getShmemInfo _ 763156 beforeFfis765 beforeShmem765 = _
  rw [shmemStep765]
  change LabToTarget.getShmemInfo _ 766976 beforeFfis766 beforeShmem766 = _
  rw [shmemStep766]
  change LabToTarget.getShmemInfo _ 767376 beforeFfis767 beforeShmem767 = _
  rw [shmemStep767]
theorem symbolsChunk752_767 (rest : LabSem.LabProgHOL 64) : LabToTarget.getSymbols 747984 ([Padded752, Padded753, Padded754, Padded755, Padded756, Padded757, Padded758, Padded759, Padded760, Padded761, Padded762, Padded763, Padded764, Padded765, Padded766, Padded767] ++ rest) = [(752, 747984, 2860), (753, 750844, 936), (754, 751780, 3372), (755, 755152, 148), (756, 755300, 264), (757, 755564, 656), (758, 756220, 1796), (759, 758016, 8), (760, 758024, 280), (761, 758304, 1532), (762, 759836, 1544), (763, 761380, 1512), (764, 762892, 264), (765, 763156, 3820), (766, 766976, 400), (767, 767376, 32)] ++ LabToTarget.getSymbols 767408 rest := by
  simp only [List.cons_append, List.nil_append, LabToTarget.getSymbols, symbolLength752, symbolLength753, symbolLength754, symbolLength755, symbolLength756, symbolLength757, symbolLength758, symbolLength759, symbolLength760, symbolLength761, symbolLength762, symbolLength763, symbolLength764, symbolLength765, symbolLength766, symbolLength767]
  rfl
#print axioms ffiChunk752_767
#print axioms shmemChunk752_767
#print axioms symbolsChunk752_767
end InitECandidate.Proofs.BackendStages.Metadata
