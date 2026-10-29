import InitE.SubmissionModel

namespace InitE
open Flapjack

def romMemory (code : List (BitVec 8)) (a : BitVec 64) : BitVec 8 :=
  if initialPc ≤ a.toNat ∧ a.toNat < initialPc + code.length then
    code[a.toNat - initialPc]?.getD 0 else 0

open Classical
noncomputable def hostOverlay (mem : BitVec 64 → BitVec 8) (input : Guest.InputBlob)
    (a : BitVec 64) : BitVec 8 :=
  if submissionSharedDomain a then byteToBits ((Guest.guestHostMemory input a).getD 0)
  else mem a

theorem submission_record_memory (code : List (BitVec 8)) (K : NatE) (anchor : Nat)
    (names : List HolFfiName) (first : Nat)
    (extra : List Flapjack.Compiler.Backend.LabToTarget.ShmemInfoNum) (input : Guest.InputBlob) :
    ({ code := code, K := K, anchorPc := anchor, names := names, first := first, extra := extra } : Submission).initialMemory input = hostOverlay (romMemory code) input := by
  funext a
  unfold Submission.initialMemory hostOverlay
  dsimp only
  by_cases shared : submissionSharedDomain a
  · simp only [if_pos shared]
  · simp only [if_neg shared]
    unfold romMemory
    by_cases loaded : initialPc ≤ a.toNat ∧ a.toNat < initialPc + code.length
    · simp only [if_pos loaded]
    · simp only [if_neg loaded]

end InitE
