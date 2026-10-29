import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendCodecComputation
import InitECandidate.Proofs.GlobalsComputation
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.GlobalsKernelComputation
open Flapjack Flapjack.Pancake.PanLang
open Flapjack.Basis.Pure.MlString
mutual
  def compileExpExactHOL {width : Nat} [NeZero width]
      (context : PanGlobalsContextExact width) :
      (expression : ExpHOL width) → ExpHOL width
    | .const value => .const value
    | .var .local name => .var .local name
    | .var .global name =>
        match context.globals.lookup name with
        | some (shape, address) =>
            .load shape (.op .sub [.topAddr, .const address])
        | none => .const (0 : BitVec width)
    | .rstruct fields => .rstruct (compileExpExactHOLList context fields)
    | .rfield index value => .rfield index (compileExpExactHOL context value)
    | .nstruct _ _ => .const (0 : BitVec width)
    | .nfield _ _ => .const (0 : BitVec width)
    | .load shape address => .load shape (compileExpExactHOL context address)
    | .load32 address => .load32 (compileExpExactHOL context address)
    | .loadByte address => .loadByte (compileExpExactHOL context address)
    | .op operator args => .op operator (compileExpExactHOLList context args)
    | .panop operator args => .panop operator (compileExpExactHOLList context args)
    | .cmp operator left right =>
        .cmp operator (compileExpExactHOL context left)
          (compileExpExactHOL context right)
    | .shift operator left right =>
        .shift operator (compileExpExactHOL context left)
          (compileExpExactHOL context right)
    | .baseAddr => .baseAddr
    | .topAddr => .op .sub [.topAddr, .const context.maxGlobalsSize]
    | .bytesInWord => .bytesInWord
  termination_by structural expression => expression

  def compileExpExactHOLList {width : Nat} [NeZero width]
      (context : PanGlobalsContextExact width) :
      (expressions : List (ExpHOL width)) → List (ExpHOL width)
    | [] => []
    | expression :: expressions =>
        compileExpExactHOL context expression ::
          compileExpExactHOLList context expressions
  termination_by structural expressions => expressions
end

theorem structuralExpList_eq_map {width : Nat} [NeZero width]
    (context : PanGlobalsContextExact width) (xs : List (ExpHOL width)) :
    compileExpExactHOLList context xs = xs.map (compileExpExactHOL context) := by
  induction xs with
  | nil => simp only [compileExpExactHOLList, List.map_nil]
  | cons x xs ih => simp only [compileExpExactHOLList, List.map_cons, ih]

theorem originalExpList_eq_map {width : Nat} [NeZero width]
    (context : PanGlobalsContextExact width) (xs : List (ExpHOL width)) :
    Flapjack.compileExpExactHOLList context xs = xs.map (Flapjack.compileExpExactHOL context) := by
  induction xs with
  | nil => simp only [Flapjack.compileExpExactHOLList, List.map_nil]
  | cons x xs ih => simp only [Flapjack.compileExpExactHOLList, List.map_cons, ih]

