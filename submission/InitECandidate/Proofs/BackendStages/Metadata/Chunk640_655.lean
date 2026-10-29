import InitECandidate.Proofs.BackendStages.Metadata.Ffi640
import InitECandidate.Proofs.BackendStages.Metadata.Shmem640
import InitECandidate.Proofs.BackendStages.Metadata.Ffi641
import InitECandidate.Proofs.BackendStages.Metadata.Shmem641
import InitECandidate.Proofs.BackendStages.Metadata.Ffi642
import InitECandidate.Proofs.BackendStages.Metadata.Shmem642
import InitECandidate.Proofs.BackendStages.Metadata.Ffi643
import InitECandidate.Proofs.BackendStages.Metadata.Shmem643
import InitECandidate.Proofs.BackendStages.Metadata.Ffi644
import InitECandidate.Proofs.BackendStages.Metadata.Shmem644
import InitECandidate.Proofs.BackendStages.Metadata.Ffi645
import InitECandidate.Proofs.BackendStages.Metadata.Shmem645
import InitECandidate.Proofs.BackendStages.Metadata.Ffi646
import InitECandidate.Proofs.BackendStages.Metadata.Shmem646
import InitECandidate.Proofs.BackendStages.Metadata.Ffi647
import InitECandidate.Proofs.BackendStages.Metadata.Shmem647
import InitECandidate.Proofs.BackendStages.Metadata.Ffi648
import InitECandidate.Proofs.BackendStages.Metadata.Shmem648
import InitECandidate.Proofs.BackendStages.Metadata.Ffi649
import InitECandidate.Proofs.BackendStages.Metadata.Shmem649
import InitECandidate.Proofs.BackendStages.Metadata.Ffi650
import InitECandidate.Proofs.BackendStages.Metadata.Shmem650
import InitECandidate.Proofs.BackendStages.Metadata.Ffi651
import InitECandidate.Proofs.BackendStages.Metadata.Shmem651
import InitECandidate.Proofs.BackendStages.Metadata.Ffi652
import InitECandidate.Proofs.BackendStages.Metadata.Shmem652
import InitECandidate.Proofs.BackendStages.Metadata.Ffi653
import InitECandidate.Proofs.BackendStages.Metadata.Shmem653
import InitECandidate.Proofs.BackendStages.Metadata.Ffi654
import InitECandidate.Proofs.BackendStages.Metadata.Shmem654
import InitECandidate.Proofs.BackendStages.Metadata.Ffi655
import InitECandidate.Proofs.BackendStages.Metadata.Shmem655
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata

theorem ffiChunk640_655 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis655) : LabToTarget.findFfiNames ([Filtered640, Filtered641, Filtered642, Filtered643, Filtered644, Filtered645, Filtered646, Filtered647, Filtered648, Filtered649, Filtered650, Filtered651, Filtered652, Filtered653, Filtered654, Filtered655] ++ rest) = suffixFfis640 := by
  exact ffiStep640 _ ( ffiStep641 _ ( ffiStep642 _ ( ffiStep643 _ ( ffiStep644 _ ( ffiStep645 _ ( ffiStep646 _ ( ffiStep647 _ ( ffiStep648 _ ( ffiStep649 _ ( ffiStep650 _ ( ffiStep651 _ ( ffiStep652 _ ( ffiStep653 _ ( ffiStep654 _ ( ffiStep655 _ (h))))))))))))))))
theorem shmemChunk640_655 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo ([Padded640, Padded641, Padded642, Padded643, Padded644, Padded645, Padded646, Padded647, Padded648, Padded649, Padded650, Padded651, Padded652, Padded653, Padded654, Padded655] ++ rest) 535504 beforeFfis640 beforeShmem640 = LabToTarget.getShmemInfo rest 578596 afterFfis655 afterShmem655 := by
  simp only [List.cons_append, List.nil_append]
  change LabToTarget.getShmemInfo _ 535504 beforeFfis640 beforeShmem640 = _
  rw [shmemStep640]
  change LabToTarget.getShmemInfo _ 535764 beforeFfis641 beforeShmem641 = _
  rw [shmemStep641]
  change LabToTarget.getShmemInfo _ 540504 beforeFfis642 beforeShmem642 = _
  rw [shmemStep642]
  change LabToTarget.getShmemInfo _ 541028 beforeFfis643 beforeShmem643 = _
  rw [shmemStep643]
  change LabToTarget.getShmemInfo _ 541580 beforeFfis644 beforeShmem644 = _
  rw [shmemStep644]
  change LabToTarget.getShmemInfo _ 541908 beforeFfis645 beforeShmem645 = _
  rw [shmemStep645]
  change LabToTarget.getShmemInfo _ 548956 beforeFfis646 beforeShmem646 = _
  rw [shmemStep646]
  change LabToTarget.getShmemInfo _ 554332 beforeFfis647 beforeShmem647 = _
  rw [shmemStep647]
  change LabToTarget.getShmemInfo _ 554392 beforeFfis648 beforeShmem648 = _
  rw [shmemStep648]
  change LabToTarget.getShmemInfo _ 554504 beforeFfis649 beforeShmem649 = _
  rw [shmemStep649]
  change LabToTarget.getShmemInfo _ 554584 beforeFfis650 beforeShmem650 = _
  rw [shmemStep650]
  change LabToTarget.getShmemInfo _ 560384 beforeFfis651 beforeShmem651 = _
  rw [shmemStep651]
  change LabToTarget.getShmemInfo _ 566704 beforeFfis652 beforeShmem652 = _
  rw [shmemStep652]
  change LabToTarget.getShmemInfo _ 569676 beforeFfis653 beforeShmem653 = _
  rw [shmemStep653]
  change LabToTarget.getShmemInfo _ 570936 beforeFfis654 beforeShmem654 = _
  rw [shmemStep654]
  change LabToTarget.getShmemInfo _ 572364 beforeFfis655 beforeShmem655 = _
  rw [shmemStep655]
theorem symbolsChunk640_655 (rest : LabSem.LabProgHOL 64) : LabToTarget.getSymbols 535504 ([Padded640, Padded641, Padded642, Padded643, Padded644, Padded645, Padded646, Padded647, Padded648, Padded649, Padded650, Padded651, Padded652, Padded653, Padded654, Padded655] ++ rest) = [(640, 535504, 260), (641, 535764, 4740), (642, 540504, 524), (643, 541028, 552), (644, 541580, 328), (645, 541908, 7048), (646, 548956, 5376), (647, 554332, 60), (648, 554392, 112), (649, 554504, 80), (650, 554584, 5800), (651, 560384, 6320), (652, 566704, 2972), (653, 569676, 1260), (654, 570936, 1428), (655, 572364, 6232)] ++ LabToTarget.getSymbols 578596 rest := by
  simp only [List.cons_append, List.nil_append, LabToTarget.getSymbols, symbolLength640, symbolLength641, symbolLength642, symbolLength643, symbolLength644, symbolLength645, symbolLength646, symbolLength647, symbolLength648, symbolLength649, symbolLength650, symbolLength651, symbolLength652, symbolLength653, symbolLength654, symbolLength655]
  rfl
#print axioms ffiChunk640_655
#print axioms shmemChunk640_655
#print axioms symbolsChunk640_655
end InitECandidate.Proofs.BackendStages.Metadata
