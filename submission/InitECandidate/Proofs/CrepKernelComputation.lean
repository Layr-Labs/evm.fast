import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.CrepComputation
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.CrepKernelComputation
open Flapjack Flapjack.Pancake.PanLang
mutual
  def compileExpExactHOLW {width : Nat} {contextWidth : Nat} [NeZero width] [NeZero contextWidth]
      (context : PanToCrepContextExact contextWidth) :
      (expression : Flapjack.Pancake.PanLang.ExpHOL width) →
        List (CrepExpHOL width) × Flapjack.Pancake.PanLang.ShapeHOL
    | .const value => ([.const value], .one)
    | .var .local name =>
        match context.vars.lookup name with
        | some (shape, names) => (names.map .var, shape)
        | none => ([.const (0 : BitVec width)], .one)
    | .var .global _ => ([.const (0 : BitVec width)], .one)
    | .rstruct expressions =>
        let compiled := compileExpExactHOLWList context expressions
        (compiled.flatMap Prod.fst, .comb (compiled.map Prod.snd))
    | .rfield index expression =>
        let compiled := compileExpExactHOLW context expression
        match compiled.2 with
        | .comb shapes => compFieldHOL index shapes compiled.1
        | _ => ([.const (0 : BitVec width)], .one)
    | .nstruct _ _ => ([.const (0 : BitVec width)], .one)
    | .nfield _ _ => ([.const (0 : BitVec width)], .one)
    | .load shape expression =>
        match compileExpExactHOLW context expression with
        | (address :: _, _) =>
            (loadShapeBytesHOLW (0 : BitVec width)
              (Flapjack.Pancake.PanLang.sizeOfShapeHOL shape) address, shape)
        | ([], _) => ([.const (0 : BitVec width)], .one)
    | .load32 expression =>
        match compileExpExactHOLW context expression with
        | (address :: _, .one) => ([.load32 address], .one)
        | _ => ([.const (0 : BitVec width)], .one)
    | .loadByte expression =>
        match compileExpExactHOLW context expression with
        | (address :: _, .one) => ([.loadByte address], .one)
        | _ => ([.const (0 : BitVec width)], .one)
    | .op operator expressions =>
        match cexpHeads (compileExpExactHOLWList context expressions |>.map Prod.fst) with
        | some expressions => ([.op operator expressions], .one)
        | none => ([.const (0 : BitVec width)], .one)
    | .panop operator expressions =>
        match cexpHeads (compileExpExactHOLWList context expressions |>.map Prod.fst) with
        | some expressions => ([.crepOp (compilePanOp operator) expressions], .one)
        | none => ([.const (0 : BitVec width)], .one)
    | .cmp operator left right =>
        match compileExpExactHOLW context left, compileExpExactHOLW context right with
        | (left :: _, _), (right :: _, _) => ([.cmp operator left right], .one)
        | _, _ => ([.const (0 : BitVec width)], .one)
    | .shift operator left right =>
        match compileExpExactHOLW context left, compileExpExactHOLW context right with
        | (left :: _, _), (right :: _, _) => ([.shift operator left right], .one)
        | _, _ => ([.const (0 : BitVec width)], .one)
    | .baseAddr => ([.baseAddr], .one)
    | .topAddr => ([.topAddr], .one)
    | .bytesInWord => ([.const (BitVec.ofNat width (width / 8))], .one)
  termination_by structural expression => expression
  def compileExpExactHOLWList {width : Nat} {contextWidth : Nat} [NeZero width] [NeZero contextWidth]
      (context : PanToCrepContextExact contextWidth) :
      (expressions : List (Flapjack.Pancake.PanLang.ExpHOL width)) →
        List (List (CrepExpHOL width) × Flapjack.Pancake.PanLang.ShapeHOL)
    | [] => []
    | expression :: expressions =>
        compileExpExactHOLW context expression ::
          compileExpExactHOLWList context expressions
  termination_by structural expressions => expressions
end

theorem structuralExpList_eq_map {width contextWidth : Nat} [NeZero width] [NeZero contextWidth]
    (context : PanToCrepContextExact contextWidth) (xs : List (ExpHOL width)) :
    compileExpExactHOLWList context xs = xs.map (compileExpExactHOLW context) := by
  induction xs with
  | nil => simp only [compileExpExactHOLWList, List.map_nil]
  | cons x xs ih => simp only [compileExpExactHOLWList, List.map_cons, ih]

theorem originalExpList_eq_map {width contextWidth : Nat} [NeZero width] [NeZero contextWidth]
    (context : PanToCrepContextExact contextWidth) (xs : List (ExpHOL width)) :
    Flapjack.compileExpExactHOLWList context xs = xs.map (Flapjack.compileExpExactHOLW context) := by
  induction xs with
  | nil => simp only [Flapjack.compileExpExactHOLWList, List.map_nil]
  | cons x xs ih => simp only [Flapjack.compileExpExactHOLWList, List.map_cons, ih]

theorem compileExp_eq {width contextWidth : Nat} [NeZero width] [NeZero contextWidth]
    (e : ExpHOL width) (context : PanToCrepContextExact contextWidth) :
    Flapjack.compileExpExactHOLW context e = compileExpExactHOLW context e := by
  induction e using (measure (sizeOf : ExpHOL width → Nat)).wf.induction generalizing context with
  | h e ih =>
    change ∀ child, sizeOf child < sizeOf e → ∀ context,
      Flapjack.compileExpExactHOLW context child = compileExpExactHOLW context child at ih
    have mapped (xs : List (ExpHOL width))
        (bounds : ∀ x ∈ xs, sizeOf x < sizeOf e) :
        Flapjack.compileExpExactHOLWList context xs = xs.map (compileExpExactHOLW context) := by
      rw [originalExpList_eq_map]
      apply List.map_congr_left
      intro x member
      exact ih x (bounds x member) context
    cases e
    case rstruct xs =>
      simp only [Flapjack.compileExpExactHOLW, compileExpExactHOLW, structuralExpList_eq_map]
      rw [mapped xs (by intros; sizeOf_list_dec)]
      try rfl
    case op operator xs =>
      simp only [Flapjack.compileExpExactHOLW, compileExpExactHOLW, structuralExpList_eq_map]
      rw [mapped xs (by intros; sizeOf_list_dec)]
      try rfl
    case panop operator xs =>
      simp only [Flapjack.compileExpExactHOLW, compileExpExactHOLW, structuralExpList_eq_map]
      rw [mapped xs (by intros; sizeOf_list_dec)]
      try rfl
    case rfield index child =>
      simp only [Flapjack.compileExpExactHOLW, compileExpExactHOLW]
      rw [ih child (by decreasing_trivial)]
      try rfl
    case load shape child =>
      simp only [Flapjack.compileExpExactHOLW, compileExpExactHOLW]
      rw [ih child (by decreasing_trivial)]
      try rfl
    case load32 child =>
      simp only [Flapjack.compileExpExactHOLW, compileExpExactHOLW]
      rw [ih child (by decreasing_trivial)]
      try rfl
    case loadByte child =>
      simp only [Flapjack.compileExpExactHOLW, compileExpExactHOLW]
      rw [ih child (by decreasing_trivial)]
      try rfl
    case cmp operator left right =>
      simp only [Flapjack.compileExpExactHOLW, compileExpExactHOLW]
      rw [ih left (by decreasing_trivial), ih right (by decreasing_trivial)]
      try rfl
    case shift operator left right =>
      simp only [Flapjack.compileExpExactHOLW, compileExpExactHOLW]
      rw [ih left (by decreasing_trivial), ih right (by decreasing_trivial)]
      try rfl
    case var kind name => cases kind <;> simp only [Flapjack.compileExpExactHOLW, compileExpExactHOLW] <;> rfl
    all_goals simp only [Flapjack.compileExpExactHOLW, compileExpExactHOLW]
    all_goals rfl

theorem compileExp_function_eq : @Flapjack.compileExpExactHOLW = @compileExpExactHOLW := by
  funext width contextWidth inst instContext context e
  exact compileExp_eq e context

theorem compileExpList_function_eq : @Flapjack.compileExpExactHOLWList = @compileExpExactHOLWList := by
  funext width contextWidth inst instContext context xs
  simp only [originalExpList_eq_map, structuralExpList_eq_map, compileExp_function_eq]

#print axioms compileExp_function_eq
#print axioms compileExpList_function_eq


/-! Clause evaluators using the checked structural expression computation. -/
def compileReturnExactHOLW {width : Nat} [NeZero width]
    (context : PanToCrepContextExact width)
    (expression : Flapjack.Pancake.PanLang.ExpHOL width) : CrepProgHOL width :=
  let (expressions, shape) := compileExpExactHOLW context expression
  if Flapjack.Pancake.PanLang.sizeOfShapeHOL shape = 0 then .return []
  else .return expressions

/-! These helpers expose the paired `Store32`/`StoreByte` equations from
    `compile_def` (`pan_to_crepScript.sml:185-192`). Each emits its target
    instruction only when both recursively compiled expression lists have a
    head, otherwise returning `Skip` as HOL does. They remain untagged slices. -/

def compileStore32ExactHOLW {width : Nat} [NeZero width]
    (context : PanToCrepContextExact width)
    (destination source : Flapjack.Pancake.PanLang.ExpHOL width) : CrepProgHOL width :=
  match compileExpExactHOLW context destination, compileExpExactHOLW context source with
  | (address :: _, _), (value :: _, _) => .store32 address value
  | _, _ => .skip

def compileStoreByteExactHOLW {width : Nat} [NeZero width]
    (context : PanToCrepContextExact width)
    (destination source : Flapjack.Pancake.PanLang.ExpHOL width) : CrepProgHOL width :=
  match compileExpExactHOLW context destination, compileExpExactHOLW context source with
  | (address :: _, _), (value :: _, _) => .storeByte address value
  | _, _ => .skip

/-! The `If` and `While` equations from `compile_def`
    (`pan_to_crepScript.sml:209-218`). The target branches/body are explicit
    recursive results; each helper keeps only the head of the exact compiled
    condition and returns `Skip` when no condition head exists. These are
    equation slices, not the assembled recursive compiler. -/

