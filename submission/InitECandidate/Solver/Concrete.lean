import InitECandidate.Solver.Concrete.Stack
import InitECandidate.Solver.Concrete.Flat
import InitECandidate.Solver.Concrete.Word
import InitECandidate.Solver.Concrete.Crep
import InitECandidate.Proofs.CompilerOracles

/-!
# Concrete program side conditions of the bounded compiler passes, for the baseline

The program hypotheses of the bounded pass theorems (`Solver/Compiler/…`), discharged for the
concrete programs of the baseline's compiler chain by kernel-checked Boolean evaluation over the
baseline's own shard literals (no recomputation of the compiler), with explicit bounds
(`Concrete/Basic.lean`):

| stage | concrete term | property | bound |
|---|---|---|---|
| crep → loop | `FrontendStages.pass3` (`Crep.crep_code_eq`) | `csize e.2.2 ≤ crepS` (`Crep.pass3_csize`) | `crepS = 14860` |
| word → stack | `BackendStages.Native.programs0` (`= StackAnalysis.outputs`) | `wsize e.2.2 ≤ wordS` (`Word.programs_wsize`) | `wordS = 19619` |
| stack sub-passes | `BackendStages.Native.stack` (`Stack.stack_of_compileNative`) | `noA` (`Stack.stack_noA`), `okP [storeConstsStubLocation]` off label `6` (`Stack.stack_okP`) | — |
| flatten | `BackendStages.Removed.stack` (`Flat.code2_eq`) | `psize np.2 ≤ stackS` (`Flat.code2_psize`) | `stackS = 20339` |

The compile oracles of Flapjack's pan-to-target proof are constant and install nothing, so the
oracle hypotheses hold vacuously (`Stack.constOracle_okP`, `Flat.constOracle_psize`,
`Word.constOracle_wsize`).

The corollaries below are the bounded pass theorems instantiated with these facts.
-/

set_option autoImplicit false

namespace InitECandidate.Solver.Concrete.StackCorollary

open Flapjack Flapjack.Compiler.Backend.StackLang Flapjack.StackSemEvaluate
open Flapjack.StackSemStateOps
open Flapjack.Compiler.Backend
open Flapjack.Compiler.Backend.StackToLab.Proofs
open Flapjack.Compiler.Backend.StackToLab.Proofs.FullMakeInit
open Flapjack.Compiler.Backend.StackToLab.Proofs.FullMakeInitSemantics
open Flapjack.Compiler.Backend.StackToLab.Proofs.FlattenSemantics
open Flapjack.RiscV.L3 Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.Compiler.Backend.Semantics.TargetProps
open Flapjack.Compiler.Backend.LabSem (LabProgHOL)
open Flapjack.Compiler.Encoders.Asm
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler
open InitECandidate.Solver.Concrete

/-- The baseline compiler configuration (`InitE.baselineCompilerConfig =
oracleCompilerConfig WordBackend.oracles`) has the stack-to-lab configuration of
`pancakeRiscVBackendConfig`, used in `Flat.code2_eq`. -/
theorem oracleConfig_stackConf (oracles : List (Option (Spt Nat))) :
    (InitE.oracleCompilerConfig oracles).stackConf =
      RiscVConfig.pancakeRiscVBackendConfig.stackConf := rfl

/-- … and its data configuration. -/
theorem oracleConfig_dataConf (oracles : List (Option (Spt Nat))) :
    (InitE.oracleCompilerConfig oracles).dataConf =
      RiscVConfig.pancakeRiscVBackendConfig.dataConf := rfl

