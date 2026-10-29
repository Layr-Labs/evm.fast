import InitECandidate.Proofs.CompilerFacts
import InitECandidate.Proofs.OracleBaselineCorrectness
import InitECandidate.Proofs.SourceStackCertificate

/-! Compiler-based correctness after installation. The concrete installation
witness is a premise of this reusable theorem. Concrete source, artifact,
register, memory and bootstrap proofs instantiate it for the baseline. -/
namespace InitE
open InitECandidate.Proofs
open Flapjack Flapjack.Pancake.Proofs.PanToTarget
open Flapjack.Compiler.Backend Flapjack.Compiler.Backend.BackendProof
open Flapjack.Compiler.Backend.RiscVConfig Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.Basis.Pure.MlString

/-- Installation obligations, separated from proved facts about the source. -/
def BaselineInstallation (input : Guest.InputBlob)
    (out : RiscV.NativeSource.Output)
    (mc : MachineConfig 64 RiscV.L3.riscv_state RiscVProjection)
    (ms : RiscV.L3.riscv_state) (bytes : List (BitVec 8)) (bitmaps : List (BitVec 64))
    (c : Backend.Config) (heapLen : Nat) (adj2 adj4 : BitVec 64)
    (cbspace dataSp : Nat) : Prop :=
  let s := sourceInitialState input
  isRiscvMachineConfig mc ∧
  out.artifact = some (bytes, bitmaps, c) ∧
  (0 : BitVec 64) < mc.target.getReg ms mc.lenReg ∧
  mc.target.getReg ms mc.lenReg < mc.target.getReg ms mc.ptr2Reg ∧
  mc.target.getReg ms mc.lenReg = s.baseAddr ∧
  heapLen = (mc.target.getReg ms mc.ptr2Reg + -1 * s.baseAddr).toNat / (64 / 8) ∧
  s.topAddr = s.baseAddr + (wordSemBytesInWord : BitVec 64) * BitVec.ofNat 64 heapLen -
    BitVec.ofNat 64 (globalsWords * 64 / 8) ∧
  globalsWords ≤ heapLen ∧
  s.memaddrs = StackRemove.addresses (mc.target.getReg ms mc.lenReg) (heapLen - globalsWords) ∧
  holAligned (wordShiftAmount 64 + 1)
    (mc.target.getReg ms mc.ptr2Reg + -1 * mc.target.getReg ms mc.lenReg) = true ∧
  adj2 = mc.target.getReg ms mc.lenReg +
    (wordSemBytesInWord : BitVec 64) * BitVec.ofNat 64 StackRemove.maxStackAlloc ∧
  adj4 = mc.target.getReg ms mc.len2Reg -
    (wordSemBytesInWord : BitVec 64) * BitVec.ofNat 64 StackRemove.maxStackAlloc ∧
  adj2 ≤ mc.target.getReg ms mc.ptr2Reg ∧
  mc.target.getReg ms mc.ptr2Reg ≤ adj4 ∧
  (mc.target.getReg ms mc.ptr2Reg + -1 * mc.target.getReg ms mc.lenReg).toNat ≤
    (wordSemBytesInWord : BitVec 64).toNat *
      (2 * DataToWord.maxHeapLimit 64 pancakeRiscVBackendConfig.dataConf - 1) ∧
  mc.target.config.bigEndian = s.be ∧
  panInstalled bytes cbspace bitmaps dataSp c.labConf.ffiNames
    (heapRegs pancakeRiscVBackendConfig.stackConf.regNames)
    mc c.labConf.shmemExtra ms (wlabWlocExact ∘ s.memory) s.memaddrs s.shMemaddrs ∧
  (readLimits mc.target.config pancakeRiscVBackendConfig mc ms).1 = installedLimits.1

/-- Reuse the upstream compiler theorem with the fixed source's static and
allocation premises discharged and the resource-limit relaxation removed. -/
theorem baseline_behaviour_eq (input : Guest.InputBlob) (out : RiscV.NativeSource.Output)
    (compiled : out.declarations = sourceDeclarations ∧
      out.artifact = compileProgAsmFast baselineCompilerConfig riscvConfig sourceDeclarations)
    (mc : MachineConfig 64 RiscV.L3.riscv_state RiscVProjection)
    (ms : RiscV.L3.riscv_state) (bytes : List (BitVec 8)) (bitmaps : List (BitVec 64))
    (c : Backend.Config) (heapLen : Nat) (adj2 adj4 : BitVec 64)
    (cbspace dataSp : Nat)
    (installed : BaselineInstallation input out mc ms bytes bitmaps c heapLen adj2 adj4 cbspace dataSp)
    (nonfail : sourceBehaviour input ≠ HolBehaviour.fail) :
    ∀ behaviour, machineSemHOL mc (sourceFfi input) ms behaviour →
      behaviour = sourceBehaviour input := by
  obtain ⟨hmc, hart, hpositive, hsplit, hbase, hlen, htop, hglobals, hdomain,
    haligned, hadj2, hadj4, hleft, hright, hmax, hendian, hinstalled, hlimits⟩ := installed
  obtain ⟨depth, hdepth, hbound⟩ := sourceLogicalStackBound_bounded
  have hcomp : compileProgMaxAsmExecutable baselineCompilerConfig riscvConfig
      sourceDeclarations = (some (bytes, bitmaps, c), some depth) := by
    apply Prod.ext
    · have ha := hart
      rw [compiled.2, compileProgAsmFast_eq_fst] at ha
      exact ha
    · exact hdepth
  exact oracle_baseline_behaviour_eq WordBackend.oracles input mc ms bytes bitmaps c
    depth heapLen adj2 adj4 cbspace dataSp hcomp hbound
    ⟨hmc, hpositive, hsplit, hbase, hlen, htop, hglobals, hdomain,
      haligned, hadj2, hadj4, hleft, hright, hmax, hendian, hinstalled, hlimits⟩ nonfail

end InitE