def compileIfExactHOLW {width : Nat} [NeZero width]
    (context : PanToCrepContextExact width)
    (condition : Flapjack.Pancake.PanLang.ExpHOL width)
    (thenBranch elseBranch : CrepProgHOL width) : CrepProgHOL width :=
  match compileExpExactHOLW context condition with
  | (condition :: _, _) => .ite condition thenBranch elseBranch
  | ([], _) => .skip

def compileWhileExactHOLW {width : Nat} [NeZero width]
    (context : PanToCrepContextExact width)
    (condition : Flapjack.Pancake.PanLang.ExpHOL width)
    (body : CrepProgHOL width) : CrepProgHOL width :=
  match compileExpExactHOLW context condition with
  | (condition :: _, _) => .while condition body
  | ([], _) => .skip

/-! Two constant `Skip` equations from `compile_def`: Global Assign
    (`pan_to_crepScript.sml:163`) and Global ShMemLoad (line 305). They are
    explicit untagged slices; their source/context inputs are retained while
    the compiled result is independent of them, exactly as in HOL. -/

def compileGlobalAssignExactHOLW {width : Nat} [NeZero width]
    (_context : PanToCrepContextExact width) (_name : MlS)
    (_expression : Flapjack.Pancake.PanLang.ExpHOL width) : CrepProgHOL width := .skip

def compileGlobalShMemLoadExactHOLW {width : Nat} [NeZero width]
    (_context : PanToCrepContextExact width) (_operator : OpSize) (_name : MlS)
    (_address : Flapjack.Pancake.PanLang.ExpHOL width) : CrepProgHOL width := .skip

/-! The `Assign Local` clause from `compile_def`
    (`pan_to_crepScript.sml:153-162`). It preserves the destination-name
    lookup and compiled-list length checks. When destination variables do not
    occur in the right-hand expressions, assignments are emitted directly;
    otherwise HOL first copies through fresh `vmax + SUC i` temporaries. -/

def compileLocalAssignExactHOLW {width : Nat} [NeZero width]
    (context : PanToCrepContextExact width) (name : MlS)
    (expression : Flapjack.Pancake.PanLang.ExpHOL width) : CrepProgHOL width :=
  let (expressions, _shape) := compileExpExactHOLW context expression
  match context.vars.lookup name with
  | none => .skip
  | some (_shape, names) =>
      if names.length != expressions.length then .skip
      else
        let expressionVars := expressions.flatMap fun compiled =>
          crepExpVarsW (crepExpOfHOL compiled)
        if distinctListsHol names expressionVars then
          crepNestedSeqHOL (List.zipWith CrepProgHOL.assign names expressions)
        else
          let temporaries := (List.range names.length).map
            (fun index => context.vmax + index + 1)
          let assignments := List.zipWith CrepProgHOL.assign names
            (temporaries.map CrepExpHOL.var)
          nestedDecsHOL temporaries expressions (crepNestedSeqHOL assignments)

/-! The local `Primitive` destination equation from `compile_def`
    (`pan_to_crepScript.sml:165-175`). HOL flattens every argument's compiled
    expression list, allocates one fresh temporary per flattened value, then
    wraps the target primitive in `nested_decs`. -/

def compilePrimitiveExactHOLW {width : Nat} [NeZero width]
    (context : PanToCrepContextExact width) (name : MlS) (operator : PrimOp)
    (arguments : List (Flapjack.Pancake.PanLang.ExpHOL width)) : CrepProgHOL width :=
  let values := (compileExpExactHOLWList context arguments).flatMap Prod.fst
  match context.vars.lookup name with
  | none => .skip
  | some (_shape, names) =>
      let temporaries := (List.range values.length).map
        (fun index => context.vmax + index + 1)
      nestedDecsHOL temporaries values (.primitive names operator temporaries)

/-! The recursive `Store` clause from `compile_def`
    (`pan_to_crepScript.sml:177-185`). The address must compile to a head;
    the value list must have exactly its shape size. HOL reserves `vmax+1`
    for the address and generates the remaining temporaries from that base. -/

def compileStoreExactHOLW {width : Nat} [NeZero width]
    (context : PanToCrepContextExact width)
    (address value : Flapjack.Pancake.PanLang.ExpHOL width) : CrepProgHOL width :=
  match compileExpExactHOLW context address with
  | (compiledAddress :: _, _) =>
      let (values, shape) := compileExpExactHOLW context value
      let valueCount := Flapjack.Pancake.PanLang.sizeOfShapeHOL shape
      let addressName := context.vmax + 1
      let valueNames := (List.range valueCount).map
        (fun index => addressName + index + 1)
      if valueCount != values.length then .skip
      else
        let storeSequence := crepNestedSeqHOL
          (storesHOL (.var addressName) (valueNames.map CrepExpHOL.var) (0 : BitVec width))
        nestedDecsHOL (addressName :: valueNames) (compiledAddress :: values) storeSequence
  | ([], _) => .skip

/-! The `Raise` clause from `compile_def`
    (`pan_to_crepScript.sml:197-207`). It requires an exception-id lookup and
    a shape size matching the compiled value list, then saves each component
    into consecutive globals before raising the looked-up word code. -/

def compileRaiseExactHOLW {width : Nat} [NeZero width]
    (context : PanToCrepContextExact width) (exceptionName : MlS)
    (expression : Flapjack.Pancake.PanLang.ExpHOL width) : CrepProgHOL width :=
  match context.eids.lookup exceptionName with
  | none => .skip
  | some exceptionCode =>
      let (values, shape) := compileExpExactHOLW context expression
      let valueCount := Flapjack.Pancake.PanLang.sizeOfShapeHOL shape
      let temporaries := (List.range valueCount).map
        (fun index => context.vmax + index + 1)
      if valueCount != values.length then .skip
      else
        let saveValues := crepNestedSeqHOL
          (storeGlobalsHOL (0 : BitVec 5) (temporaries.map CrepExpHOL.var))
        .seq (nestedDecsHOL temporaries values saveValues) (.raise exceptionCode)

/-! The `ShMemStore` clause from `compile_def`
    (`pan_to_crepScript.sml:285-293`). Both operands must compile to heads.
    HOL picks the first compiled value and address, then places the store at
    one greater than the largest variable used by the value expression. -/

def compileShMemStoreExactHOLW {width : Nat} [NeZero width]
    (context : PanToCrepContextExact width) (operator : OpSize)
    (value address : Flapjack.Pancake.PanLang.ExpHOL width) : CrepProgHOL width :=
  match compileExpExactHOLW context value, compileExpExactHOLW context address with
  | (compiledValue :: _, _), (compiledAddress :: _, _) =>
      let index := (crepExpVarsW (crepExpOfHOL compiledValue)).foldr max 0
      .dec (index + 1) compiledAddress
        (.shMem (storeMemOpHOL operator) (index + 1) compiledValue)
  | _, _ => .skip

/-! The local `ShMemLoad` clause from `compile_def`
    (`pan_to_crepScript.sml:296-304`). It takes the first compiled address and
    first destination variable, preserving both lookup/head fallbacks. -/

def compileShMemLoadExactHOLW {width : Nat} [NeZero width]
    (context : PanToCrepContextExact width) (operator : OpSize) (name : MlS)
    (address : Flapjack.Pancake.PanLang.ExpHOL width) : CrepProgHOL width :=
  match compileExpExactHOLW context address with
  | (compiledAddress :: _, _) =>
      match context.vars.lookup name with
      | some (_, destination :: _) =>
          .shMem (loadMemOpHOL operator) destination compiledAddress
      | _ => .skip
  | ([], _) => .skip

/-! The recursive `Dec` clause from `compile_def`
    (`pan_to_crepScript.sml:145-152`). It allocates names from the old `vmax`,
    extends the variable map and `vmax` for the recursive body, and emits the
    declaration only when the compiled expression count matches the shape.

    HOL ignores the declared shape `s` of `Dec v s e p` and stores the shape
    `sh` produced by `compile_exp` in the extended variable map
    (`nctxt = ctxt with <|vars := ctxt.vars |+ (v, (sh, nvars)); ...|>`), and
    production `compileProgHOL` does the same with `compiled.2`. To stay exact,
    the `_shape` parameter is unused here and the compiled shape is stored. -/

def compileDecExactHOLW {width : Nat} [NeZero width]
    (context : PanToCrepContextExact width) (name : MlS)
    (_shape : Flapjack.Pancake.PanLang.ShapeHOL)
    (expression : Flapjack.Pancake.PanLang.ExpHOL width)
    (compileBody : PanToCrepContextExact width → CrepProgHOL width) : CrepProgHOL width :=
  let (values, compiledShape) := compileExpExactHOLW context expression
  let valueCount := Flapjack.Pancake.PanLang.sizeOfShapeHOL compiledShape
  let names := (List.range valueCount).map (fun index => context.vmax + index + 1)
  let bodyContext : PanToCrepContextExact width :=
    { context with
      vars := context.vars.update (name, (compiledShape, names))
      vmax := context.vmax + valueCount }
  if valueCount != values.length then .skip
  else nestedDecsHOL names values (compileBody bodyContext)

/-! The `DecCall` clause from HOL `compile_def`
    (`pan_to_crepScript.sml:262-272`). It allocates return names from the old
    `vmax`, compiles the body under the extended variable map and `vmax`,
    initializes every return slot to zero, then emits the target Call followed
    by the compiled body. -/

def compileDecCallExactHOLW {width : Nat} [NeZero width]
    (context : CompileExpContextExact width) (name : MlS)
    (shape : Flapjack.Pancake.PanLang.ShapeHOL) (function : MlS)
    (arguments : List (Flapjack.Pancake.PanLang.ExpHOL width))
    (compileBody : CompileExpContextExact width → CrepProgHOL width) :
    CrepProgHOL width :=
  let compiledArguments := compileExpExactHOLWList context arguments
  let arguments := compiledArguments.flatMap Prod.fst
  let returnCount := Flapjack.Pancake.PanLang.sizeOfShapeHOL shape
  let names := (List.range returnCount).map
    (fun index => context.vmax + index + 1)
  let bodyContext : CompileExpContextExact width :=
    { context with
      vars := context.vars.update (name, (shape, names))
      vmax := context.vmax + returnCount }
  let returnDeclarations := nestedDecsHOL names
    (List.replicate names.length (.const (0 : BitVec width)))
  let call := CrepProgHOL.call (some (names, none)) function arguments
  returnDeclarations (.seq call (compileBody bodyContext))