theorem compileExp_eq {width : Nat} [NeZero width]
    (e : ExpHOL width) (context : PanGlobalsContextExact width) :
    Flapjack.compileExpExactHOL context e = compileExpExactHOL context e := by
  induction e using (measure (sizeOf : ExpHOL width → Nat)).wf.induction generalizing context with
  | h e ih =>
    change ∀ child, sizeOf child < sizeOf e → ∀ context,
      Flapjack.compileExpExactHOL context child = compileExpExactHOL context child at ih
    have mapped (xs : List (ExpHOL width))
        (bounds : ∀ x ∈ xs, sizeOf x < sizeOf e) :
        Flapjack.compileExpExactHOLList context xs = xs.map (compileExpExactHOL context) := by
      rw [originalExpList_eq_map]
      apply List.map_congr_left
      intro x member
      exact ih x (bounds x member) context
    cases e
    case rstruct xs =>
      simp only [Flapjack.compileExpExactHOL, compileExpExactHOL, structuralExpList_eq_map]
      rw [mapped xs (by intros; sizeOf_list_dec)]
      try rfl
    case op operator xs =>
      simp only [Flapjack.compileExpExactHOL, compileExpExactHOL, structuralExpList_eq_map]
      rw [mapped xs (by intros; sizeOf_list_dec)]
      try rfl
    case panop operator xs =>
      simp only [Flapjack.compileExpExactHOL, compileExpExactHOL, structuralExpList_eq_map]
      rw [mapped xs (by intros; sizeOf_list_dec)]
      try rfl
    case rfield index child =>
      simp only [Flapjack.compileExpExactHOL, compileExpExactHOL]
      rw [ih child (by decreasing_trivial)]
      try rfl
    case load shape child =>
      simp only [Flapjack.compileExpExactHOL, compileExpExactHOL]
      rw [ih child (by decreasing_trivial)]
      try rfl
    case load32 child =>
      simp only [Flapjack.compileExpExactHOL, compileExpExactHOL]
      rw [ih child (by decreasing_trivial)]
      try rfl
    case loadByte child =>
      simp only [Flapjack.compileExpExactHOL, compileExpExactHOL]
      rw [ih child (by decreasing_trivial)]
      try rfl
    case cmp operator left right =>
      simp only [Flapjack.compileExpExactHOL, compileExpExactHOL]
      rw [ih left (by decreasing_trivial), ih right (by decreasing_trivial)]
      try rfl
    case shift operator left right =>
      simp only [Flapjack.compileExpExactHOL, compileExpExactHOL]
      rw [ih left (by decreasing_trivial), ih right (by decreasing_trivial)]
      try rfl
    case var kind name => cases kind <;> simp only [Flapjack.compileExpExactHOL, compileExpExactHOL] <;> rfl
    all_goals simp only [Flapjack.compileExpExactHOL, compileExpExactHOL]
    all_goals rfl

theorem compileExp_function_eq : @Flapjack.compileExpExactHOL = @compileExpExactHOL := by
  funext width inst context e
  exact compileExp_eq e context

theorem compileExpList_function_eq : @Flapjack.compileExpExactHOLList = @compileExpExactHOLList := by
  funext width inst context xs
  simp only [originalExpList_eq_map, structuralExpList_eq_map, compileExp_function_eq]

