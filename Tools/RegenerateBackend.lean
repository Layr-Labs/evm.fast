import Tools.GenBackendStages
import Tools.GenBackendTargetStages
import Tools.GenBackendMetadata
import Flapjack.RiscV.NativeSource
open Lean Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
set_option maxRecDepth 1000000
unsafe def main (_args : List String) : IO Unit := do
  enableInitializersExecution
  initSearchPath (← findSysroot)
  let setup ← ModuleSetup.load ".lake/build/ir/InitE/SourceDeclarations.setup.json"
  let env ← importModules #[{ module := `InitE.SourceDeclarations }] {}
    (loadExts := true) (arts := setup.importArts)
  let cfg := RiscVConfig.pancakeRiscVBackendConfig
  let source := panToWordCompileProgHOL riscvConfig.isa InitE.sourceDeclarations
  let (_, optimized) := WordToWord.compileWith RegAlloc.regAllocExecutable cfg.wordToWordConf riscvConfig source
  let (bitmaps, _, _, stack) := WordToStack.Native.compileNative riscvConfig false optimized
  let info := StackRawCall.collectInfo stack .ln
  let mut offset := 1
  for p in optimized do
    if p.1 >= 90 then
      offset ← InitE.BackendGenerator.generate env p.1 p offset
    else
      let r := WordToStack.Native.compileProgNative riscvConfig false p.2.2 p.2.1
        (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (.list [], offset)
      offset := r.2.2.2
  IO.println s!"Final bitmap offset: {offset}; bitmap words: {bitmaps.length}"
  for (n, body) in stack do
    if n >= 90 then
      InitE.BackendGenerator.generateRawFunction env n info body
      let raw := StackRawCall.compTop info body
      let alloc := StackAlloc.progComp (n, raw)
      InitE.BackendGenerator.generateLowerFunction env n "Alloc"
        s!"import InitECandidate.Proofs.BackendStages.Raw{n}"
        s!"StackAlloc.progComp ({n}, raw{n})" alloc
      let removed := StackRemove.progComp false riscvConfig.addrOffset
        (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) alloc
      InitE.BackendGenerator.generateLowerFunction env n "Removed"
        s!"import InitECandidate.Proofs.BackendStages.Alloc{n}"
        s!"StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc{n}" removed
      let named := StackNames.progCompEntryHOL RiscVConfig.riscvNames removed
      InitE.BackendGenerator.generateLowerFunction env n "Named"
        s!"import InitECandidate.Proofs.BackendStages.Removed{n}"
        s!"StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed{n}" named
      InitE.BackendGenerator.generateSection env n named
      let sec :=  StackToLab.progToSectionHOL named
      let filtered := { sec with lines := sec.lines.filter LabFilter.notSkip }
      InitE.BackendGenerator.generateLabStage env n "Filtered"
        s!"import InitECandidate.Proofs.BackendStages.Section{n}"
        ("{ " ++ s!"section{n} with lines := section{n}.lines.filter LabFilter.notSkip" ++ " }") filtered
      let encoded := LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length filtered
      InitE.BackendGenerator.generateLabStage env n "Encoded"
        s!"import InitECandidate.Proofs.BackendStages.Filtered{n}"
        s!"LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered{n}" encoded
  let _ ← InitE.BackendGenerator.generateTargetPlan env stack
  let sections := StackToLab.compile cfg.stackConf cfg.dataConf
    (2 * DataToWord.maxHeapLimit 64 cfg.dataConf - 1)
    (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) riscvConfig.addrOffset stack
  let filtered := LabFilter.filterSkip sections
  let ffis := LabToTarget.findFfiNames filtered
  let initial := LabToTarget.encSecList riscvConfig.encode filtered
  let labels0 := LabToTarget.computeLabelsAlt 0 initial .ln
  let (first, _) := LabToTarget.encSecsAgain 0 labels0 ffis riscvConfig.encode initial
  let labels1 := LabToTarget.computeLabelsAlt 0 first .ln
  let (second, done) := LabToTarget.encSecsAgain 0 labels1 ffis riscvConfig.encode first
  unless done do throw (IO.userError "Expected two target phases")
  InitE.BackendTargetGenerator.prepareAll env stack labels0 labels1 ffis
  InitE.BackendTargetGenerator.prepareCorrectAll env stack labels0 labels1 ffis
  let mut position := 0
  for sec in second do
    InitE.BackendGenerator.generateAlignmentSection env position sec
    position := (LabToTarget.linesUpdLabLen position sec.lines []).2
  let aligned := LabToTarget.updLabLen 0 second
  let labels := LabToTarget.computeLabelsAlt 0 aligned .ln
  position := 0
  for sec in aligned do
    InitE.BackendGenerator.generateFinalSection env position labels ffis sec
    position := (LabToTarget.sectionLabels position sec.lines []).1
  InitE.BackendMetadataGenerator.prepare env stack