/-! The `rtyp = NONE` arm of the HOL `Call` clause
    (`pan_to_crepScript.sml:221-225`) compiles each argument, flattens its
    expression list, and emits a tail call with no return metadata. -/

def compileCallNoReturnExactHOLW {width : Nat} [NeZero width]
    (context : CompileExpContextExact width) (function : MlS)
    (arguments : List (Flapjack.Pancake.PanLang.ExpHOL width)) :
    CrepProgHOL width :=
  let compiledArguments := compileExpExactHOLWList context arguments
  let flattenedArguments := compiledArguments.flatMap Prod.fst
  .call none function flattenedArguments

/-! The successful `wrap_rt (FLOOKUP ctxt.vars rt)` arm with no handler in HOL
    `compile_def` (`pan_to_crepScript.sml:252-261`). It reuses the destination
    names directly in Call metadata and does not allocate or initialize return
    slots. The premise uses the canonical tagged `wrapRtHOL` port. -/

def compileCallWrappedResultNoHandlerExactHOLW {width : Nat} [NeZero width]
    (context : CompileExpContextExact width) (function resultName : MlS)
    (arguments : List (Flapjack.Pancake.PanLang.ExpHOL width))
    (resultShape : Flapjack.Pancake.PanLang.ShapeHOL) (resultNames : List Nat)
    (_wrappedResult : wrapRtHOL (context.vars.lookup resultName) =
      some (resultShape, resultNames)) : CrepProgHOL width :=
  let compiledArguments := compileExpExactHOLWList context arguments
  let flattenedArguments := compiledArguments.flatMap Prod.fst
  .call (some (resultNames, none)) function flattenedArguments

/-! The `NONE` arm of `wrap_rt (FLOOKUP ctxt.vars rt)` in HOL `compile_def`
    (`pan_to_crepScript.sml:252-261`). Missing names and `(One, [])` both emit a
    tail Call with flattened arguments and no return metadata, using the
    canonical tagged `wrapRtHOL` port for the side condition. -/

def compileCallWrappedResultFallbackNoHandlerExactHOLW {width : Nat} [NeZero width]
    (context : CompileExpContextExact width) (function resultName : MlS)
    (arguments : List (Flapjack.Pancake.PanLang.ExpHOL width))
    (_wrappedResult : wrapRtHOL (context.vars.lookup resultName) = none) :
    CrepProgHOL width :=
  let compiledArguments := compileExpExactHOLWList context arguments
  let flattenedArguments := compiledArguments.flatMap Prod.fst
  .call none function flattenedArguments

/-! The handler-present Call arm with a successful wrapped result lookup but a
    missing exception-code lookup in HOL `compile_def` (`pan_to_crepScript.sml:252-261`).
    HOL discards the handler while retaining the destination names as result
    metadata. -/

def compileCallWrappedResultHandlerMissingEidExactHOLW {width : Nat} [NeZero width]
    (context : CompileExpContextExact width) (function resultName : MlS)
    (arguments : List (Flapjack.Pancake.PanLang.ExpHOL width))
    (resultShape : Flapjack.Pancake.PanLang.ShapeHOL) (resultNames : List Nat)
    (exceptionName _exceptionVariable : MlS)
    (_handlerBody : Flapjack.Pancake.PanLang.ProgHOL width)
    (_wrappedResult : wrapRtHOL (context.vars.lookup resultName) =
      some (resultShape, resultNames))
    (_missingEid : context.eids.lookup exceptionName = none) : CrepProgHOL width :=
  compileCallWrappedResultNoHandlerExactHOLW context function resultName arguments
    resultShape resultNames _wrappedResult

/-! The handler-present Call arm with successful wrapped-result and exception
    code lookups in HOL `compile_def` (`pan_to_crepScript.sml:252-261`). It keeps
    the destination names directly and sequences exact `exp_hdl` with the
    recursively compiled handler body, without return-slot declarations. -/

def compileCallWrappedResultHandlerPresentEidExactHOLW {width : Nat} [NeZero width]
    (context : CompileExpContextExact width) (function resultName : MlS)
    (arguments : List (Flapjack.Pancake.PanLang.ExpHOL width))
    (resultShape : Flapjack.Pancake.PanLang.ShapeHOL) (resultNames : List Nat)
    (exceptionName exceptionVariable : MlS) (exceptionCode : BitVec width)
    (_wrappedResult : wrapRtHOL (context.vars.lookup resultName) =
      some (resultShape, resultNames))
    (_eidLookup : context.eids.lookup exceptionName = some exceptionCode)
    (compileHandlerBody : CompileExpContextExact width → CrepProgHOL width) :
    CrepProgHOL width :=
  let compiledArguments := compileExpExactHOLWList context arguments
  let flattenedArguments := compiledArguments.flatMap Prod.fst
  let handler := CrepProgHOL.seq
    (expHdlExact context.vars exceptionVariable)
    (compileHandlerBody context)
  .call (some (resultNames, some (exceptionCode, handler))) function flattenedArguments

/-! The wrapped-result `NONE` arm with a found handler EID in HOL `compile_def`
    (`pan_to_crepScript.sml:252-261`). HOL keeps the handler but supplies an
    empty return-name list to Call metadata. -/

def compileCallWrappedResultFallbackHandlerPresentEidExactHOLW
    {width : Nat} [NeZero width]
    (context : CompileExpContextExact width) (function resultName : MlS)
    (arguments : List (Flapjack.Pancake.PanLang.ExpHOL width))
    (exceptionName exceptionVariable : MlS) (exceptionCode : BitVec width)
    (_wrappedResult : wrapRtHOL (context.vars.lookup resultName) = none)
    (_eidLookup : context.eids.lookup exceptionName = some exceptionCode)
    (compileHandlerBody : CompileExpContextExact width → CrepProgHOL width) :
    CrepProgHOL width :=
  let compiledArguments := compileExpExactHOLWList context arguments
  let flattenedArguments := compiledArguments.flatMap Prod.fst
  let handler := CrepProgHOL.seq
    (expHdlExact context.vars exceptionVariable)
    (compileHandlerBody context)
  .call (some ([], some (exceptionCode, handler))) function flattenedArguments

/-! The wrapped-result `NONE` arm with a missing handler EID in HOL
    `compile_def` (`pan_to_crepScript.sml:252-261`). HOL drops both handler and
    return metadata and emits a flattened tail call. -/

def compileCallWrappedResultFallbackHandlerMissingEidExactHOLW
    {width : Nat} [NeZero width]
    (context : CompileExpContextExact width) (function resultName : MlS)
    (arguments : List (Flapjack.Pancake.PanLang.ExpHOL width))
    (exceptionName _exceptionVariable : MlS)
    (_handlerBody : Flapjack.Pancake.PanLang.ProgHOL width)
    (_wrappedResult : wrapRtHOL (context.vars.lookup resultName) = none)
    (_missingEid : context.eids.lookup exceptionName = none) : CrepProgHOL width :=
  compileCallWrappedResultFallbackNoHandlerExactHOLW context function resultName
    arguments _wrappedResult

/-! The `rtyp = SOME (NONE, NONE)` arm of the HOL `Call` clause
    (`pan_to_crepScript.sml:226-232`) looks up the callee's return shape,
    allocates result names above `vmax`, initializes those names to zero, and
    emits a call with result metadata. -/

def compileCallResultNoHandlerExactHOLW {width : Nat} [NeZero width]
    (context : CompileExpContextExact width) (function : MlS)
    (arguments : List (Flapjack.Pancake.PanLang.ExpHOL width)) :
    CrepProgHOL width :=
  let compiledArguments := compileExpExactHOLWList context arguments
  let flattenedArguments := compiledArguments.flatMap Prod.fst
  let returnShape := (context.funcs.lookup function).map Prod.snd
  let returnNames := match returnShape with
    | none => []
    | some shape => (List.range (Flapjack.Pancake.PanLang.sizeOfShapeHOL shape)).map
        (fun index => context.vmax + index + 1)
  let returnDeclarations := nestedDecsHOL returnNames
    (List.replicate returnNames.length (.const (0 : BitVec width)))
  returnDeclarations
    (.call (some (returnNames, none)) function flattenedArguments)

/-! The `hdl = SOME (eid, evar, p)` branch with no `eids` lookup result from
    HOL `compile_def` (`pan_to_crepScript.sml:233-235`) discards the handler and
    falls back to the same zero-initialized result call as the `hdl = NONE`
    case. The premise exposes exactly that HOL lookup side condition. -/

def compileCallHandlerMissingEidExactHOLW {width : Nat} [NeZero width]
    (context : CompileExpContextExact width) (function : MlS)
    (arguments : List (Flapjack.Pancake.PanLang.ExpHOL width))
    (_exceptionName _exceptionVariable : MlS)
    (_handlerBody : Flapjack.Pancake.PanLang.ProgHOL width)
    (_missingEid : context.eids.lookup _exceptionName = none) :
    CrepProgHOL width :=
  compileCallResultNoHandlerExactHOLW context function arguments

/-! The `hdl = SOME (eid, evar, p)` branch with a successful `eids` lookup in
    HOL `compile_def` (`pan_to_crepScript.sml:233-239`) keeps the exception
    handler. It wraps the recursively compiled body with exact `exp_hdl`, then
    zero-initializes the callee return names before emitting the handled call. -/

def compileCallHandlerPresentEidExactHOLW {width : Nat} [NeZero width]
    (context : CompileExpContextExact width) (function : MlS)
    (arguments : List (Flapjack.Pancake.PanLang.ExpHOL width))
    (exceptionName exceptionVariable : MlS) (exceptionCode : BitVec width)
    (_eidLookup : context.eids.lookup exceptionName = some exceptionCode)
    (compileHandlerBody : CompileExpContextExact width → CrepProgHOL width) :
    CrepProgHOL width :=
  let compiledArguments := compileExpExactHOLWList context arguments
  let flattenedArguments := compiledArguments.flatMap Prod.fst
  let returnShape := (context.funcs.lookup function).map Prod.snd
  let returnNames := match returnShape with
    | none => []
    | some shape => (List.range (Flapjack.Pancake.PanLang.sizeOfShapeHOL shape)).map
        (fun index => context.vmax + index + 1)
  let handler := CrepProgHOL.seq
    (expHdlExact context.vars exceptionVariable)
    (compileHandlerBody context)
  let call := CrepProgHOL.call
    (some (returnNames, some (exceptionCode, handler))) function flattenedArguments
  nestedDecsHOL returnNames
    (List.replicate returnNames.length (.const (0 : BitVec width))) call

