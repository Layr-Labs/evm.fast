import InitE.MachineInitialization
import InitECandidate.Program
import InitECandidate.Proofs.LiteralFacts

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false

namespace InitE
open InitECandidate.Proofs
open Flapjack Flapjack.RiscV.L3
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Encoders.AsmSem
open Flapjack.Compiler.Backend.LabToTarget
open Flapjack.Compiler.Encoders.RiscV.Target

def nativePc : Nat := 0x80001070
def initDataRom : Nat := 0x800f2000
def initDataRam : Nat := 0xa0020000
def initDataEnd : Nat := 0xa0028ff0
def initDataWords : Nat := (initDataEnd - initDataRam) / 8

/-- Shared byte ranges; the source's shared domain is their aligned cells. -/
def machineSharedDomain (a : BitVec 64) : Prop :=
  (inputStart ≤ a.toNat ∧ a.toNat < inputEnd) ∨
    (outputStart ≤ a.toNat ∧ a.toNat < outputEnd)

/-- Loaded ROM and zeroed RAM. No compiler-specific initialized words or
heap/stack register values are supplied by the challenge environment. -/
def initialMemory (a : BitVec 64) : BitVec 8 :=
  if initialPc ≤ a.toNat ∧ a.toNat < initialPc + InitECandidate.code.length then
    InitECandidate.code[a.toNat - initialPc]?.getD 0 else 0

/-- Ordinary executable/data addresses before excluding native dispatch entries. -/
def memoryDomain (a : BitVec 64) : Prop :=
  ((initialPc ≤ a.toNat ∧ a.toNat < initialPc + codeSizeLimit) ∨
    (ramStart ≤ a.toNat ∧ a.toNat < ramEnd)) ∧ ¬ machineSharedDomain a

/-- The native halt/cache/ordinary FFI slots are dispatch points, not RAM.
MMIO entries inside native code remain ordinary address-domain members. -/
def bootstrapDomain (a : BitVec 64) : Prop :=
  memoryDomain a ∧ ∀ i : Nat, i < 4 →
    a ≠ BitVec.ofNat 64 nativePc - BitVec.ofNat 64 (16 * (i + 1))

def initialAsm : AsmState 64 :=
  { regs := fun _ => 0, fpRegs := fun _ => 0
    mem := initialMemory, memDomain := bootstrapDomain
    pc := BitVec.ofNat 64 initialPc, lr := 1, align := 2, be := false, failed := false }

/-- State at the copy-loop entry, after the three encoded address loads. -/
def copyEntryAsm : AsmState 64 :=
  { initialAsm with
    pc := 0x80000018
    regs := fun r => if r = 5 then BitVec.ofNat 64 initDataRom
      else if r = 6 then BitVec.ofNat 64 initDataRam
      else if r = 7 then BitVec.ofNat 64 initDataEnd else 0 }

/-- Canonical little-endian byte of a word at a byte offset. -/
def wordByte (word : BitVec 64) (offset : Nat) : BitVec 8 :=
  BitVec.ofNat 8 (word.toNat / 2 ^ (8 * offset))

/-- Expected post-bootstrap memory. The concrete trace must establish this
formula; it is not assumed as an environment condition. -/
def installedMemory (a : BitVec 64) : BitVec 8 :=
  if sourceBase ≤ a.toNat ∧ a.toNat < sourceBase + 40 then
    wordByte (Guest.startupHeaders[(a.toNat - sourceBase) / 8]?.getD 0)
      ((a.toNat - sourceBase) % 8)
  else if initDataRam ≤ a.toNat ∧ a.toNat < initDataRam + 24 then
    wordByte ([BitVec.ofNat 64 sourceBase, BitVec.ofNat 64 stackStart,
      BitVec.ofNat 64 ramEnd][(a.toNat - initDataRam) / 8]?.getD 0)
      ((a.toNat - initDataRam) % 8)
  else if initDataRam + 24 ≤ a.toNat ∧ a.toNat < initDataEnd then
    initialMemory (BitVec.ofNat 64 (initDataRom + a.toNat - initDataRam))
  else initialMemory a

def installedRegisters (r : Nat) : BitVec 64 :=
  if r = 10 then BitVec.ofNat 64 nativePc
  else if r = 11 then BitVec.ofNat 64 sourceBase
  else if r = 12 then BitVec.ofNat 64 stackStart
  else if r = 13 then BitVec.ofNat 64 ramEnd
  else if r = 5 then BitVec.ofNat 64 sourceBase
  else if r = 6 then 0x800f1000
  else if r = 7 then BitVec.ofNat 64 initDataEnd
  else if r = 28 then InitECandidate.bitmaps.getLast?.getD 0 else 0

def installedAsm : AsmState 64 :=
  { initialAsm with
    pc := BitVec.ofNat 64 nativePc
    regs := installedRegisters
    mem := installedMemory }

theorem initDataWords_eq : initDataWords = 4606 := by decide

theorem initial_ram_zero (a : BitVec 64) (h : ramStart ≤ a.toNat) :
    initialMemory a = 0 := by
  have size : InitECandidate.code.length = 1028080 := LiteralFacts.code_length
  simp only [initialMemory, size]
  apply if_neg
  simp only [initialPc, ramStart] at *
  omega

end InitE