#print axioms compileExp_function_eq
#print axioms compileExpList_function_eq
def compileProgExactHOL {width : Nat} [NeZero width]
    (context : PanGlobalsContextExact width) : (program : ProgHOL width) → ProgHOL width
  | .skip => .skip
  | .dec name shape value body =>
      .dec name shape (compileExpExactHOL context value) (compileProgExactHOL context body)
  | .assign .global name value =>
      match context.globals.lookup name with
      | some (_shape, address) =>
          .store (.op .sub [.topAddr, .const address]) (compileExpExactHOL context value)
      | none => .skip
  | .assign .local name value => .assign .local name (compileExpExactHOL context value)
  | .primitive name operator args =>
      .primitive name operator (compileExpExactHOLList context args)
  | .store address value =>
      .store (compileExpExactHOL context address) (compileExpExactHOL context value)
  | .store32 address value =>
      .store32 (compileExpExactHOL context address) (compileExpExactHOL context value)
  | .storeByte address value =>
      .storeByte (compileExpExactHOL context address) (compileExpExactHOL context value)
  | .seq first second =>
      .seq (compileProgExactHOL context first) (compileProgExactHOL context second)
  | .ite condition thenBranch elseBranch =>
      .ite (compileExpExactHOL context condition)
        (compileProgExactHOL context thenBranch) (compileProgExactHOL context elseBranch)
  | .while condition body =>
      .while (compileExpExactHOL context condition) (compileProgExactHOL context body)
  | .call info function args =>
      let cargs := compileExpExactHOLList context args
      match info with
      | none => .call none function cargs
      | some (none, none) => .call (some (none, none)) function cargs
      | some (none, some (exception, handlerVar, handler)) =>
          .call (some (none, some (exception, handlerVar,
            compileProgExactHOL context handler))) function cargs
      | some (some (.local, name), none) =>
          .call (some (some (.local, name), none)) function cargs
      | some (some (.local, name), some (exception, handlerVar, handler)) =>
          .call (some (some (.local, name), some (exception, handlerVar,
            compileProgExactHOL context handler))) function cargs
      | some (some (.global, name), none) =>
          match context.globals.lookup name with
          | some (shape, address) =>
              .decCall (ofString "") shape function cargs
                (.store (.op .sub [.topAddr, .const address]) (.var .local (ofString "")))
          | none => .call (some (none, none)) function cargs
      | some (some (.global, name), some (exception, handlerVar, handler)) =>
          match context.globals.lookup name with
          | some (shape, address) =>
              let compiledHandler := compileProgExactHOL context handler
              let names := handlerVar :: freeVarIdsHOL compiledHandler ++
                cargs.flatMap varExpHOL
              let resultName := freshNameMlS (ofString "") names
              let flagName := freshNameMlS (ofString "vn'") (resultName :: names)
              let handlerBody :=
                .seq compiledHandler (.assign .local flagName (.const (BitVec.ofNat width 1)))
              let callInfo := some (some (.local, resultName),
                some (exception, handlerVar, handlerBody))
              let storeAddress := .op .sub [.topAddr, .const address]
              .dec resultName shape (shapeValHOL shape)
                (.dec flagName .one (.const (BitVec.ofNat width 0))
                  (.seq (.call callInfo function cargs)
                    (.ite (.var .local flagName) .skip
                      (.store storeAddress (.var .local resultName)))))
          | none =>
              .call (some (none, some (exception, handlerVar,
                compileProgExactHOL context handler))) function cargs
  | .decCall name shape function args body =>
      .decCall name shape function (compileExpExactHOLList context args)
        (compileProgExactHOL context body)
  | .extCall function config configLength array arrayLength =>
      .extCall function (compileExpExactHOL context config)
        (compileExpExactHOL context configLength) (compileExpExactHOL context array)
        (compileExpExactHOL context arrayLength)
  | .raise exception value => .raise exception (compileExpExactHOL context value)
  | .return value => .return (compileExpExactHOL context value)
  | .shMemLoad size .local name address =>
      .shMemLoad size .local name (compileExpExactHOL context address)
  | .shMemLoad size .global name address =>
      match context.globals.lookup name with
      | some (.one, globalAddress) =>
          let localName := mlstrAppend name (ofString "'")
          .dec name .one (compileExpExactHOL context address)
            (.dec localName .one (.const (BitVec.ofNat width 0))
              (.seq (.shMemLoad size .local localName (.var .local name))
                (.store (.op .sub [.topAddr, .const globalAddress]) (.var .local localName))))
      | _ => .skip
  | .shMemStore size address value =>
      .shMemStore size (compileExpExactHOL context address) (compileExpExactHOL context value)
  | program => program
termination_by structural program => program

