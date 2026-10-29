import InitECandidate.Proofs.BootstrapTrace

namespace InitE
open InitECandidate.Proofs
open Flapjack

/-- The bootstrap leaves every byte above the five source headers zero,
including the reserved page, scratch, persistent heap, globals and stack. -/
theorem installed_zero_after_headers (address : BitVec 64)
    (above : sourceBase + 40 ≤ address.toNat) : installedMemory address = 0 := by
  unfold installedMemory
  rw [if_neg (by omega)]
  have abi : ¬ (initDataRam ≤ address.toNat ∧ address.toNat < initDataRam + 24) := by
    simp only [initDataRam, sourceBase] at *
    omega
  have bitmap : ¬ (initDataRam + 24 ≤ address.toNat ∧ address.toNat < initDataEnd) := by
    simp only [initDataRam, initDataEnd, sourceBase] at *
    omega
  rw [if_neg abi, if_neg bitmap]
  apply initial_ram_zero
  simp only [ramStart, sourceBase] at *
  omega

/-- This is a property of the proved executed bootstrap endpoint. -/
theorem bootstrap_zero_after_headers (address : BitVec 64)
    (above : sourceBase + 40 ≤ address.toNat) :
    (BootstrapCopy.run BootstrapTrace.fullBootstrapCode initialAsm).mem address = 0 := by
  rw [BootstrapTrace.full_endpoint]
  exact installed_zero_after_headers address above

end InitE
