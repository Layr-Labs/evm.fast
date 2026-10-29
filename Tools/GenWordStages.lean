import Tools.CompactCertificates
import Lean
import InitE.SourceDeclarations
import InitECandidate.Proofs.DeadComputation

/-! Generate proposed literals for separately certified compiler stages.
Native evaluation here proposes data; it is never a challenge proof. -/
open Lean Flapjack Flapjack.Compiler.Backend
open Flapjack.Compiler.Encoders.RiscV.Target

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

set_option Elab.async false
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

deriving instance ToExpr for Flapjack.PanOp
deriving instance ToExpr for Flapjack.VarKind
deriving instance ToExpr for Flapjack.OpSize
deriving instance ToExpr for Flapjack.PrimOp
deriving instance ToExpr for Flapjack.Shape
deriving instance ToExpr for Flapjack.Exp
deriving instance ToExpr for Flapjack.Prog
deriving instance ToExpr for Flapjack.FunDecl
deriving instance ToExpr for Flapjack.Decl
deriving instance ToExpr for Flapjack.CrepOp
deriving instance ToExpr for Flapjack.CrepExp
deriving instance ToExpr for Flapjack.CrepProg
deriving instance ToExpr for Flapjack.RegImm
deriving instance ToExpr for Flapjack.LoopArith
-- These carriers have a proof-valued NeZero parameter, which generic ToExpr
-- deriving cannot quote. The generator specializes to the challenge's width.
def loopLiteralType (name : Name) : Expr :=
  mkAppN (mkConst name) #[mkNatLit 64, mkApp (mkConst ``Nat.instNeZeroSucc) (mkNatLit 63)]

def loopLiteralCtor (name : Name) (args : Array Expr) : Expr :=
  mkAppN (mkConst name) (#[mkNatLit 64, mkApp (mkConst ``Nat.instNeZeroSucc) (mkNatLit 63)] ++ args)

partial def loopExpExpr (p : HolLoopExp 64) : Expr :=
  match p with
  | .const v => loopLiteralCtor ``HolLoopExp.const #[toExpr v]
  | .var v => loopLiteralCtor ``HolLoopExp.var #[toExpr v]
  | .lookup a => loopLiteralCtor ``HolLoopExp.lookup #[toExpr a]
  | .load a => loopLiteralCtor ``HolLoopExp.load #[loopExpExpr a]
  | .op op args => loopLiteralCtor ``HolLoopExp.op #[toExpr op,
      args.foldr (fun a tail => mkAppN (mkConst ``List.cons [.zero])
        #[loopLiteralType ``HolLoopExp, loopExpExpr a, tail])
        (mkApp (mkConst ``List.nil [.zero]) (loopLiteralType ``HolLoopExp))]
  | .shift op a b => loopLiteralCtor ``HolLoopExp.shift #[toExpr op, loopExpExpr a, loopExpExpr b]
  | .baseAddr => loopLiteralCtor ``HolLoopExp.baseAddr #[]
  | .topAddr => loopLiteralCtor ``HolLoopExp.topAddr #[]

instance : ToExpr (HolLoopExp 64) where
  toTypeExpr := loopLiteralType ``HolLoopExp
  toExpr := loopExpExpr

private def literalPair (ta tb a b : Expr) : Expr :=
  mkAppN (mkConst ``Prod.mk [.zero, .zero]) #[ta, tb, a, b]

partial def loopProgExpr (p : HolLoopProg 64) : Expr :=
  let app := loopLiteralCtor
  match p with
  | .skip => app ``HolLoopProg.skip #[]
  | .assign n v => app ``HolLoopProg.assign #[toExpr n, toExpr v]
  | .primitive ds op args => app ``HolLoopProg.primitive #[toExpr ds, toExpr op, toExpr args]
  | .arith op => app ``HolLoopProg.arith #[toExpr op]
  | .store a v => app ``HolLoopProg.store #[toExpr a, toExpr v]
  | .setGlobal a v => app ``HolLoopProg.setGlobal #[toExpr a, toExpr v]
  | .load32 a d => app ``HolLoopProg.load32 #[toExpr a, toExpr d]
  | .loadByte a d => app ``HolLoopProg.loadByte #[toExpr a, toExpr d]
  | .store32 a v => app ``HolLoopProg.store32 #[toExpr a, toExpr v]
  | .storeByte a v => app ``HolLoopProg.storeByte #[toExpr a, toExpr v]
  | .seq a b => app ``HolLoopProg.seq #[loopProgExpr a, loopProgExpr b]
  | .ite op c right a b live => app ``HolLoopProg.ite #[toExpr op, toExpr c, toExpr right,
      loopProgExpr a, loopProgExpr b, toExpr live]
  | .loop li b lo => app ``HolLoopProg.loop #[toExpr li, loopProgExpr b, toExpr lo]
  | .break n => app ``HolLoopProg.break #[toExpr n]
  | .continue n => app ``HolLoopProg.continue #[toExpr n]
  | .raise n => app ``HolLoopProg.raise #[toExpr n]
  | .return vs => app ``HolLoopProg.return #[toExpr vs]
  | .shMem op n a => app ``HolLoopProg.shMem #[toExpr op, toExpr n, toExpr a]
  | .tick => app ``HolLoopProg.tick #[]
  | .mark b => app ``HolLoopProg.mark #[loopProgExpr b]
  | .fail => app ``HolLoopProg.fail #[]
  | .locValue d s => app ``HolLoopProg.locValue #[toExpr d, toExpr s]
  | .call returns target args handler =>
      let pt := loopLiteralType ``HolLoopProg
      let st := toTypeExpr NumSet
      let pairTy := mkApp2 (mkConst ``Prod [.zero, .zero]) pt st
      let tripleTy := mkApp2 (mkConst ``Prod [.zero, .zero]) pt pairTy
      let ht := mkApp2 (mkConst ``Prod [.zero, .zero]) (toTypeExpr Nat) tripleTy
      let h := match handler with
        | none => mkApp (mkConst ``Option.none [.zero]) ht
        | some (n, a, b, live) =>
            let tail := literalPair pt st (loopProgExpr b) (toExpr live)
            let tail := literalPair pt pairTy (loopProgExpr a) tail
            let v := literalPair (toTypeExpr Nat) tripleTy (toExpr n) tail
            mkApp2 (mkConst ``Option.some [.zero]) ht v
      app ``HolLoopProg.call #[toExpr returns, toExpr target, toExpr args, h]
  | .ffi fn c cl a al live => app ``HolLoopProg.ffi
      #[toExpr fn, toExpr c, toExpr cl, toExpr a, toExpr al, toExpr live]

instance : ToExpr (HolLoopProg 64) where
  toTypeExpr := loopLiteralType ``HolLoopProg
  toExpr := loopProgExpr

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

partial def frontendWeight : Prog (BitVec 64) → Nat
  | .seq a b => 1 + frontendWeight a + frontendWeight b
  | .dec _ _ _ body => 1 + frontendWeight body
  | .ite _ a b => 1 + frontendWeight a + frontendWeight b
  | .while _ body => 1 + frontendWeight body
  | .decCall _ _ _ _ body => 1 + frontendWeight body
  | _ => 1

partial def wordStageWeight : WordLangProgHOL (BitVec 64) → Nat
  | .seq a b => 1 + wordStageWeight a + wordStageWeight b
  | .ite _ _ _ a b => 1 + wordStageWeight a + wordStageWeight b
  | .mustTerminate body => 1 + wordStageWeight body
  | .loop _ body _ => 1 + wordStageWeight body
  | .call ret _ _ handler =>
      1 + (match ret with
        | none => 0
        | some (_, _, body, _, _) => wordStageWeight body) +
      (match handler with
        | none => 0
        | some (_, body, _, _) => wordStageWeight body)
  | _ => 1

def declarationWeight (d : Pancake.PanLang.DeclHOL 64) : Nat :=
  match Pancake.PanLang.declOfHOL d with
  | .function fn => frontendWeight fn.body
  | _ => 1

structure PancakeDataState where
  tag : String := "body"
  values : Std.HashMap Expr String := {}
  lines : Array String := #[]

partial def pancakeProgData (env : Environment) (state : IO.Ref PancakeDataState)
    (program : Prog (BitVec 64)) : IO String := do
  let expr := toExpr program
  let st ← state.get
  if let some name := st.values[expr]? then return name
  let text ← match program with
    | .seq a b => do
      let a ← pancakeProgData env state a
      let b ← pancakeProgData env state b
      pure s!".seq {a} {b}"
    | .ite condition a b => do
      let condition ← renderWordStage env (toExpr condition)
      let a ← pancakeProgData env state a
      let b ← pancakeProgData env state b
      pure s!".ite ({condition}) {a} {b}"
    | .while condition body => do
      let condition ← renderWordStage env (toExpr condition)
      let body ← pancakeProgData env state body
      pure s!".while ({condition}) {body}"
    | .dec name shape value body => do
      let name ← renderWordStage env (toExpr name)
      let shape ← renderWordStage env (toExpr shape)
      let value ← renderWordStage env (toExpr value)
      let body ← pancakeProgData env state body
      pure s!".dec ({name}) ({shape}) ({value}) {body}"
    | .decCall name shape fn args body => do
      let name ← renderWordStage env (toExpr name)
      let shape ← renderWordStage env (toExpr shape)
      let fn ← renderWordStage env (toExpr fn)
      let args ← renderWordStage env (toExpr args)
      let body ← pancakeProgData env state body
      pure s!".decCall ({name}) ({shape}) ({fn}) ({args}) {body}"
    | _ => renderWordStage env expr
  let st ← state.get
  let name := s!"{st.tag}{st.values.size}"
  let line := s!"def {name} : Prog (BitVec 64) :=\n{text}\n"
  state.modify fun st => {st with
    values := st.values.insert expr name
    lines := st.lines.push line}
  return name

partial def loopProgData (env : Environment) (state : IO.Ref PancakeDataState)
    (program : HolLoopProg 64) : IO String := do
  let expr := toExpr program
  let st ← state.get
  if let some name := st.values[expr]? then return name
  let r := renderWordStage env
  let text ← match program with
    | .seq a b => do
      let a ← loopProgData env state a
      let b ← loopProgData env state b
      pure s!".seq {a} {b}"
    | .ite op condition right a b live => do
      let op ← r (toExpr op)
      let right ← r (toExpr right)
      let a ← loopProgData env state a
      let b ← loopProgData env state b
      let live ← r (toExpr live)
      pure s!".ite ({op}) {condition} ({right}) {a} {b} ({live})"
    | .loop liveIn body liveOut => do
      let liveIn ← r (toExpr liveIn)
      let body ← loopProgData env state body
      let liveOut ← r (toExpr liveOut)
      pure s!".loop ({liveIn}) {body} ({liveOut})"
    | .mark body => do
      let body ← loopProgData env state body
      pure s!".mark {body}"
    | .call returns target arguments (some (exception, a, b, live)) => do
      let returns ← r (toExpr returns)
      let target ← r (toExpr target)
      let arguments ← r (toExpr arguments)
      let a ← loopProgData env state a
      let b ← loopProgData env state b
      let live ← r (toExpr live)
      pure s!".call ({returns}) ({target}) ({arguments}) (some ({exception}, {a}, {b}, ({live})))"
    | _ => r expr
  let st ← state.get
  let name := s!"{st.tag}{st.values.size}"
  state.modify fun st => { st with
    values := st.values.insert expr name
    lines := st.lines.push s!"def {name} : HolLoopProg 64 :=\n{text}\n"}
  return name