/-- **Stack (pre-`stack_rawcall`) → RISC-V, bounded, for the baseline.**
`StackPasses.riscv_stackChain_target_bounded_24_w2s` at the baseline stack-to-lab parameters,
`code = Native.stack`, the pan-to-target stack compile oracle `fun _ => (cfg, [], [])` and
`S = stackS`: all program hypotheses (`hnoA`, `hok`, `hokO`, `hcode`, `horacle`) discharged. -/
theorem riscv_stackChain_target_bounded_24_baseline {F : Type}
    {bitmaps : List (BitVec 64)}
    {t : Flapjack.Compiler.Backend.LabSem.State 64 LabToTarget.Config F}
    {saveRegs : Nat → Bool} {dataSp : Nat} (cfg : LabToTarget.Config)
    {s : StackSemStateFiniteExact 64 LabToTarget.Config F}
    {opt : Option (StackSemStateFiniteExact 64 LabToTarget.Config F)}
    (hfm : fullMakeInit RiscVConfig.pancakeRiscVBackendConfig.stackConf
      RiscVConfig.pancakeRiscVBackendConfig.dataConf
      (2 * DataToWord.maxHeapLimit 64 RiscVConfig.pancakeRiscVBackendConfig.dataConf - 1)
      (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) riscvConfig.addrOffset bitmaps
      Native.stack t saveRegs dataSp
      (fun _ => (cfg, ([] : List (Nat × HolProg 64)), ([] : List (BitVec 64)))) = (s, opt))
    (hA : Assumptions RiscVConfig.pancakeRiscVBackendConfig.stackConf
      RiscVConfig.pancakeRiscVBackendConfig.dataConf
      (2 * DataToWord.maxHeapLimit 64 RiscVConfig.pancakeRiscVBackendConfig.dataConf - 1)
      (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) riscvConfig.addrOffset bitmaps
      Native.stack t saveRegs dataSp
      (fun _ => (cfg, ([] : List (Nat × HolProg 64)), ([] : List (BitVec 64)))))
    (mc : MachineConfig 64 riscv_state RiscVProjection) (target : mc.target = riscvTarget)
    (p : BitVec 64) (ms : riscv_state)
    (tcode : LabProgHOL 64) (labs : Spt (Spt Nat)) (ta : AsmState 64)
    (hrelT : LabToTarget.stateRel (mc, tcode, labs, p) t ta ms)
    (htie : LabToTarget.oracleTie mc ms t) (hni : LabProps.noInstall t.code)
    (hL : InitECandidate.Solver.Compiler.LabToTarget.LinesBounded 24 tcode)
    (k : Nat) (res : Option (StackSemResult 64))
    (post : StackSemStateFiniteExact 64 LabToTarget.Config F)
    (run : evaluate ((.call none (.inl BvlToBvi.initGlobalsLocation) none : HolProg 64),
      { s with clock := k }) = (res, post))
    (o : HolOutcome) (hres : stackEntryClass res = .CompleteResult o) :
    ∃ (N : Nat) (ms' : riscv_state),
      N ≤ 7 * ((2 * stackS + 3) * (2 * (k - post.clock) + 1) + 4 * stackS) + 7 ∧
      ∀ N', N ≤ N' → evaluateTargetHOL mc t.ffi N' ms = (.halt o, ms', post.ffi) :=
  StackPasses.riscv_stackChain_target_bounded_24_w2s stackS hfm hA Stack.stack_noA
    Stack.stack_okP (Stack.constOracle_okP cfg _) Flat.code2_psize
    (Flat.constOracle_psize cfg _ _ _ _) mc target p ms tcode labs ta hrelT htie hni hL k res
    post run o hres

end InitECandidate.Solver.Concrete.StackCorollary

namespace InitECandidate.Solver.Concrete.WordCorollary

open Flapjack Flapjack.WordToStackProofs Flapjack.WordToStackProofs.CompCorrect
open Flapjack.WordToStackProofs.StateRelSemantics
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Backend.WordToStack.Native
open Flapjack.Compiler.Backend.WordToStack.Native.Initialization
open Flapjack.WordToStackProofs.InitializationStateRel
open Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler
open InitECandidate.Solver.Concrete

