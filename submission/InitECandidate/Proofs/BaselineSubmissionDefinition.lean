import InitE.SubmissionInitialization
import InitECandidate.Proofs.StartupEnvironment
import InitECandidate.Proofs.BaselineMemoryDomains

namespace InitE
open Classical
set_option maxRecDepth 100000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend.LabToTarget

def baselineSubmission : Submission :=
  { code := InitECandidate.code, K := .infinity
    anchorPc := nativePc, names := baselineNames, first := 2, extra := baselineMmio }

theorem baselineSubmission_machineConfig : baselineSubmission.machineConfig = baselineMachineConfig := rfl

private theorem baseline_pureMemory : romMemory InitECandidate.code = initialMemory := rfl

private theorem baselineSubmission_memory (input : Guest.InputBlob) :
    baselineSubmission.initialMemory input = (fun a =>
      if machineSharedDomain a then byteToBits ((Guest.guestHostMemory input a).getD 0)
      else initialMemory a) := by
  have h := submission_record_memory InitECandidate.code .infinity nativePc baselineNames 2 baselineMmio input
  rw [baseline_pureMemory] at h
  have hd : submissionSharedDomain = machineSharedDomain := rfl
  unfold hostOverlay at h
  rw [hd] at h
  exact h

theorem baselineSubmission_initialState (input : Guest.InputBlob) :
    baselineSubmission.initialState input = baselineInitialState input := by
  unfold Submission.initialState
  rw [baselineSubmission_memory]
  rfl



end InitE