/-! ### Assembled exact `Call` info equation

This dispatcher combines the source-reviewed `Call` arm slices above in the
same nesting as HOL `compile_def` (`pan_to_crepScript.sml:221-261`). In
particular, the assigned-result kind is ignored by `wrap_rt`; handler lookup
occurs only after the result-shape branch; and a handler body remains a
recursive compiler callback until the full `compile_def` assembly is ported.
This is an equation slice, not yet a recursive `compile` definition. -/

def compileCallInfoExactHOLW {width : Nat} [NeZero width]
    (context : CompileExpContextExact width) (function : MlS)
    (info : Option (Option (VarKind × MlS) ×
      Option (MlS × MlS × Flapjack.Pancake.PanLang.ProgHOL width)))
    (arguments : List (Flapjack.Pancake.PanLang.ExpHOL width))
    (compileBody : CompileExpContextExact width →
      Flapjack.Pancake.PanLang.ProgHOL width → CrepProgHOL width) :
    CrepProgHOL width :=
  match info with
  | none => compileCallNoReturnExactHOLW context function arguments
  | some (none, none) =>
      compileCallResultNoHandlerExactHOLW context function arguments
  | some (none, some (exceptionName, exceptionVariable, body)) =>
      match hEid : context.eids.lookup exceptionName with
      | none =>
          compileCallHandlerMissingEidExactHOLW context function arguments
            exceptionName exceptionVariable body
            hEid
      | some exceptionCode =>
          compileCallHandlerPresentEidExactHOLW context function arguments
            exceptionName exceptionVariable exceptionCode
            hEid
            (fun bodyContext => compileBody bodyContext body)
  | some (some (_resultKind, resultName), handler) =>
      match hWrap : wrapRtHOL (context.vars.lookup resultName) with
      | none =>
          match handler with
          | none =>
              compileCallWrappedResultFallbackNoHandlerExactHOLW context
                function resultName arguments hWrap
          | some (exceptionName, exceptionVariable, body) =>
              match hEid : context.eids.lookup exceptionName with
              | none =>
                  compileCallWrappedResultFallbackHandlerMissingEidExactHOLW
                    context function resultName arguments exceptionName
                    exceptionVariable body hWrap hEid
              | some exceptionCode =>
                  compileCallWrappedResultFallbackHandlerPresentEidExactHOLW
                    context function resultName arguments exceptionName
                    exceptionVariable exceptionCode hWrap hEid
                    (fun bodyContext => compileBody bodyContext body)
      | some (resultShape, resultNames) =>
          match handler with
          | none =>
              compileCallWrappedResultNoHandlerExactHOLW context function
                resultName arguments resultShape resultNames hWrap
          | some (exceptionName, exceptionVariable, body) =>
              match hEid : context.eids.lookup exceptionName with
              | none =>
                  compileCallWrappedResultHandlerMissingEidExactHOLW context
                    function resultName arguments resultShape resultNames
                    exceptionName exceptionVariable body hWrap hEid
              | some exceptionCode =>
                  compileCallWrappedResultHandlerPresentEidExactHOLW context
                    function resultName arguments resultShape resultNames
                    exceptionName exceptionVariable exceptionCode hWrap hEid
                    (fun bodyContext => compileBody bodyContext body)

/-! The `ExtCall` clause from HOL `compile_def`
    (`pan_to_crepScript.sml:274-290`). The freshness bound is the maximum over
    every variable in all four compiled operand lists, even though the output
    uses only each list's head. All four source shapes must be `One` and all
    four compiled lists must be nonempty; otherwise HOL returns `Skip`. -/

def compileExtCallExactHOLW {width : Nat} [NeZero width]
    (context : PanToCrepContextExact width) (function : MlS)
    (configuration configurationLength array arrayLength :
      Flapjack.Pancake.PanLang.ExpHOL width) : CrepProgHOL width :=
  let (configurationValues, configurationShape) :=
    compileExpExactHOLW context configuration
  let (configurationLengthValues, configurationLengthShape) :=
    compileExpExactHOLW context configurationLength
  let (arrayValues, arrayShape) := compileExpExactHOLW context array
  let (arrayLengthValues, arrayLengthShape) :=
    compileExpExactHOLW context arrayLength
  let allValues := configurationValues ++ configurationLengthValues ++
    arrayValues ++ arrayLengthValues
  let allVariables := allValues.flatMap fun value =>
    crepExpVarsW (crepExpOfHOL value)
  let maximumVariable := allVariables.foldl (fun maximum variableIndex =>
    Nat.max maximum variableIndex) 0
  match configurationShape, configurationValues,
      configurationLengthShape, configurationLengthValues,
      arrayShape, arrayValues, arrayLengthShape, arrayLengthValues with
  | .one, configurationValue :: _, .one, configurationLengthValue :: _,
      .one, arrayValue :: _, .one, arrayLengthValue :: _ =>
        .dec (maximumVariable + 1) configurationValue
          (.dec (maximumVariable + 2) configurationLengthValue
            (.dec (maximumVariable + 3) arrayValue
              (.dec (maximumVariable + 4) arrayLengthValue
                (.extCall function (maximumVariable + 1) (maximumVariable + 2)
                  (maximumVariable + 3) (maximumVariable + 4)))))
  | _, _, _, _, _, _, _, _ => .skip


theorem compileReturnExactHOLW_eq : @Flapjack.compileReturnExactHOLW = @compileReturnExactHOLW := by
  repeat' (apply funext; intro)
  simp only [Flapjack.compileReturnExactHOLW, compileReturnExactHOLW, compileExp_function_eq]
  all_goals rfl

theorem compileStore32ExactHOLW_eq : @Flapjack.compileStore32ExactHOLW = @compileStore32ExactHOLW := by
  repeat' (apply funext; intro)
  simp only [Flapjack.compileStore32ExactHOLW, compileStore32ExactHOLW, compileExp_function_eq]
  all_goals rfl

theorem compileStoreByteExactHOLW_eq : @Flapjack.compileStoreByteExactHOLW = @compileStoreByteExactHOLW := by
  repeat' (apply funext; intro)
  simp only [Flapjack.compileStoreByteExactHOLW, compileStoreByteExactHOLW, compileExp_function_eq]
  all_goals rfl

theorem compileIfExactHOLW_eq : @Flapjack.compileIfExactHOLW = @compileIfExactHOLW := by
  repeat' (apply funext; intro)
  simp only [Flapjack.compileIfExactHOLW, compileIfExactHOLW, compileExp_function_eq]
  all_goals rfl

theorem compileWhileExactHOLW_eq : @Flapjack.compileWhileExactHOLW = @compileWhileExactHOLW := by
  repeat' (apply funext; intro)
  simp only [Flapjack.compileWhileExactHOLW, compileWhileExactHOLW, compileExp_function_eq]
  all_goals rfl

theorem compileGlobalAssignExactHOLW_eq : @Flapjack.compileGlobalAssignExactHOLW = @compileGlobalAssignExactHOLW := by
  repeat' (apply funext; intro)
  simp only [Flapjack.compileGlobalAssignExactHOLW, compileGlobalAssignExactHOLW]
  all_goals rfl

theorem compileGlobalShMemLoadExactHOLW_eq : @Flapjack.compileGlobalShMemLoadExactHOLW = @compileGlobalShMemLoadExactHOLW := by
  repeat' (apply funext; intro)
  simp only [Flapjack.compileGlobalShMemLoadExactHOLW, compileGlobalShMemLoadExactHOLW]
  all_goals rfl

theorem compileLocalAssignExactHOLW_eq : @Flapjack.compileLocalAssignExactHOLW = @compileLocalAssignExactHOLW := by
  repeat' (apply funext; intro)
  simp only [Flapjack.compileLocalAssignExactHOLW, compileLocalAssignExactHOLW, compileExp_function_eq]
  all_goals rfl

theorem compilePrimitiveExactHOLW_eq : @Flapjack.compilePrimitiveExactHOLW = @compilePrimitiveExactHOLW := by
  repeat' (apply funext; intro)
  simp only [Flapjack.compilePrimitiveExactHOLW, compilePrimitiveExactHOLW, compileExpList_function_eq]
  all_goals rfl

theorem compileStoreExactHOLW_eq : @Flapjack.compileStoreExactHOLW = @compileStoreExactHOLW := by
  repeat' (apply funext; intro)
  simp only [Flapjack.compileStoreExactHOLW, compileStoreExactHOLW, compileExp_function_eq]
  all_goals rfl

theorem compileRaiseExactHOLW_eq : @Flapjack.compileRaiseExactHOLW = @compileRaiseExactHOLW := by
  repeat' (apply funext; intro)
  simp only [Flapjack.compileRaiseExactHOLW, compileRaiseExactHOLW, compileExp_function_eq]
  all_goals rfl

theorem compileShMemStoreExactHOLW_eq : @Flapjack.compileShMemStoreExactHOLW = @compileShMemStoreExactHOLW := by
  repeat' (apply funext; intro)
  simp only [Flapjack.compileShMemStoreExactHOLW, compileShMemStoreExactHOLW, compileExp_function_eq]
  all_goals rfl

theorem compileShMemLoadExactHOLW_eq : @Flapjack.compileShMemLoadExactHOLW = @compileShMemLoadExactHOLW := by
  repeat' (apply funext; intro)
  simp only [Flapjack.compileShMemLoadExactHOLW, compileShMemLoadExactHOLW, compileExp_function_eq]
  all_goals rfl

theorem compileDecExactHOLW_eq : @Flapjack.compileDecExactHOLW = @compileDecExactHOLW := by
  repeat' (apply funext; intro)
  simp only [Flapjack.compileDecExactHOLW, compileDecExactHOLW, compileExp_function_eq]
  all_goals rfl

theorem compileDecCallExactHOLW_eq : @Flapjack.compileDecCallExactHOLW = @compileDecCallExactHOLW := by
  repeat' (apply funext; intro)
  simp only [Flapjack.compileDecCallExactHOLW, compileDecCallExactHOLW, compileExpList_function_eq]
  all_goals rfl