partial def crepProgData (env : Environment) (state : IO.Ref PancakeDataState)
    (program : CrepProg (BitVec 64)) : IO String := do
  let expr := toExpr program
  let st ← state.get
  if let some name := st.values[expr]? then return name
  let text ← match program with
    | .seq a b => do
      let a ← crepProgData env state a
      let b ← crepProgData env state b
      pure s!".seq {a} {b}"
    | .dec name value body => do
      let value ← renderWordStage env (toExpr value)
      let body ← crepProgData env state body
      pure s!".dec {name} ({value}) {body}"
    | .ite condition a b => do
      let condition ← renderWordStage env (toExpr condition)
      let a ← crepProgData env state a
      let b ← crepProgData env state b
      pure s!".ite ({condition}) {a} {b}"
    | .while condition body => do
      let condition ← renderWordStage env (toExpr condition)
      let body ← crepProgData env state body
      pure s!".while ({condition}) {body}"
    | .call (some (returns, some (exception, handler))) name args => do
      let returns ← renderWordStage env (toExpr returns)
      let exception ← renderWordStage env (toExpr exception)
      let handler ← crepProgData env state handler
      let name ← renderWordStage env (toExpr name)
      let args ← renderWordStage env (toExpr args)
      pure s!".call (some (({returns}), some (({exception}), {handler}))) ({name}) ({args})"
    | _ => renderWordStage env expr
  let st ← state.get
  let name := s!"{st.tag}{st.values.size}"
  state.modify fun st => { st with values := st.values.insert expr name, lines := st.lines.push s!"def {name} : CrepProg (BitVec 64) :=\n{text}\n" }
  return name

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

structure LoopWordCheckpoint where
  input : String
  output : String
  candidate : String
  start : Nat × Nat
  finish : Nat × Nat
  children : Array Nat
  kind : String
  result : WordLangProgHOL (BitVec 64)

