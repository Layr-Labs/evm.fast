import InitECandidate.Solver.Compiler.LabToTarget.Assembly
import InitECandidate.Solver.Compiler.LabToTarget.LineBound
import Flapjack.Compiler.Backend.LabToTarget.MachineSemantics
import Flapjack.Compiler.Backend.LabToTarget.Initialization.InitialStateContracts

/-!
# Consumer-facing bounded lab → machine corollaries

Flapjack's chain goes from lab semantics to `machineSemHOL` through `machineSemEqSem`
(`Flapjack/Compiler/Backend/LabToTarget/MachineSemantics.lean`), fed by `initOk`, which the
initializer discharges via `makeInit_initOk` / `semanticsMakeInit`
(`.../Initialization/Semantics.lean`, `.../Initialization/InitialStateContracts.lean`).
Here:

* `labHalt_target_bounded`: from the unfolded `initOk` witness (`stateRel` + `oracleTie`), a
  lab run that halts with clock `clock` gives a halting `evaluateTargetHOL` run within
  `(L / q + 1) * (clock - s'.clock) + L / q + 1` steps (and for every larger clock).
* `machineSemEqSem_bounded`: Flapjack's `machineSemEqSem` conclusion together with that bound.
* `makeInit_labHalt_target_bounded`: the same bound for the actual initial lab state
  `makeInit ...` under the hypotheses of Flapjack's `makeInit_initOk`, where `code2` is the
  explicit `removeLabels` output, so `LinesBounded L code2` is a finite check on it.
-/

namespace InitECandidate.Solver.Compiler.LabToTarget

open Flapjack Flapjack.Compiler.Encoders Flapjack.Compiler.Encoders.Asm
open Flapjack.Compiler.Encoders.AsmSem Flapjack.Compiler.Encoders.AsmProps
open Flapjack.Compiler.Backend.LabSem Flapjack.Compiler.Backend.Semantics.TargetProps
open Flapjack.Compiler.Backend Flapjack.Compiler.Backend.LabLang Flapjack.Compiler.Backend.LabToTarget
open Flapjack.Compiler.Backend.LabProps Flapjack.Misc
open InitECandidate.Solver.EncoderBound

set_option autoImplicit false

