import InitECandidate.Proofs.BaselineSubmissionDefinition
import InitECandidate.Proofs.BaselineSubmissionFacts
import InitECandidate.Proofs.MachineConfigurationFields
import InitE.SubmissionAdmission

namespace InitE
set_option maxRecDepth 10000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend.LabToTarget
private theorem entryPc_model :
    (⟨InitECandidate.code,.infinity,nativePc,baselineNames,2,baselineMmio⟩ : Submission).machineConfig.ffiEntryPcs = baselineEntryPcs := by
  change baselineSubmission.machineConfig.ffiEntryPcs = baselineEntryPcs
  rw [baselineSubmission_machineConfig]
  exact challengeMachineConfig_entries (BitVec.ofNat 64 nativePc) programDomain
    machineSharedDomain baselineNames 2 baselineMmio
private theorem program_model :
    (⟨InitECandidate.code,.infinity,nativePc,baselineNames,2,baselineMmio⟩ : Submission).programDomain = programDomain := rfl

private theorem baselineSubmission_code : baselineSubmission.code = InitECandidate.code := rfl

theorem baselineSubmission_admitted : baselineSubmission.Admitted := by
  have hsize : InitECandidate.code.length = 1028080 := baseline_literal_layout.2.2
  refine Submission.admitted_literal InitECandidate.code .infinity nativePc baselineNames 2 baselineMmio
    ?_ ?_ (by decide) ?_ (by decide) baseline_finite_facts.1
    baseline_submission_finite.1 ?_ baseline_finite_facts.2.1 ?_ ?_ ?_ ?_ ?_ ?_ ?_
  · rw [hsize]; decide
  · rw [hsize]; decide
  · rw [hsize]; change nativePc < initialPc + 1028080; decide
  · have h : ∀ i : Fin 4,
        let a := BitVec.ofNat 64 nativePc - BitVec.ofNat 64 (ffiOffset * (i.val+1))
        initialPc < a.toNat ∧ a.toNat < initialPc + 1028080 := by decide
    simpa only [baseline_literal_layout.2.2] using h
  · rw [entryPc_model]; exact baseline_submission_finite.2.1
  · intro a ha
    rw [entryPc_model] at ha
    obtain ⟨i,hi,heq⟩ := List.getElem_of_mem ha
    subst a
    have hh := baseline_submission_finite.2.2.1 ⟨i,hi⟩
    simp only [Fin.getElem_fin] at hh
    simpa only [baseline_literal_layout.2.2] using ⟨hh.1,hh.2.1⟩
  · intro a ha
    rw [entryPc_model] at ha
    obtain ⟨i,hi,heq⟩ := List.getElem_of_mem ha
    subst a
    have hh := baseline_submission_finite.2.2.1 ⟨i,hi⟩
    simp only [Fin.getElem_fin] at hh
    exact hh.2.2.1
  · intro a ha
    rw [entryPc_model] at ha
    obtain ⟨i,hi,heq⟩ := List.getElem_of_mem ha
    subst a
    have hh := baseline_submission_finite.2.2.1 ⟨i,hi⟩
    simp only [Fin.getElem_fin] at hh
    exact hh.2.2.2
  · intro rec hr
    change rec ∈ baselineMmio at hr
    obtain ⟨i,hi,heq⟩ := List.getElem_of_mem hr
    subst rec
    have hlt := (baseline_submission_finite.2.2.2 ⟨i,hi⟩).1
    simp only [Fin.getElem_fin] at hlt
    rw [program_model]
    exact baseline_native_program_byte ⟨baselineMmio[i].entryPc,
      by simpa only [baseline_literal_layout.2.1] using hlt⟩
  · intro rec hr
    change rec ∈ baselineMmio at hr
    obtain ⟨i,hi,heq⟩ := List.getElem_of_mem hr
    subst rec
    have h := (baseline_submission_finite.2.2.2 ⟨i,hi⟩).2
    simp only [Fin.getElem_fin] at h
    simpa only [baseline_literal_layout.2.2] using h
  · rw [hsize]; decide

end InitE