instance : Inhabited LoopWordCheckpoint := ⟨{
  input := "", output := "", candidate := "", start := (0,0), finish := (0,0),
  children := #[], kind := "", result := .skip }⟩

structure LoopWordCheckpointState where
  cache : Std.HashMap (Expr × Nat × Nat) Nat := {}
  nodes : Array LoopWordCheckpoint := #[]

partial def loopWordCheckpoint (env : Environment)
    (inputs outputs : Std.HashMap Expr String) (context : Spt Nat)
    (state : IO.Ref LoopWordCheckpointState) (p : HolLoopProg 64) (start : Nat × Nat) :
    IO Nat := do
  let key := (toExpr p, start.1, start.2)
  let st ← state.get
  if let some index := st.cache[key]? then return index
  let (word, finish, children, text, kind) ← match p with
    | .seq a b => do
      let i ← loopWordCheckpoint env inputs outputs context state a start
      let an := (← state.get).nodes[i]!
      let j ← loopWordCheckpoint env inputs outputs context state b an.finish
      let bn := (← state.get).nodes[j]!
      pure (.seq an.result bn.result, bn.finish, #[i,j], s!".seq output{i} output{j}", "seq")
    | .ite op condition right a b _ => do
      let i ← loopWordCheckpoint env inputs outputs context state a start
      let an := (← state.get).nodes[i]!
      let j ← loopWordCheckpoint env inputs outputs context state b an.finish
      let bn := (← state.get).nodes[j]!
      let rhs : WordRegImm (BitVec 64) := match right with
        | .imm value => .imm value
        | .reg name => .reg (LoopToWord.findVarHOL context name)
      let reg := LoopToWord.findVarHOL context condition
      let opText ← renderWordStage env (toExpr op)
      let rightText ← renderWordStage env (toExpr rhs)
      pure (.seq (.ite op reg rhs an.result bn.result) .tick, bn.finish, #[i,j],
        s!".seq (.ite ({opText}) {reg} ({rightText}) output{i} output{j}) .tick", "ite")
    | .loop liveIn body liveOut => do
      let i ← loopWordCheckpoint env inputs outputs context state body start
      let n := (← state.get).nodes[i]!
      let before := LoopToWord.mkNewCutsetHOL context liveIn
      let after := LoopToWord.mkNewCutsetHOL context liveOut
      let beforeText ← renderWordStage env (toExpr before)
      let afterText ← renderWordStage env (toExpr after)
      pure (.seq .tick (.seq (.loop before n.result after) .tick), n.finish, #[i],
        s!".seq .tick (.seq (.loop ({beforeText}) output{i} ({afterText})) .tick)", "loop")
    | .mark body => do
      let i ← loopWordCheckpoint env inputs outputs context state body start
      let n := (← state.get).nodes[i]!
      pure (n.result, n.finish, #[i], s!"output{i}", "mark")
    | _ => do
      let result := LoopToWord.compHOL context p start
      let text ← renderWordStage env (toExpr result.1)
      pure (result.1, result.2, #[], text, "leaf")
  let some input := inputs[toExpr p]? | throw (IO.userError "missing original Loop DAG node")
  let some candidate := outputs[toExpr word]? | throw (IO.userError "missing supplied Word DAG node")
  let st ← state.get
  let index := st.nodes.size
  state.set { st with
    cache := st.cache.insert key index
    nodes := st.nodes.push {input, output := text, candidate, start, finish, children, kind, result := word}}
  return index

def pancakeDeclData (env : Environment) (state : IO.Ref PancakeDataState)
    (d : Decl (BitVec 64)) : IO String := do
  match d with
  | .function fn =>
    let body ← pancakeProgData env state fn.body
    let name ← renderWordStage env (toExpr fn.name)
    let params ← renderWordStage env (toExpr fn.params)
    let shape ← renderWordStage env (toExpr fn.returnShape)
    pure (".function { name := " ++ name ++ s!", inline := {fn.inline}, exported := {fn.exported}, params := {params}, body := {body}, returnShape := ({shape})" ++ " }")
  | _ => renderWordStage env (toExpr d)

def beforeAllocation (entry : Nat × Nat × WordLangProgHOL (BitVec 64)) : WordLangProgHOL (BitVec 64) :=
  let prog := WordSimp.compileExp entry.2.2
  let instProg := WordInst.instSelectExecutable riscvConfig (maxVarHOL prog + 1) prog
  let ssa := WordAlloc.fullSsaCcTrans entry.2.1 instProg
  let dead := WordAlloc.removeDeadProg ssa
  let cse := WordCse.wordCommonSubexpElim dead
  let copied := WordCopy.copyProp cse
  let two := WordInst.threeToTwoRegProg riscvConfig.twoRegArith copied
  let reachable := WordUnreach.removeUnreach two
  WordAlloc.removeDeadProg reachable


structure ClashCheckpointState where
  next : Nat := 0
  results : Array (Option (NumSet × NumSet)) := #[]
  data : Array String := #[]
  proofs : Array String := #[]
  values : Std.HashMap Expr String := {}

partial def clashValue (env : Environment) (state : IO.Ref ClashCheckpointState)
    (value : NumSet) : IO String := do
  let expr := toExpr value
  let st ← state.get
  if let some name := st.values[expr]? then return name
  let text ← match value with
    | .ln => pure ".ln"
    | .ls () => pure ".ls ()"
    | .bn left right => do
        let l ← clashValue env state left
        let r ← clashValue env state right
        pure s!".bn {l} {r}"
    | .bs left () right => do
        let l ← clashValue env state left
        let r ← clashValue env state right
        pure s!".bs {l} () {r}"
  let name := s!"setValue{(← state.get).values.size}"
  state.modify fun st => { st with
    values := st.values.insert expr name
    data := st.data.push s!"def {name} : Flapjack.NumSet := {text}\n"}
  return name

partial def clashCheckpoint (env : Environment) (state : IO.Ref ClashCheckpointState)
    (colour : Spt Nat) (tree : RegAlloc.ClashTree) (live coloured : NumSet) : IO Nat := do
  let f := WordAlloc.totalColour colour
  let mut result : Option (NumSet × NumSet) := none
  let mut children : Array Nat := #[]
  let mut cached := ""
  let mut literal := ""
  match tree with
  | .seq left right =>
    let rightId ← clashCheckpoint env state colour right live coloured
    children := children.push rightId
    let some (rightOut, rightColoured) := (← state.get).results[rightId]!
      | throw (IO.userError "rejected clash checkpoint")
    let leftId ← clashCheckpoint env state colour left rightOut rightColoured
    children := children.push leftId
    result := (← state.get).results[leftId]!
    cached := s!".seq tree{leftId} tree{rightId}"
    literal := s!".seq literal{leftId} literal{rightId}"
  | .branch fixed left right =>
    let leftId ← clashCheckpoint env state colour left live coloured
    let rightId ← clashCheckpoint env state colour right live coloured
    children := #[leftId, rightId]
    let some (leftOut, leftColoured) := (← state.get).results[leftId]!
      | throw (IO.userError "rejected left branch")
    let some (rightOut, _) := (← state.get).results[rightId]!
      | throw (IO.userError "rejected right branch")
    result := match fixed with
      | some fixed => RegAlloc.checkCol f fixed
      | none => RegAlloc.checkPartialCol f
          ((sptToAList (sptDifference rightOut leftOut)).map Prod.fst) leftOut leftColoured
    let fixedText ← match fixed with
      | none => pure "none"
      | some set => do
          let name ← clashValue env state set
          pure s!"some {name}"
    cached := s!".branch ({fixedText}) tree{leftId} tree{rightId}"
    literal := s!".branch ({fixedText}) literal{leftId} literal{rightId}"
  | .set set =>
    result := RegAlloc.checkClashTree f tree live coloured
    let name ← clashValue env state set
    cached := s!".set {name}"
    literal := cached
  | .delta .. =>
    result := RegAlloc.checkClashTree f tree live coloured
    cached ← renderWordStage env (toExpr tree)
    literal := cached
  let index := (← state.get).next
  let liveText ← clashValue env state live
  let colouredText ← clashValue env state coloured
  let resultText ← match result with
    | none => pure "none"
    | some (a, b) => do
      let an ← clashValue env state a
      let bn ← clashValue env state b
      pure s!"some ({an}, {bn})"
  let data := s!"def tree{index} : Flapjack.RegAlloc.ClashTree :=\n  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.RegAlloc.ClashTree) ({cached})).val\n" ++
    s!"theorem tree{index}_def : tree{index} = ({cached}) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _\n" ++
    s!"def literal{index} : Flapjack.RegAlloc.ClashTree := {literal}\n" ++
    s!"def live{index} : Flapjack.NumSet := {liveText}\n" ++
    s!"def coloured{index} : Flapjack.NumSet := {colouredText}\n" ++
    s!"def result{index} : Option (Flapjack.NumSet × Flapjack.NumSet) := {resultText}\n"
  let mut proof := s!"theorem tree{index}_agree : tree{index} = literal{index} := by\n  rw [tree{index}_def"
  for child in children do
    proof := proof ++ s!", tree{child}_agree"
  proof := proof ++ "]\n  rfl\n" ++
    s!"theorem node{index}_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree{index} live{index} coloured{index} = result{index} := by\n  rw [tree{index}_def]\n"
  if !children.isEmpty then
    proof := proof ++ "  rw [Flapjack.RegAlloc.checkClashTree]\n"
    for child in children do
      proof := proof ++ s!"  have child := node{child}_eq\n  unfold live{child} coloured{child} at child\n  try dsimp only [live{index}, coloured{index}]\n  rw [child]\n  dsimp only [result{child}]\n"
  proof := proof ++ "  try simp only [Flapjack.RegAlloc.checkClashTree]\n  all_goals kernel_rfl\n"
  state.modify fun s => {s with next := index + 1, results := s.results.push result, data := s.data.push data, proofs := s.proofs.push proof}
  return index

structure DeadCheckpointState where
  next : Nat := 0
  lines : Array String := #[]
  values : Std.HashMap Expr String := {}

def deadValue {α : Type} [ToExpr α] (env : Environment)
    (state : IO.Ref DeadCheckpointState) (type : String) (value : α) : IO String := do
  let expr := toExpr value
  let st ← state.get
  if let some name := st.values[expr]? then return name
  let name := s!"value{st.values.size}"
  let text ← renderWordStage env expr
  state.modify fun st => { st with
    values := st.values.insert expr name
    lines := st.lines.push s!"def {name} : {type} :=\n{text}\n" }
  return name

partial def deadCheckpoint (env : Environment) (state : IO.Ref DeadCheckpointState)
    (p : WordLangProgHOL (BitVec 64)) (live : NumSet) (nlive : List WordStoreHOL)
    (lt : List (NumSet × NumSet)) : IO Nat := do
  let result := WordAlloc.removeDead p live nlive lt
  let mut children : List Nat := []
  let mut input := ""
  let mut output := ""
  match p with
  | .seq a b =>
    let rb := WordAlloc.removeDead b live nlive lt
    let ib ← deadCheckpoint env state b live nlive lt
    let ia ← deadCheckpoint env state a rb.2.1 rb.2.2 lt
    children := [ib, ia]
    input := s!".seq input{ia} input{ib}"
    let ra := WordAlloc.removeDead a rb.2.1 rb.2.2 lt
    output := match ra.1, rb.1 with
      | .skip, _ => s!"output{ib}"
      | _, .skip => s!"output{ia}"
      | _, _ => s!".seq output{ia} output{ib}"
  | .mustTerminate body =>
    let ib ← deadCheckpoint env state body live nlive lt
    children := [ib]
    input := s!".mustTerminate input{ib}"
    output := s!".mustTerminate output{ib}"
  | .loop ni body no =>
    let ib ← deadCheckpoint env state body ni [] ((ni,no)::lt)
    children := [ib]
    let ni ← deadValue env state "Flapjack.NumSet" ni
    let no ← deadValue env state "Flapjack.NumSet" no
    input := s!".loop {ni} input{ib} {no}"
    output := s!".loop {ni} output{ib} {no}"
  | .ite cmp reg ri a b =>
    let ia ← deadCheckpoint env state a live nlive lt
    let ib ← deadCheckpoint env state b live nlive lt
    children := [ia, ib]
    let cmp ← deadValue env state "Flapjack.Cmp" cmp
    let ri ← deadValue env state "Flapjack.WordRegImm (BitVec 64)" ri
    input := s!".ite {cmp} {reg} {ri} input{ia} input{ib}"
    let ra := WordAlloc.removeDead a live nlive lt
    let rb := WordAlloc.removeDead b live nlive lt
    output := match ra.1, rb.1 with
      | .skip, .skip => ".skip"
      | _, _ => s!".ite {cmp} {reg} {ri} output{ia} output{ib}"
  | _ =>
    input ← renderWordStage env (toExpr p)
    output ← renderWordStage env (toExpr result.1)
  let l ← deadValue env state "Flapjack.NumSet" live
  let n ← deadValue env state "List Flapjack.WordStoreHOL" nlive
  let t ← deadValue env state "List (Flapjack.NumSet × Flapjack.NumSet)" lt
  let ol ← deadValue env state "Flapjack.NumSet" result.2.1
  let on ← deadValue env state "List Flapjack.WordStoreHOL" result.2.2
  let st ← state.get
  let index := st.next
  let mut proof := s!"  rw [input{index}_def, output{index}_def]\n"
  if !children.isEmpty then
    proof := proof ++ (if let .ite .. := p then
      "  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]\n"
      else "  rw [Flapjack.WordAlloc.removeDeadStructural]\n")
    for child in children do
      if let .loop ni _ no := p then
        let niName := st.values[toExpr ni]!
        let noName := st.values[toExpr no]!
        let contextName := st.values[toExpr ((ni, no) :: lt)]!
        let storesName := st.values[toExpr ([] : List WordStoreHOL)]!
        proof := proof ++ s!"  have loop_context_eq : {contextName} = ({niName}, {noName}) :: {t} := by rfl\n" ++
          s!"  have loop_stores_eq : {storesName} = [] := by rfl\n" ++
          s!"  have loop_child := node{child}_eq\n" ++
          "  rw [loop_context_eq, loop_stores_eq] at loop_child\n  rw [loop_child]\n  try dsimp only\n"
      else
        proof := proof ++ s!"  rw [node{child}_eq]\n  try dsimp only\n"
    if let .ite .. := p then
      proof := proof ++ "  unfold Flapjack.WordAlloc.joinDeadIteResult\n"
  if !children.isEmpty then
    let skipEquations := String.intercalate ", " (children.map fun child => s!"output{child}_skip")
    proof := proof ++ s!"  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, {skipEquations}]\n"
  proof := proof ++ "  kernel_rfl\n"
  let skipProof := if output.startsWith "output" then s!"  exact {output}_skip\n" else "  kernel_rfl\n"
  let type := "Flapjack.WordLangProgHOL (BitVec 64)"
  let text := s!"@[irreducible, cbv_opaque] def input{index} : {type} :=\n" ++
    s!"  (InitECandidate.Proofs.ComputationCache.boxedValue (α := {type}) ({input})).val\n" ++
    s!"theorem input{index}_def : input{index} = ({input}) := by\n" ++
    s!"  unfold input{index}\n  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _\n" ++
    s!"@[irreducible, cbv_opaque] def output{index} : {type} :=\n" ++
    s!"  (InitECandidate.Proofs.ComputationCache.boxedValue (α := {type}) ({output})).val\n" ++
    s!"theorem output{index}_def : output{index} = ({output}) := by\n" ++
    s!"  unfold output{index}\n  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _\n" ++
    s!"@[cbv_eval] theorem output{index}_skip : Flapjack.WordAlloc.isSkip output{index} = {if WordAlloc.isSkip result.1 then "true" else "false"} := by\n" ++
    s!"  rw [output{index}_def]\n" ++ skipProof ++
    s!"theorem node{index}_eq : Flapjack.WordAlloc.removeDeadStructural input{index} {l} {n} {t} = (output{index}, {ol}, {on}) := by\n" ++ proof
  state.modify fun st => {st with next := index + 1, lines := st.lines.push text}
  return index

unsafe def genWordStagesMain (args : List String) : IO Unit := do
  enableInitializersExecution
  initSearchPath (← findSysroot)
  let setup ← ModuleSetup.load ".lake/build/ir/InitE/SourceDeclarations.setup.json"
  let env ← importModules #[{ module := `InitE.SourceDeclarations }] {}
    (loadExts := true) (arts := setup.importArts)
  if args.contains "--loop-word-checkpoints" then
    let index := (args[1]?.bind String.toNat?).getD 649
    let label := index + firstLoopName
    let p0 := panSimpDeclsHOL InitE.sourceDeclarations
    let p1 := Pancake.PanStructs.CompileShapeExact.compileTopExact p0
    let p2 := compileTopExactHOL p1 (Basis.Pure.MlString.ofString "main")
    let p3 := compileProgDeclsHOLW p2
    let p4 := compileProgHOLExact riscvConfig.isa p3
    let some entry := p4[index]? | throw (IO.userError "Loop index out of range")
    let vars := LoopToWord.fromNumSetHOL
      (sptDifference (accVarsHOL entry.2.2 (.ln : Spt Unit)) (LoopToWord.toNumSetHOL entry.2.1))
    let context := makeCtxtHOL 2 (entry.2.1 ++ vars) (.ln : Spt Nat)
    let loopState ← IO.mkRef ({tag := s!"loopBody{index}_"} : PancakeDataState)
    let _ ← loopProgData env loopState entry.2.2
    let word := loopToWordCompFuncHOL label entry.2.1 entry.2.2
    let wordState ← IO.mkRef ({tag := s!"sourceBody{label}_"} : PancakeDataState)
    let wordRoot ← wordProgData env wordState word
    if args.contains "--write-word-source" then
      let defs := String.intercalate "\n" (← wordState.get).lines.toList
      writeCompactCertificate s!"submission/InitECandidate/Proofs/WordStages/Source{label}.lean"
        ("import Flapjack.Pancake.WordLang\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\n" ++
         "open Flapjack\nnamespace InitECandidate.Proofs.WordStages\n" ++ defs ++ "\n" ++
         s!"def source{label} : Nat × Nat × WordLangProgHOL (BitVec 64) :=\n" ++
         s!"  ({label}, {entry.2.1.length+1}, {wordRoot})\nend InitECandidate.Proofs.WordStages\n")
    let state ← IO.mkRef ({} : LoopWordCheckpointState)
    let root ← loopWordCheckpoint env (← loopState.get).values (← wordState.get).values
      context state entry.2.2 (label,2)
    let nodes := (← state.get).nodes
    let proofNamespace := s!"InitECandidate.Proofs.FrontendStages.Word.Checkpoints{index}"
    let directory := s!"submission/InitECandidate/Proofs/FrontendStages/Word/Checkpoints{index}"
    for folder in ["Data", "Conditional", "Compose", "Agreement"] do
      IO.FS.createDirAll s!"{directory}/{folder}"
    let header := "set_option autoImplicit false\nset_option Elab.async false\n" ++
      "set_option maxRecDepth 1000000\nset_option maxHeartbeats 0\n" ++
      "set_option cbv.maxSteps 1000000000\nset_option cbv.warning false\n" ++
      s!"open Flapjack\nnamespace {proofNamespace}\n"
    let conclusion := fun (n : LoopWordCheckpoint) (k : Nat) => s!"Flapjack.LoopToWord.compHOL Word.context{index}\n" ++
      s!"    Loop.{n.input} ({n.start.1}, {n.start.2}) = (output{k}, ({n.finish.1}, {n.finish.2}))"
    let chunkSize := (args[2]?.bind String.toNat?).getD 384
    let groups := (nodes.size + chunkSize - 1) / chunkSize
    let suffixOf := fun (n : Nat) =>
      let text := toString n
      String.ofList (List.replicate (3 - text.length) '0') ++ text
    for group in List.range groups do
      let suffix := suffixOf group
      let previous := suffixOf (group-1)
      let dataImports := "import InitECandidate.Proofs.LoopWordComputation\n" ++
        s!"import InitECandidate.Proofs.FrontendStages.Word.Variables{index}\nimport InitECandidate.Proofs.WordStages.Source{label}\n" ++
        (if group == 0 then "" else s!"import {proofNamespace}.Data.Chunk{previous}\n")
      let mut data := dataImports ++ header
      let mut conditional := s!"import {proofNamespace}.Data.Chunk{suffix}\n" ++ header
      let mut compose := s!"import {proofNamespace}.Conditional.Chunk{suffix}\n" ++
        (if group == 0 then "" else s!"import {proofNamespace}.Compose.Chunk{previous}\n") ++ header
      let mut agreement := s!"import {proofNamespace}.Data.Chunk{suffix}\n" ++
        (if group == 0 then "" else s!"import {proofNamespace}.Agreement.Chunk{previous}\n") ++ header
      for k in List.range nodes.size |>.drop (group*chunkSize) |>.take chunkSize do
        let n := nodes[k]!
        data := data ++ s!"@[irreducible, cbv_opaque] def output{k} : WordLangProgHOL (BitVec 64) :=\n" ++
          s!"  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) ({n.output})).val\n" ++
          s!"theorem output{k}_def : output{k} = ({n.output}) := by\n" ++
          s!"  unfold output{k}\n  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _\n\n"
        let binders := n.children.foldl (fun acc child => acc ++
          s!"\n    (child{child} : {conclusion nodes[child]! child})") ""
        let mut proof := s!"  rw [output{k}_def]\n"
        if n.kind == "leaf" then
          proof := proof ++ "  kernel_rfl\n"
        else
          let count := if n.kind == "seq" then 8 else if n.kind == "ite" then 12
            else if n.kind == "loop" then 7 else 5
          if n.kind == "loop" then
            proof := proof ++ s!"  have h := InitECandidate.Proofs.LoopWordComputation.comp_loop_checked Word.context{index}" ++
              s!" (match Loop.{n.input} with | .loop live _ _ => live | _ => .ln)" ++
              s!" (match Loop.{n.input} with | .loop _ _ live => live | _ => .ln)" ++
              " _ _ _ _" ++ n.children.foldl (fun acc child => acc ++ s!" child{child}") "" ++
              "\n  exact h.trans (by kernel_rfl)\n"
          else
            proof := proof ++ s!"  exact InitECandidate.Proofs.LoopWordComputation.comp_{n.kind}_checked" ++
              String.join (List.replicate count " _") ++
              n.children.foldl (fun acc child => acc ++ s!" child{child}") "" ++ "\n"
        conditional := conditional ++ s!"theorem node{k}_conditional{binders} : {conclusion n k} := by\n{proof}\n"
        compose := compose ++ s!"theorem node{k}_eq : {conclusion n k} :=\n  node{k}_conditional" ++
          n.children.foldl (fun acc child => acc ++ s!" node{child}_eq") "" ++ "\n\n"
        agreement := agreement ++ s!"theorem output{k}_source : output{k} = InitECandidate.Proofs.WordStages.{n.candidate} := by\n" ++
          s!"  rw [output{k}_def]\n" ++
          n.children.foldl (fun acc child => acc ++ s!"  try rw [output{child}_source]\n") "" ++
          "  try (kernel_rfl)\n\n"
      let last := min nodes.size ((group+1)*chunkSize) - 1
      let ending := s!"end {proofNamespace}\n"
      writeCompactCertificate s!"{directory}/Data/Chunk{suffix}.lean" (data ++ ending)
      writeCompactCertificate s!"{directory}/Conditional/Chunk{suffix}.lean"
        (conditional ++ s!"#print axioms node{last}_conditional\n" ++ ending)
      writeCompactCertificate s!"{directory}/Compose/Chunk{suffix}.lean"
        (compose ++ s!"#print axioms node{last}_eq\n" ++ ending)
      writeCompactCertificate s!"{directory}/Agreement/Chunk{suffix}.lean"
        (agreement ++ s!"#print axioms output{last}_source\n" ++ ending)
    let last := suffixOf (groups-1)
    writeCompactCertificate s!"{directory}.lean"
      (s!"import {proofNamespace}.Compose.Chunk{last}\nimport {proofNamespace}.Agreement.Chunk{last}\n" ++ header ++
       s!"theorem compiledBody_eq : Flapjack.LoopToWord.compHOL Word.context{index} Loop.output{index}.2.2 ({label},2) =\n" ++
       s!"    (InitECandidate.Proofs.WordStages.{nodes[root]!.candidate}, ({nodes[root]!.finish.1}, {nodes[root]!.finish.2})) := by\n" ++
       s!"  have h := node{root}_eq\n  rw [output{root}_source] at h\n  exact h\n" ++
       s!"#print axioms compiledBody_eq\nend {proofNamespace}\n")
    IO.println s!"Loop-to-Word checkpoints {index}: {nodes.size} nodes, {groups} chunks, root {root}"
    return
  if args.contains "--frontend-word-context" then
    IO.FS.createDirAll "submission/InitECandidate/Proofs/FrontendStages/Word"
    let p0 := panSimpDeclsHOL InitE.sourceDeclarations
    let p1 := Pancake.PanStructs.CompileShapeExact.compileTopExact p0
    let p2 := compileTopExactHOL p1 (Basis.Pure.MlString.ofString "main")
    let p3 := compileProgDeclsHOLW p2
    let p4 := compileProgHOLExact riscvConfig.isa p3
    let index := (args[1]?.bind String.toNat?).getD 649
    let some entry := p4[index]? | throw (IO.userError "Loop output index out of range")
    let assigned := accVarsHOL entry.2.2 (.ln : Spt Unit)
    let vars := Flapjack.LoopToWord.fromNumSetHOL (sptDifference assigned (Flapjack.LoopToWord.toNumSetHOL entry.2.1))
    let context := makeCtxtHOL 2 (entry.2.1 ++ vars) (.ln : Spt Nat)
    let assignedText ← renderWordStage env (toExpr assigned)
    let varsText ← renderWordStage env (toExpr vars)
    let contextText ← renderWordStage env (toExpr context)
    let header := "set_option autoImplicit false\nset_option Elab.async false\n" ++
      "set_option maxRecDepth 1000000\nset_option maxHeartbeats 0\n" ++
      "set_option cbv.maxSteps 1000000000\nset_option cbv.warning false\n" ++
      "open Flapjack\nnamespace InitECandidate.Proofs.FrontendStages.Word\n"
    writeCompactCertificate s!"submission/InitECandidate/Proofs/FrontendStages/Word/Variables{index}.lean"
      (s!"import InitECandidate.Proofs.FrontendStages.Loop.Data{index}\n" ++
       "import InitECandidate.Proofs.WordFrontendComputation\n" ++ header ++
       s!"def assigned{index} : NumSet := {assignedText}\n" ++
       s!"def variables{index} : List Nat := {varsText}\n" ++
       s!"def context{index} : Spt Nat := {contextText}\n" ++
       s!"theorem assigned{index}_eq : accVarsHOL Loop.output{index}.2.2 (.ln : Spt Unit) = assigned{index} := by\n" ++
       "  kernel_rfl\n" ++
       s!"theorem variables{index}_eq : Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output{index}.2.2 (.ln : Spt Unit))\n" ++
       s!"    (Flapjack.LoopToWord.toNumSetHOL Loop.output{index}.2.1)) = variables{index} := by\n" ++
       s!"  rw [assigned{index}_eq]\n  kernel_rfl\n" ++
       s!"theorem context{index}_eq : makeCtxtHOL 2 (Loop.output{index}.2.1 ++\n" ++
       s!"    Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output{index}.2.2 (.ln : Spt Unit)) (Flapjack.LoopToWord.toNumSetHOL Loop.output{index}.2.1)))\n" ++
       s!"    (.ln : Spt Nat) = context{index} := by\n" ++
       s!"  rw [variables{index}_eq]\n  kernel_rfl\n" ++
       s!"#print axioms assigned{index}_eq\n#print axioms variables{index}_eq\n#print axioms context{index}_eq\n" ++
       "end InitECandidate.Proofs.FrontendStages.Word\n")
    return
  if args.contains "--frontend-loop" then
    IO.FS.createDirAll "submission/InitECandidate/Proofs/FrontendStages/Loop"
    let p0 := panSimpDeclsHOL InitE.sourceDeclarations
    let p1 := Pancake.PanStructs.CompileShapeExact.compileTopExact p0
    let p2 := compileTopExactHOL p1 (Basis.Pure.MlString.ofString "main")
    let p3 := compileProgDeclsHOLW p2
    let fs := crepToLoopMakeFuncsExactExecutable p3
    let signatures := p3.map fun f => (f.1, f.2.1, ())
    let text ← renderWordStage env (toExpr signatures)
    let header := "set_option autoImplicit false\nset_option Elab.async false\n" ++
      "set_option maxRecDepth 1000000\nset_option maxHeartbeats 0\n" ++
      "set_option cbv.maxSteps 1000000000\nset_option cbv.warning false\n" ++
      "open Flapjack\nnamespace InitECandidate.Proofs.FrontendStages.Loop\n"
    writeCompactCertificate "submission/InitECandidate/Proofs/FrontendStages/Loop/Context.lean"
      ("import Flapjack.Pancake.CrepToLoop.ContextExact\nimport Lean\n" ++ header ++
       "def signatures : List (Flapjack.Basis.Pure.MlString.MlString × List Nat × Unit) :=\n" ++ text ++
       "\ndef functionMap := crepToLoopMakeFuncsExactExecutable signatures\n" ++
       "end InitECandidate.Proofs.FrontendStages.Loop\n")
    let count := (args.head?.bind String.toNat?).getD 1
    let offset := (args[1]?.bind String.toNat?).getD 0
    for (entry, index) in p3.zipIdx.drop offset |>.take count do
      let body := optimiseHOL (compFuncHOLExact riscvConfig.isa fs entry.2.1
        (crepSimpProgHOL entry.2.2))
      let state ← IO.mkRef ({tag := s!"loopBody{index}_"} : PancakeDataState)
      let text ← loopProgData env state body
      let defs := String.intercalate "\n" (← state.get).lines.toList
      let params ← renderWordStage env (toExpr (List.range entry.2.1.length))
      writeCompactCertificate s!"submission/InitECandidate/Proofs/FrontendStages/Loop/Data{index}.lean"
        ("import InitECandidate.Proofs.FrontendStages.Loop.Context\n" ++ header ++ defs ++
         s!"\ndef output{index} : Nat × List Nat × HolLoopProg 64 :=\n" ++
         s!"  ({index + firstLoopName}, {params}, {text})\n" ++
         "end InitECandidate.Proofs.FrontendStages.Loop\n")
      writeCompactCertificate s!"submission/InitECandidate/Proofs/FrontendStages/Loop/Translate{index}.lean"
        ("import InitECandidate.Proofs.LoopKernelComputation\n" ++ s!"import InitECandidate.Proofs.FrontendStages.Crep.Data{index}\n" ++
         s!"import InitECandidate.Proofs.FrontendStages.Loop.Data{index}\n" ++
         "import Flapjack.Compiler.Encoders.RiscV.Target.Configuration\n" ++ header ++
         s!"theorem translate{index}_eq :\n" ++
         s!"    ({index + firstLoopName}, List.range Crep.output{index}.2.1.length,\n" ++
         s!"      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa\n" ++
         s!"        functionMap Crep.output{index}.2.1 (crepSimpProgHOL Crep.output{index}.2.2))) = output{index} := by\n" ++
         "  rw [InitECandidate.Proofs.LoopKernelComputation.optimiseStructural_eq]\n  kernel_rfl\n" ++
         s!"#print axioms translate{index}_eq\nend InitECandidate.Proofs.FrontendStages.Loop\n")
      IO.println s!"Loop translation {index}: {defs.utf8ByteSize + text.utf8ByteSize} bytes"
    return
  if args.contains "--frontend-crep" then
    IO.FS.createDirAll "submission/InitECandidate/Proofs/FrontendStages/Crep"
    let ds := panSimpDeclsHOL InitE.sourceDeclarations
    let structs := Pancake.PanStructs.CompileShapeExact.compileTopExact ds
    let p2 := compileTopExactHOL structs (Basis.Pure.MlString.ofString "main")
    let functions := Pancake.PanLang.functionsHOL p2
    let fs := makeFuncsExactHOL functions
    let es := getEidsFromDeclsHOL p2
    let signatures := functions.map fun f =>
      (f.1, f.2.1.map (fun p => (p.1, Pancake.PanLang.shapeOfHOL p.2)),
        Pancake.PanLang.shapeOfHOL f.2.2.2)
    let exceptions := (Pancake.PanLang.exceptionsHOL p2).map fun p =>
      (p.1, Pancake.PanLang.shapeOfHOL p.2)
    let signaturesText ← renderWordStage env (toExpr signatures)
    let exceptionsText ← renderWordStage env (toExpr exceptions)
    let header := "set_option autoImplicit false\nset_option Elab.async false\n" ++
      "set_option maxRecDepth 1000000\nset_option maxHeartbeats 0\n" ++
      "set_option cbv.maxSteps 1000000000\nset_option cbv.warning false\n" ++
      "open Flapjack Flapjack.Pancake.PanLang\n" ++
      "namespace InitECandidate.Proofs.FrontendStages.Crep\n"
    writeCompactCertificate "submission/InitECandidate/Proofs/FrontendStages/Crep/Context.lean"
      ("import InitECandidate.Proofs.CrepComputation\n" ++ header ++
       "def signatureData : List (MlS × List (MlS × Shape) × Shape) :=\n" ++ signaturesText ++
       "\ndef exceptionData : List (MlS × Shape) :=\n" ++ exceptionsText ++
       "\ndef functionSkeleton : List (MlS × List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL) :=\n" ++
       "  signatureData.map (fun f => (f.1, f.2.1.map (fun p => (p.1, shapeToHOL p.2)), .skip, shapeToHOL f.2.2))\n" ++
       "def exceptionSkeleton : List (DeclHOL 64) := exceptionData.map (fun p => .exnDecl p.1 (shapeToHOL p.2))\n" ++
       "def functionMap := makeFuncsExactHOL functionSkeleton\n" ++
       "def exceptionMap := getEidsFromDeclsHOL exceptionSkeleton\n" ++
       "end InitECandidate.Proofs.FrontendStages.Crep\n")
    let indices := ds.zipIdx.filter (fun p => Pancake.PanLang.isFunctionHOL p.1) |>.map Prod.snd
    let count := (args.head?.bind String.toNat?).getD 8
    let offset := (args[1]?.bind String.toNat?).getD 0
    for (f, index) in functions.zipIdx.drop offset |>.take count do
      let body := compFuncExactHOLW fs es f.2.1 f.2.2.1
      let state ← IO.mkRef ({tag := s!"crepBody{index}_"} : PancakeDataState)
      let text ← crepProgData env state (crepProgOfHOL body)
      let defs := String.intercalate "\n" (← state.get).lines.toList
      let name ← renderWordStage env (toExpr f.1)
      let params ← renderWordStage env (toExpr (crepVarsHOL f.2.1))
      let sourceRef := if index == 0 then "InitECandidate.Proofs.FrontendStages.generatedMain"
        else s!"InitECandidate.Proofs.FrontendStages.Declarations.globalOutput{indices[index-1]!}"
      writeCompactCertificate s!"submission/InitECandidate/Proofs/FrontendStages/Crep/Data{index}.lean"
        ("import InitECandidate.Proofs.FrontendStages.Crep.Context\n" ++ header ++ defs ++
         s!"\ndef data{index} : CrepProg (BitVec 64) := {text}\n" ++
         s!"def output{index} : MlS × List Nat × CrepProgHOL 64 :=\n" ++
         s!"  ({name}, {params}, crepProgToHOL data{index})\n" ++
         "end InitECandidate.Proofs.FrontendStages.Crep\n")
      let sourceImport := if index == 0 then "import InitECandidate.Proofs.FrontendStages.MainData\n"
        else s!"import InitECandidate.Proofs.FrontendStages.Globals.Output{indices[index-1]!}\n"
      writeCompactCertificate s!"submission/InitECandidate/Proofs/FrontendStages/Crep/Translate{index}.lean"
        ("import InitECandidate.Proofs.CrepKernelComputation\nimport InitECandidate.Proofs.FrontendCodecComputation\n" ++
         (if index == 0 then "import InitECandidate.Proofs.FrontendStages.Globals.KernelContext\n" else "") ++
         sourceImport ++ s!"import InitECandidate.Proofs.FrontendStages.Crep.Data{index}\n" ++ header ++
         s!"theorem translate{index}_eq :\n" ++
         s!"    InitECandidate.Proofs.CrepComputation.compileDeclaration functionMap exceptionMap\n      {sourceRef} = some output{index} := by\n" ++
         "  rw [InitECandidate.Proofs.CrepKernelComputation.compileDeclaration_eq]\n" ++
         (if index == 0 then "  dsimp only [output0]\n" else
           s!"  dsimp only [{sourceRef}, output{index}]\n" ++
           "  rw [InitECandidate.Proofs.FrontendCodecComputation.declToHOL_function_eq]\n") ++
         "  rw [InitECandidate.Proofs.CrepKernelComputation.crepProgToHOL_function_eq]\n" ++
         (if index == 0 then
           "  dsimp only [InitECandidate.Proofs.FrontendStages.generatedMain]\n" ++
           "  rw [InitECandidate.Proofs.FrontendStages.Declarations.globalInitializers_structural_eq]\n"
          else "") ++
         "  dsimp only [functionMap, functionSkeleton, exceptionMap, exceptionSkeleton]\n" ++
         "  rw [InitECandidate.Proofs.FrontendCodecComputation.shapeToHOL_function_eq]\n" ++
         "  kernel_rfl\n" ++
         s!"#print axioms translate{index}_eq\nend InitECandidate.Proofs.FrontendStages.Crep\n")
      IO.println s!"Crep translation {index}: {defs.utf8ByteSize + text.utf8ByteSize} bytes"
    return
  if args.contains "--frontend-globals" then
    IO.FS.createDirAll "submission/InitECandidate/Proofs/FrontendStages/Globals"
    let ds := panSimpDeclsHOL InitE.sourceDeclarations
    let globals := ds.zipIdx.filter (fun p => Pancake.PanLang.isDeclHOL p.1)
    let maxSize := (decShapesHOL ds).map Pancake.PanLang.sizeOfShapeHOL |>.sum
    let initial : PanGlobalsContextExact 64 :=
      { globals := HolFiniteMapExact.empty, globalsSize := 0,
        maxGlobalsSize := cakeBytesInWord 64 * BitVec.ofNat 64 maxSize }
    let context := (compileDecsExactHOL initial (globals.map Prod.fst)).2.2.2
    let start := Basis.Pure.MlString.ofString "main"
    let newStart := newMainNameHOL ds
    let newStartText ← renderWordStage env (toExpr newStart)
    let imports := String.join (globals.map fun p =>
      s!"import InitECandidate.Proofs.FrontendStages.Declarations.Data{p.2}\n")
    let refs := String.intercalate ", " (globals.map fun p => s!"simplified{p.2}")
    writeCompactCertificate "submission/InitECandidate/Proofs/FrontendStages/Globals/Context.lean"
      (imports ++ "import InitECandidate.Proofs.GlobalsComputation\n" ++
       "set_option maxRecDepth 1000000\nset_option maxHeartbeats 0\n" ++
       "namespace InitECandidate.Proofs.FrontendStages.Declarations\nopen Flapjack\n" ++
       s!"def globalDeclarations : List (Pancake.PanLang.DeclHOL 64) := [{refs}]\n" ++
       s!"def globalInitial : PanGlobalsContextExact 64 :=\n" ++
       "  { globals := HolFiniteMapExact.empty, globalsSize := 0,\n" ++
       s!"    maxGlobalsSize := cakeBytesInWord 64 * BitVec.ofNat 64 {maxSize} " ++ "}\n" ++
       "def globalContext : PanGlobalsContextExact 64 :=\n" ++
       "  (compileDecsExactHOL globalInitial globalDeclarations).2.2.2\n" ++
       "def globalStart : Basis.Pure.MlString.MlString := Basis.Pure.MlString.ofString \"main\"\n" ++
       s!"def globalNewStart : Basis.Pure.MlString.MlString := {newStartText}\n" ++
       "end InitECandidate.Proofs.FrontendStages.Declarations\n")
    let count := (args.head?.bind String.toNat?).getD 8
    let offset := (args[1]?.bind String.toNat?).getD 0
    let functionIndices := ds.zipIdx.filter (fun p => Pancake.PanLang.isFunctionHOL p.1) |>.map Prod.snd
    for (d, i) in ds.zipIdx.drop offset |>.take count do
      match d with
      | .function fn =>
        let renamed := {fn with
          name := fpermName start newStart fn.name
          body := fpermHOL start newStart fn.body}
        let output := Pancake.PanLang.DeclHOL.function {renamed with
          body := compileProgExactHOL context renamed.body}
        let state ← IO.mkRef ({tag := s!"globalBody{i}_"} : PancakeDataState)
        let text ← pancakeDeclData env state (Pancake.PanLang.declOfHOL output)
        let defs := String.intercalate "\n" (← state.get).lines.toList
        let previous := ((functionIndices.takeWhile (fun j => j < i)).reverse)[15]?
        let previousImport := match previous with
          | none => ""
          | some j => s!"import InitECandidate.Proofs.FrontendStages.Globals.Translate{j}\n"
        writeCompactCertificate s!"submission/InitECandidate/Proofs/FrontendStages/Globals/Translate{i}.lean"
          (s!"import InitECandidate.Proofs.FrontendStages.Declarations.Data{i}\n" ++
           "import InitECandidate.Proofs.FrontendStages.Globals.KernelContext\n" ++ previousImport ++
           "set_option autoImplicit false\nset_option Elab.async false\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\n" ++
           "set_option cbv.maxSteps 1000000000\nset_option cbv.warning false\n" ++
           "open scoped InitECandidate.Proofs.FrontendComputation\n" ++
           "namespace InitECandidate.Proofs.FrontendStages.Declarations\nopen Flapjack\n" ++ defs ++ "\n" ++
           s!"def globalData{i} : Decl (BitVec 64) :=\n{text}\n" ++
           s!"def globalOutput{i} := Pancake.PanLang.declToHOL globalData{i}\n" ++
           s!"theorem globalTranslate{i}_eq :\n" ++
           s!"    InitECandidate.Proofs.GlobalsComputation.compiledFunction globalContext\n" ++
           s!"      (InitECandidate.Proofs.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified{i}) =\n" ++
           s!"        some globalOutput{i} := by\n" ++
           s!"  dsimp only [simplified{i}, globalOutput{i}]\n" ++
           "  rw [InitECandidate.Proofs.FrontendCodecComputation.declToHOL_function_eq]\n" ++
           "  simp only [InitECandidate.Proofs.GlobalsComputation.compiledFunction, InitECandidate.Proofs.GlobalsComputation.renameDeclaration, InitECandidate.Proofs.GlobalsKernelComputation.compileProg_function_eq, InitECandidate.Proofs.GlobalsKernelComputation.fperm_function_eq]\n" ++
           "  rw [globalContext_structural_eq]\n" ++
           "  kernel_rfl\n" ++
           s!"theorem globalNonGlobal{i} : InitECandidate.Proofs.GlobalsComputation.nonGlobal\n" ++
           s!"    (InitECandidate.Proofs.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified{i}) := by trivial\n" ++
           s!"theorem globalException{i}_eq : InitECandidate.Proofs.GlobalsComputation.exceptionDeclaration\n" ++
           s!"    (InitECandidate.Proofs.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified{i}) = none := by rfl\n" ++
           s!"#print axioms globalTranslate{i}_eq\nend InitECandidate.Proofs.FrontendStages.Declarations\n")
        IO.println s!"Global translation {i}: {defs.utf8ByteSize + text.utf8ByteSize} bytes"
      | _ => pure ()
    return
  if args.contains "--frontend-declarations" then
    IO.FS.createDirAll "submission/InitECandidate/Proofs/FrontendStages/Declarations"
    let count := (args.head?.bind String.toNat?).getD 8
    let offset := (args[1]?.bind String.toNat?).getD 0
    let declarations := if args.contains "--largest" then
      (InitE.sourceDeclarations.zipIdx.toArray.qsort
        (fun a b => declarationWeight a.1 > declarationWeight b.1)).toList
      else InitE.sourceDeclarations.zipIdx
    for (declaration, index) in declarations.drop offset |>.take count do
      let simplified := match declaration with
        | .function fn => Pancake.PanLang.DeclHOL.function {fn with body := panSimpCompileHOL fn.body}
        | d => d
      let bodyState ← IO.mkRef ({tag := s!"body{index}_"} : PancakeDataState)
      let input ← if args.contains "--data-dag" then
        pancakeDeclData env bodyState (Pancake.PanLang.declOfHOL declaration)
        else renderWordStage env (toExpr (Pancake.PanLang.declOfHOL declaration))
      let output ← if args.contains "--data-dag" then
        pancakeDeclData env bodyState (Pancake.PanLang.declOfHOL simplified)
        else renderWordStage env (toExpr (Pancake.PanLang.declOfHOL simplified))
      let bodyDefs := String.intercalate "\n" (← bodyState.get).lines.toList
      let header := "set_option Elab.async false\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\n" ++
        "set_option cbv.maxSteps 1000000000\nset_option cbv.warning false\n" ++
        "open scoped InitECandidate.Proofs.FrontendComputation\n" ++
        "open Flapjack\nnamespace InitECandidate.Proofs.FrontendStages.Declarations\n"
      writeCompactCertificate s!"submission/InitECandidate/Proofs/FrontendStages/Declarations/Data{index}.lean"
        ("import InitECandidate.Proofs.FrontendComputation\n" ++
         (if index < 16 then "" else s!"import InitECandidate.Proofs.FrontendStages.Declarations.Simplify{index - 16}\n") ++
         header ++ bodyDefs ++ "\n" ++
         s!"def originalData{index} : Decl (BitVec 64) :=\n" ++ input ++
         s!"\ndef simplifiedData{index} : Decl (BitVec 64) :=\n" ++ output ++
         s!"\ndef original{index} := Pancake.PanLang.declToHOL originalData{index}\n" ++
         s!"def simplified{index} := Pancake.PanLang.declToHOL simplifiedData{index}\n" ++
         "end InitECandidate.Proofs.FrontendStages.Declarations\n")
      writeCompactCertificate s!"submission/InitECandidate/Proofs/FrontendStages/Declarations/Simplify{index}.lean"
        ("import InitECandidate.Proofs.FrontendCodecComputation\n" ++
         s!"import InitECandidate.Proofs.FrontendStages.Declarations.Data{index}\n" ++ header ++
         s!"theorem simplify{index}_eq : InitECandidate.Proofs.FrontendComputation.simplifyDeclaration original{index} = simplified{index} := by\n" ++
         s!"  change InitECandidate.Proofs.FrontendComputation.simplifyDeclaration (Pancake.PanLang.declToHOL originalData{index}) = Pancake.PanLang.declToHOL simplifiedData{index}\n" ++
         "  simp only [InitECandidate.Proofs.FrontendCodecComputation.declToHOL_eq]\n" ++
         "  kernel_rfl\n" ++
         s!"#print axioms simplify{index}_eq\nend InitECandidate.Proofs.FrontendStages.Declarations\n")
      IO.println s!"Frontend declaration {index}: {input.utf8ByteSize}/{output.utf8ByteSize} bytes"
    return
  if args.contains "--frontend-pancake" then
    IO.FS.createDirAll "work/lean-perf/monolithic-frontend"
    let p0 := panSimpDeclsHOL InitE.sourceDeclarations
    let p1 := Pancake.PanStructs.CompileShapeExact.compileTopExact p0
    let p2 := compileTopExactHOL p1 (Basis.Pure.MlString.ofString "main")
    for (program, index) in [p0, p1, p2].zipIdx do
      let literal ← renderWordStage env (toExpr (program.map Pancake.PanLang.declOfHOL))
      let imp := if index == 0 then "import InitE.SourceDeclarations\n"
        else s!"import InitECandidate.Proofs.FrontendStages.Pass{index-1}\n"
      let expression := match index with
        | 0 => "panSimpDeclsHOL sourceDeclarations"
        | 1 => "Pancake.PanStructs.CompileShapeExact.compileTopExact pass0"
        | _ => "compileTopExactHOL pass1 (Basis.Pure.MlString.ofString \"main\")"
      writeCompactCertificate s!"work/lean-perf/monolithic-frontend/Pass{index}.lean"
        (imp ++ "set_option Elab.async false\nset_option maxRecDepth 1000000\n" ++
         "set_option maxHeartbeats 0\nset_option cbv.maxSteps 1000000000\nset_option cbv.warning false\n" ++
         "open scoped InitECandidate.Proofs.CompilerComputation\nopen Flapjack\nnamespace InitECandidate.Proofs.FrontendStages\n" ++
         s!"def serialized{index} : List (Decl (BitVec 64)) :=\n" ++ literal ++
         s!"\ndef pass{index} : List (Pancake.PanLang.DeclHOL 64) := serialized{index}.map Pancake.PanLang.declToHOL\n" ++
         s!"theorem pass{index}_eq : {expression} = pass{index} := by\n" ++
         "  kernel_rfl\n" ++
         s!"#print axioms pass{index}_eq\nend InitECandidate.Proofs.FrontendStages\n")
      IO.println s!"Pancake frontend proposal {index}: {literal.utf8ByteSize} bytes"
    return
  let source := panToWordCompileProgHOL riscvConfig.isa InitE.sourceDeclarations
  if args.contains "--word-largest" then
    let metrics := source.zipIdx |>.map fun (entry, offset) =>
      (wordStageWeight entry.2.2, entry.1, offset)
    let metrics := metrics.toArray.qsort (fun a b => a.1 > b.1)
    let count := (args.head?.bind String.toNat?).getD 30
    IO.println s!"Word functions: {source.length}"
    for (weight, label, offset) in metrics.toList.take count do
      IO.println s!"label={label} offset={offset} nodes={weight}"
    return
  let colorsOnly := args.contains "--colors-only"
  let certifiedStages := args.contains "--certified-stages"
  let passes := args.contains "--passes" || args.contains "--fused-passes"
  let limit := (args.head?.bind String.toNat?).getD (if colorsOnly then source.length else 1)
  let mut proposedColors : List (Option (Spt Nat)) := []
  let offset := (args[1]?.bind String.toNat?).getD 0
  let config := RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf
  let regs := riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)
  let oracles := (WordToWord.nextNOracle source.length config.colOracle).1
  IO.FS.createDirAll "work/lean-perf/word-stages"
  if certifiedStages || passes then IO.FS.createDirAll "submission/InitECandidate/Proofs/WordStages"
  for (entry, oracle) in (source.zip oracles).drop offset |>.take limit do
    if args.contains "--skip-large" && wordStageWeight entry.2.2 >= 1000 then
      continue
    if args.contains "--source-only" then
      let label := entry.1
      let sourceState ← IO.mkRef ({tag := s!"sourceBody{label}_"} : PancakeDataState)
      let sourceBody ← wordProgData env sourceState entry.2.2
      let sourceDefs := String.intercalate "\n" (← sourceState.get).lines.toList
      writeCompactCertificate s!"submission/InitECandidate/Proofs/WordStages/Source{label}.lean"
        ("import Flapjack.Pancake.WordLang\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\n" ++
         "open Flapjack\nnamespace InitECandidate.Proofs.WordStages\n" ++ sourceDefs ++ "\n" ++
         s!"def source{label} : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=\n" ++
         s!"  ({entry.1}, {entry.2.1}, {sourceBody})\nend InitECandidate.Proofs.WordStages\n")
      IO.println s!"Word source {label}"
      continue
    if args.contains "--preserve-checked" && [64, 240, 713].contains entry.1 then
      continue
    if args.contains "--large-only" && wordStageWeight entry.2.2 < 1000 then
      continue
    let proposal := if args.contains "--dead-checkpoints" || args.contains "--compose-proofs" || args.contains "--allocation-checkpoints" then none else
      let preReg := beforeAllocation entry
      let tree := WordAlloc.getClashTree preReg []
      let forced := WordAlloc.getForced riscvConfig preReg []
      let stackOnly := WordAlloc.getStackOnly preReg
      let (moves, costs) := WordAlloc.getHeuristics config.regAlg entry.1 preReg
      let coloring := WordToWord.selectRegAllocWith RegAlloc.regAllocExecutable
        config.regAlg costs regs moves tree forced stackOnly
      match coloring with
        | .failure _ => none
        | .success color =>
          if (WordAlloc.oracleColourOk regs (some color) tree preReg forced).isSome
          then some color else none
    if args.contains "--allocation-checkpoints" then
      let label := entry.1
      let inputNamespace := if args.contains "--sparse-input" then s!"InitECandidate.Proofs.WordStages.Sparse{label}" else s!"InitECandidate.Proofs.WordStages.Parallel{label}"
      let preReg := beforeAllocation entry
      let tree := WordAlloc.getClashTree preReg []
      let forced := WordAlloc.getForced riscvConfig preReg []
      let (moves, costs) := WordAlloc.getHeuristics config.regAlg label preReg
      let .success colour := WordToWord.selectRegAllocWith RegAlloc.regAllocExecutable
          config.regAlg costs regs moves tree forced (WordAlloc.getStackOnly preReg)
        | throw (IO.userError "allocation failed")
      let state ← IO.mkRef ({} : ClashCheckpointState)
      let root ← clashCheckpoint env state colour tree .ln .ln
      let st ← state.get
      let dir := s!"submission/InitECandidate/Proofs/ClashStages{label}"
      IO.FS.createDirAll dir
      let colourText ← renderWordStage env (toExpr colour)
      let header := "set_option Elab.async false\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nset_option cbv.maxSteps 1000000000\nset_option cbv.warning false\n" ++
        s!"namespace InitECandidate.Proofs.ClashStages{label}\n"
      writeCompactCertificate (dir ++ "/Data.lean") ("import InitECandidate.Proofs.ComputationCache\nimport Flapjack.Compiler.Backend.RegAlloc.ClashTree\n" ++ header ++
        s!"def colour : Flapjack.Spt Nat := {colourText}\n" ++ String.join st.data.toList ++ s!"end InitECandidate.Proofs.ClashStages{label}\n")
      let chunks := (st.next + 95) / 96
      for chunk in List.range chunks do
        let previous := if chunk == 0 then s!"InitECandidate.Proofs.ClashStages{label}.Data" else s!"InitECandidate.Proofs.ClashStages{label}.Proof{chunk-1}"
        writeCompactCertificate (dir ++ s!"/Proof{chunk}.lean") (s!"import {previous}\n" ++ header ++
          String.join (st.proofs.toList.drop (chunk*96) |>.take 96) ++ s!"end InitECandidate.Proofs.ClashStages{label}\n")
      writeCompactCertificate (dir ++ "/Tree.lean") (s!"import InitECandidate.Proofs.ClashStages{label}.Data\nimport {inputNamespace}.Data8\n" ++ header ++
        s!"theorem tree_eq : Flapjack.WordAlloc.getClashTree {inputNamespace}.pass{label}_8 [] = literal{root} := by\n  kernel_rfl\n#print axioms tree_eq\nend InitECandidate.Proofs.ClashStages{label}\n")
      writeCompactCertificate (dir ++ "/Closed.lean") (s!"import InitECandidate.Proofs.ClashStages{label}.Proof{chunks-1}\nimport InitECandidate.Proofs.ClashStages{label}.Tree\n" ++ header ++
        s!"theorem checked : (Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) (Flapjack.WordAlloc.getClashTree {inputNamespace}.pass{label}_8 []) .ln .ln).isSome = true := by\n  rw [tree_eq, ← tree{root}_agree]\n  have h := node{root}_eq\n  change Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree{root} .ln .ln = result{root} at h\n  rw [h]\n  rfl\n#print axioms checked\nend InitECandidate.Proofs.ClashStages{label}\n")
      IO.println s!"Allocation clash checkpoints {label}: {st.next} nodes"
      continue
    proposedColors := proposal :: proposedColors
    if colorsOnly then
      let original := WordToWord.fullCompileSingleWith RegAlloc.regAllocExecutable
        riscvConfig.twoRegArith regs config.regAlg riscvConfig (entry, oracle)
      let checked := WordToWord.fullCompileSingleWith RegAlloc.regAllocExecutable
        riscvConfig.twoRegArith regs config.regAlg riscvConfig (entry, proposal)
      if toExpr original != toExpr checked then
        throw (IO.userError s!"oracle changes Word output for function {entry.1}")
      IO.println s!"{entry.1}: oracle checked; Word output reproduced"
      continue
    if args.contains "--compose-proofs" then
      let label := entry.1
      let file := s!"submission/InitECandidate/Proofs/WordStages/Optimize{label}.lean"
      let original ← IO.FS.readFile file
      let preamble := (original.splitOn s!"theorem optimize{label}_eq").head!
      let preamble := preamble.replace s!"import InitECandidate.Proofs.WordStages.Source{label}\n"
        s!"import InitECandidate.Proofs.WordStages.Source{label}\nimport InitECandidate.Proofs.WordStages.Pass{label}_10\nimport InitECandidate.Proofs.CompilerStages\n"
      let passes := String.intercalate ", " ((List.range 11).map fun n => s!"pass{label}_{n}_eq")
      writeCompactCertificate file (preamble ++
        s!"theorem optimize{label}_eq : WordToWord.fullCompileSingleWith\n" ++
        "  RegAlloc.regAllocExecutable riscvConfig.twoRegArith\n" ++
        "  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))\n" ++
        "  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg\n" ++
        s!"  riscvConfig (source{label}, oracle{label}) = optimized{label} := by\n" ++
        "  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]\n  dsimp only\n" ++
        s!"  have name_eq : source{label}.1 = {label} := by rfl\n" ++
        s!"  have argc_eq : source{label}.2.1 = {entry.2.1} := by rfl\n" ++
        s!"  have oracle_eq : oracle{label} = proposed{label} := by kernel_rfl\n" ++
        s!"  rw [name_eq, argc_eq, oracle_eq, {passes}]\n  kernel_rfl\n" ++
        s!"#print axioms optimize{label}_eq\nend InitECandidate.Proofs.WordStages\n")
      IO.println s!"Composed pass equations for optimizer {label}"
      continue
    if args.contains "--dead-checkpoints" then
      let p0 := WordSimp.compileExp entry.2.2
      let p1 := WordInst.instSelectExecutable riscvConfig (maxVarHOL p0 + 1) p0
      let p2 := WordAlloc.fullSsaCcTrans entry.2.1 p1
      let state ← IO.mkRef ({} : DeadCheckpointState)
      let root ← deadCheckpoint env state p2 .ln [] []
      let st ← state.get
      let label := entry.1
      let directory := s!"submission/InitECandidate/Proofs/DeadStages{label}"
      IO.FS.createDirAll directory
      let header := "import InitECandidate.Proofs.ComputationCache\nimport InitECandidate.Proofs.DeadBranchComputation\nset_option Elab.async false\nset_option maxRecDepth 1000000\n" ++
        "set_option maxHeartbeats 0\nset_option cbv.maxSteps 1000000000\n" ++
        "set_option cbv.warning false\nopen scoped InitECandidate.Proofs.CompilerComputation\n" ++
        s!"namespace InitECandidate.Proofs.DeadStages{label}\n"
      let mut chunk := 0
      let chunkSize := if args.contains "--wide-checkpoints" then 256 else 32
      let mut count := 0
      let mut text := ""
      let mut last := 0
      for line in st.lines do
        text := text ++ line ++ "\n"
        if line.startsWith "@[irreducible, cbv_opaque] def input" then
          count := count + 1
          if count == chunkSize then
            let suffix := String.ofList (List.replicate (3 - (toString chunk).length) '0') ++ toString chunk
            let prev := String.ofList (List.replicate (3 - (toString (chunk-1)).length) '0') ++ toString (chunk-1)
            let imp := if chunk == 0 then "import InitECandidate.Proofs.CompilerComputation\n"
              else s!"import InitECandidate.Proofs.DeadStages{label}.Chunk{prev}\n"
            writeCompactCertificate s!"{directory}/Chunk{suffix}.lean"
              (imp ++ header ++ text ++ s!"#print axioms node{last+count-1}_eq\nend InitECandidate.Proofs.DeadStages{label}\n")
            last := last + count
            chunk := chunk + 1
            count := 0
            text := ""
      if !text.isEmpty then
        let suffix := String.ofList (List.replicate (3 - (toString chunk).length) '0') ++ toString chunk
        let prev := String.ofList (List.replicate (3 - (toString (chunk-1)).length) '0') ++ toString (chunk-1)
        let imp := if chunk == 0 then "import InitECandidate.Proofs.CompilerComputation\n"
          else s!"import InitECandidate.Proofs.DeadStages{label}.Chunk{prev}\n"
        writeCompactCertificate s!"{directory}/Chunk{suffix}.lean"
          (imp ++ header ++ text ++ s!"#print axioms node{root}_eq\nend InitECandidate.Proofs.DeadStages{label}\n")
      else
        chunk := chunk - 1
      let suffix := String.ofList (List.replicate (3 - (toString chunk).length) '0') ++ toString chunk
      writeCompactCertificate s!"submission/InitECandidate/Proofs/DeadStages{label}.lean"
        (s!"import InitECandidate.Proofs.DeadStages{label}.Chunk{suffix}\n\n#print axioms InitECandidate.Proofs.DeadStages{label}.node{root}_eq\n")
      let inputEquations := String.intercalate ", " ((List.range st.next).map fun i => s!"InitECandidate.Proofs.DeadStages{label}.input{i}_def")
      let outputEquations := String.intercalate ", " ((List.range st.next).map fun i => s!"InitECandidate.Proofs.DeadStages{label}.output{i}_def")
      let emptyLive := st.values[toExpr (Spt.ln : NumSet)]!
      let emptyStores := st.values[toExpr ([] : List WordStoreHOL)]!
      let emptyLoops := st.values[toExpr ([] : List (NumSet × NumSet))]!
      let bridgePath := s!"submission/InitECandidate/Proofs/WordStages/Pass{label}_3.lean"
      if ← System.FilePath.pathExists bridgePath then
        let original ← IO.FS.readFile bridgePath
        let bridgeText := ((original.splitOn "private theorem checkpoint_input_eq").head!).splitOn
          s!"theorem pass{label}_3_eq" |>.head!
        let bridgeText := (bridgeText.replace "set_option cbv.warning false\n" "set_option cbv.warning false\nset_option linter.unusedSimpArgs false\n").replace s!"import InitECandidate.Proofs.WordStages.Pass{label}_2\n"
          s!"import InitECandidate.Proofs.WordStages.Pass{label}_2\nimport InitECandidate.Proofs.DeadStages{label}\n"
        let bridgeText := bridgeText.replace s!"import InitECandidate.Proofs.DeadStages{label}\nimport InitECandidate.Proofs.DeadStages{label}\n"
          s!"import InitECandidate.Proofs.DeadStages{label}\n"
        writeCompactCertificate bridgePath (bridgeText ++
          s!"private theorem checkpoint_input_eq : pass{label}_2 = InitECandidate.Proofs.DeadStages{label}.input{root} := by\n  simp only [{inputEquations}]\n  kernel_rfl\n" ++
          s!"private theorem checkpoint_output_eq : InitECandidate.Proofs.DeadStages{label}.output{root} = pass{label}_3 := by\n  simp only [{outputEquations}]\n  kernel_rfl\n" ++
          s!"theorem pass{label}_3_eq : WordAlloc.removeDeadProg pass{label}_2 = pass{label}_3 := by\n" ++
          "  unfold WordAlloc.removeDeadProg\n" ++
          "  rw [WordAlloc.removeDeadStructural_eq, checkpoint_input_eq]\n" ++
          s!"  have checked := InitECandidate.Proofs.DeadStages{label}.node{root}_eq\n" ++
          s!"  simp only [InitECandidate.Proofs.DeadStages{label}.{emptyLive}, InitECandidate.Proofs.DeadStages{label}.{emptyStores}, InitECandidate.Proofs.DeadStages{label}.{emptyLoops}] at checked\n" ++
          "  rw [checked]\n" ++
          s!"  exact checkpoint_output_eq\n#print axioms pass{label}_3_eq\nend InitECandidate.Proofs.WordStages\n")
      IO.println s!"Dead checkpoints {entry.1}: {st.next}; root {root}"
      continue
    if passes then
      let label := entry.1
      let p0 := WordSimp.compileExp entry.2.2
      let p1 := WordInst.instSelectExecutable riscvConfig (maxVarHOL p0 + 1) p0
      let p2 := WordAlloc.fullSsaCcTrans entry.2.1 p1
      let p3 := WordAlloc.removeDeadProg p2
      let p4 := WordCse.wordCommonSubexpElim p3
      let p5 := WordCopy.copyProp p4
      let p6 := WordInst.threeToTwoRegProg riscvConfig.twoRegArith p5
      let p7 := WordUnreach.removeUnreach p6
      let p8 := WordAlloc.removeDeadProg p7
      let p9 := WordToWord.wordAllocWith RegAlloc.regAllocExecutable label riscvConfig config.regAlg regs p8 proposal
      let p10 := WordRemove.removeMustTerminate p9
      let programs := [p0,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10]
      let fused := args.contains "--fused-passes"
      let mut fusedText := s!"import InitECandidate.Proofs.WordStages.Source{label}\nimport InitECandidate.Proofs.CompilerComputation\nimport InitECandidate.Proofs.CompilerStages\nimport InitECandidate.Proofs.ClashComputation\nimport InitECandidate.Proofs.ComputationCache\n" ++
        "set_option Elab.async false\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nset_option cbv.maxSteps 1000000000\nset_option cbv.warning false\n" ++
        "open scoped InitECandidate.Proofs.CompilerComputation InitECandidate.Proofs.ClashComputation\nopen Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target\nopen InitECandidate.Proofs.WordStages\n" ++
        s!"namespace InitECandidate.Proofs.WordStages.Fused{label}\n"
      for (program, index) in programs.zipIdx do
        let prev := if index == 0 then s!"source{label}.2.2" else s!"pass{label}_{index-1}"
        let imports := if index == 0 then s!"import InitECandidate.Proofs.WordStages.Source{label}\n"
          else s!"import InitECandidate.Proofs.WordStages.Pass{label}_{index-1}\n"
        let expression := match index with
          | 0 => s!"WordSimp.compileExp ({prev})"
          | 1 => s!"WordInst.instSelectExecutable riscvConfig (maxVarHOL ({prev}) + 1) ({prev})"
          | 2 => s!"WordAlloc.fullSsaCcTrans {entry.2.1} ({prev})"
          | 3 => s!"WordAlloc.removeDeadProg ({prev})"
          | 4 => s!"WordCse.wordCommonSubexpElim ({prev})"
          | 5 => s!"WordCopy.copyProp ({prev})"
          | 6 => s!"WordInst.threeToTwoRegProg riscvConfig.twoRegArith ({prev})"
          | 7 => s!"WordUnreach.removeUnreach ({prev})"
          | 8 => s!"WordAlloc.removeDeadProg ({prev})"
          | 9 => s!"WordToWord.wordAllocWith RegAlloc.regAllocExecutable {label} riscvConfig RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) ({prev}) proposed{label}"
          | _ => s!"WordRemove.removeMustTerminate ({prev})"
        let colorText ← if index == 9 then renderWordStage env (toExpr proposal) else pure ""
        let colorDef := if index == 9 then s!"def proposed{label} : Option (Spt Nat) :=\n" ++ colorText ++ "\n" else ""
        -- RISC-V has `twoRegArith = false`, so pass 6 is exactly its input.
        -- Reusing pass 5 avoids emitting and kernel-checking another full AST.
        if index == 6 && !fused then
          writeCompactCertificate s!"submission/InitECandidate/Proofs/WordStages/Pass{label}_6.lean"
            (imports ++ "import InitECandidate.Proofs.CompilerComputation\n" ++
             "open scoped InitECandidate.Proofs.CompilerComputation\n" ++
             "open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target\n" ++
             "namespace InitECandidate.Proofs.WordStages\n" ++
             s!"def pass{label}_6 : WordLangProgHOL (BitVec 64) := pass{label}_5\n" ++
             s!"theorem pass{label}_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith pass{label}_5 = pass{label}_6 := by\n" ++
             s!"  simp only [WordInst.threeToTwoRegProg, riscvConfig, Bool.false_eq_true, if_false, pass{label}_6]\n" ++
             s!"#print axioms pass{label}_6_eq\nend InitECandidate.Proofs.WordStages\n")
          continue
        let dataState ← IO.mkRef ({tag := s!"word{label}_{index}_"} : PancakeDataState)
        let text ← if args.contains "--word-data-dag" then wordProgData env dataState program
          else renderWordStage env (toExpr program)
        let dataDefs := String.intercalate "\n" (← dataState.get).lines.toList
        if fused then
          fusedText := fusedText ++ colorDef ++ dataDefs ++ "\n" ++
            s!"def pass{label}_{index} : WordLangProgHOL (BitVec 64) := (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) ({text})).val\n" ++
            s!"theorem pass{label}_{index}_def : pass{label}_{index} = ({text}) := InitECandidate.Proofs.ComputationCache.boxedValue_eq _\n" ++
            s!"theorem pass{label}_{index}_eq : {expression} = pass{label}_{index} := by\n  rw [pass{label}_{index}_def]\n" ++
            (if index == 0 then "" else s!"  rw [pass{label}_{index-1}_def]\n") ++
            (if index == 2 then "  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]\n" else "") ++
            "  kernel_rfl\n" ++ s!"#print axioms pass{label}_{index}_eq\n"
          continue
        writeCompactCertificate s!"submission/InitECandidate/Proofs/WordStages/Pass{label}_{index}.lean"
          (imports ++ "import InitECandidate.Proofs.CompilerComputation\n" ++
           "set_option Elab.async false\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\n" ++
           "set_option cbv.maxSteps 1000000000\nset_option cbv.warning false\n" ++
           "open scoped InitECandidate.Proofs.CompilerComputation\n" ++
           "open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target\n" ++
           "namespace InitECandidate.Proofs.WordStages\n" ++ colorDef ++ dataDefs ++ "\n" ++
           s!"def pass{label}_{index} : WordLangProgHOL (BitVec 64) :=\n" ++ text ++
           s!"\ntheorem pass{label}_{index}_eq : {expression} = pass{label}_{index} := by\n" ++
           (if index == 2 then "  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]\n" else "") ++
           "  kernel_rfl\n" ++
           s!"#print axioms pass{label}_{index}_eq\nend InitECandidate.Proofs.WordStages\n")
        IO.println s!"Pass proposal {label}/{index}: {dataDefs.utf8ByteSize + text.utf8ByteSize} bytes"
      if fused then
        let equations := String.intercalate ", " ((List.range 11).map fun n => s!"pass{label}_{n}_eq")
        fusedText := fusedText ++
          s!"theorem compiled_eq : WordToWord.fullCompileSingleWith RegAlloc.regAllocExecutable riscvConfig.twoRegArith (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg riscvConfig (source{label}, proposed{label}) = ({label}, {entry.2.1}, pass{label}_10) := by\n" ++
          "  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]\n  dsimp only\n" ++
          s!"  have name_eq : source{label}.1 = {label} := by rfl\n  have argc_eq : source{label}.2.1 = {entry.2.1} := by rfl\n  rw [name_eq, argc_eq, {equations}]\n  try rfl\n#print axioms compiled_eq\nend InitECandidate.Proofs.WordStages.Fused{label}\n"
        writeCompactCertificate s!"submission/InitECandidate/Proofs/WordStages/Fused{label}.lean" fusedText
        IO.println s!"Fused opaque optimizer proposal {label}: {fusedText.utf8ByteSize} bytes"
      continue
    if certifiedStages then
      let label := entry.1
      let sourceState ← IO.mkRef ({tag := s!"sourceBody{label}_"} : PancakeDataState)
      let sourceBody ← if args.contains "--word-data-dag" then wordProgData env sourceState entry.2.2
        else renderWordStage env (toExpr entry.2.2)
      let text := s!"({entry.1}, {entry.2.1}, {sourceBody})"
      let sourceDefs := String.intercalate "\n" (← sourceState.get).lines.toList
      let optimized := WordToWord.fullCompileSingleWith RegAlloc.regAllocExecutable
        riscvConfig.twoRegArith regs config.regAlg riscvConfig (entry, proposal)
      let optimizedState ← IO.mkRef ({tag := s!"optimizedBody{label}_"} : PancakeDataState)
      let optimizedBody ← if args.contains "--word-data-dag" then wordProgData env optimizedState optimized.2.2
        else renderWordStage env (toExpr optimized.2.2)
      let optimizedText := s!"({optimized.1}, {optimized.2.1}, {optimizedBody})"
      let optimizedDefs := String.intercalate "\n" (← optimizedState.get).lines.toList
      let oracleText ← renderWordStage env (toExpr proposal)
      unless args.contains "--optimized-only" do
        writeCompactCertificate s!"submission/InitECandidate/Proofs/WordStages/Source{label}.lean"
          ("import Flapjack.Pancake.WordLang\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\n" ++
           "open Flapjack\nnamespace InitECandidate.Proofs.WordStages\n" ++ sourceDefs ++ "\n" ++
           s!"def source{label} : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=\n" ++ text ++
           "\nend InitECandidate.Proofs.WordStages\n")
      writeCompactCertificate s!"submission/InitECandidate/Proofs/WordStages/Optimize{label}.lean"
        (s!"import InitECandidate.Proofs.WordStages.Source{label}\n" ++
         "import InitECandidate.Proofs.CompilerComputation\n" ++
         "set_option Elab.async false\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\n" ++
         "set_option cbv.maxSteps 1000000000\nset_option cbv.warning false\n" ++
         "open scoped InitECandidate.Proofs.CompilerComputation\n" ++
         "open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target\n" ++
         "namespace InitECandidate.Proofs.WordStages\n" ++ optimizedDefs ++ "\n" ++
         s!"def oracle{label} : Option (Spt Nat) :=\n" ++ oracleText ++
         s!"\ndef optimized{label} : Nat × Nat × WordLangProgHOL (BitVec 64) :=\n" ++ optimizedText ++
         s!"\ntheorem optimize{label}_eq : WordToWord.fullCompileSingleWith\n" ++
         "  RegAlloc.regAllocExecutable riscvConfig.twoRegArith\n" ++
         "  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))\n" ++
         "  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg\n" ++
         s!"  riscvConfig (source{label}, oracle{label}) = optimized{label} := by\n" ++
         -- Function 79's complete exported replay is faster without checkpoints.
         -- Keep this measured exception narrow; larger functions may need them.
         (if label == 79 then "  kernel_rfl\n" else
           "  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]\n  dsimp only\n" ++
           "  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]\n  kernel_rfl\n") ++
         s!"#print axioms optimize{label}_eq\nend InitECandidate.Proofs.WordStages\n")
      IO.println s!"Certified-stage proposal {label}: {sourceDefs.utf8ByteSize + text.utf8ByteSize}/{optimizedDefs.utf8ByteSize + optimizedText.utf8ByteSize} bytes"
      continue
    let text ← renderWordStage env (toExpr entry)
    if text.contains '⋯' then
      throw (IO.userError "incomplete pretty-printer output")
    let file := s!"work/lean-perf/word-stages/Source{entry.1}.lean"
    writeCompactCertificate file ("import InitE.SourceDeclarations\n\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\n\nnamespace InitECandidate.Proofs.WordStages\n" ++
      s!"def source{entry.1} : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=\n" ++
      text ++ "\nend InitECandidate.Proofs.WordStages\n")
    let preReg := beforeAllocation entry
    let tree := WordAlloc.getClashTree preReg []
    let forced := WordAlloc.getForced riscvConfig preReg []
    let stackOnly := WordAlloc.getStackOnly preReg
    let (moves, costs) := WordAlloc.getHeuristics config.regAlg entry.1 preReg
    let coloring := WordToWord.selectRegAllocWith RegAlloc.regAllocExecutable
      config.regAlg costs regs moves tree forced stackOnly
    match coloring with
    | .failure _ => IO.println s!"{entry.1}: allocation failed"
    | .success color =>
      let checked := WordAlloc.oracleColourOk regs (some color) tree preReg forced
      IO.println s!"{entry.1}: coloring oracle accepted = {checked.isSome}"
      let oracleFile := s!"work/lean-perf/word-stages/Color{entry.1}.lean"
      let colorText ← renderWordStage env (toExpr color)
      writeCompactCertificate oracleFile ("import InitE.SourceDeclarations\n" ++
        "namespace InitECandidate.Proofs.WordStages\n" ++
        s!"def color{entry.1} : Flapjack.Spt Nat :=\n" ++ colorText ++ "\nend InitECandidate.Proofs.WordStages\n")
    let optimized := WordToWord.fullCompileSingleWith RegAlloc.regAllocExecutable
      riscvConfig.twoRegArith regs config.regAlg riscvConfig (entry, oracle)
    let optimizedText ← renderWordStage env (toExpr optimized)
    let oracleText ← renderWordStage env (toExpr oracle)
    if optimizedText.contains '⋯' || oracleText.contains '⋯' then
      throw (IO.userError "incomplete optimizer pretty-printer output")
    let proofFile := s!"work/lean-perf/word-stages/Optimize{entry.1}.lean"
    writeCompactCertificate proofFile ("import InitECandidate.Proofs.CompilerComputation\n" ++
      "import InitE.SourceDeclarations\n\n" ++
      "set_option maxRecDepth 1000000\nset_option maxHeartbeats 0\n" ++
      "set_option cbv.maxSteps 1000000000\nopen scoped InitECandidate.Proofs.CompilerComputation\n" ++
      "open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target\n" ++
      "namespace InitECandidate.Proofs.WordStages\n" ++
      s!"def source{entry.1} : Nat × Nat × WordLangProgHOL (BitVec 64) :=\n" ++ text ++
      s!"\ndef oracle{entry.1} : Option (Spt Nat) :=\n" ++ oracleText ++
      s!"\ndef optimized{entry.1} : Nat × Nat × WordLangProgHOL (BitVec 64) :=\n" ++ optimizedText ++
      s!"\ntheorem optimize{entry.1}_eq : WordToWord.fullCompileSingleWith\n" ++
      "  RegAlloc.regAllocExecutable riscvConfig.twoRegArith\n" ++
      "  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))\n" ++
      "  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg\n" ++
      s!"  riscvConfig (source{entry.1}, oracle{entry.1}) = optimized{entry.1} := by\n" ++
      "  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]\n  dsimp only\n" ++
      "  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]\n  kernel_rfl\n" ++
      s!"#print axioms optimize{entry.1}_eq\nend InitECandidate.Proofs.WordStages\n")
    IO.println s!"{file}: {text.utf8ByteSize} bytes; optimized: {optimizedText.utf8ByteSize} bytes"
  if colorsOnly then
    let text ← renderWordStage env (toExpr proposedColors.reverse)
    if text.contains '⋯' then throw (IO.userError "incomplete oracle-list output")
    writeCompactCertificate "work/lean-perf/word-stages/AllocationOracles.lean"
      ("import InitECandidate.Proofs.CompilerOracles\n\nset_option maxRecDepth 1000000\n" ++
       "set_option maxHeartbeats 0\nnamespace InitE\nopen InitECandidate.Proofs\n" ++
       "-- Native proposals, checked by the compiler's oracle validator in subsequent proofs.\n" ++
       "def allocationOracles : List (Option (Flapjack.Spt Nat)) :=\n" ++ text ++ "\nend InitE\n")
    IO.println s!"Proposed allocation oracles: {proposedColors.length}; accepted: {(proposedColors.filter Option.isSome).length}; {text.utf8ByteSize} bytes"
  IO.println s!"Source functions: {source.length}"