/-- A lab run from a related initial state that halts after consuming `clock - s'.clock`
source clock is matched by a target run that halts within
`(L / q + 1) * (clock - s'.clock) + L / q + 1` evaluator steps (and with every larger clock),
with the same outcome and final FFI state. -/
theorem labHalt_target_bounded {width : Nat} [NeZero width] {S Q F : Type}
    (bound : HolAsm width → Nat) (q L : Nat)
    (mc : MachineConfig width S Q) (p : BitVec width) (ms : S)
    (s : LabSem.State width Config F) (code2 : LabProgHOL width) (labs : Spt (Spt Nat))
    (t1 : AsmState width)
    (hencoder : encoderCorrectBounded mc.target bound)
    (hrel : stateRel (mc, code2, labs, p) s t1 ms) (htie : oracleTie mc ms s)
    (hq0 : 0 < q) (hq : ∀ i, q * (bound i + 1) ≤ (mc.target.config.encode i).length)
    (hni : noInstall s.code) (hL : LinesBounded L code2)
    (clock : Nat) (outcome : HolOutcome) (s' : LabSem.State width Config F)
    (hev : evaluate { s with clock := clock } = (.halt outcome, s')) :
    ∃ (N : Nat) (ms' : S), N ≤ (L / q + 1) * (clock - s'.clock) + L / q + 1 ∧
      ∀ N', N ≤ N' → evaluateTargetHOL mc s.ffi N' ms = (.halt outcome, ms', s'.ffi) := by
  have hrelk := stateRelClock (mc, code2, labs, p) s t1 ms clock hrel
  have hcost := stepCostOk_of_stateRel bound q L mc code2 labs p _ t1 ms hrelk hq0 hq hni hL
  exact compileCorrect_bounded_halt bound q L p { s with clock := clock } outcome mc s' code2
    labs t1 ms ⟨oracleTie_clock mc ms s clock htie, hev, hencoder, hrelk, hcost⟩

/-- Bounded `machineSemEqSem`: Flapjack's conclusion (the machine behaviour is exactly the
lab behaviour), plus the halting-time bound of `labHalt_target_bounded` for every halting
lab clock. The `initOk` hypothesis is given unfolded, since the cost hypothesis
`LinesBounded L code2` concerns its target-code witness. -/
theorem machineSemEqSem_bounded {width : Nat} [NeZero width] {S Q F : Type}
    (bound : HolAsm width → Nat) (q L : Nat)
    (mc : MachineConfig width S Q) (p : BitVec width) (ms : S)
    (s : LabSem.State width Config F) (code2 : LabProgHOL width) (labs : Spt (Spt Nat))
    (t1 : AsmState width)
    (hencoder : encoderCorrectBounded mc.target bound)
    (hrel : stateRel (mc, code2, labs, p) s t1 ms) (htie : oracleTie mc ms s)
    (hq0 : 0 < q) (hq : ∀ i, q * (bound i + 1) ≤ (mc.target.config.encode i).length)
    (hni : noInstall s.code) (hL : LinesBounded L code2)
    (hnonfail : semantics s ≠ .fail) :
    machineSemHOL mc s.ffi ms = (fun behavior => behavior = semantics s) ∧
    ∀ (clock : Nat) (outcome : HolOutcome) (s' : LabSem.State width Config F),
      evaluate { s with clock := clock } = (.halt outcome, s') →
      ∃ (N : Nat) (ms' : S), N ≤ (L / q + 1) * (clock - s'.clock) + L / q + 1 ∧
        ∀ N', N ≤ N' → evaluateTargetHOL mc s.ffi N' ms = (.halt outcome, ms', s'.ffi) :=
  ⟨machineSemEqSem mc p ms s
      ⟨encoderCorrect_of_bounded hencoder, ⟨code2, labs, t1, hrel, htie⟩, hnonfail⟩,
    fun clock outcome s' hev => labHalt_target_bounded bound q L mc p ms s code2 labs t1
      hencoder hrel htie hq0 hq hni hL clock outcome s' hev⟩

/-- The halting-time bound for the actual initial lab state `makeInit ...`, under exactly the
hypotheses of Flapjack's `makeInit_initOk` / `makeInit_stateRel` (which also feed
`semanticsMakeInit`). Here `code2` is the explicit `removeLabels` output. -/
theorem makeInit_labHalt_target_bounded {width : Nat} [NeZero width] {S Q G : Type} {F : Type}
    (bound : HolAsm width → Nat) (q L : Nat)
    (mc : MachineConfig width S Q) (ms : S) (ffi : HolFfiState F)
    (code code2 : LabProgHOL width) (labs : Spt (Spt Nat))
    (clock i cbspace : Nat) (t : AsmState width)
    (m : BitVec width → WordLocW width) (dm sdm : BitVec width → Bool)
    (coracle : Nat → Config × LabProgHOL width)
    (newFfiNames : List HolFfiName) (shmemInfo newShmemInfo : List ShmemInfoNum)
    (hencoder : encoderCorrectBounded mc.target bound)
    (hq0 : 0 < q) (hq : ∀ i, q * (bound i + 1) ≤ (mc.target.config.encode i).length)
    (hni : noInstall code) (hL : LinesBounded L code2)
    (h : goodCode mc.target.config (.ln : Spt (Spt G)) code ∧ mcConfOk mc ∧
      (noShareMemInst code → compilerOracleOk coracle labs (progToBytes code2).length
        mc.target.config mc.ffiNames) ∧
      listSubset ((findFfiNames code).filter (fun x => match x with
        | .extCall _ => true | _ => false)) (mc.ffiNames.take i) = true ∧
      removeLabels clock mc.target.config 0 .ln (mc.ffiNames.take i) code = some (code2,labs) ∧
      goodInitState mc ms (progToBytes code2) cbspace t m dm sdm ∧
      getShmemInfo code2 0 [] [] = (newFfiNames,shmemInfo) ∧
      newShmemInfo = shmemInfo.map (fun rec => { rec with
        entryPc := (mc.target.getPc ms).toNat + rec.entryPc,
        exitPc := (mc.target.getPc ms).toNat + rec.exitPc }) ∧
      mc.ffiNames.drop i = newFfiNames ∧ mmioPcsMinIndex mc.ffiNames = some i ∧
      newShmemInfo.map ShmemInfoNum.entryPc = (mc.ffiEntryPcs.map BitVec.toNat).drop i ∧
      mc.mmioInfo = List.zip ((List.range newShmemInfo.length).map (fun index => index+i))
        (newShmemInfo.map (fun rec => (rec.nbytes,
          HolAddr.addr rec.addrReg (BitVec.ofNat width rec.addrOff), rec.reg,
          BitVec.ofNat width rec.exitPc))) ∧
      noInstallOrNoShareMem code mc.ffiNames ∧
      (∀ bn, bn < cbspace → BitVec.ofNat width bn + BitVec.ofNat width (progToBytes code2).length +
        mc.target.getPc ms ∉ mc.ffiEntryPcs.take i))
    (labClock : Nat) (outcome : HolOutcome) (s' : LabSem.State width Config F)
    (hev : evaluate { makeInit mc ffi t m dm sdm ms code (compileLab mc.target.config)
        (mc.target.getPc ms + BitVec.ofNat width (progToBytes code2).length) cbspace coracle with
        clock := labClock } = (.halt outcome, s')) :
    ∃ (N : Nat) (ms' : S), N ≤ (L / q + 1) * (labClock - s'.clock) + L / q + 1 ∧
      ∀ N', N ≤ N' → evaluateTargetHOL mc ffi N' ms = (.halt outcome, ms', s'.ffi) := by
  have hrel := makeInit_stateRel (G := G) mc ms ffi code code2 labs clock i cbspace t m dm sdm
    coracle newFfiNames shmemInfo newShmemInfo h
  have htie := oracleTie_makeInit mc ffi t m dm sdm ms code (compileLab mc.target.config)
    (mc.target.getPc ms + BitVec.ofNat width (progToBytes code2).length) cbspace coracle
  exact labHalt_target_bounded bound q L mc (mc.target.getPc ms) ms _ code2 labs t hencoder
    hrel htie hq0 hq hni hL labClock outcome s' hev

end InitECandidate.Solver.Compiler.LabToTarget
