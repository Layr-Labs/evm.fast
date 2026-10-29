import Tools.GenBackendStages
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
  let (_, _, _, stack) := WordToStack.Native.compileNative riscvConfig false optimized
  let sections := StackToLab.compile cfg.stackConf cfg.dataConf
    (2 * DataToWord.maxHeapLimit 64 cfg.dataConf - 1)
    (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) riscvConfig.addrOffset stack
  let filtered := LabFilter.filterSkip sections
  let ffis := LabToTarget.findFfiNames filtered
  let stable ← InitE.BackendMetadataGenerator.stable (LabToTarget.encSecList riscvConfig.encode filtered) ffis cfg.labConf.initClock
  let aligned := LabToTarget.updLabLen 0 stable
  let labels := LabToTarget.computeLabelsAlt 0 aligned .ln
  let (final, done) := LabToTarget.encSecsAgain 0 labels ffis riscvConfig.encode aligned
  unless done do throw (IO.userError "Final encoding not stable")
  let padded := LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final
  let mut position := 0
  for sec in aligned do
    let n := sec.sectionId
    let (next, localLabels) := LabToTarget.sectionLabels position sec.lines []
    let text ← renderWordStage env (toExpr localLabels)
    IO.FS.writeFile s!"submission/InitECandidate/Proofs/BackendStages/AlignmentLabels{n}.lean"
      (s!"import InitECandidate.Proofs.BackendStages.Alignment{n}\n" ++
       "set_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nopen Flapjack Flapjack.Compiler.Backend\nnamespace InitECandidate.Proofs.BackendStages\n" ++
       s!"def localLabelsFinal_{n} : List (Nat × Nat) :=\n{text}\ntheorem localLabelsFinal_{n}_eq : LabToTarget.sectionLabels {position} Alignment{n}.lines [] = ({next}, localLabelsFinal_{n}) := by\n  with_unfolding_all rfl\n#print axioms localLabelsFinal_{n}_eq\nend InitECandidate.Proofs.BackendStages\n")
    position := next
  for sec in padded do
    let n := sec.sectionId
    let bytes := (sec.lines.map LabToTarget.lineBytes).flatten
    let text ← renderWordStage env (toExpr bytes)
    IO.FS.writeFile s!"submission/InitECandidate/Proofs/BackendStages/BytesData{n}.lean"
      ("import Flapjack.Compiler.Backend.LabToTarget.Compile\nset_option autoImplicit false\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nnamespace InitECandidate.Proofs.BackendStages.ByteData\n" ++
       s!"def bytes{n} : List (BitVec 8) :=\n{text}\nend InitECandidate.Proofs.BackendStages.ByteData\n")
    let keys := sec.lines.filterMap fun line =>
      match line with
      | .labAsm (.locValue _ (.lab key 0)) _ _ _ => some key
      | .labAsm (.jump (.lab key 0)) _ _ _ => some key
      | .labAsm (.jumpCmp _ _ _ (.lab key 0)) _ _ _ => some key
      | _ => none
    let text ← renderWordStage env (toExpr keys)
    IO.FS.writeFile s!"submission/InitECandidate/Proofs/BackendStages/ZeroData{n}.lean"
      ("import Flapjack.Misc.Sptree\nnamespace InitECandidate.Proofs.BackendStages.ZeroData\n" ++
       s!"def keys{n} : List Nat := {text}\nend InitECandidate.Proofs.BackendStages.ZeroData\n")
    IO.println s!"Final data {n}: {bytes.length} bytes"
  let bytes := LabToTarget.progToBytes padded
  IO.FS.writeBinFile "work/lean-perf/backend-stages/InputBound.native" (ByteArray.mk (bytes.map (fun b => b.toNat.toUInt8)).toArray)
  IO.println s!"Final native bytes: {bytes.length}"