set_option linter.unusedSimpArgs false in
theorem compileProg_eq {width : Nat} [NeZero width]
    (p : ProgHOL width) (context : PanGlobalsContextExact width) :
    Flapjack.compileProgExactHOL context p = compileProgExactHOL context p := by
  induction p using (measure (sizeOf : ProgHOL width → Nat)).wf.induction generalizing context with
  | h p ih =>
    change ∀ child, sizeOf child < sizeOf p → ∀ context,
      Flapjack.compileProgExactHOL context child = compileProgExactHOL context child at ih
    have recursively (child : ProgHOL width) (bound : sizeOf child < sizeOf p) :
        (fun ctx => Flapjack.compileProgExactHOL ctx child) =
          (fun ctx => compileProgExactHOL ctx child) :=
      funext (fun ctx => ih child bound ctx)
    cases p
    case dec name shape expression body =>
      simp only [Flapjack.compileProgExactHOL, compileProgExactHOL, compileExp_function_eq, compileExpList_function_eq]
      rw [ih body (by decreasing_trivial)]
      try rfl
    case decCall name shape function args body =>
      simp only [Flapjack.compileProgExactHOL, compileProgExactHOL, compileExp_function_eq, compileExpList_function_eq]
      rw [ih body (by decreasing_trivial)]
      try rfl
    case seq first second =>
      simp only [Flapjack.compileProgExactHOL, compileProgExactHOL, compileExp_function_eq, compileExpList_function_eq]
      rw [ih first (by decreasing_trivial), ih second (by decreasing_trivial)]
      try rfl
    case ite condition first second =>
      simp only [Flapjack.compileProgExactHOL, compileProgExactHOL, compileExp_function_eq, compileExpList_function_eq]
      rw [ih first (by decreasing_trivial), ih second (by decreasing_trivial)]
      try rfl
    case «while» condition body =>
      simp only [Flapjack.compileProgExactHOL, compileProgExactHOL, compileExp_function_eq, compileExpList_function_eq]
      rw [ih body (by decreasing_trivial)]
      try rfl
    case call info function args =>
      cases info with
      | none =>
        simp only [Flapjack.compileProgExactHOL, compileProgExactHOL, compileExp_function_eq, compileExpList_function_eq]
        try rfl
      | some info =>
        rcases info with ⟨result, handler⟩
        cases result with
        | none =>
          cases handler with
          | none =>
            simp only [Flapjack.compileProgExactHOL, compileProgExactHOL, compileExp_function_eq, compileExpList_function_eq]
            try rfl
          | some handler =>
            rcases handler with ⟨exceptionName, exceptionVariable, body⟩
            simp only [Flapjack.compileProgExactHOL, compileProgExactHOL, compileExp_function_eq, compileExpList_function_eq]
            rw [ih body (by simp_wf; omega)]
            try rfl
        | some result =>
          rcases result with ⟨kind, resultName⟩
          cases handler with
          | none =>
            cases kind <;> simp only [Flapjack.compileProgExactHOL, compileProgExactHOL, compileExp_function_eq, compileExpList_function_eq] <;> rfl
          | some handler =>
            rcases handler with ⟨exceptionName, exceptionVariable, body⟩
            cases kind <;> simp only [Flapjack.compileProgExactHOL, compileProgExactHOL, compileExp_function_eq, compileExpList_function_eq]
            all_goals rw [ih body (by simp_wf; omega)]
            all_goals rfl
    case assign kind name expression =>
      cases kind <;> simp only [Flapjack.compileProgExactHOL, compileProgExactHOL, compileExp_function_eq, compileExpList_function_eq] <;> rfl
    case shMemLoad operator kind name address =>
      cases kind <;> simp only [Flapjack.compileProgExactHOL, compileProgExactHOL, compileExp_function_eq, compileExpList_function_eq] <;> rfl
    all_goals simp only [Flapjack.compileProgExactHOL, compileProgExactHOL, compileExp_function_eq, compileExpList_function_eq]
    all_goals rfl

theorem compileProg_function_eq : @Flapjack.compileProgExactHOL = @compileProgExactHOL := by
  funext width inst context p
  exact compileProg_eq p context

#print axioms compileProg_function_eq

#print axioms compileProg_function_eq
def compileDecsExactHOL {width : Nat} [NeZero width]
    (context : PanGlobalsContextExact width) :
    (declarations : List (DeclHOL width)) →
      List (ProgHOL width) × List (DeclHOL width) × List (DeclHOL width) ×
        PanGlobalsContextExact width
  | [] => ([], [], [], context)
  | .decl shape name value :: declarations =>
      let address := (context.globalsSize + cakeBytesInWord width * BitVec.ofNat width (sizeOfShapeHOL shape))
      let nextContext : PanGlobalsContextExact width := {
        context with
        globals := context.globals.updateEq (name, (shape, address))
        globalsSize := address
      }
      let (initializers, functions, exceptions, finalContext) :=
        compileDecsExactHOL nextContext declarations
      (.store (.op .sub [.topAddr, .const address])
          (compileExpExactHOL context value) :: initializers,
        functions, exceptions, finalContext)
  | .function declaration :: declarations =>
      let (initializers, functions, exceptions, finalContext) :=
        compileDecsExactHOL context declarations
      (initializers,
        .function { declaration with body := compileProgExactHOL context declaration.body }
          :: functions,
        exceptions, finalContext)
  | .exnDecl exceptionName shape :: declarations =>
      let (initializers, functions, exceptions, finalContext) :=
        compileDecsExactHOL context declarations
      (initializers, functions, .exnDecl exceptionName shape :: exceptions, finalContext)
  | .name _ _ :: declarations => compileDecsExactHOL context declarations
