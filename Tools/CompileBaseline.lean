import Flapjack.Parser
import Flapjack.Pancake.Proofs.PanToTarget.ExecutableCompileProgMaxDepth
import Flapjack.RiscV.NativeSource

open Flapjack Flapjack.Pancake.PanLang Flapjack.Compiler.Backend
open Flapjack.Pancake.Proofs.PanToTarget
open Flapjack.Compiler.Encoders.RiscV.Target

def main (args : List String) : IO Unit := do
  let source ← IO.FS.readFile (args.headD "Guest/guest-software.pp.pnk")
  let .ok parsed := Parser.parseTopDecs (BitVec.ofInt 64) source
    | throw (IO.userError "guest parse failed")
  let declarations := Flapjack.Pancake.PanToTarget.mainFirstHOL (parsed.map declToHOL)
  IO.eprintln "Parsed guest; compiling and computing static stack bound…"
  let result := compileProgMaxAsmDepthExecutable
    RiscVConfig.pancakeRiscVBackendConfig riscvConfig declarations
  let some (bytes, bitmaps, config) := result.1
    | throw (IO.userError "guest compilation failed")
  IO.println s!"code bytes: {bytes.length}; bitmap words: {bitmaps.length}"
  IO.println s!"static stack bound (words): {repr result.2}"
  IO.println s!"foreign-call names: {repr config.labConf.ffiNames}"
  IO.println s!"shared-memory records: {config.labConf.shmemExtra.length}"
