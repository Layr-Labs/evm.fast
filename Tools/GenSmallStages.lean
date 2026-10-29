import Lean
import InitECandidate.Proofs.SmallOptimizerComputation

/- Native evaluation proposes literals only. Every output below receives an
independent standard-axiom equation before it is used in a certificate. -/
open Lean Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitE.GenSmallStages

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


structure PancakeDataState where
  tag : String := "body"
  values : Std.HashMap Expr String := {}
  lines : Array String := #[]


partial def wordProgData (env : Environment) (state : IO.Ref PancakeDataState)
    (program : WordLangProgHOL (BitVec 64)) : IO String := do
  let expr := toExpr program
  let st ← state.get
  if let some name := st.values[expr]? then return name
  let text ← match program with
    | .seq a b => do
      let a ← wordProgData env state a
      let b ← wordProgData env state b
      pure s!".seq {a} {b}"
    | .mustTerminate body => do
      let body ← wordProgData env state body
      pure s!".mustTerminate {body}"
    | .ite op lhs rhs a b => do
      let op ← renderWordStage env (toExpr op)
      let rhs ← renderWordStage env (toExpr rhs)
      let a ← wordProgData env state a
      let b ← wordProgData env state b
      pure s!".ite ({op}) {lhs} ({rhs}) {a} {b}"
    | .loop before body after => do
      let before ← renderWordStage env (toExpr before)
      let after ← renderWordStage env (toExpr after)
      let body ← wordProgData env state body
      pure s!".loop ({before}) {body} ({after})"
    | .call ret target args handler => do
      let ret ← match ret with
        | none => pure "none"
        | some (names, cutsets, body, first, second) => do
          let names ← renderWordStage env (toExpr names)
          let cutsets ← renderWordStage env (toExpr cutsets)
          let body ← wordProgData env state body
          pure s!"some (({names}), ({cutsets}), {body}, {first}, {second})"
      let handler ← match handler with
        | none => pure "none"
        | some (name, body, first, second) => do
          let body ← wordProgData env state body
          pure s!"some ({name}, {body}, {first}, {second})"
      let target ← renderWordStage env (toExpr target)
      let args ← renderWordStage env (toExpr args)
      pure s!".call ({ret}) ({target}) ({args}) ({handler})"
    | _ => renderWordStage env expr
  let st ← state.get
  let name := s!"{st.tag}{st.values.size}"
  state.modify fun st => {st with
    values := st.values.insert expr name
    lines := st.lines.push s!"def {name} : WordLangProgHOL (BitVec 64) :=\n{text}\n"}
  return name


def prepare (env : Environment) (label argc : Nat)
    (source : WordLangProgHOL (BitVec 64)) (oracle : Option (Spt Nat)) : IO Unit := do
  let regs := riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)
  let p0 := WordSimp.compileExp source
  let p1 := WordInst.instSelectExecutable riscvConfig (maxVarHOL p0 + 1) p0
  let p2 := WordAlloc.fullSsaCcTrans argc p1
  let p3 := WordAlloc.removeDeadProg p2
  let p4 := WordCse.wordCommonSubexpElim p3
  let p5 := WordCopy.copyProp p4
  let p6 := WordInst.threeToTwoRegProg riscvConfig.twoRegArith p5
  let p7 := WordUnreach.removeUnreach p6
  let p8 := WordAlloc.removeDeadProg p7
  let p9 := WordToWord.wordAllocWith RegAlloc.regAllocExecutable label riscvConfig 3 regs p8 oracle
  let p10 := WordRemove.removeMustTerminate p9
  let passes := #[p0,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10]
  let ns := s!"InitECandidate.Proofs.SmallStages.Compact{label}"
  let header := "set_option autoImplicit false\nset_option Elab.async false\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nset_option cbv.maxSteps 1000000000\nset_option cbv.warning false\nopen scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation\nopen Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target\nopen InitECandidate.Proofs.WordStages\n"
  let dir := s!"submission/InitECandidate/Proofs/SmallStages/Compact{label}"
  IO.FS.createDirAll dir
  let oracleText ← renderWordStage env (toExpr oracle)
  let mut data := s!"import InitECandidate.Proofs.SmallOptimizerComputation\nimport InitECandidate.Proofs.WordStages.Source{label}\n" ++ header ++ s!"namespace {ns}\ndef oracle : Option (Spt Nat) :=\n{oracleText}\n"
  for index in [2,3,4,5,6,7,8,10] do
    let st ← IO.mkRef ({tag := s!"body{index}_"} : PancakeDataState)
    let body ← wordProgData env st ((passes[index]?).getD .skip)
    data := data ++ String.intercalate "\n" (← st.get).lines.toList ++ s!"\ndef pass{index} : WordLangProgHOL (BitVec 64) := {body}\n"
  data := data ++ s!"end {ns}\n"
  IO.FS.writeFile s!"{dir}/Data.lean" data
  let exprs := #[
    s!"WordSimp.compileExp source{label}.2.2",
    "WordInst.instSelectExecutable riscvConfig (maxVarHOL pass0 + 1) pass0",
    s!"(let p0 := WordSimp.compileExp source{label}.2.2; let p1 := WordInst.instSelectExecutable riscvConfig (maxVarHOL p0 + 1) p0; WordAlloc.fullSsaCcTrans {argc} p1)",
    "WordAlloc.removeDeadProg pass2",
    "WordCse.wordCommonSubexpElim pass3",
    "WordCopy.copyProp pass4",
    "WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass5",
    "WordUnreach.removeUnreach pass6",
    "WordAlloc.removeDeadProg pass7",
    s!"WordToWord.wordAllocWith RegAlloc.regAllocExecutable {label} riscvConfig 3 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) pass8 oracle",
    s!"WordRemove.removeMustTerminate (WordToWord.wordAllocWith RegAlloc.regAllocExecutable {label} riscvConfig 3 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) pass8 oracle)"]
  for index in [2,3,4,5,6,7,8,10] do
    let proof := if index == 2 then
      "  dsimp only\n  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]\n  kernel_rfl\n"
      else "  kernel_rfl\n"
    IO.FS.writeFile s!"{dir}/Pass{index}.lean"
      ("import InitECandidate.Proofs.CompactComputation\n" ++
       (if index == 2 then "import InitECandidate.Proofs.SmallSsaKernelComputation\n" else "") ++
       s!"import {ns}.Data\n" ++ header ++ s!"namespace {ns}\ntheorem pass{index}_eq : {exprs[index]!} = pass{index} := by\n" ++ proof ++ s!"#print axioms pass{index}_eq\nend {ns}\n")
  IO.println s!"Prepared {label}: {data.utf8ByteSize} bytes, 8 independently checked pass proposals"

end InitE.GenSmallStages
