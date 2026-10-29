import InitECandidate.Proofs.CompilerOracles
import InitE.SourceCodeFacts
import InitECandidate.Proofs.AllocationFacts
import InitECandidate.Proofs.StackLayout

/-! Compiler-based correctness after installation. The concrete installation
witness is a premise of this reusable theorem. Concrete source, artifact,
register, memory and bootstrap proofs instantiate it for the baseline. -/
namespace InitE
open Flapjack Flapjack.Pancake.Proofs.PanToTarget
open Flapjack.Compiler.Backend Flapjack.Compiler.Backend.BackendProof
open Flapjack.Compiler.Backend.RiscVConfig Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.Basis.Pure.MlString

/-- Installation obligations, separated from proved facts about the source. -/
def OracleBaselineInstallation (input : Guest.InputBlob)
    (mc : MachineConfig 64 RiscV.L3.riscv_state RiscVProjection)
    (ms : RiscV.L3.riscv_state) (bytes : List (BitVec 8)) (bitmaps : List (BitVec 64))
    (c : Backend.Config) (heapLen : Nat) (adj2 adj4 : BitVec 64)
    (cbspace dataSp : Nat) : Prop :=
  let s := sourceInitialState input
  isRiscvMachineConfig mc ∧
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

open scoped InitECandidate.Proofs.CompilerComputation in
theorem oracle_stack_bound_fits : 7480 < installedLimits.1 := by decide_cbv

/-- Fixed-source correctness for any validated allocation oracles and any
certified compiler depth within the installed stack limit. -/
theorem oracle_baseline_behaviour_eq (oracles : List (Option (Spt Nat)))
    (input : Guest.InputBlob)
    (mc : MachineConfig 64 RiscV.L3.riscv_state RiscVProjection)
    (ms : RiscV.L3.riscv_state) (bytes : List (BitVec 8)) (bitmaps : List (BitVec 64))
    (c : Backend.Config) (depth heapLen : Nat) (adj2 adj4 : BitVec 64)
    (cbspace dataSp : Nat)
    (compiled : compileProgMaxAsmExecutable (oracleCompilerConfig oracles) riscvConfig
      sourceDeclarations = (some (bytes, bitmaps, c), some depth))
    (depthBound : depth ≤ 7480)
    (installed : OracleBaselineInstallation input mc ms bytes bitmaps c heapLen adj2 adj4 cbspace dataSp)
    (nonfail : sourceBehaviour input ≠ HolBehaviour.fail) :
    ∀ behaviour, machineSemHOL mc (sourceFfi input) ms behaviour →
      behaviour = sourceBehaviour input := by
  obtain ⟨hmc, hpositive, hsplit, hbase, hlen, htop, hglobals, hdomain,
    haligned, hadj2, hadj4, hleft, hright, hmax, hendian, hinstalled, hlimits⟩ := installed
  have correct := panToTargetCompileSemanticsOraclesRiscVSource oracles mc
    (Guest.Software.guestAst.map Pancake.PanLang.declToHOL) bytes bitmaps c (some depth)
    (sourceInitialState input) ms globalsWords heapLen adj2 adj4
    (sourceFfi input) cbspace dataSp (ofString "main") hmc sourceHasMain
    ⟨compiled, sourceGoodCode, sourceDistinctParams, sourceDistinctFunctions,
      rfl, rfl, rfl, sourceExceptionBound, rfl,
      hpositive, by simpa only [sourceDeclarations, globalsWords] using sourceGlobalsSize.symm,
      hsplit, hbase, source_globals_allocatable input,
      hlen, htop, hglobals, hdomain, haligned, hadj2, hadj4, hleft, hright, hmax,
      rfl, hendian, hinstalled, rfl, nonfail⟩
  have hprecise : optionLt (some depth)
      (some (readLimits mc.target.config (oracleCompilerConfig oracles) mc ms).1) = true := by
    change optionLt (some depth)
      (some (readLimits mc.target.config pancakeRiscVBackendConfig mc ms).1) = true
    rw [hlimits]
    simpa only [optionLt, decide_eq_true_eq] using
      (Nat.lt_of_le_of_lt depthBound oracle_stack_bound_fits)
  intro behaviour hbehaviour
  have h := correct behaviour hbehaviour
  simpa only [SemanticsPropsHOL.extendWithResourceLimitPrimeHOL, hprecise, if_true,
    sourceBehaviour] using h

#print axioms oracle_baseline_behaviour_eq
end InitE
