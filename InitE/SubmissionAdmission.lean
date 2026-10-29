import InitE.SubmissionModel

namespace InitE
open Flapjack Flapjack.RiscV.L3
open Flapjack.Compiler.Backend.LabToTarget

/-- Assemble admission with all participant fields kept symbolic. In particular,
the constructor never reduces a closed compiler artifact or submitted ROM. -/
theorem Submission.admitted_literal
    (code : List (BitVec 8)) (K : NatE) (anchorPc : Nat)
    (names : List HolFfiName) (first : Nat) (extra : List ShmemInfoNum)
    (code_nonempty : 0 < code.length)
    (code_limit : code.length ≤ codeSizeLimit)
    (anchor_lower : initialPc + ffiOffset * (first + 2) < anchorPc)
    (anchor_upper : anchorPc < initialPc + code.length)
    (anchor_aligned : holAligned 2 (BitVec.ofNat 64 anchorPc) = true)
    (name_boundary : ffiNameBoundaryValid names first)
    (metadata_length : names.length = first + extra.length)
    (ordinary_slots_loaded : ∀ i : Fin (first + 2),
      let a := BitVec.ofNat 64 anchorPc - BitVec.ofNat 64 (ffiOffset * (i.val+1))
      initialPc < a.toNat ∧ a.toNat < initialPc + code.length)
    (mmio_valid : ∀ i : Fin names.length, first ≤ i.val →
      mmioRecordValid (BitVec.ofNat 64 anchorPc) first extra i.val = true)
    (entry_distinct :
      (Submission.machineConfig ⟨code,K,anchorPc,names,first,extra⟩).ffiEntryPcs.Nodup)
    (entry_loaded : ∀ a ∈
      (Submission.machineConfig ⟨code,K,anchorPc,names,first,extra⟩).ffiEntryPcs,
      initialPc < a.toNat ∧ a.toNat < initialPc + code.length)
    (entry_aligned : ∀ a ∈
      (Submission.machineConfig ⟨code,K,anchorPc,names,first,extra⟩).ffiEntryPcs,
      holAligned 2 a = true)
    (entry_dispatch_separate : ∀ a ∈
      (Submission.machineConfig ⟨code,K,anchorPc,names,first,extra⟩).ffiEntryPcs,
      a ≠ (Submission.machineConfig ⟨code,K,anchorPc,names,first,extra⟩).haltPc ∧
      a ≠ (Submission.machineConfig ⟨code,K,anchorPc,names,first,extra⟩).ccachePc)
    (mmio_program : ∀ rec ∈ extra,
      Submission.programDomain ⟨code,K,anchorPc,names,first,extra⟩
        (BitVec.ofNat 64 anchorPc + BitVec.ofNat 64 rec.entryPc))
    (exit_loaded : ∀ rec ∈ extra, anchorPc + rec.exitPc < initialPc + code.length)
    (layout_bound : code.length + ffiOffset * (first + 3) < 2^64) :
    Submission.Admitted ⟨code,K,anchorPc,names,first,extra⟩ :=
  ⟨code_nonempty, code_limit, anchor_lower, anchor_upper, anchor_aligned,
    name_boundary, metadata_length, ordinary_slots_loaded, mmio_valid,
    entry_distinct, entry_loaded, entry_aligned, entry_dispatch_separate,
    mmio_program, exit_loaded, layout_bound⟩

end InitE
