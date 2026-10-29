import InitECandidate.Proofs.CompilerComputation
import InitECandidate.Proofs.BaselineMemoryDomains

/- Small metadata literals are checked against the compiler configuration once.
The predicates keep finite-index bound proofs independent of that large
configuration; ordinary decide checks the resulting small literal goals. -/
open scoped InitECandidate.Proofs.CompilerComputation
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false

namespace InitE
open Flapjack

private def admissionMmio : List Compiler.Backend.LabToTarget.ShmemInfoNum :=
  [{ entryPc := 4744, nbytes := BitVec.ofNat 8 1, addrReg := 10, addrOff := 0, reg := 11, exitPc := 4748 },
   { entryPc := 4788, nbytes := BitVec.ofNat 8 0, addrReg := 13, addrOff := 0, reg := 12, exitPc := 4792 },
   { entryPc := 4820, nbytes := BitVec.ofNat 8 0, addrReg := 12, addrOff := 0, reg := 10, exitPc := 4824 },
   { entryPc := 9396, nbytes := BitVec.ofNat 8 0, addrReg := 10, addrOff := 0, reg := 11, exitPc := 9400 },
   { entryPc := 9692, nbytes := BitVec.ofNat 8 0, addrReg := 12, addrOff := 0, reg := 12, exitPc := 9696 },
   { entryPc := 9776, nbytes := BitVec.ofNat 8 1, addrReg := 5, addrOff := 0, reg := 13, exitPc := 9780 },
   { entryPc := 179152, nbytes := BitVec.ofNat 8 0, addrReg := 11, addrOff := 0, reg := 11, exitPc := 179156 },
   { entryPc := 179760, nbytes := BitVec.ofNat 8 0, addrReg := 10, addrOff := 0, reg := 11, exitPc := 179764 },
   { entryPc := 977604, nbytes := BitVec.ofNat 8 1, addrReg := 10, addrOff := 0, reg := 1, exitPc := 977608 },
   { entryPc := 977820, nbytes := BitVec.ofNat 8 1, addrReg := 10, addrOff := 0, reg := 1, exitPc := 977824 },
   { entryPc := 978036, nbytes := BitVec.ofNat 8 1, addrReg := 10, addrOff := 0, reg := 1, exitPc := 978040 },
   { entryPc := 978252, nbytes := BitVec.ofNat 8 1, addrReg := 10, addrOff := 0, reg := 1, exitPc := 978256 },
   { entryPc := 978468, nbytes := BitVec.ofNat 8 1, addrReg := 10, addrOff := 0, reg := 1, exitPc := 978472 },
   { entryPc := 978684, nbytes := BitVec.ofNat 8 1, addrReg := 10, addrOff := 0, reg := 1, exitPc := 978688 },
   { entryPc := 978900, nbytes := BitVec.ofNat 8 1, addrReg := 10, addrOff := 0, reg := 1, exitPc := 978904 }]

-- Reduce the large configuration projection once, before finite checks.
private theorem admission_mmio_eq : baselineMmio = admissionMmio := by
  unfold baselineMmio
  change baselineLabConfig.shmemExtra = admissionMmio
  rfl

private def admissionEntryPcs : List (BitVec 64) :=
  [BitVec.ofNat 64 2147487808,
   BitVec.ofNat 64 2147487792,
   BitVec.ofNat 64 2147492600,
   BitVec.ofNat 64 2147492644,
   BitVec.ofNat 64 2147492676,
   BitVec.ofNat 64 2147497252,
   BitVec.ofNat 64 2147497548,
   BitVec.ofNat 64 2147497632,
   BitVec.ofNat 64 2147667008,
   BitVec.ofNat 64 2147667616,
   BitVec.ofNat 64 2148465460,
   BitVec.ofNat 64 2148465676,
   BitVec.ofNat 64 2148465892,
   BitVec.ofNat 64 2148466108,
   BitVec.ofNat 64 2148466324,
   BitVec.ofNat 64 2148466540,
   BitVec.ofNat 64 2148466756]

private theorem admission_entry_pcs_eq : baselineEntryPcs = admissionEntryPcs := by
  unfold baselineEntryPcs
  rw [admission_mmio_eq]
  rfl

private theorem admission_names_length :
    baselineNames.length = 2 + baselineMmio.length := by
  calc
    baselineNames.length = baselineEntryPcs.length :=
      baseline_finite_facts.2.2.2.2
    _ = 2 + baselineMmio.length := by
      simp only [baselineEntryPcs, List.length_append, List.length_map, List.length_range]

private theorem admission_entry_nodup : baselineEntryPcs.Nodup := by
  simp only [admission_entry_pcs_eq]
  decide

private def admissionEntryConditions (pcs : List (BitVec 64)) : Prop :=
  ∀ i : Fin pcs.length,
    initialPc < pcs[i].toNat ∧ pcs[i].toNat < initialPc + 1028080 ∧
    holAligned 2 pcs[i] = true ∧
    pcs[i] ≠ BitVec.ofNat 64 nativePc - 16 ∧
    pcs[i] ≠ BitVec.ofNat 64 nativePc - 32

private def admissionMmioBounds
    (mmio : List Compiler.Backend.LabToTarget.ShmemInfoNum) : Prop :=
  ∀ i : Fin mmio.length,
    mmio[i].entryPc < 979140 ∧ nativePc + mmio[i].exitPc < initialPc + 1028080


private theorem admission_entry_conditions :
    (∀ i : Fin baselineEntryPcs.length,
      initialPc < baselineEntryPcs[i].toNat ∧
      baselineEntryPcs[i].toNat < initialPc + 1028080 ∧
      holAligned 2 baselineEntryPcs[i] = true ∧
      baselineEntryPcs[i] ≠ BitVec.ofNat 64 nativePc - 16 ∧
      baselineEntryPcs[i] ≠ BitVec.ofNat 64 nativePc - 32) := by
  change admissionEntryConditions baselineEntryPcs
  rw [admission_entry_pcs_eq]
  unfold admissionEntryConditions
  decide


private theorem admission_mmio_bounds :
    (∀ i : Fin baselineMmio.length,
      baselineMmio[i].entryPc < 979140 ∧
      nativePc + baselineMmio[i].exitPc < initialPc + 1028080) := by
  change admissionMmioBounds baselineMmio
  rw [admission_mmio_eq]
  unfold admissionMmioBounds
  decide


-- Preserve the exported contract and all downstream projection selectors.
theorem baseline_submission_finite :
    baselineNames.length = 2 + baselineMmio.length ∧
    baselineEntryPcs.Nodup ∧
    (∀ i : Fin baselineEntryPcs.length,
      initialPc < baselineEntryPcs[i].toNat ∧
      baselineEntryPcs[i].toNat < initialPc + 1028080 ∧
      holAligned 2 baselineEntryPcs[i] = true ∧
      baselineEntryPcs[i] ≠ BitVec.ofNat 64 nativePc - 16 ∧
      baselineEntryPcs[i] ≠ BitVec.ofNat 64 nativePc - 32) ∧
    (∀ i : Fin baselineMmio.length,
      baselineMmio[i].entryPc < 979140 ∧
      nativePc + baselineMmio[i].exitPc < initialPc + 1028080) := by
  exact ⟨admission_names_length, admission_entry_nodup,
    admission_entry_conditions, admission_mmio_bounds⟩

#print axioms baseline_submission_finite
end InitE