theorem compileCallNoReturnExactHOLW_eq : @Flapjack.compileCallNoReturnExactHOLW = @compileCallNoReturnExactHOLW := by
  repeat' (apply funext; intro)
  simp only [Flapjack.compileCallNoReturnExactHOLW, compileCallNoReturnExactHOLW, compileExpList_function_eq]
  all_goals rfl

theorem compileCallWrappedResultNoHandlerExactHOLW_eq : @Flapjack.compileCallWrappedResultNoHandlerExactHOLW = @compileCallWrappedResultNoHandlerExactHOLW := by
  repeat' (apply funext; intro)
  simp only [Flapjack.compileCallWrappedResultNoHandlerExactHOLW, compileCallWrappedResultNoHandlerExactHOLW, compileExpList_function_eq]
  all_goals rfl

theorem compileCallWrappedResultFallbackNoHandlerExactHOLW_eq : @Flapjack.compileCallWrappedResultFallbackNoHandlerExactHOLW = @compileCallWrappedResultFallbackNoHandlerExactHOLW := by
  repeat' (apply funext; intro)
  simp only [Flapjack.compileCallWrappedResultFallbackNoHandlerExactHOLW, compileCallWrappedResultFallbackNoHandlerExactHOLW, compileExpList_function_eq]
  all_goals rfl

theorem compileCallWrappedResultHandlerMissingEidExactHOLW_eq : @Flapjack.compileCallWrappedResultHandlerMissingEidExactHOLW = @compileCallWrappedResultHandlerMissingEidExactHOLW := by
  repeat' (apply funext; intro)
  simp only [Flapjack.compileCallWrappedResultHandlerMissingEidExactHOLW, compileCallWrappedResultHandlerMissingEidExactHOLW, compileCallWrappedResultNoHandlerExactHOLW_eq]
  all_goals rfl

theorem compileCallWrappedResultHandlerPresentEidExactHOLW_eq : @Flapjack.compileCallWrappedResultHandlerPresentEidExactHOLW = @compileCallWrappedResultHandlerPresentEidExactHOLW := by
  repeat' (apply funext; intro)
  simp only [Flapjack.compileCallWrappedResultHandlerPresentEidExactHOLW, compileCallWrappedResultHandlerPresentEidExactHOLW, compileExpList_function_eq]
  all_goals rfl

theorem compileCallWrappedResultFallbackHandlerPresentEidExactHOLW_eq : @Flapjack.compileCallWrappedResultFallbackHandlerPresentEidExactHOLW = @compileCallWrappedResultFallbackHandlerPresentEidExactHOLW := by
  repeat' (apply funext; intro)
  simp only [Flapjack.compileCallWrappedResultFallbackHandlerPresentEidExactHOLW, compileCallWrappedResultFallbackHandlerPresentEidExactHOLW, compileExpList_function_eq]
  all_goals rfl

theorem compileCallWrappedResultFallbackHandlerMissingEidExactHOLW_eq : @Flapjack.compileCallWrappedResultFallbackHandlerMissingEidExactHOLW = @compileCallWrappedResultFallbackHandlerMissingEidExactHOLW := by
  repeat' (apply funext; intro)
  simp only [Flapjack.compileCallWrappedResultFallbackHandlerMissingEidExactHOLW, compileCallWrappedResultFallbackHandlerMissingEidExactHOLW, compileCallWrappedResultFallbackNoHandlerExactHOLW_eq]
  all_goals rfl

theorem compileCallResultNoHandlerExactHOLW_eq : @Flapjack.compileCallResultNoHandlerExactHOLW = @compileCallResultNoHandlerExactHOLW := by
  repeat' (apply funext; intro)
  simp only [Flapjack.compileCallResultNoHandlerExactHOLW, compileCallResultNoHandlerExactHOLW, compileExpList_function_eq]
  all_goals rfl

theorem compileCallHandlerMissingEidExactHOLW_eq : @Flapjack.compileCallHandlerMissingEidExactHOLW = @compileCallHandlerMissingEidExactHOLW := by
  repeat' (apply funext; intro)
  simp only [Flapjack.compileCallHandlerMissingEidExactHOLW, compileCallHandlerMissingEidExactHOLW, compileCallResultNoHandlerExactHOLW_eq]
  all_goals rfl

theorem compileCallHandlerPresentEidExactHOLW_eq : @Flapjack.compileCallHandlerPresentEidExactHOLW = @compileCallHandlerPresentEidExactHOLW := by
  repeat' (apply funext; intro)
  simp only [Flapjack.compileCallHandlerPresentEidExactHOLW, compileCallHandlerPresentEidExactHOLW, compileExpList_function_eq]
  all_goals rfl

theorem compileCallInfoExactHOLW_eq : @Flapjack.compileCallInfoExactHOLW = @compileCallInfoExactHOLW := by
  repeat' (apply funext; intro)
  simp only [Flapjack.compileCallInfoExactHOLW, compileCallInfoExactHOLW, compileCallNoReturnExactHOLW_eq, compileCallWrappedResultNoHandlerExactHOLW_eq, compileCallWrappedResultFallbackNoHandlerExactHOLW_eq, compileCallWrappedResultHandlerMissingEidExactHOLW_eq, compileCallWrappedResultHandlerPresentEidExactHOLW_eq, compileCallWrappedResultFallbackHandlerPresentEidExactHOLW_eq, compileCallWrappedResultFallbackHandlerMissingEidExactHOLW_eq, compileCallResultNoHandlerExactHOLW_eq, compileCallHandlerMissingEidExactHOLW_eq, compileCallHandlerPresentEidExactHOLW_eq]
  all_goals rfl

theorem compileExtCallExactHOLW_eq : @Flapjack.compileExtCallExactHOLW = @compileExtCallExactHOLW := by
  repeat' (apply funext; intro)
  simp only [Flapjack.compileExtCallExactHOLW, compileExtCallExactHOLW, compileExp_function_eq]
  all_goals rfl

#print axioms compileExtCallExactHOLW_eq

def compileProgExactHOLW {width : Nat} [NeZero width]
    (context : PanToCrepContextExact width) :
    (program : Flapjack.Pancake.PanLang.ProgHOL width) → CrepProgHOL width
  | .skip => .skip
  | .dec name shape expression body =>
      compileDecExactHOLW context name shape expression
        (fun bodyContext => compileProgExactHOLW bodyContext body)
  | .assign .local name expression =>
      compileLocalAssignExactHOLW context name expression
  | .assign .global name expression =>
      compileGlobalAssignExactHOLW context name expression
  | .primitive name operator arguments =>
      compilePrimitiveExactHOLW context name operator arguments
  | .store address value => compileStoreExactHOLW context address value
  | .store32 address value => compileStore32ExactHOLW context address value
  | .storeByte address value => compileStoreByteExactHOLW context address value
  | .seq first second =>
      .seq (compileProgExactHOLW context first) (compileProgExactHOLW context second)
  | .ite condition thenBranch elseBranch =>
      compileIfExactHOLW context condition
        (compileProgExactHOLW context thenBranch)
        (compileProgExactHOLW context elseBranch)
  | .while condition body =>
      compileWhileExactHOLW context condition (compileProgExactHOLW context body)
  | .break => .break 0
  | .continue => .continue 0
  | .call info function arguments =>
      match info with
      | none => compileCallNoReturnExactHOLW context function arguments
      | some (none, none) =>
          compileCallResultNoHandlerExactHOLW context function arguments
      | some (none, some (exceptionName, exceptionVariable, body)) =>
          match hEid : context.eids.lookup exceptionName with
          | none =>
              compileCallHandlerMissingEidExactHOLW context function arguments
                exceptionName exceptionVariable body hEid
          | some exceptionCode =>
              compileCallHandlerPresentEidExactHOLW context function arguments
                exceptionName exceptionVariable exceptionCode hEid
                (fun bodyContext => compileProgExactHOLW bodyContext body)
      | some (some (_resultKind, resultName), handler) =>
          match hWrap : wrapRtHOL (context.vars.lookup resultName) with
          | none =>
              match handler with
              | none =>
                  compileCallWrappedResultFallbackNoHandlerExactHOLW context
                    function resultName arguments hWrap
              | some (exceptionName, exceptionVariable, body) =>
                  match hEid : context.eids.lookup exceptionName with
                  | none =>
                      compileCallWrappedResultFallbackHandlerMissingEidExactHOLW
                        context function resultName arguments exceptionName
                        exceptionVariable body hWrap hEid
                  | some exceptionCode =>
                      compileCallWrappedResultFallbackHandlerPresentEidExactHOLW
                        context function resultName arguments exceptionName
                        exceptionVariable exceptionCode hWrap hEid
                        (fun bodyContext => compileProgExactHOLW bodyContext body)
          | some (resultShape, resultNames) =>
              match handler with
              | none =>
                  compileCallWrappedResultNoHandlerExactHOLW context function
                    resultName arguments resultShape resultNames hWrap
              | some (exceptionName, exceptionVariable, body) =>
                  match hEid : context.eids.lookup exceptionName with
                  | none =>
                      compileCallWrappedResultHandlerMissingEidExactHOLW context
                        function resultName arguments resultShape resultNames
                        exceptionName exceptionVariable body hWrap hEid
                  | some exceptionCode =>
                      compileCallWrappedResultHandlerPresentEidExactHOLW context
                        function resultName arguments resultShape resultNames
                        exceptionName exceptionVariable exceptionCode hWrap hEid
                        (fun bodyContext => compileProgExactHOLW bodyContext body)
  | .decCall name shape function arguments body =>
      compileDecCallExactHOLW context name shape function arguments
        (fun bodyContext => compileProgExactHOLW bodyContext body)
  | .extCall function configuration configurationLength array arrayLength =>
      compileExtCallExactHOLW context function configuration configurationLength
        array arrayLength
  | .raise exceptionName expression =>
      compileRaiseExactHOLW context exceptionName expression
  | .return expression => compileReturnExactHOLW context expression
  | .shMemLoad operator .local name address =>
      compileShMemLoadExactHOLW context operator name address
  | .shMemLoad operator .global name address =>
      compileGlobalShMemLoadExactHOLW context operator name address
  | .shMemStore operator value address =>
      compileShMemStoreExactHOLW context operator value address
  | .tick => .tick
  | .annot _ _ => .skip
