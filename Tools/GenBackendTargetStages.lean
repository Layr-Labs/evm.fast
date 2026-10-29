import Lean
import Flapjack.Compiler.Backend.StackToLab.Native
import Flapjack.Compiler.Backend.RiscVConfig.Executable
import Flapjack.Compiler.Backend.LabToTarget.Compile
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Lean Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.Asm
open Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendTargetGenerator
deriving instance ToExpr for BinOp
deriving instance ToExpr for Shift
deriving instance ToExpr for Cmp
deriving instance ToExpr for WordMemOp
deriving instance ToExpr for Flapjack.Basis.Pure.MlString.MlString
private def ty (n : Name) := mkAppN (mkConst n) #[mkNatLit 64, mkApp (mkConst ``Nat.instNeZeroSucc) (mkNatLit 63)]
private def ctor (n : Name) (xs : Array Expr) := mkAppN (mkConst n) (#[mkNatLit 64, mkApp (mkConst ``Nat.instNeZeroSucc) (mkNatLit 63)] ++ xs)
instance : ToExpr (HolRegImm 64) where
  toTypeExpr := ty ``HolRegImm
  toExpr
    | .reg n => ctor ``HolRegImm.reg #[toExpr n]
    | .imm v => ctor ``HolRegImm.imm #[toExpr v]
instance : ToExpr (HolAddr 64) where
  toTypeExpr := ty ``HolAddr
  toExpr | .addr n v => ctor ``HolAddr.addr #[toExpr n, toExpr v]
instance : ToExpr (HolArith 64) where
  toTypeExpr := ty ``HolArith
  toExpr
    | .binop op d s r => ctor ``HolArith.binop #[toExpr op,toExpr d,toExpr s,toExpr r]
    | .shift op d s r => ctor ``HolArith.shift #[toExpr op,toExpr d,toExpr s,toExpr r]
    | .div d a b => ctor ``HolArith.div #[toExpr d,toExpr a,toExpr b]
    | .longMul a b c d => ctor ``HolArith.longMul #[toExpr a,toExpr b,toExpr c,toExpr d]
    | .longDiv a b c d e => ctor ``HolArith.longDiv #[toExpr a,toExpr b,toExpr c,toExpr d,toExpr e]
    | .addCarry a b c d => ctor ``HolArith.addCarry #[toExpr a,toExpr b,toExpr c,toExpr d]
    | .addOverflow a b c d => ctor ``HolArith.addOverflow #[toExpr a,toExpr b,toExpr c,toExpr d]
    | .subOverflow a b c d => ctor ``HolArith.subOverflow #[toExpr a,toExpr b,toExpr c,toExpr d]
instance : ToExpr (HolInst 64) where
  toTypeExpr := ty ``HolInst
  toExpr
    | .skip => ctor ``HolInst.skip #[]
    | .const d v => ctor ``HolInst.const #[toExpr d,toExpr v]
    | .arith a => ctor ``HolInst.arith #[toExpr a]
    | .mem op d a => ctor ``HolInst.mem #[toExpr op,toExpr d,toExpr a]
instance : ToExpr (HolAsm 64) where
  toTypeExpr := ty ``HolAsm
  toExpr
    | .inst a => ctor ``HolAsm.inst #[toExpr a]
    | .jump a => ctor ``HolAsm.jump #[toExpr a]
    | .jumpCmp a b c d => ctor ``HolAsm.jumpCmp #[toExpr a,toExpr b,toExpr c,toExpr d]
    | .call a => ctor ``HolAsm.call #[toExpr a]
    | .jumpReg a => ctor ``HolAsm.jumpReg #[toExpr a]
    | .loc a b => ctor ``HolAsm.loc #[toExpr a,toExpr b]
deriving instance ToExpr for HolShmemOp
deriving instance ToExpr for HolFfiName
deriving instance ToExpr for LabLang.Lab
deriving instance ToExpr for LabLang.AsmWithLab
deriving instance ToExpr for LabLang.AsmOrCbw
deriving instance ToExpr for LabLang.Line
deriving instance ToExpr for LabLang.Section
def renderWordStage (env : Environment) (e : Expr) : IO String := do
  let options := ({} : Options).set `pp.maxDepth (1000000 : Nat)
    |>.set `pp.width (120 : Nat) |>.set `pp.universes false
    |>.set `pp.maxSteps (1000000000 : Nat) |>.set `pp.deepTerms true
    |>.set `pp.fieldNotation false
    |>.set `maxRecDepth (1000000 : Nat) |>.set `maxHeartbeats (0 : Nat)
  let (fmt, _, _) ← Meta.MetaM.toIO (Meta.ppExpr e)
    { fileName := "<word-stage>", fileMap := default, options := options }
    { env := env }
  let rendered := fmt.pretty
  if rendered.startsWith "failed to pretty print" || rendered.contains '⋯' then
    throw (IO.userError "incomplete pretty-printer output")
  pure rendered



/- Native execution proposes data only. Every generated output has separate
kernel-checked sectionLabels and encLinesAgain equations. -/
def prepare (env : Environment) (phase identifier position : Nat)
    (labels : Spt (Spt Nat)) (ffis : List HolFfiName)
    (sec : LabSem.LabSectionHOL 64) (labelsPosition : Option Nat := none) : IO Unit := do
  let labelPosition := labelsPosition.getD position
  let (localNext, localLabels) := LabToTarget.sectionLabels labelPosition sec.lines []
  let (lines, next, ok) := LabToTarget.encLinesAgain labels ffis position riscvConfig.encode sec.lines [] true
  let output : LabSem.LabSectionHOL 64 := {sec with lines := lines}
  let localText ← renderWordStage env (toExpr localLabels)
  let unchanged := toExpr output == toExpr sec
  let outputText ← if unchanged then pure "" else renderWordStage env (toExpr output)
  let dir := "submission/InitECandidate/Proofs/BackendStages/TargetChecks"
  IO.FS.createDirAll dir
  let previous := if phase == 0 then s!"Initial{identifier}" else s!"Reencode{phase-1}_{identifier}"
  let inputImport := if phase == 0 then s!"InitECandidate.Proofs.BackendStages.TargetChecks.Initial{identifier}" else s!"InitECandidate.Proofs.BackendStages.TargetChecks.Data{phase-1}_{identifier}"
  let common := "set_option autoImplicit false\nset_option Elab.async false\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nopen Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target\nopen InitECandidate.Proofs.BackendStages\nnamespace InitECandidate.Proofs.BackendStages.TargetChecks\n"
  let ending := "end InitECandidate.Proofs.BackendStages.TargetChecks\n"
  let data := s!"import {inputImport}\nimport InitECandidate.Proofs.BackendStages.TargetLabels{phase}\nimport InitECandidate.Proofs.BackendStages.TargetFfis\nimport Flapjack.Compiler.Encoders.RiscV.Target.Configuration\n" ++ common ++
    s!"def localLabels{phase}_{identifier} : List (Nat × Nat) :=\n{localText}\ndef Reencode{phase}_{identifier} : LabSem.LabSectionHOL 64 :=\n{if unchanged then previous else outputText}\n" ++ ending
  IO.FS.writeFile s!"{dir}/Data{phase}_{identifier}.lean" data
  let labelsProof := s!"import InitECandidate.Proofs.BackendStages.TargetChecks.Data{phase}_{identifier}\n" ++ common ++
    s!"theorem localLabels{phase}_{identifier}_eq : LabToTarget.sectionLabels {labelPosition} {previous}.lines [] = ({localNext}, localLabels{phase}_{identifier}) := by\n  with_unfolding_all rfl\n#print axioms localLabels{phase}_{identifier}_eq\n" ++ ending
  IO.FS.writeFile s!"{dir}/Labels{phase}_{identifier}.lean" labelsProof
  let encodingProof := s!"import InitECandidate.Proofs.BackendStages.TargetChecks.Data{phase}_{identifier}\n" ++ common ++
    s!"theorem Reencode{phase}_{identifier}_eq : LabToTarget.encLinesAgain Target.labels{phase} Target.ffis {position} riscvConfig.encode {previous}.lines [] true = (Reencode{phase}_{identifier}.lines, {next}, {ok}) := by\n  with_unfolding_all rfl\n#print axioms Reencode{phase}_{identifier}_eq\n" ++ ending
  IO.FS.writeFile s!"{dir}/Encode{phase}_{identifier}.lean" encodingProof
  let prior := if phase == 0 then "" else s!"import InitECandidate.Proofs.BackendStages.TargetChecks.Phase{phase-1}_{identifier}\n"
  IO.FS.writeFile s!"{dir}/Phase{phase}_{identifier}.lean"
    (prior ++ s!"import InitECandidate.Proofs.BackendStages.TargetChecks.Labels{phase}_{identifier}\nimport InitECandidate.Proofs.BackendStages.TargetChecks.Encode{phase}_{identifier}\nset_option autoImplicit false\n")
  IO.println s!"Target {phase}/{identifier}: labels {position}→{localNext}, encoding→{next}, stable={ok}; {data.utf8ByteSize} bytes"

def prepareCorrect (env : Environment) (phase identifier position labelPosition : Nat)
    (labels : Spt (Spt Nat)) (ffis : List HolFfiName)
    (sec : LabSem.LabSectionHOL 64) : IO Unit := do
  let (localNext, localLabels) := LabToTarget.sectionLabels labelPosition sec.lines []
  let (lines, next, ok) := LabToTarget.encLinesAgain labels ffis position riscvConfig.encode sec.lines [] true
  let output : LabSem.LabSectionHOL 64 := {sec with lines := lines}
  let localText ← renderWordStage env (toExpr localLabels)
  let unchanged := toExpr output == toExpr sec
  let outputText ← if unchanged then pure "" else renderWordStage env (toExpr output)
  let dir := "submission/InitECandidate/Proofs/BackendStages/TargetChecks"
  IO.FS.createDirAll dir
  let previous := if phase == 0 then s!"Initial{identifier}" else s!"Reencode{phase-1}_{identifier}"
  let inputImport := if phase == 0 then s!"InitECandidate.Proofs.BackendStages.TargetChecks.Initial{identifier}" else s!"InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData{phase-1}_{identifier}"
  let common := "set_option autoImplicit false\nset_option Elab.async false\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nopen Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target\nopen InitECandidate.Proofs.BackendStages\nnamespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct\n"
  let ending := "end InitECandidate.Proofs.BackendStages.TargetChecks.Correct\n"
  if identifier <= 595 then
    let rootName := "InitECandidate.Proofs.BackendStages.TargetChecks"
    IO.FS.writeFile s!"{dir}/CorrectData{phase}_{identifier}.lean"
      (s!"import {rootName}.Data{phase}_{identifier}\n" ++ common ++
       s!"def localLabels{phase}_{identifier} := {rootName}.localLabels{phase}_{identifier}\ndef Reencode{phase}_{identifier} := {rootName}.Reencode{phase}_{identifier}\n" ++ ending)
    IO.FS.writeFile s!"{dir}/CorrectLabels{phase}_{identifier}.lean"
      (s!"import {rootName}.CorrectData{phase}_{identifier}\nimport {rootName}.Labels{phase}_{identifier}\n" ++ common ++
       s!"theorem localLabels{phase}_{identifier}_eq : LabToTarget.sectionLabels {labelPosition} {previous}.lines [] = ({localNext}, localLabels{phase}_{identifier}) := by\n  exact {rootName}.localLabels{phase}_{identifier}_eq\n" ++ ending)
    IO.FS.writeFile s!"{dir}/CorrectEncode{phase}_{identifier}.lean"
      (s!"import {rootName}.CorrectData{phase}_{identifier}\nimport {rootName}.Encode{phase}_{identifier}\n" ++ common ++
       s!"theorem Reencode{phase}_{identifier}_eq : LabToTarget.encLinesAgain Target.labels{phase} Target.ffis {position} riscvConfig.encode {previous}.lines [] true = (Reencode{phase}_{identifier}.lines, {next}, {ok}) := by\n  exact {rootName}.Reencode{phase}_{identifier}_eq\n" ++ ending)
    IO.FS.writeFile s!"{dir}/CorrectPhase{phase}_{identifier}.lean"
      (s!"import {rootName}.CorrectLabels{phase}_{identifier}\nimport {rootName}.CorrectEncode{phase}_{identifier}\nset_option autoImplicit false\n")
    return
  let data := s!"import {inputImport}\nimport InitECandidate.Proofs.BackendStages.TargetLabels{phase}\nimport InitECandidate.Proofs.BackendStages.TargetFfis\nimport Flapjack.Compiler.Encoders.RiscV.Target.Configuration\n" ++ common ++
    s!"def localLabels{phase}_{identifier} : List (Nat × Nat) :=\n{localText}\ndef Reencode{phase}_{identifier} : LabSem.LabSectionHOL 64 :=\n{if unchanged then previous else outputText}\n" ++ ending
  IO.FS.writeFile s!"{dir}/CorrectData{phase}_{identifier}.lean" data
  let labelsProof := s!"import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData{phase}_{identifier}\n" ++ common ++
    s!"theorem localLabels{phase}_{identifier}_eq : LabToTarget.sectionLabels {labelPosition} {previous}.lines [] = ({localNext}, localLabels{phase}_{identifier}) := by\n  with_unfolding_all rfl\n#print axioms localLabels{phase}_{identifier}_eq\n" ++ ending
  IO.FS.writeFile s!"{dir}/CorrectLabels{phase}_{identifier}.lean" labelsProof
  let encodingProof := s!"import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData{phase}_{identifier}\n" ++ common ++
    s!"theorem Reencode{phase}_{identifier}_eq : LabToTarget.encLinesAgain Target.labels{phase} Target.ffis {position} riscvConfig.encode {previous}.lines [] true = (Reencode{phase}_{identifier}.lines, {next}, {ok}) := by\n  with_unfolding_all rfl\n#print axioms Reencode{phase}_{identifier}_eq\n" ++ ending
  IO.FS.writeFile s!"{dir}/CorrectEncode{phase}_{identifier}.lean" encodingProof
  let prior := if phase == 0 then "" else s!"import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectPhase{phase-1}_{identifier}\n"
  IO.FS.writeFile s!"{dir}/CorrectPhase{phase}_{identifier}.lean"
    (prior ++ s!"import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectLabels{phase}_{identifier}\nimport InitECandidate.Proofs.BackendStages.TargetChecks.CorrectEncode{phase}_{identifier}\nset_option autoImplicit false\n")
  IO.println s!"Target {phase}/{identifier}: labels {position}→{localNext}, encoding→{next}, stable={ok}; {data.utf8ByteSize} bytes"


/- Prepare the entire native plan without importing any unbuilt pipeline proof.
Initial literals acquire origin certificates through separate InitialBridgeN. -/
def prepareAll (env : Environment) (stack : List (Nat × StackLang.HolProg 64))
    (labels0 labels1 : Spt (Spt Nat)) (ffis : List HolFfiName) : IO Unit := do
  let cfg := RiscVConfig.pancakeRiscVBackendConfig
  let sections := StackToLab.compile cfg.stackConf cfg.dataConf
    (2 * DataToWord.maxHeapLimit 64 cfg.dataConf - 1)
    (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) riscvConfig.addrOffset stack
  let initial := LabToTarget.encSecList riscvConfig.encode (LabFilter.filterSkip sections)
  let dir := "submission/InitECandidate/Proofs/BackendStages/TargetChecks"
  IO.FS.createDirAll dir
  let mut position := 0
  let mut labelPosition := 0
  for sec in initial do
    let n := sec.sectionId
    let text ← renderWordStage env (toExpr sec)
    IO.FS.writeFile s!"{dir}/Initial{n}.lean"
      ("import Flapjack.Compiler.Backend.LabToTarget.Compile\nset_option autoImplicit false\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nopen Flapjack Flapjack.Compiler.Backend\nnamespace InitECandidate.Proofs.BackendStages.TargetChecks\n" ++
       s!"def Initial{n} : LabSem.LabSectionHOL 64 :=\n{text}\nend InitECandidate.Proofs.BackendStages.TargetChecks\n")
    IO.FS.writeFile s!"{dir}/InitialBridge{n}.lean"
      (s!"import InitECandidate.Proofs.BackendStages.Encoded{n}\nimport InitECandidate.Proofs.BackendStages.TargetChecks.Initial{n}\nset_option autoImplicit false\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nnamespace InitECandidate.Proofs.BackendStages.TargetChecks\ntheorem Initial{n}_eq : InitECandidate.Proofs.BackendStages.Encoded{n} = Initial{n} := by\n  with_unfolding_all rfl\n#print axioms Initial{n}_eq\nend InitECandidate.Proofs.BackendStages.TargetChecks\n")
    prepare env 0 n position labels0 ffis sec (some labelPosition)
    position := (LabToTarget.encLinesAgain labels0 ffis position riscvConfig.encode sec.lines [] true).2.1
    labelPosition := (LabToTarget.sectionLabels labelPosition sec.lines []).1
  let (first, _) := LabToTarget.encSecsAgain 0 labels0 ffis riscvConfig.encode initial
  position := 0
  for sec in first do
    prepare env 1 sec.sectionId position labels1 ffis sec
    position := (LabToTarget.encLinesAgain labels1 ffis position riscvConfig.encode sec.lines [] true).2.1
  IO.println s!"Prepared {initial.length} initial sections and both target phases"

def prepareCorrectAll (env : Environment) (stack : List (Nat × StackLang.HolProg 64))
    (labels0 labels1 : Spt (Spt Nat)) (ffis : List HolFfiName) (selected : List Nat := []) : IO Unit := do
  let cfg := RiscVConfig.pancakeRiscVBackendConfig
  let sections := StackToLab.compile cfg.stackConf cfg.dataConf
    (2 * DataToWord.maxHeapLimit 64 cfg.dataConf - 1)
    (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) riscvConfig.addrOffset stack
  let initial := LabToTarget.encSecList riscvConfig.encode (LabFilter.filterSkip sections)
  let mut position := 0
  let mut labelPosition := 0
  for sec in initial do
    if selected.isEmpty || selected.contains sec.sectionId then
      prepareCorrect env 0 sec.sectionId position labelPosition labels0 ffis sec
    position := (LabToTarget.encLinesAgain labels0 ffis position riscvConfig.encode sec.lines [] true).2.1
    labelPosition := (LabToTarget.sectionLabels labelPosition sec.lines []).1
  let (first, _) := LabToTarget.encSecsAgain 0 labels0 ffis riscvConfig.encode initial
  position := 0
  for sec in first do
    if selected.isEmpty || selected.contains sec.sectionId then
      prepareCorrect env 1 sec.sectionId position position labels1 ffis sec
    position := (LabToTarget.encLinesAgain labels1 ffis position riscvConfig.encode sec.lines [] true).2.1
  IO.println s!"Prepared {initial.length} initial sections and both target phases"

end InitE.BackendTargetGenerator
