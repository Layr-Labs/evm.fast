import InitECandidate.Proofs.BootstrapMemory
import InitECandidate.Proofs.MachineWordMemory

namespace InitE
open Flapjack

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem baseline_source_headers (i : Fin 5) :
    packedMemoryWord installedMemory (BitVec.ofNat 64 (sourceBase+8*i.val)) =
      Guest.startupHeaders[i] := by
  apply packedMemoryWord_of_bytes
  · unfold holByteAligned
    rw [holLOG2_eq_log2 (by decide)]
    have h : ∀ j : Fin 5, holAligned 3 (BitVec.ofNat 64 (sourceBase+8*j.val)) = true := by
      decide
    exact h i
  · have h : ∀ j : Fin 5, ∀ k : Fin 8,
        installedMemory (BitVec.ofNat 64 (sourceBase+8*j.val) + BitVec.ofNat 64 k.val) =
          HolByte.getByte (BitVec.ofNat 64 k.val) Guest.startupHeaders[j] false := by decide
    exact h i

end InitE