termination_by structural program => program


set_option linter.unusedSimpArgs false in
theorem compileProg_eq {width : Nat} [NeZero width]
    (p : ProgHOL width) (context : PanToCrepContextExact width) :
    Flapjack.compileProgExactHOLW context p = compileProgExactHOLW context p := by
  induction p using (measure (sizeOf : ProgHOL width → Nat)).wf.induction generalizing context with
  | h p ih =>
    change ∀ child, sizeOf child < sizeOf p → ∀ context,
      Flapjack.compileProgExactHOLW context child = compileProgExactHOLW context child at ih
    have recursively (child : ProgHOL width) (bound : sizeOf child < sizeOf p) :
        (fun ctx => Flapjack.compileProgExactHOLW ctx child) =
          (fun ctx => compileProgExactHOLW ctx child) :=
      funext (fun ctx => ih child bound ctx)
    cases p
    case dec name shape expression body =>
      simp only [Flapjack.compileProgExactHOLW, compileProgExactHOLW, compileReturnExactHOLW_eq, compileStore32ExactHOLW_eq, compileStoreByteExactHOLW_eq, compileIfExactHOLW_eq, compileWhileExactHOLW_eq, compileGlobalAssignExactHOLW_eq, compileGlobalShMemLoadExactHOLW_eq, compileLocalAssignExactHOLW_eq, compilePrimitiveExactHOLW_eq, compileStoreExactHOLW_eq, compileRaiseExactHOLW_eq, compileShMemStoreExactHOLW_eq, compileShMemLoadExactHOLW_eq, compileDecExactHOLW_eq, compileDecCallExactHOLW_eq, compileCallNoReturnExactHOLW_eq, compileCallWrappedResultNoHandlerExactHOLW_eq, compileCallWrappedResultFallbackNoHandlerExactHOLW_eq, compileCallWrappedResultHandlerMissingEidExactHOLW_eq, compileCallWrappedResultHandlerPresentEidExactHOLW_eq, compileCallWrappedResultFallbackHandlerPresentEidExactHOLW_eq, compileCallWrappedResultFallbackHandlerMissingEidExactHOLW_eq, compileCallResultNoHandlerExactHOLW_eq, compileCallHandlerMissingEidExactHOLW_eq, compileCallHandlerPresentEidExactHOLW_eq, compileCallInfoExactHOLW_eq, compileExtCallExactHOLW_eq]
      rw [recursively body (by decreasing_trivial)]
      try rfl
    case decCall name shape function args body =>
      simp only [Flapjack.compileProgExactHOLW, compileProgExactHOLW, compileReturnExactHOLW_eq, compileStore32ExactHOLW_eq, compileStoreByteExactHOLW_eq, compileIfExactHOLW_eq, compileWhileExactHOLW_eq, compileGlobalAssignExactHOLW_eq, compileGlobalShMemLoadExactHOLW_eq, compileLocalAssignExactHOLW_eq, compilePrimitiveExactHOLW_eq, compileStoreExactHOLW_eq, compileRaiseExactHOLW_eq, compileShMemStoreExactHOLW_eq, compileShMemLoadExactHOLW_eq, compileDecExactHOLW_eq, compileDecCallExactHOLW_eq, compileCallNoReturnExactHOLW_eq, compileCallWrappedResultNoHandlerExactHOLW_eq, compileCallWrappedResultFallbackNoHandlerExactHOLW_eq, compileCallWrappedResultHandlerMissingEidExactHOLW_eq, compileCallWrappedResultHandlerPresentEidExactHOLW_eq, compileCallWrappedResultFallbackHandlerPresentEidExactHOLW_eq, compileCallWrappedResultFallbackHandlerMissingEidExactHOLW_eq, compileCallResultNoHandlerExactHOLW_eq, compileCallHandlerMissingEidExactHOLW_eq, compileCallHandlerPresentEidExactHOLW_eq, compileCallInfoExactHOLW_eq, compileExtCallExactHOLW_eq]
      rw [recursively body (by decreasing_trivial)]
      try rfl
    case seq first second =>
      simp only [Flapjack.compileProgExactHOLW, compileProgExactHOLW, compileReturnExactHOLW_eq, compileStore32ExactHOLW_eq, compileStoreByteExactHOLW_eq, compileIfExactHOLW_eq, compileWhileExactHOLW_eq, compileGlobalAssignExactHOLW_eq, compileGlobalShMemLoadExactHOLW_eq, compileLocalAssignExactHOLW_eq, compilePrimitiveExactHOLW_eq, compileStoreExactHOLW_eq, compileRaiseExactHOLW_eq, compileShMemStoreExactHOLW_eq, compileShMemLoadExactHOLW_eq, compileDecExactHOLW_eq, compileDecCallExactHOLW_eq, compileCallNoReturnExactHOLW_eq, compileCallWrappedResultNoHandlerExactHOLW_eq, compileCallWrappedResultFallbackNoHandlerExactHOLW_eq, compileCallWrappedResultHandlerMissingEidExactHOLW_eq, compileCallWrappedResultHandlerPresentEidExactHOLW_eq, compileCallWrappedResultFallbackHandlerPresentEidExactHOLW_eq, compileCallWrappedResultFallbackHandlerMissingEidExactHOLW_eq, compileCallResultNoHandlerExactHOLW_eq, compileCallHandlerMissingEidExactHOLW_eq, compileCallHandlerPresentEidExactHOLW_eq, compileCallInfoExactHOLW_eq, compileExtCallExactHOLW_eq]
      rw [ih first (by decreasing_trivial), ih second (by decreasing_trivial)]
      try rfl
    case ite condition first second =>
      simp only [Flapjack.compileProgExactHOLW, compileProgExactHOLW, compileReturnExactHOLW_eq, compileStore32ExactHOLW_eq, compileStoreByteExactHOLW_eq, compileIfExactHOLW_eq, compileWhileExactHOLW_eq, compileGlobalAssignExactHOLW_eq, compileGlobalShMemLoadExactHOLW_eq, compileLocalAssignExactHOLW_eq, compilePrimitiveExactHOLW_eq, compileStoreExactHOLW_eq, compileRaiseExactHOLW_eq, compileShMemStoreExactHOLW_eq, compileShMemLoadExactHOLW_eq, compileDecExactHOLW_eq, compileDecCallExactHOLW_eq, compileCallNoReturnExactHOLW_eq, compileCallWrappedResultNoHandlerExactHOLW_eq, compileCallWrappedResultFallbackNoHandlerExactHOLW_eq, compileCallWrappedResultHandlerMissingEidExactHOLW_eq, compileCallWrappedResultHandlerPresentEidExactHOLW_eq, compileCallWrappedResultFallbackHandlerPresentEidExactHOLW_eq, compileCallWrappedResultFallbackHandlerMissingEidExactHOLW_eq, compileCallResultNoHandlerExactHOLW_eq, compileCallHandlerMissingEidExactHOLW_eq, compileCallHandlerPresentEidExactHOLW_eq, compileCallInfoExactHOLW_eq, compileExtCallExactHOLW_eq]
      rw [ih first (by decreasing_trivial), ih second (by decreasing_trivial)]
      try rfl
    case «while» condition body =>
      simp only [Flapjack.compileProgExactHOLW, compileProgExactHOLW, compileReturnExactHOLW_eq, compileStore32ExactHOLW_eq, compileStoreByteExactHOLW_eq, compileIfExactHOLW_eq, compileWhileExactHOLW_eq, compileGlobalAssignExactHOLW_eq, compileGlobalShMemLoadExactHOLW_eq, compileLocalAssignExactHOLW_eq, compilePrimitiveExactHOLW_eq, compileStoreExactHOLW_eq, compileRaiseExactHOLW_eq, compileShMemStoreExactHOLW_eq, compileShMemLoadExactHOLW_eq, compileDecExactHOLW_eq, compileDecCallExactHOLW_eq, compileCallNoReturnExactHOLW_eq, compileCallWrappedResultNoHandlerExactHOLW_eq, compileCallWrappedResultFallbackNoHandlerExactHOLW_eq, compileCallWrappedResultHandlerMissingEidExactHOLW_eq, compileCallWrappedResultHandlerPresentEidExactHOLW_eq, compileCallWrappedResultFallbackHandlerPresentEidExactHOLW_eq, compileCallWrappedResultFallbackHandlerMissingEidExactHOLW_eq, compileCallResultNoHandlerExactHOLW_eq, compileCallHandlerMissingEidExactHOLW_eq, compileCallHandlerPresentEidExactHOLW_eq, compileCallInfoExactHOLW_eq, compileExtCallExactHOLW_eq]
      rw [ih body (by decreasing_trivial)]
      try rfl
    case call info function args =>
      cases info with
      | none =>
        simp only [Flapjack.compileProgExactHOLW, compileProgExactHOLW, compileReturnExactHOLW_eq, compileStore32ExactHOLW_eq, compileStoreByteExactHOLW_eq, compileIfExactHOLW_eq, compileWhileExactHOLW_eq, compileGlobalAssignExactHOLW_eq, compileGlobalShMemLoadExactHOLW_eq, compileLocalAssignExactHOLW_eq, compilePrimitiveExactHOLW_eq, compileStoreExactHOLW_eq, compileRaiseExactHOLW_eq, compileShMemStoreExactHOLW_eq, compileShMemLoadExactHOLW_eq, compileDecExactHOLW_eq, compileDecCallExactHOLW_eq, compileCallNoReturnExactHOLW_eq, compileCallWrappedResultNoHandlerExactHOLW_eq, compileCallWrappedResultFallbackNoHandlerExactHOLW_eq, compileCallWrappedResultHandlerMissingEidExactHOLW_eq, compileCallWrappedResultHandlerPresentEidExactHOLW_eq, compileCallWrappedResultFallbackHandlerPresentEidExactHOLW_eq, compileCallWrappedResultFallbackHandlerMissingEidExactHOLW_eq, compileCallResultNoHandlerExactHOLW_eq, compileCallHandlerMissingEidExactHOLW_eq, compileCallHandlerPresentEidExactHOLW_eq, compileCallInfoExactHOLW_eq, compileExtCallExactHOLW_eq]
        try rfl
      | some info =>
        rcases info with ⟨result, handler⟩
        cases result with
        | none =>
          cases handler with
          | none =>
            simp only [Flapjack.compileProgExactHOLW, compileProgExactHOLW, compileReturnExactHOLW_eq, compileStore32ExactHOLW_eq, compileStoreByteExactHOLW_eq, compileIfExactHOLW_eq, compileWhileExactHOLW_eq, compileGlobalAssignExactHOLW_eq, compileGlobalShMemLoadExactHOLW_eq, compileLocalAssignExactHOLW_eq, compilePrimitiveExactHOLW_eq, compileStoreExactHOLW_eq, compileRaiseExactHOLW_eq, compileShMemStoreExactHOLW_eq, compileShMemLoadExactHOLW_eq, compileDecExactHOLW_eq, compileDecCallExactHOLW_eq, compileCallNoReturnExactHOLW_eq, compileCallWrappedResultNoHandlerExactHOLW_eq, compileCallWrappedResultFallbackNoHandlerExactHOLW_eq, compileCallWrappedResultHandlerMissingEidExactHOLW_eq, compileCallWrappedResultHandlerPresentEidExactHOLW_eq, compileCallWrappedResultFallbackHandlerPresentEidExactHOLW_eq, compileCallWrappedResultFallbackHandlerMissingEidExactHOLW_eq, compileCallResultNoHandlerExactHOLW_eq, compileCallHandlerMissingEidExactHOLW_eq, compileCallHandlerPresentEidExactHOLW_eq, compileCallInfoExactHOLW_eq, compileExtCallExactHOLW_eq]
            try rfl
          | some handler =>
            rcases handler with ⟨exceptionName, exceptionVariable, body⟩
            simp only [Flapjack.compileProgExactHOLW, compileProgExactHOLW, compileReturnExactHOLW_eq, compileStore32ExactHOLW_eq, compileStoreByteExactHOLW_eq, compileIfExactHOLW_eq, compileWhileExactHOLW_eq, compileGlobalAssignExactHOLW_eq, compileGlobalShMemLoadExactHOLW_eq, compileLocalAssignExactHOLW_eq, compilePrimitiveExactHOLW_eq, compileStoreExactHOLW_eq, compileRaiseExactHOLW_eq, compileShMemStoreExactHOLW_eq, compileShMemLoadExactHOLW_eq, compileDecExactHOLW_eq, compileDecCallExactHOLW_eq, compileCallNoReturnExactHOLW_eq, compileCallWrappedResultNoHandlerExactHOLW_eq, compileCallWrappedResultFallbackNoHandlerExactHOLW_eq, compileCallWrappedResultHandlerMissingEidExactHOLW_eq, compileCallWrappedResultHandlerPresentEidExactHOLW_eq, compileCallWrappedResultFallbackHandlerPresentEidExactHOLW_eq, compileCallWrappedResultFallbackHandlerMissingEidExactHOLW_eq, compileCallResultNoHandlerExactHOLW_eq, compileCallHandlerMissingEidExactHOLW_eq, compileCallHandlerPresentEidExactHOLW_eq, compileCallInfoExactHOLW_eq, compileExtCallExactHOLW_eq]
            rw [recursively body (by simp_wf; omega)]
            try rfl
        | some result =>
          rcases result with ⟨kind, resultName⟩
          cases handler with
          | none =>
            simp only [Flapjack.compileProgExactHOLW, compileProgExactHOLW, compileReturnExactHOLW_eq, compileStore32ExactHOLW_eq, compileStoreByteExactHOLW_eq, compileIfExactHOLW_eq, compileWhileExactHOLW_eq, compileGlobalAssignExactHOLW_eq, compileGlobalShMemLoadExactHOLW_eq, compileLocalAssignExactHOLW_eq, compilePrimitiveExactHOLW_eq, compileStoreExactHOLW_eq, compileRaiseExactHOLW_eq, compileShMemStoreExactHOLW_eq, compileShMemLoadExactHOLW_eq, compileDecExactHOLW_eq, compileDecCallExactHOLW_eq, compileCallNoReturnExactHOLW_eq, compileCallWrappedResultNoHandlerExactHOLW_eq, compileCallWrappedResultFallbackNoHandlerExactHOLW_eq, compileCallWrappedResultHandlerMissingEidExactHOLW_eq, compileCallWrappedResultHandlerPresentEidExactHOLW_eq, compileCallWrappedResultFallbackHandlerPresentEidExactHOLW_eq, compileCallWrappedResultFallbackHandlerMissingEidExactHOLW_eq, compileCallResultNoHandlerExactHOLW_eq, compileCallHandlerMissingEidExactHOLW_eq, compileCallHandlerPresentEidExactHOLW_eq, compileCallInfoExactHOLW_eq, compileExtCallExactHOLW_eq]
            try rfl
          | some handler =>
            rcases handler with ⟨exceptionName, exceptionVariable, body⟩
            simp only [Flapjack.compileProgExactHOLW, compileProgExactHOLW, compileReturnExactHOLW_eq, compileStore32ExactHOLW_eq, compileStoreByteExactHOLW_eq, compileIfExactHOLW_eq, compileWhileExactHOLW_eq, compileGlobalAssignExactHOLW_eq, compileGlobalShMemLoadExactHOLW_eq, compileLocalAssignExactHOLW_eq, compilePrimitiveExactHOLW_eq, compileStoreExactHOLW_eq, compileRaiseExactHOLW_eq, compileShMemStoreExactHOLW_eq, compileShMemLoadExactHOLW_eq, compileDecExactHOLW_eq, compileDecCallExactHOLW_eq, compileCallNoReturnExactHOLW_eq, compileCallWrappedResultNoHandlerExactHOLW_eq, compileCallWrappedResultFallbackNoHandlerExactHOLW_eq, compileCallWrappedResultHandlerMissingEidExactHOLW_eq, compileCallWrappedResultHandlerPresentEidExactHOLW_eq, compileCallWrappedResultFallbackHandlerPresentEidExactHOLW_eq, compileCallWrappedResultFallbackHandlerMissingEidExactHOLW_eq, compileCallResultNoHandlerExactHOLW_eq, compileCallHandlerMissingEidExactHOLW_eq, compileCallHandlerPresentEidExactHOLW_eq, compileCallInfoExactHOLW_eq, compileExtCallExactHOLW_eq]
            rw [recursively body (by simp_wf; omega)]
            try rfl
    case assign kind name expression =>
      cases kind <;> simp only [Flapjack.compileProgExactHOLW, compileProgExactHOLW, compileReturnExactHOLW_eq, compileStore32ExactHOLW_eq, compileStoreByteExactHOLW_eq, compileIfExactHOLW_eq, compileWhileExactHOLW_eq, compileGlobalAssignExactHOLW_eq, compileGlobalShMemLoadExactHOLW_eq, compileLocalAssignExactHOLW_eq, compilePrimitiveExactHOLW_eq, compileStoreExactHOLW_eq, compileRaiseExactHOLW_eq, compileShMemStoreExactHOLW_eq, compileShMemLoadExactHOLW_eq, compileDecExactHOLW_eq, compileDecCallExactHOLW_eq, compileCallNoReturnExactHOLW_eq, compileCallWrappedResultNoHandlerExactHOLW_eq, compileCallWrappedResultFallbackNoHandlerExactHOLW_eq, compileCallWrappedResultHandlerMissingEidExactHOLW_eq, compileCallWrappedResultHandlerPresentEidExactHOLW_eq, compileCallWrappedResultFallbackHandlerPresentEidExactHOLW_eq, compileCallWrappedResultFallbackHandlerMissingEidExactHOLW_eq, compileCallResultNoHandlerExactHOLW_eq, compileCallHandlerMissingEidExactHOLW_eq, compileCallHandlerPresentEidExactHOLW_eq, compileCallInfoExactHOLW_eq, compileExtCallExactHOLW_eq] <;> rfl
    case shMemLoad operator kind name address =>
      cases kind <;> simp only [Flapjack.compileProgExactHOLW, compileProgExactHOLW, compileReturnExactHOLW_eq, compileStore32ExactHOLW_eq, compileStoreByteExactHOLW_eq, compileIfExactHOLW_eq, compileWhileExactHOLW_eq, compileGlobalAssignExactHOLW_eq, compileGlobalShMemLoadExactHOLW_eq, compileLocalAssignExactHOLW_eq, compilePrimitiveExactHOLW_eq, compileStoreExactHOLW_eq, compileRaiseExactHOLW_eq, compileShMemStoreExactHOLW_eq, compileShMemLoadExactHOLW_eq, compileDecExactHOLW_eq, compileDecCallExactHOLW_eq, compileCallNoReturnExactHOLW_eq, compileCallWrappedResultNoHandlerExactHOLW_eq, compileCallWrappedResultFallbackNoHandlerExactHOLW_eq, compileCallWrappedResultHandlerMissingEidExactHOLW_eq, compileCallWrappedResultHandlerPresentEidExactHOLW_eq, compileCallWrappedResultFallbackHandlerPresentEidExactHOLW_eq, compileCallWrappedResultFallbackHandlerMissingEidExactHOLW_eq, compileCallResultNoHandlerExactHOLW_eq, compileCallHandlerMissingEidExactHOLW_eq, compileCallHandlerPresentEidExactHOLW_eq, compileCallInfoExactHOLW_eq, compileExtCallExactHOLW_eq] <;> rfl
    all_goals simp only [Flapjack.compileProgExactHOLW, compileProgExactHOLW, compileReturnExactHOLW_eq, compileStore32ExactHOLW_eq, compileStoreByteExactHOLW_eq, compileIfExactHOLW_eq, compileWhileExactHOLW_eq, compileGlobalAssignExactHOLW_eq, compileGlobalShMemLoadExactHOLW_eq, compileLocalAssignExactHOLW_eq, compilePrimitiveExactHOLW_eq, compileStoreExactHOLW_eq, compileRaiseExactHOLW_eq, compileShMemStoreExactHOLW_eq, compileShMemLoadExactHOLW_eq, compileDecExactHOLW_eq, compileDecCallExactHOLW_eq, compileCallNoReturnExactHOLW_eq, compileCallWrappedResultNoHandlerExactHOLW_eq, compileCallWrappedResultFallbackNoHandlerExactHOLW_eq, compileCallWrappedResultHandlerMissingEidExactHOLW_eq, compileCallWrappedResultHandlerPresentEidExactHOLW_eq, compileCallWrappedResultFallbackHandlerPresentEidExactHOLW_eq, compileCallWrappedResultFallbackHandlerMissingEidExactHOLW_eq, compileCallResultNoHandlerExactHOLW_eq, compileCallHandlerMissingEidExactHOLW_eq, compileCallHandlerPresentEidExactHOLW_eq, compileCallInfoExactHOLW_eq, compileExtCallExactHOLW_eq]
    all_goals rfl

