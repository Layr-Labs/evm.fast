import InitE.SourceSemantics
import Flapjack.Compiler.Backend.RiscVConfig.Proofs
import Flapjack.Compiler.Backend.Semantics.TargetSem.InterferenceContracts

namespace InitE
open Flapjack Flapjack.Compiler.Encoders.Asm
open Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.Compiler.Backend.LabToTarget
open Flapjack.RiscV.L3

/-- Update only the currently executing core's PC. -/
def machineSetPc (s : riscv_state) (pc : BitVec 64) : riscv_state :=
  { s with c_PC := fun core => if core = s.procID then pc else s.c_PC core }

/-- An MMIO read updates one integer register, preserving every other core. -/
def machineSetReg (s : riscv_state) (reg : Nat) (value : BitVec 64) : riscv_state :=
  { s with c_gpr := fun core r =>
      if core = s.procID ∧ r = BitVec.ofNat 5 reg then value else s.c_gpr core r }

/-- Ordinary FFI writes its returned bytes and resumes through x1. -/
def machineExtReturn (s : riscv_state) (bytes : List (BitVec 8)) : riscv_state :=
  machineSetPc { s with MEM8 := asmWriteBytearrayHOL (s.c_gpr s.procID 12) bytes s.MEM8 }
    (s.c_gpr s.procID 1)

/-- Shared-memory operations use the compiler's precise exit PC and result register. -/
def machineMmioReturn (s : riscv_state) (name : HolFfiName)
    (info : BitVec 8 × HolAddr 64 × Nat × BitVec 64)
    (bytes : List (BitVec 8)) : riscv_state :=
  machineSetPc
    (if name = .sharedMem .mappedRead then
      machineSetReg s info.2.2.1 (HolByte.wordOfBytes false 0 bytes) else s)
    info.2.2.2

noncomputable def machineFfiInterference (names : List HolFfiName)
    (info : List (Nat × (BitVec 8 × HolAddr 64 × Nat × BitVec 64)))
    (_ : Nat) (args : Nat × List (BitVec 8) × riscv_state) : riscv_state :=
  match sptAListLookup args.1 info with
  | some record => machineMmioReturn args.2.2 (holEl args.1 names) record args.2.1
  | none => machineExtReturn args.2.2 args.2.1

/-- The cache hook has no observable effect except returning through x1. -/
def machineCacheInterference (_ : Nat)
    (args : BitVec 64 × BitVec 64 × riscv_state) : riscv_state :=
  machineSetPc args.2.2 (args.2.2.c_gpr args.2.2.procID 1)

/-- Compiler MMIO metadata translated without inventing callback addresses. -/
def machineMmioInfo (pc : BitVec 64) (first : Nat) (extra : List ShmemInfoNum) :
    List (Nat × (BitVec 8 × HolAddr 64 × Nat × BitVec 64)) :=
  List.zip ((List.range extra.length).map (fun i => i + first))
    (extra.map fun rec => (rec.nbytes, HolAddr.addr rec.addrReg (BitVec.ofNat 64 rec.addrOff),
      rec.reg, BitVec.ofNat 64 rec.exitPc + pc))

/-- A concrete machine configuration; ordinary interrupts are absent. -/
noncomputable def challengeMachineConfig (pc : BitVec 64)
    (program shared : BitVec 64 → Prop) (names : List HolFfiName)
    (first : Nat) (extra : List ShmemInfoNum) :
    MachineConfig 64 riscv_state RiscVProjection :=
  let info := machineMmioInfo pc first extra
  { progAddresses := program, sharedAddresses := shared
    ffiEntryPcs := ((List.range first).map fun i => pc - BitVec.ofNat 64 ((3+i)*ffiOffset)) ++
      (extra.map fun rec => pc + BitVec.ofNat 64 rec.entryPc)
    ffiNames := names
    ptrReg := 10, lenReg := 11, ptr2Reg := 12, len2Reg := 13
    ffiInterfer := machineFfiInterference names info
    calleeSavedRegs := [24,25,26], nextInterfer := fun _ s => s
    haltPc := pc - BitVec.ofNat 64 ffiOffset
    ccachePc := pc - BitVec.ofNat 64 (2*ffiOffset)
    ccacheInterfer := machineCacheInterference
    target := riscvTarget, mmioInfo := info }

