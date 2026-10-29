import InitECandidate.Proofs.BackendStages.Metadata.Ffi832
import InitECandidate.Proofs.BackendStages.Metadata.Shmem832
import InitECandidate.Proofs.BackendStages.Metadata.Ffi833
import InitECandidate.Proofs.BackendStages.Metadata.Shmem833
import InitECandidate.Proofs.BackendStages.Metadata.Ffi834
import InitECandidate.Proofs.BackendStages.Metadata.Shmem834
import InitECandidate.Proofs.BackendStages.Metadata.Ffi835
import InitECandidate.Proofs.BackendStages.Metadata.Shmem835
import InitECandidate.Proofs.BackendStages.Metadata.Ffi836
import InitECandidate.Proofs.BackendStages.Metadata.Shmem836
import InitECandidate.Proofs.BackendStages.Metadata.Ffi837
import InitECandidate.Proofs.BackendStages.Metadata.Shmem837
import InitECandidate.Proofs.BackendStages.Metadata.Ffi838
import InitECandidate.Proofs.BackendStages.Metadata.Shmem838
import InitECandidate.Proofs.BackendStages.Metadata.Ffi839
import InitECandidate.Proofs.BackendStages.Metadata.Shmem839
import InitECandidate.Proofs.BackendStages.Metadata.Ffi840
import InitECandidate.Proofs.BackendStages.Metadata.Shmem840
import InitECandidate.Proofs.BackendStages.Metadata.Ffi841
import InitECandidate.Proofs.BackendStages.Metadata.Shmem841
import InitECandidate.Proofs.BackendStages.Metadata.Ffi842
import InitECandidate.Proofs.BackendStages.Metadata.Shmem842
import InitECandidate.Proofs.BackendStages.Metadata.Ffi843
import InitECandidate.Proofs.BackendStages.Metadata.Shmem843
import InitECandidate.Proofs.BackendStages.Metadata.Ffi844
import InitECandidate.Proofs.BackendStages.Metadata.Shmem844
import InitECandidate.Proofs.BackendStages.Metadata.Ffi845
import InitECandidate.Proofs.BackendStages.Metadata.Shmem845
import InitECandidate.Proofs.BackendStages.Metadata.Ffi846
import InitECandidate.Proofs.BackendStages.Metadata.Shmem846
import InitECandidate.Proofs.BackendStages.Metadata.Ffi847
import InitECandidate.Proofs.BackendStages.Metadata.Shmem847
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata

theorem ffiChunk832_847 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis847) : LabToTarget.findFfiNames ([Filtered832, Filtered833, Filtered834, Filtered835, Filtered836, Filtered837, Filtered838, Filtered839, Filtered840, Filtered841, Filtered842, Filtered843, Filtered844, Filtered845, Filtered846, Filtered847] ++ rest) = suffixFfis832 := by
  exact ffiStep832 _ ( ffiStep833 _ ( ffiStep834 _ ( ffiStep835 _ ( ffiStep836 _ ( ffiStep837 _ ( ffiStep838 _ ( ffiStep839 _ ( ffiStep840 _ ( ffiStep841 _ ( ffiStep842 _ ( ffiStep843 _ ( ffiStep844 _ ( ffiStep845 _ ( ffiStep846 _ ( ffiStep847 _ (h))))))))))))))))
theorem shmemChunk832_847 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo ([Padded832, Padded833, Padded834, Padded835, Padded836, Padded837, Padded838, Padded839, Padded840, Padded841, Padded842, Padded843, Padded844, Padded845, Padded846, Padded847] ++ rest) 897140 beforeFfis832 beforeShmem832 = LabToTarget.getShmemInfo rest 917144 afterFfis847 afterShmem847 := by
  simp only [List.cons_append, List.nil_append]
  change LabToTarget.getShmemInfo _ 897140 beforeFfis832 beforeShmem832 = _
  rw [shmemStep832]
  change LabToTarget.getShmemInfo _ 899472 beforeFfis833 beforeShmem833 = _
  rw [shmemStep833]
  change LabToTarget.getShmemInfo _ 900188 beforeFfis834 beforeShmem834 = _
  rw [shmemStep834]
  change LabToTarget.getShmemInfo _ 902292 beforeFfis835 beforeShmem835 = _
  rw [shmemStep835]
  change LabToTarget.getShmemInfo _ 902768 beforeFfis836 beforeShmem836 = _
  rw [shmemStep836]
  change LabToTarget.getShmemInfo _ 906272 beforeFfis837 beforeShmem837 = _
  rw [shmemStep837]
  change LabToTarget.getShmemInfo _ 908820 beforeFfis838 beforeShmem838 = _
  rw [shmemStep838]
  change LabToTarget.getShmemInfo _ 909484 beforeFfis839 beforeShmem839 = _
  rw [shmemStep839]
  change LabToTarget.getShmemInfo _ 910248 beforeFfis840 beforeShmem840 = _
  rw [shmemStep840]
  change LabToTarget.getShmemInfo _ 910700 beforeFfis841 beforeShmem841 = _
  rw [shmemStep841]
  change LabToTarget.getShmemInfo _ 910792 beforeFfis842 beforeShmem842 = _
  rw [shmemStep842]
  change LabToTarget.getShmemInfo _ 912180 beforeFfis843 beforeShmem843 = _
  rw [shmemStep843]
  change LabToTarget.getShmemInfo _ 913376 beforeFfis844 beforeShmem844 = _
  rw [shmemStep844]
  change LabToTarget.getShmemInfo _ 914296 beforeFfis845 beforeShmem845 = _
  rw [shmemStep845]
  change LabToTarget.getShmemInfo _ 915516 beforeFfis846 beforeShmem846 = _
  rw [shmemStep846]
  change LabToTarget.getShmemInfo _ 916292 beforeFfis847 beforeShmem847 = _
  rw [shmemStep847]
theorem symbolsChunk832_847 (rest : LabSem.LabProgHOL 64) : LabToTarget.getSymbols 897140 ([Padded832, Padded833, Padded834, Padded835, Padded836, Padded837, Padded838, Padded839, Padded840, Padded841, Padded842, Padded843, Padded844, Padded845, Padded846, Padded847] ++ rest) = [(832, 897140, 2332), (833, 899472, 716), (834, 900188, 2104), (835, 902292, 476), (836, 902768, 3504), (837, 906272, 2548), (838, 908820, 664), (839, 909484, 764), (840, 910248, 452), (841, 910700, 92), (842, 910792, 1388), (843, 912180, 1196), (844, 913376, 920), (845, 914296, 1220), (846, 915516, 776), (847, 916292, 852)] ++ LabToTarget.getSymbols 917144 rest := by
  simp only [List.cons_append, List.nil_append, LabToTarget.getSymbols, symbolLength832, symbolLength833, symbolLength834, symbolLength835, symbolLength836, symbolLength837, symbolLength838, symbolLength839, symbolLength840, symbolLength841, symbolLength842, symbolLength843, symbolLength844, symbolLength845, symbolLength846, symbolLength847]
  rfl
#print axioms ffiChunk832_847
#print axioms shmemChunk832_847
#print axioms symbolsChunk832_847
end InitECandidate.Proofs.BackendStages.Metadata