theorem compileProg_function_eq : @Flapjack.compileProgExactHOLW = @compileProgExactHOLW := by
  funext width inst context p
  exact compileProg_eq p context

#print axioms compileProg_function_eq

def compFuncExactHOLW {width : Nat} [NeZero width]
    (fs : HolFiniteMapExact MlS (List (MlS × ShapeHOL) × ShapeHOL))
    (eids : HolFiniteMapExact MlS (BitVec width))
    (params : List (MlS × ShapeHOL))
    (body : Flapjack.Pancake.PanLang.ProgHOL width) : CrepProgHOL width :=
  let vmap := panToCrepMakeVmapHOLExact params
  let shapes := params.map Prod.snd
  let vmax := sizeOfShapeHOL (.comb shapes) - 1
  compileProgExactHOLW (mkCtxtExactHOL vmap fs vmax eids) body


theorem compFunc_function_eq : @Flapjack.compFuncExactHOLW = @compFuncExactHOLW := by
  funext width inst functions exceptions params body
  simp only [Flapjack.compFuncExactHOLW, compFuncExactHOLW, compileProg_function_eq]

def compileDeclaration {width : Nat} [NeZero width]
    (functions : HolFiniteMapExact MlS (List (MlS × ShapeHOL) × ShapeHOL))
    (exceptions : HolFiniteMapExact MlS (BitVec width)) :
    DeclHOL width → Option (MlS × List Nat × CrepProgHOL width)
  | .function fn => some (fn.name, crepVarsHOL fn.params,
      compFuncExactHOLW functions exceptions fn.params fn.body)
  | _ => none

