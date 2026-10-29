import Lean
import InitECandidate.Proofs.StackAnalysis.Data
import InitECandidate.Proofs.StackAnalysis.FastDepth
import Flapjack.RiscV.NativeSource
open Lean Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
deriving instance ToExpr for Flapjack.BinOp
deriving instance ToExpr for Flapjack.Shift
deriving instance ToExpr for Flapjack.Cmp
deriving instance ToExpr for Flapjack.WordMemOp
deriving instance ToExpr for Flapjack.WordStore
deriving instance ToExpr for Flapjack.WordRegImm
deriving instance ToExpr for Flapjack.Spt
deriving instance ToExpr for Flapjack.RegAlloc.ClashTree
deriving instance ToExpr for Flapjack.Basis.Pure.MlString.MlString
deriving instance ToExpr for Flapjack.WordLangArith
deriving instance ToExpr for Flapjack.WordLangAddr
deriving instance ToExpr for Flapjack.WordLangInst
deriving instance ToExpr for Flapjack.WordLangExpHOL
deriving instance ToExpr for Flapjack.WordLangProgHOL

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


partial def callJson (program : WordLangProgHOL (BitVec 64)) : Json :=
  match program with
  | .seq p q => Json.arr #[Json.str "seq", callJson p, callJson q]
  | .call returns target _ handler => Json.arr #[Json.str "call", toJson target,
      (match returns with | none => Json.null | some (_,_,p,_,_) => callJson p),
      (match handler with | none => Json.null | some (_,p,_,_) => callJson p)]
  | .alloc _ _ => Json.str "alloc"
  | .install _ _ _ _ _ => Json.str "install"
  | _ => Json.str "skip"

def main (args : List String) : IO Unit := do
  if args.contains "--dump-calls" then
    let values := InitECandidate.Proofs.StackAnalysis.outputs.map (fun (i,a,p) =>
      Json.arr #[toJson i, toJson (InitECandidate.Proofs.StackFrameComputation.frameSize
        (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) a p),
        callJson (WordDepth.Executable.slim p)])
    IO.FS.writeFile "work/lean-perf/stack-analysis/calls.json" (Json.arr values.toArray).compress
    return ()

  let env ← importModules #[{module := `InitECandidate.Proofs.StackAnalysis.Data}] {} 0
  let selected := args.filterMap String.toNat?
  for (identifier, arguments, body) in InitECandidate.Proofs.StackAnalysis.outputs do
    if !selected.isEmpty && !selected.contains identifier then
      continue
    let frame := InitECandidate.Proofs.StackFrameComputation.frameSize
      (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) arguments body
    let slim := WordDepth.Executable.slim body
    let literal ← renderWordStage env (toExpr slim)
    let header := s!"import InitECandidate.Proofs.StackAnalysis.Data{identifier}\nimport InitECandidate.Proofs.StackAnalysis.Entries\nimport Lean\nimport Flapjack.RiscV.NativeSource\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nset_option cbv.maxSteps 1000000000\nset_option cbv.warning false\nset_option Elab.async false\nopen Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target\nnamespace InitECandidate.Proofs.StackAnalysis\n"
    let text := header ++ s!"def frame{identifier} : Nat := {frame}\ndef slim{identifier} : WordLangProgHOL (BitVec 64) :=\n{literal}\n" ++
      s!"theorem frame{identifier}_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized{identifier}.2.1 optimized{identifier}.2.2 = frame{identifier} := by cbv\n" ++
      s!"theorem slim{identifier}_eq : WordDepth.Executable.slim optimized{identifier}.2.2 = slim{identifier} := by cbv\ntheorem frameEntry{identifier}_eq : frameEntry optimized{identifier} = ({identifier}, frame{identifier}) := by\n  unfold frameEntry\n  rw [frame{identifier}_eq]\n  rfl\ntheorem slimEntry{identifier}_eq : slimEntry optimized{identifier} = ({identifier}, {arguments}, slim{identifier}) := by\n  unfold slimEntry\n  rw [slim{identifier}_eq]\n  rfl\n#print axioms frame{identifier}_eq\n#print axioms slim{identifier}_eq\nend InitECandidate.Proofs.StackAnalysis\n"
    IO.FS.writeFile s!"submission/InitECandidate/Proofs/StackAnalysis/Facts{identifier}.lean" text
    IO.println s!"{identifier}: {frame}"
  unless args.contains "--depth" do return ()
  let frames := InitECandidate.Proofs.StackAnalysis.outputs.map (fun (i,a,p) => (i, InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) a p))
  IO.println s!"depth: {InitECandidate.Proofs.StackAnalysis.FastDepth.fullCallGraphDepthFast (sptFromAList frames) BvlToBvi.initGlobalsLocation (sptFromAList InitECandidate.Proofs.StackAnalysis.outputs)}"