theorem challengeMachineConfig_isRiscv (pc : BitVec 64)
    (program shared : BitVec 64 → Prop) (names : List HolFfiName)
    (first : Nat) (extra : List ShmemInfoNum) :
    Flapjack.Compiler.Backend.RiscVConfig.isRiscvMachineConfig
      (challengeMachineConfig pc program shared names first extra) := by
  exact ⟨rfl, rfl, rfl, rfl, rfl, rfl⟩

theorem challengeMachineConfig_noInterference (pc : BitVec 64)
    (program shared : BitVec 64 → Prop) (names : List HolFfiName)
    (first : Nat) (extra : List ShmemInfoNum) :
    interferenceOk (challengeMachineConfig pc program shared names first extra).nextInterfer
      ((challengeMachineConfig pc program shared names first extra).target.proj program) := by
  intro i s
  rfl

@[simp] theorem machineSetPc_pc (s : riscv_state) (pc : BitVec 64) :
    (machineSetPc s pc).c_PC (machineSetPc s pc).procID = pc := by
  simp [machineSetPc]

@[simp] theorem machineSetPc_reg (s : riscv_state) (pc : BitVec 64) (r : BitVec 5) :
    (machineSetPc s pc).c_gpr (machineSetPc s pc).procID r = s.c_gpr s.procID r := rfl

@[simp] theorem machineSetPc_memory (s : riscv_state) (pc : BitVec 64) :
    (machineSetPc s pc).MEM8 = s.MEM8 := rfl

@[simp] theorem machineSetReg_pc (s : riscv_state) (reg : Nat) (value : BitVec 64) :
    (machineSetReg s reg value).c_PC (machineSetReg s reg value).procID = s.c_PC s.procID := rfl

@[simp] theorem machineSetReg_memory (s : riscv_state) (reg : Nat) (value : BitVec 64) :
    (machineSetReg s reg value).MEM8 = s.MEM8 := rfl

@[simp] theorem machineSetReg_current (s : riscv_state) (reg : Nat) (value : BitVec 64) :
    (machineSetReg s reg value).c_gpr (machineSetReg s reg value).procID (BitVec.ofNat 5 reg) =
      value := by simp [machineSetReg]

theorem machineSetPc_ok (s : riscv_state) (pc : BitVec 64)
    (hs : riscvOk s = true) (hp : holAligned 2 pc = true) :
    riscvOk (machineSetPc s pc) = true := by
  rcases riscvOk_iff s |>.mp hs with ⟨hvm, harch, hfetch, hex, _⟩
  apply (riscvOk_iff _).mpr
  exact ⟨hvm, harch, hfetch, hex, by simpa using hp⟩

@[simp] theorem machineSetReg_ok (s : riscv_state) (reg : Nat) (value : BitVec 64) :
    riscvOk (machineSetReg s reg value) = riscvOk s := rfl

/-- Returning from cache preserves all bytes and registers and restores the link PC. -/
theorem machineCacheInterference_contract (s : riscv_state) (k : Nat)
    (a b : BitVec 64) :
    (machineCacheInterference k (a,b,s)).MEM8 = s.MEM8 ∧
    (machineCacheInterference k (a,b,s)).c_gpr = s.c_gpr ∧
    (machineCacheInterference k (a,b,s)).c_PC s.procID = s.c_gpr s.procID 1 := by
  exact ⟨rfl, rfl, by simp [machineCacheInterference, machineSetPc]⟩

theorem challengeMachineConfig_cacheOk (pc : BitVec 64)
    (program shared : BitVec 64 → Prop) (names : List HolFfiName)
    (first : Nat) (extra : List ShmemInfoNum) :
    ccacheInterferOkHOL pc (challengeMachineConfig pc program shared names first extra) := by
  intro ms t k a b h
  rcases h with ⟨hrel, halign⟩
  rcases hrel with ⟨hok, hpc, hmem, hreg, hfp⟩
  have hlink : ms.c_gpr ms.procID 1 = t.regs 1 := hreg 1 (by change 1 < 32 ∧ [0,2,3,4,31].contains 1 = false; decide)
  have hp : holAligned 2 (ms.c_gpr ms.procID 1) = true := by
    simpa only [challengeMachineConfig, riscvTarget, riscvConfig, hlink] using halign
  refine ⟨machineSetPc_ok ms _ hok hp, ?_, ?_, ?_⟩
  · simpa only [challengeMachineConfig, machineCacheInterference, riscvTarget,
      machineSetPc_pc, riscvConfig] using hlink
  · exact hmem
  · intro r hr
    exact hreg r ⟨hr.2.1, by simpa using hr.2.2⟩