theorem compileDeclaration_eq : @InitECandidate.Proofs.CrepComputation.compileDeclaration = @compileDeclaration := by
  funext width inst functions exceptions declaration
  cases declaration <;> simp only [InitECandidate.Proofs.CrepComputation.compileDeclaration,
    compileDeclaration, compFunc_function_eq] <;> rfl

#print axioms compFunc_function_eq
#print axioms compileDeclaration_eq

mutual
  def crepExpToHOL {width : Nat} [NeZero width] : (expression : CrepExp (BitVec width)) → CrepExpHOL width
    | .const value => .const value
    | .var name => .var name
    | .load address => .load (crepExpToHOL address)
    | .load32 address => .load32 (crepExpToHOL address)
    | .loadByte address => .loadByte (crepExpToHOL address)
    | .loadGlob address => .loadGlob address
    | .op operator args => .op operator (crepExpListToHOL args)
    | .crepOp operator args => .crepOp operator (crepExpListToHOL args)
    | .cmp operator left right => .cmp operator (crepExpToHOL left) (crepExpToHOL right)
    | .shift operator left right => .shift operator (crepExpToHOL left) (crepExpToHOL right)
    | .baseAddr => .baseAddr
    | .topAddr => .topAddr
  termination_by structural expression => expression
  def crepExpListToHOL {width : Nat} [NeZero width] : (expressions : List (CrepExp (BitVec width))) → List (CrepExpHOL width)
    | [] => []
    | e :: es => crepExpToHOL e :: crepExpListToHOL es
  termination_by structural expressions => expressions
end


theorem crepExpListToHOL_eq_map {width : Nat} [NeZero width]
    (xs : List (CrepExp (BitVec width))) :
    crepExpListToHOL xs = xs.map crepExpToHOL := by
  induction xs with
  | nil => rfl
  | cons x xs ih => simp only [crepExpListToHOL, List.map_cons, ih]

theorem crepExpToHOL_eq {width : Nat} [NeZero width] (e : CrepExp (BitVec width)) :
    Flapjack.crepExpToHOL e = crepExpToHOL e := by
  induction e using (measure (sizeOf : CrepExp (BitVec width) → Nat)).wf.induction with
  | h e ih =>
    change ∀ child, sizeOf child < sizeOf e →
      Flapjack.crepExpToHOL child = crepExpToHOL child at ih
    cases e
    case op operator xs =>
      simp only [Flapjack.crepExpToHOL, crepExpToHOL, crepExpListToHOL_eq_map]
      congr 1
      apply List.map_congr_left
      intro child member
      exact ih child (by have := List.sizeOf_lt_of_mem member; simp only [CrepExp.op.sizeOf_spec]; omega)
    case crepOp operator xs =>
      simp only [Flapjack.crepExpToHOL, crepExpToHOL, crepExpListToHOL_eq_map]
      congr 1
      apply List.map_congr_left
      intro child member
      exact ih child (by have := List.sizeOf_lt_of_mem member; simp only [CrepExp.crepOp.sizeOf_spec]; omega)
    case load child =>
      simp only [Flapjack.crepExpToHOL, crepExpToHOL]
      rw [ih child (by decreasing_trivial)]
    case load32 child =>
      simp only [Flapjack.crepExpToHOL, crepExpToHOL]
      rw [ih child (by decreasing_trivial)]
    case loadByte child =>
      simp only [Flapjack.crepExpToHOL, crepExpToHOL]
      rw [ih child (by decreasing_trivial)]
    case cmp operator left right =>
      simp only [Flapjack.crepExpToHOL, crepExpToHOL]
      rw [ih left (by decreasing_trivial), ih right (by decreasing_trivial)]
    case shift operator left right =>
      simp only [Flapjack.crepExpToHOL, crepExpToHOL]
      rw [ih left (by decreasing_trivial), ih right (by decreasing_trivial)]
    all_goals simp only [Flapjack.crepExpToHOL, crepExpToHOL]

theorem crepExpToHOL_function_eq : @Flapjack.crepExpToHOL = @crepExpToHOL := by
  funext width inst e
  exact crepExpToHOL_eq e

#print axioms crepExpToHOL_function_eq

open Flapjack.Basis.Pure.MlString
def crepProgToHOL {width : Nat} [NeZero width] : (program : CrepProg (BitVec width)) → CrepProgHOL width
  | .skip => .skip
  | .dec name value body => .dec name (crepExpToHOL value) (crepProgToHOL body)
  | .assign name value => .assign name (crepExpToHOL value)
  | .primitive names operator args => .primitive names operator args
  | .store address value => .store (crepExpToHOL address) (crepExpToHOL value)
  | .store32 address value => .store32 (crepExpToHOL address) (crepExpToHOL value)
  | .storeByte address value => .storeByte (crepExpToHOL address) (crepExpToHOL value)
  | .storeGlob address value => .storeGlob address (crepExpToHOL value)
  | .seq first second => .seq (crepProgToHOL first) (crepProgToHOL second)
  | .ite condition thenBranch elseBranch =>
      .ite (crepExpToHOL condition) (crepProgToHOL thenBranch) (crepProgToHOL elseBranch)
  | .while condition body => .while (crepExpToHOL condition) (crepProgToHOL body)
  | .break label => .break label
  | .continue label => .continue label
  | .call none name args => .call none (ofString name) (args.map crepExpToHOL)
  | .call (some (returns, none)) name args =>
      .call (some (returns, none)) (ofString name) (args.map crepExpToHOL)
  | .call (some (returns, some (handler, body))) name args =>
      .call (some (returns, some (handler, crepProgToHOL body))) (ofString name)
        (args.map crepExpToHOL)
  | .extCall function configuration configurationLength array arrayLength =>
      .extCall (ofString function) configuration configurationLength array arrayLength
  | .raise exception => .raise exception
  | .return values => .return (values.map crepExpToHOL)
  | .shMem operator name address => .shMem operator name (crepExpToHOL address)
  | .tick => .tick
termination_by structural program => program


theorem crepProgToHOL_eq {width : Nat} [NeZero width] (p : CrepProg (BitVec width)) :
    Flapjack.crepProgToHOL p = crepProgToHOL p := by
  induction p using (measure (sizeOf : CrepProg (BitVec width) → Nat)).wf.induction with
  | h p ih =>
    change ∀ child, sizeOf child < sizeOf p →
      Flapjack.crepProgToHOL child = crepProgToHOL child at ih
    cases p
    case dec name value body =>
      simp only [Flapjack.crepProgToHOL, crepProgToHOL, crepExpToHOL_function_eq]
      rw [ih body (by decreasing_trivial)]
    case seq first second =>
      simp only [Flapjack.crepProgToHOL, crepProgToHOL]
      rw [ih first (by decreasing_trivial), ih second (by decreasing_trivial)]
    case ite condition first second =>
      simp only [Flapjack.crepProgToHOL, crepProgToHOL, crepExpToHOL_function_eq]
      rw [ih first (by decreasing_trivial), ih second (by decreasing_trivial)]
    case «while» condition body =>
      simp only [Flapjack.crepProgToHOL, crepProgToHOL, crepExpToHOL_function_eq]
      rw [ih body (by decreasing_trivial)]
    case call returns function args =>
      cases returns with
      | none => simp only [Flapjack.crepProgToHOL, crepProgToHOL, crepExpToHOL_function_eq]
      | some ret =>
        rcases ret with ⟨returns, handler⟩
        cases handler with
        | none => simp only [Flapjack.crepProgToHOL, crepProgToHOL, crepExpToHOL_function_eq]
        | some handler =>
          rcases handler with ⟨exception, body⟩
          simp only [Flapjack.crepProgToHOL, crepProgToHOL, crepExpToHOL_function_eq]
          rw [ih body (by simp_wf; omega)]
    all_goals simp only [Flapjack.crepProgToHOL, crepProgToHOL, crepExpToHOL_function_eq]

theorem crepProgToHOL_function_eq : @Flapjack.crepProgToHOL = @crepProgToHOL := by
  funext width inst p
  exact crepProgToHOL_eq p

#print axioms crepProgToHOL_function_eq

end InitECandidate.Proofs.CrepKernelComputation
