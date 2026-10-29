import InitECandidate.Proofs.CompilerComputation
import InitECandidate.Proofs.ImageComputation
import InitECandidate.Proofs.BootstrapProgram
import InitECandidate.Proofs.BootstrapCopy

open scoped InitECandidate.Proofs.CompilerComputation InitECandidate.Proofs.ImageComputation

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false

set_option autoImplicit false

namespace InitECandidate.Proofs.BootstrapStraightLine
open InitE
open Flapjack Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Encoders.AsmSem
open Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BootstrapSteps InitECandidate.Proofs.BootstrapCopy
open Flapjack.RiscV.TargetProof

def prefixCode : List (HolAsm 64) := (bootstrapBlocks.take 3).map Prod.snd
def tailCode : List (HolAsm 64) := (bootstrapBlocks.drop 8).map Prod.snd

/-- The actual three address loads calculate the copy-loop entry state. -/
theorem prefix_endpoint : run prefixCode initialAsm = copyEntryAsm := by
  simp [prefixCode, bootstrapBlocks, run, after, bootLoc, asmUpd, updReg, updPc,
    initialAsm, copyEntryAsm, initialPc, initDataRom, initDataRam, initDataEnd,
    riscvEnc, riscvAst, riscvEncode]
  funext r
  split_ifs <;> simp_all

/-- Concrete bytes at each block's actual address agree with the verified
RISC-V encoder. This checks the image lookup directly. -/
theorem bootstrap_block_bytes :
    bootstrapBlocks.all (fun block =>
      (List.range (riscvEnc block.2).length).all (fun offset =>
        decide (initialMemory (BitVec.ofNat 64 (block.1 + offset)) =
          ((riscvEnc block.2)[offset]?.getD 0)))) = true := by
  decide_cbv

theorem bootstrap_block_ranges :
    bootstrapBlocks.all (fun block => decide
      (initialPc ≤ block.1 ∧ block.1 + (riscvEnc block.2).length ≤ initialPc + 208)) = true := by
  decide_cbv

/-- Every byte in the bootstrap prefix belongs to ordinary executable memory. -/
theorem bootstrap_code_domain (a : BitVec 64)
    (lo : initialPc ≤ a.toNat) (hi : a.toNat < initialPc + 208) : bootstrapDomain a := by
  constructor
  · unfold memoryDomain machineSharedDomain
    norm_num [initialPc, codeSizeLimit, ramStart, ramEnd,
      inputStart, inputEnd, inputSize, outputStart, outputEnd, ramSize, outputSize] at *
    omega
  · intro i bound equal
    have h := congrArg BitVec.toNat equal
    have ni : 16 * (i + 1) ≤ 352 := by omega
    have offNat : (BitVec.ofNat 64 (16 * (i + 1))).toNat = 16 * (i + 1) := by
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
    have pcNat : (BitVec.ofNat 64 nativePc).toNat = 0x80001070 := by decide
    rw [BitVec.toNat_sub_of_le (by
      apply BitVec.le_def.mpr
      rw [offNat, pcNat]
      omega), pcNat, offNat] at h
    norm_num [initialPc] at lo hi
    omega

private theorem bytes_of_offsets (bytes : List (BitVec 8)) (pc : BitVec 64)
    (mem : BitVec 64 → BitVec 8) (domain : BitVec 64 → Prop)
    (values : ∀ n < bytes.length, mem (pc + BitVec.ofNat 64 n) = bytes[n]?.getD 0)
    (addresses : ∀ n < bytes.length, domain (pc + BitVec.ofNat 64 n)) :
    bytesInMemoryHOL pc bytes mem domain := by
  induction bytes generalizing pc with
  | nil => trivial
  | cons byte rest ih =>
    refine ⟨?_, ?_, ih (pc + 1) ?_ ?_⟩
    · simpa using values 0 (by simp)
    · simpa using addresses 0 (by simp)
    · intro n hn
      have advance : pc + 1 + BitVec.ofNat 64 n = pc + BitVec.ofNat 64 (n + 1) := by
        simp [BitVec.ofNat_add, add_comm, add_left_comm]
      rw [advance]
      simpa using values (n + 1) (by simp; omega)
    · intro n hn
      have advance : pc + 1 + BitVec.ofNat 64 n = pc + BitVec.ofNat 64 (n + 1) := by
        simp [BitVec.ofNat_add, add_comm, add_left_comm]
      rw [advance]
      exact addresses (n + 1) (by simp; omega)

/-- Every listed block is installed at its declared address in initial memory. -/
theorem block_bytes (block : Nat × HolAsm 64) (member : block ∈ bootstrapBlocks) :
    bytesInMemoryHOL (BitVec.ofNat 64 block.1) (riscvEnc block.2)
      initialMemory bootstrapDomain := by
  have values := (List.all_eq_true.mp bootstrap_block_bytes) block member
  have ranges := of_decide_eq_true ((List.all_eq_true.mp bootstrap_block_ranges) block member)
  apply bytes_of_offsets
  · intro n hn
    have value := of_decide_eq_true ((List.all_eq_true.mp values) n (List.mem_range.mpr hn))
    simpa only [BitVec.ofNat_add] using value
  · intro n hn
    have addr : (BitVec.ofNat 64 block.1 + BitVec.ofNat 64 n).toNat = block.1 + n := by
      rw [← BitVec.ofNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt]
      norm_num [initialPc] at ranges
      omega
    apply bootstrap_code_domain
    · rw [addr]; omega
    · rw [addr]; omega

private theorem checked_loc (s : AsmState 64) (reg pc address : Nat)
    (member : (pc, bootLoc reg pc address) ∈ bootstrapBlocks)
    (hpc : s.pc = BitVec.ofNat 64 pc) (hmem : s.mem = initialMemory)
    (hdomain : s.memDomain = bootstrapDomain) (hlr : s.lr = 1)
    (hbe : s.be = false) (halign : s.align = 2) (hfailed : s.failed = false) :
    asmStep riscvConfig s (bootLoc reg pc address) (after s (bootLoc reg pc address)) := by
  apply checked_step
  · rw [hpc, hmem, hdomain]
    exact block_bytes _ member
  · exact hlr
  · exact hbe
  · exact halign
  · simp [after, bootLoc, asmUpd, updPc, updReg, hfailed]
  · exact (List.all_eq_true.mp bootstrap_instructions_admitted) _ member

/-- The three installed address-load blocks form an actual checked ASM prefix. -/
theorem prefix_checked : Checked prefixCode initialAsm := by
  simp only [prefixCode, bootstrapBlocks, List.take, List.map, Checked]
  refine ⟨?_, ?_, ?_, trivial⟩
  all_goals apply checked_loc
  all_goals first
    | simp [bootstrapBlocks]
    | simp [after, bootLoc, asmUpd, updPc, updReg, initialAsm, initialPc,
        riscvEnc, riscvAst, riscvEncode]

end InitECandidate.Proofs.BootstrapStraightLine