/-- `WordToStack.entrySimulationB_makeInit` for the baseline's post-`word_to_word` program
`Native.programs0` at `S = wordS` (the `hcode` and `1 ≤ S` hypotheses discharged). -/
theorem entrySimulationB_makeInit_baseline {C F : Type}
    (t : StackSemStateFiniteExact 64 C F) (k : Nat)
    (coracle : Nat → (Nat × C) × List (Nat × Nat × WordLangProgHOL (BitVec 64)))
    (start : Nat)
    (h : t.code = sptFromAList (compileNative riscvConfig false Native.programs0).2.2.2 ∧
      k = riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length) ∧
      initStateOk riscvConfig k t coracle ∧
      panPropsALookupEq raiseStubLocation Native.programs0 = none ∧
      panPropsALookupEq storeConstsStubLocation Native.programs0 = none ∧
      (compileNative riscvConfig false Native.programs0).1 <+: t.bitmaps ∧
      (∀ entry ∈ Native.programs0, flatExpConventions entry.2.2 = true ∧
        postAllocConventionsHOL (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
          entry.2.2 = true))
    (horacle : ∀ i, ∀ e ∈ (coracle i).2, WordToStack.wsize e.2.2 ≤ wordS) :
    WordToStack.EntrySimulationB wordS
      (makeInit riscvConfig k t (sptFromAList Native.programs0) coracle) t start :=
  WordToStack.entrySimulationB_makeInit riscvConfig Native.programs0 t k coracle start wordS
    one_le_wordS h Word.programs_wsize horacle

end InitECandidate.Solver.Concrete.WordCorollary

namespace InitECandidate.Solver.Concrete.CrepCorollary

open Flapjack Flapjack.Pancake.CrepToLoop.Proofs.NCompileCorrect
open Flapjack.Basis.Pure.MlString Flapjack.Compiler.Encoders.Asm
open InitECandidate.Proofs.FrontendStages
open InitECandidate.Solver.Compiler
open InitECandidate.Solver.Concrete

/-- `CrepToLoop.crepToLoop_perClock_bounded_of_code` for the baseline's crep program
`FrontendStages.pass3` at `S = crepS` (the `hbody` and `3 ≤ S` hypotheses discharged). -/
theorem crepToLoop_perClock_bounded_baseline {σ : Type}
    (s : CrepSemHOLState 64 σ) (t : LoopSemStateFiniteExact 64 σ)
    (start : MlString) (lc : Nat) (c : AsmArchitecture)
    (h : s.memaddrs = (fun address => t.mdomain address = true) ∧
        s.be = t.be ∧ s.shMemaddrs = (fun address => t.shMdomain address = true) ∧
        s.ffi = t.ffi ∧ s.baseAddr = t.baseAddr ∧ s.topAddr = t.topAddr ∧
        crepToLoopMemRelHOLExact s.memory t.memory s.memaddrs ∧
        crepToLoopGlobalsRelHOLExact s.globals t.globals ∧
        (pass3.map Prod.fst).Nodup ∧
        s.code = alistToFmapCodeExact pass3 ∧
        t.code = sptFromAList (compileProgHOLExact c pass3) ∧
        s.locals = HolFiniteMapExact.empty ∧
        (crepToLoopMakeFuncsExactHOL pass3).lookup start = some (lc, 0) ∧
        crepSemantics s start ≠ .fail) :
    ∀ k r ev, CrepToLoop.crepAbsf s start k = (r, ev) → r ≠ .RunError →
      ∃ k', k' ≤ (crepS + 1) *
          (k - (evalCrepSemHOLProgExact { s with clock := k } (.call none start [])).2.clock) + 3 ∧
        CrepToLoop.loopConcf t lc (k + k') = (r, ev) :=
  CrepToLoop.crepToLoop_perClock_bounded_of_code crepS three_le_crepS s t pass3 start lc c
    Crep.pass3_csize h

end InitECandidate.Solver.Concrete.CrepCorollary

#print axioms InitECandidate.Solver.Concrete.Stack.stack_noA
#print axioms InitECandidate.Solver.Concrete.Stack.stack_okP
#print axioms InitECandidate.Solver.Concrete.Flat.code2_psize
#print axioms InitECandidate.Solver.Concrete.Word.programs_wsize
#print axioms InitECandidate.Solver.Concrete.Crep.pass3_csize
#print axioms InitECandidate.Solver.Concrete.StackCorollary.riscv_stackChain_target_bounded_24_baseline
#print axioms InitECandidate.Solver.Concrete.WordCorollary.entrySimulationB_makeInit_baseline
#print axioms InitECandidate.Solver.Concrete.CrepCorollary.crepToLoop_perClock_bounded_baseline