/-- Native register updates represent exactly the corresponding ASM update.
The register bound prevents aliases introduced by truncating to five bits. -/
theorem machineSetReg_relation (s : riscv_state) (t : AsmState 64)
    (reg : Nat) (value : BitVec 64) (hreg : reg < 32)
    (hrel : targetStateRel riscvTarget t s) :
    targetStateRel riscvTarget
      { t with regs := fun n => if n = reg then value else t.regs n }
      (machineSetReg s reg value) := by
  rcases hrel with ⟨hok, hpc, hmem, hregs, hfp⟩
  refine ⟨hok, hpc, hmem, ?_, ?_⟩
  swap
  · intro i hi; have : i < 0 := hi; omega
  intro n hn
  have hnlt : n < 32 := hn.1
  have heq : BitVec.ofNat 5 n = BitVec.ofNat 5 reg ↔ n = reg := by
    constructor
    · intro h
      have hh := congrArg BitVec.toNat h
      simp only [BitVec.toNat_ofNat] at hh
      simpa only [Nat.mod_eq_of_lt hnlt, Nat.mod_eq_of_lt hreg] using hh
    · intro h; rw [h]
  simpa [riscvTarget, machineSetReg, heq] using
    (show (if n = reg then value else s.c_gpr s.procID (BitVec.ofNat 5 n)) =
      (if n = reg then value else t.regs n) from by have hh := hregs n hn; change s.c_gpr s.procID (BitVec.ofNat 5 n) = t.regs n at hh; rw [hh])

/-- A PC update preserves an ASM relation whenever its new PC is aligned. -/
theorem machineSetPc_relation (s : riscv_state) (t : AsmState 64)
    (pc : BitVec 64) (hp : holAligned 2 pc = true)
    (hrel : targetStateRel riscvTarget t s) :
    targetStateRel riscvTarget { t with pc := pc } (machineSetPc s pc) := by
  rcases hrel with ⟨hok, _, hmem, hregs, hfp⟩
  refine ⟨machineSetPc_ok s pc hok hp, by simp [riscvTarget], hmem, hregs, ?_⟩
  intro i hi; have : i < 0 := hi; omega

/-- Byte-array writeback is congruent on any observed memory domain. -/
theorem writeBytearray_congr (address : BitVec 64) (bytes : List (BitVec 8))
    (left right : BitVec 64 → BitVec 8) (domain : BitVec 64 → Prop)
    (h : ∀ a, domain a → left a = right a) :
    ∀ a, domain a → asmWriteBytearrayHOL address bytes left a =
      asmWriteBytearrayHOL address bytes right a := by
  induction bytes generalizing address with
  | nil => exact h
  | cons x xs ih =>
      intro a ha
      simp only [asmWriteBytearrayHOL]
      split
      · rfl
      · exact ih (address+1) a ha

