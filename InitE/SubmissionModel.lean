import InitE.MachineInitialization

namespace InitE
open Classical
set_option maxRecDepth 100000
open Flapjack Flapjack.RiscV.L3
open Flapjack.Compiler.Backend.LabToTarget
open Flapjack.Compiler.Encoders.RiscV.Target

/-- Participant literals and native foreign-call layout. The evaluator itself is fixed. -/
structure Submission where
  code : List (BitVec 8)
  K : NatE
  anchorPc : Nat
  names : List HolFfiName
  first : Nat
  extra : List ShmemInfoNum

def submissionSharedDomain (a : BitVec 64) : Prop :=
  (inputStart ≤ a.toNat ∧ a.toNat < inputEnd) ∨
    (outputStart ≤ a.toNat ∧ a.toNat < outputEnd)

def submissionMemoryDomain (a : BitVec 64) : Prop :=
  ((initialPc ≤ a.toNat ∧ a.toNat < initialPc + codeSizeLimit) ∨
    (ramStart ≤ a.toNat ∧ a.toNat < ramEnd)) ∧ ¬ submissionSharedDomain a

def Submission.programDomain (s : Submission) (a : BitVec 64) : Prop :=
  submissionMemoryDomain a ∧ ∀ i : Nat, i < s.first + 2 →
    a ≠ BitVec.ofNat 64 s.anchorPc - BitVec.ofNat 64 (ffiOffset * (i+1))

noncomputable def Submission.machineConfig (s : Submission) :
    MachineConfig 64 riscv_state RiscVProjection :=
  challengeMachineConfig (BitVec.ofNat 64 s.anchorPc) s.programDomain
    submissionSharedDomain s.names s.first s.extra

/-- Submitted ROM, zero ordinary RAM, and the common public input/output oracle. -/
noncomputable def Submission.initialMemory (s : Submission) (input : Guest.InputBlob)
    (a : BitVec 64) : BitVec 8 :=
  if submissionSharedDomain a then byteToBits ((Guest.guestHostMemory input a).getD 0)
  else if initialPc ≤ a.toNat ∧ a.toNat < initialPc + s.code.length then
    s.code[a.toNat - initialPc]?.getD 0 else 0

noncomputable def Submission.initialState (s : Submission) (input : Guest.InputBlob) : riscv_state :=
  { (default : riscv_state) with
    MEM8 := s.initialMemory input
    c_MCSR := fun _ => { (default : MachineCSR) with
      mstatus := { (default : mstatus) with MPRV := 3, VM := 0 }
      mcpuid := { (default : mcpuid) with ArchBase := 2 } }
    c_PC := fun _ => BitVec.ofNat 64 initialPc
    c_gpr := fun _ _ => 0
    c_NextFetch := fun _ => none
    exception := .NoException }

/-- Finite admission conditions bind all dispatch metadata to the submitted ROM.
The ordinary call slots, including halt and cache, never occupy entry PC or RAM. -/
structure Submission.Admitted (s : Submission) : Prop where
  code_nonempty : 0 < s.code.length
  code_limit : s.code.length ≤ codeSizeLimit
  anchor_lower : initialPc + ffiOffset * (s.first + 2) < s.anchorPc
  anchor_upper : s.anchorPc < initialPc + s.code.length
  anchor_aligned : holAligned 2 (BitVec.ofNat 64 s.anchorPc) = true
  name_boundary : ffiNameBoundaryValid s.names s.first
  metadata_length : s.names.length = s.first + s.extra.length
  ordinary_slots_loaded : ∀ i : Fin (s.first + 2),
    let a := BitVec.ofNat 64 s.anchorPc - BitVec.ofNat 64 (ffiOffset * (i.val+1))
    initialPc < a.toNat ∧ a.toNat < initialPc + s.code.length
  mmio_valid : ∀ i : Fin s.names.length, s.first ≤ i.val →
    mmioRecordValid (BitVec.ofNat 64 s.anchorPc) s.first s.extra i.val = true
  entry_distinct : s.machineConfig.ffiEntryPcs.Nodup
  entry_loaded : ∀ a ∈ s.machineConfig.ffiEntryPcs,
    initialPc < a.toNat ∧ a.toNat < initialPc + s.code.length
  entry_aligned : ∀ a ∈ s.machineConfig.ffiEntryPcs, holAligned 2 a = true
  entry_dispatch_separate : ∀ a ∈ s.machineConfig.ffiEntryPcs,
    a ≠ s.machineConfig.haltPc ∧ a ≠ s.machineConfig.ccachePc
  mmio_program : ∀ rec ∈ s.extra,
    s.programDomain (BitVec.ofNat 64 s.anchorPc + BitVec.ofNat 64 rec.entryPc)
  exit_loaded : ∀ rec ∈ s.extra,
    s.anchorPc + rec.exitPc < initialPc + s.code.length
  layout_bound : s.code.length + ffiOffset * (s.first + 3) < 2^64

theorem Submission.initialState_mode (s : Submission) (input : Guest.InputBlob) :
    ((s.initialState input).c_MCSR (s.initialState input).procID).mstatus.MPRV = 3 ∧
    ((s.initialState input).c_MCSR (s.initialState input).procID).mstatus.VM = 0 := ⟨rfl,rfl⟩

theorem Submission.initialState_registers (s : Submission) (input : Guest.InputBlob)
    (r : BitVec 5) : (s.initialState input).c_gpr (s.initialState input).procID r = 0 := rfl

theorem Submission.initialState_ok (s : Submission) (input : Guest.InputBlob) :
    riscvOk (s.initialState input) = true := by
  apply (riscvOk_iff _).mpr
  exact ⟨rfl,rfl,rfl,rfl,by change holAligned 2 (BitVec.ofNat 64 initialPc) = true; decide⟩

theorem Submission.ffi_interference (s : Submission) (h : s.Admitted) :
    ffiInterferOkHOL (BitVec.ofNat 64 s.anchorPc) s.machineConfig :=
  challengeMachineConfig_ffiOk_checked _ _ _ _ _ _
    (ffiNameBoundaryValid_sound _ _ h.name_boundary) h.mmio_valid

theorem Submission.no_interference (s : Submission) :
    interferenceOk s.machineConfig.nextInterfer
      (s.machineConfig.target.proj s.programDomain) :=
  challengeMachineConfig_noInterference _ _ _ _ _ _

theorem Submission.cache_interference (s : Submission) :
    ccacheInterferOkHOL (BitVec.ofNat 64 s.anchorPc) s.machineConfig :=
  challengeMachineConfig_cacheOk _ _ _ _ _ _

theorem Submission.initialMemory_ram_zero (s : Submission) (h : s.Admitted)
    (input : Guest.InputBlob) (a : BitVec 64) (ram : ramStart ≤ a.toNat)
    (ordinary : ¬ submissionSharedDomain a) : s.initialMemory input a = 0 := by
  rw [Submission.initialMemory, if_neg ordinary]
  apply if_neg
  have limit := h.code_limit
  simp only [initialPc,codeSizeLimit,ramStart] at *
  omega

end InitE