termination_by structural declarations => declarations


theorem compileDecs_eq {width : Nat} [NeZero width]
    (ds : List (DeclHOL width)) (context : PanGlobalsContextExact width) :
    Flapjack.compileDecsExactHOL context ds = compileDecsExactHOL context ds := by
  induction ds generalizing context with
  | nil => simp only [Flapjack.compileDecsExactHOL, compileDecsExactHOL]
  | cons d ds ih =>
    cases d <;> simp only [Flapjack.compileDecsExactHOL, compileDecsExactHOL,
      Flapjack.compileDecsGlobalAddressExact_eq, compileExp_function_eq,
      compileProg_function_eq, ih]

theorem compileDecs_function_eq : @Flapjack.compileDecsExactHOL = @compileDecsExactHOL := by
  funext width inst context ds
  exact compileDecs_eq ds context
#print axioms compileDecs_function_eq

def fpermHOL {width : Nat} [NeZero width] (f g : MlS) : (program : ProgHOL width) → ProgHOL width
  | .dec name shape value body => .dec name shape value (fpermHOL f g body)
  | .seq first second => .seq (fpermHOL f g first) (fpermHOL f g second)
  | .ite condition thenBranch elseBranch =>
      .ite condition (fpermHOL f g thenBranch) (fpermHOL f g elseBranch)
  | .while condition body => .while condition (fpermHOL f g body)
  | .call info name args =>
      .call (match info with
             | none => none
             | some (kindOpt, handlerOpt) =>
                 some (kindOpt, match handlerOpt with
                               | none => none
                               | some (eid, binding, handler) =>
                                   some (eid, binding, fpermHOL f g handler)))
        (fpermName f g name) args
  | .decCall name shape function args body =>
      .decCall name shape (fpermName f g function) args (fpermHOL f g body)
  | program => program
termination_by structural program => program


theorem fperm_eq {width : Nat} [NeZero width] (p : ProgHOL width) (f g : MlS) :
    Flapjack.fpermHOL f g p = fpermHOL f g p := by
  induction p using (measure (sizeOf : ProgHOL width → Nat)).wf.induction with
  | h p ih =>
    change ∀ child, sizeOf child < sizeOf p → Flapjack.fpermHOL f g child = fpermHOL f g child at ih
    cases p
    case dec n s e b => simp only [Flapjack.fpermHOL, fpermHOL]; rw [ih b (by decreasing_trivial)]
    case seq a b => simp only [Flapjack.fpermHOL, fpermHOL]; rw [ih a (by decreasing_trivial), ih b (by decreasing_trivial)]
    case ite c a b => simp only [Flapjack.fpermHOL, fpermHOL]; rw [ih a (by decreasing_trivial), ih b (by decreasing_trivial)]
    case «while» c b => simp only [Flapjack.fpermHOL, fpermHOL]; rw [ih b (by decreasing_trivial)]
    case decCall n s funName args b => simp only [Flapjack.fpermHOL, fpermHOL]; rw [ih b (by decreasing_trivial)]
    case call info funName args =>
      cases info with
      | none => simp only [Flapjack.fpermHOL, fpermHOL]
      | some info =>
        rcases info with ⟨result, handler⟩
        cases handler with
        | none => simp only [Flapjack.fpermHOL, fpermHOL]
        | some handler =>
          rcases handler with ⟨eid, binding, body⟩
          simp only [Flapjack.fpermHOL, fpermHOL]
          rw [ih body (by simp_wf; omega)]
    all_goals simp only [Flapjack.fpermHOL, fpermHOL]

theorem fperm_function_eq : @Flapjack.fpermHOL = @fpermHOL := by
  funext width inst f g p
  exact fperm_eq p f g
#print axioms fperm_function_eq

end InitECandidate.Proofs.GlobalsKernelComputation