/-- The concrete FFI hook meets the full upstream contract once the finite
compiler metadata has valid registers and aligned exits. -/
theorem challengeMachineConfig_ffiOk (pc : BitVec 64)
    (program shared : BitVec 64 → Prop) (names : List HolFfiName)
    (first : Nat) (extra : List ShmemInfoNum)
    (hfirst : mmioPcsMinIndex names = some first)
    (hext : ∀ index, index < first →
      sptAListLookup index (machineMmioInfo pc first extra) = none)
    (hmmio : ∀ index, first ≤ index → index < names.length →
      ∃ info, sptAListLookup index (machineMmioInfo pc first extra) = some info ∧
        info.2.2.1 < 32 ∧ holAligned 2 info.2.2.2 = true) :
    ffiInterferOkHOL pc (challengeMachineConfig pc program shared names first extra) := by
  intro ms k index newBytes t bytes bytes2 i h
  rcases h with ⟨hindex, hi, hdomain⟩
  have hieq : i = first := by simpa only [challengeMachineConfig, hfirst, Option.some.injEq] using hi.symm
  subst i
  constructor
  · intro hbefore hcall
    rcases hcall with ⟨_, _, _, hrel, halign⟩
    rcases hrel with ⟨hok, hpc, hmem, hregs, hfp⟩
    have hlink : ms.c_gpr ms.procID 1 = t.regs 1 :=
      hregs 1 (by change 1 < 32 ∧ [0,2,3,4,31].contains 1 = false; decide)
    have hptr : ms.c_gpr ms.procID 12 = t.regs 12 :=
      hregs 12 (by change 12 < 32 ∧ [0,2,3,4,31].contains 12 = false; decide)
    simp only [challengeMachineConfig, machineFfiInterference, hext index hbefore]
    refine ⟨?_, ?_, ?_, ?_⟩
    · apply machineSetPc_ok _ _ hok
      simpa only [challengeMachineConfig, riscvTarget, riscvConfig, hlink] using halign
    · simpa [machineExtReturn, riscvTarget, riscvConfig] using hlink
    · intro a ha
      change asmWriteBytearrayHOL (ms.c_gpr ms.procID 12) newBytes ms.MEM8 a = _
      rw [hptr]
      exact writeBytearray_congr _ _ _ _ _ hmem a ha
    · intro r hr
      exact hregs r ⟨hr.2.1, by simpa [challengeMachineConfig] using hr.2.2⟩
  · rintro ⟨hafter, hrel⟩
    obtain ⟨info, hlookup, hreg, halign⟩ := hmmio index hafter hindex
    refine ⟨info, hlookup, ?_, ?_⟩
    · intro hname newBytes
      change holEl index names = .sharedMem .mappedRead at hname
      simp only [challengeMachineConfig, machineFfiInterference, hlookup,
        machineMmioReturn, hname, if_true]
      exact machineSetPc_relation _ _ _ halign
        (machineSetReg_relation _ _ _ _ hreg hrel)
    · intro hname
      change holEl index names = .sharedMem .mappedWrite at hname
      simp only [challengeMachineConfig, machineFfiInterference, hlookup,
        machineMmioReturn, hname]
      simp only [HolFfiName.sharedMem.injEq, reduceCtorEq, if_false]
      simpa only [AsmState.pc] using machineSetPc_relation ms
        { t with pc := holEl index (challengeMachineConfig pc program shared names first extra).ffiEntryPcs }
        info.2.2.2 halign hrel

/-- The ASM witness observes precisely the installed native state. -/
noncomputable def machineAsmState (mc : MachineConfig 64 riscv_state RiscVProjection)
    (ms : riscv_state) : AsmState 64 :=
  { regs := mc.target.getReg ms
    fpRegs := mc.target.getFpReg ms
    mem := mc.target.getByte ms
    memDomain := mc.progAddresses
    pc := mc.target.getPc ms
    lr := mc.target.config.linkReg.getD 0
    align := mc.target.config.codeAlignment
    be := mc.target.config.bigEndian
    failed := false }

theorem machineAsmState_relation (mc : MachineConfig 64 riscv_state RiscVProjection)
    (ms : riscv_state) (hok : mc.target.stateOk ms = true) :
    targetStateRel mc.target (machineAsmState mc ms) ms := by
  exact ⟨hok, rfl, fun _ _ => rfl, fun _ _ => rfl, fun _ _ => rfl⟩

theorem machineAsmState_configured (mc : MachineConfig 64 riscv_state RiscVProjection)
    (ms : riscv_state) : targetConfigured (machineAsmState mc ms) mc := by
  refine ⟨rfl, rfl, rfl, rfl, ?_⟩
  cases h : mc.target.config.linkReg <;> simp [machineAsmState, h]

/-- The source's aligned shared domain is recovered from a byte shared domain. -/
theorem source_shared_domain (sdm : BitVec 64 → Bool)
    (h : ∀ a, sdm a = true ↔
      ((inputStart ≤ a.toNat ∧ a.toNat < inputEnd) ∨
        (outputStart ≤ a.toNat ∧ a.toNat < outputEnd))) :
    sharedDomain = (fun a => sdm a = true ∧ holByteAligned a = true) := by
  funext a
  apply propext
  simp only [sharedDomain, h, and_comm]

/-- Compiler MMIO indices cannot collide with ordinary FFI indices. -/
theorem machineMmioInfo_noExternalLookup (pc : BitVec 64) (first : Nat)
    (extra : List ShmemInfoNum) (index : Nat) (hindex : index < first) :
    sptAListLookup index (machineMmioInfo pc first extra) = none := by
  cases h : sptAListLookup index (machineMmioInfo pc first extra) with
  | none => rfl
  | some info =>
      have hm := sptAListLookup_mem index (machineMmioInfo pc first extra) info h
      have hk := (List.of_mem_zip hm).1
      simp only [List.mem_map] at hk
      obtain ⟨j, _, hj⟩ := hk
      omega

/-- Executable finite check for each shared-memory callback. -/
def mmioRecordValid (pc : BitVec 64) (first : Nat)
    (extra : List ShmemInfoNum) (index : Nat) : Bool :=
  match sptAListLookup index (machineMmioInfo pc first extra) with
  | none => false
  | some info => decide (info.2.2.1 < 32) && holAligned 2 info.2.2.2

theorem mmioRecordValid_witness (pc : BitVec 64) (first : Nat)
    (extra : List ShmemInfoNum) (index : Nat)
    (h : mmioRecordValid pc first extra index = true) :
    ∃ info, sptAListLookup index (machineMmioInfo pc first extra) = some info ∧
      info.2.2.1 < 32 ∧ holAligned 2 info.2.2.2 = true := by
  unfold mmioRecordValid at h
  split at h
  · contradiction
  · rename_i info heq
    exact ⟨info, heq, by simpa only [Bool.and_eq_true, decide_eq_true_eq] using h⟩

/-- Finite native-decidable checks suffice to certify all MMIO interference. -/
theorem challengeMachineConfig_ffiOk_checked (pc : BitVec 64)
    (program shared : BitVec 64 → Prop) (names : List HolFfiName)
    (first : Nat) (extra : List ShmemInfoNum)
    (hfirst : mmioPcsMinIndex names = some first)
    (hcheck : ∀ i : Fin names.length, first ≤ i.val →
      mmioRecordValid pc first extra i.val = true) :
    ffiInterferOkHOL pc (challengeMachineConfig pc program shared names first extra) := by
  apply challengeMachineConfig_ffiOk pc program shared names first extra hfirst
  · exact machineMmioInfo_noExternalLookup pc first extra
  · intro index hlo hhi
    exact mmioRecordValid_witness pc first extra index (hcheck ⟨index,hhi⟩ hlo)

/-- Executable classification of the ordinary-call prefix and MMIO suffix. -/
def ffiNameBoundaryValid (names : List HolFfiName) (first : Nat) : Prop :=
  first ≤ names.length ∧ ∀ i : Fin names.length,
    (match names[i] with
      | .extCall _ => decide (i.val < first)
      | .sharedMem _ => decide (first ≤ i.val)) = true

instance (names : List HolFfiName) (first : Nat) :
    Decidable (ffiNameBoundaryValid names first) := by
  unfold ffiNameBoundaryValid
  infer_instance

theorem ffiNameBoundaryValid_sound (names : List HolFfiName) (first : Nat)
    (h : ffiNameBoundaryValid names first) : mmioPcsMinIndex names = some first := by
  apply mmioPcsMinIndex_eq_some
  rcases h with ⟨hlen, hnames⟩
  refine ⟨hlen, ?_, ?_⟩
  · intro j hj
    have hjlen : j < names.length := by omega
    have hn := hnames ⟨j,hjlen⟩
    change (match names[j] with
      | .extCall _ => decide (j < first)
      | .sharedMem _ => decide (first ≤ j)) = true at hn
    rw [holEl_eq_getElem j names hjlen]
    cases he : names[j] with
    | extCall name => exact ⟨name,rfl⟩
    | sharedMem op =>
        simp only [he, decide_eq_true_eq] at hn
        omega
  · intro j hj hjlen
    have hn := hnames ⟨j,hjlen⟩
    change (match names[j] with
      | .extCall _ => decide (j < first)
      | .sharedMem _ => decide (first ≤ j)) = true at hn
    rw [holEl_eq_getElem j names hjlen]
    cases he : names[j] with
    | extCall name =>
        simp only [he, decide_eq_true_eq] at hn
        omega
    | sharedMem op => exact ⟨op,rfl⟩

end InitE

#print axioms InitE.challengeMachineConfig_ffiOk_checked
#print axioms InitE.challengeMachineConfig_cacheOk
