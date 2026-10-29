import InitECandidate.Proofs.CompactComputation
import Flapjack.Pancake.PanLang.Decl
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendCodecComputation
open Flapjack Flapjack.Pancake.PanLang Flapjack.Basis.Pure.MlString
/-! Checked structural companions for the production-to-HOL syntax codecs. -/
mutual
  def shapeToHOLStructural : (shape : Shape) → ShapeHOL
    | .one => .one
    | .comb fields => .comb (shapeListToHOLStructural fields)
    | .named name => .named (ofString name)
  termination_by structural shape => shape
  def shapeListToHOLStructural : (shapes : List Shape) → List ShapeHOL
    | [] => []
    | shape :: shapes => shapeToHOLStructural shape :: shapeListToHOLStructural shapes
  termination_by structural shapes => shapes
end

theorem shapeListToHOL_eq_map (xs : List Shape) :
    shapeListToHOLStructural xs = xs.map shapeToHOLStructural := by
  induction xs with
  | nil => rfl
  | cons x xs ih => simp only [shapeListToHOLStructural, List.map_cons, ih]

theorem shapeToHOL_eq (shape : Shape) : shapeToHOL shape = shapeToHOLStructural shape := by
  induction shape using (measure (sizeOf : Shape → Nat)).wf.induction with
  | h shape ih =>
    change ∀ child, sizeOf child < sizeOf shape → shapeToHOL child = shapeToHOLStructural child at ih
    cases shape
    case comb fields =>
      simp only [shapeToHOL, shapeToHOLStructural, shapeListToHOL_eq_map]
      congr 1
      apply List.map_congr_left
      intro child member
      exact ih child (by have := List.sizeOf_lt_of_mem member; simp only [Shape.comb.sizeOf_spec]; omega)
    all_goals simp only [shapeToHOL, shapeToHOLStructural]

theorem shapeToHOL_function_eq : shapeToHOL = shapeToHOLStructural := by
  funext shape
  exact shapeToHOL_eq shape

#print axioms shapeToHOL_function_eq

mutual
  def expToHOLStructural {width : Nat} [NeZero width] :
      (expression : Flapjack.Exp (BitVec width)) → ExpHOL width
    | .const value => .const value
    | .var kind name => .var kind (ofString name)
    | .rStruct fields => .rstruct (expListToHOLStructural fields)
    | .rField index value => .rfield index (expToHOLStructural value)
    | .nStruct name fields =>
        .nstruct (ofString name) (expFieldListToHOLStructural fields)
    | .nField name value => .nfield (ofString name) (expToHOLStructural value)
    | .load shape address => .load (shapeToHOLStructural shape) (expToHOLStructural address)
    | .load32 address => .load32 (expToHOLStructural address)
    | .loadByte address => .loadByte (expToHOLStructural address)
    | .op operator args => .op operator (expListToHOLStructural args)
    | .panOp operator args => .panop operator (expListToHOLStructural args)
    | .cmp operator left right => .cmp operator (expToHOLStructural left) (expToHOLStructural right)
    | .shift operator left right => .shift operator (expToHOLStructural left) (expToHOLStructural right)
    | .baseAddr => .baseAddr
    | .topAddr => .topAddr
    | .bytesInWord => .bytesInWord
  termination_by structural expression => expression
  def expListToHOLStructural {width : Nat} [NeZero width] :
      (expressions : List (Exp (BitVec width))) → List (ExpHOL width)
    | [] => []
    | e :: es => expToHOLStructural e :: expListToHOLStructural es
  termination_by structural expressions => expressions
  def expFieldListToHOLStructural {width : Nat} [NeZero width] :
      (fields : List (String × Exp (BitVec width))) → List (MlS × ExpHOL width)
    | [] => []
    | field :: fields => expFieldToHOLStructural field :: expFieldListToHOLStructural fields
  termination_by structural fields => fields
  def expFieldToHOLStructural {width : Nat} [NeZero width] :
      (field : String × Exp (BitVec width)) → MlS × ExpHOL width
    | (name, e) => (ofString name, expToHOLStructural e)
  termination_by structural field => field
end


theorem expListToHOL_eq_map {width : Nat} [NeZero width] (xs : List (Exp (BitVec width))) :
    expListToHOLStructural xs = xs.map expToHOLStructural := by
  induction xs with
  | nil => rfl
  | cons x xs ih => simp only [expListToHOLStructural, List.map_cons, ih]

theorem expFieldListToHOL_eq_map {width : Nat} [NeZero width] (xs : List (String × Exp (BitVec width))) :
    expFieldListToHOLStructural xs = xs.map (fun p => (ofString p.1, expToHOLStructural p.2)) := by
  induction xs with
  | nil => rfl
  | cons x xs ih =>
    rcases x with ⟨name, value⟩
    simp only [expFieldListToHOLStructural, expFieldToHOLStructural, List.map_cons, ih]

theorem expToHOL_eq {width : Nat} [NeZero width] (e : Exp (BitVec width)) :
    expToHOL e = expToHOLStructural e := by
  induction e using (measure (sizeOf : Exp (BitVec width) → Nat)).wf.induction with
  | h e ih =>
    change ∀ child, sizeOf child < sizeOf e → expToHOL child = expToHOLStructural child at ih
    cases e
    case rStruct fields =>
      simp only [expToHOL, expToHOLStructural, expListToHOL_eq_map]
      congr 1
      apply List.map_congr_left
      intro child member
      exact ih child (by have := List.sizeOf_lt_of_mem member; simp only [Exp.rStruct.sizeOf_spec]; omega)
    case op operator fields =>
      simp only [expToHOL, expToHOLStructural, expListToHOL_eq_map]
      congr 1
      apply List.map_congr_left
      intro child member
      exact ih child (by have := List.sizeOf_lt_of_mem member; simp only [Exp.op.sizeOf_spec]; omega)
    case panOp operator fields =>
      simp only [expToHOL, expToHOLStructural, expListToHOL_eq_map]
      congr 1
      apply List.map_congr_left
      intro child member
      exact ih child (by have := List.sizeOf_lt_of_mem member; simp only [Exp.panOp.sizeOf_spec]; omega)
    case nStruct name fields =>
      simp only [expToHOL, expToHOLStructural, expFieldListToHOL_eq_map]
      congr 1
      apply List.map_congr_left
      intro field member
      rcases field with ⟨fieldName, child⟩
      have hmem := List.sizeOf_lt_of_mem member
      have smaller : sizeOf child < sizeOf (fieldName, child) := by simp +arith
      rw [ih child (by simp only [Exp.nStruct.sizeOf_spec]; omega)]
    case rField index child =>
      simp only [expToHOL, expToHOLStructural]
      rw [ih child (by decreasing_trivial)]
    case nField name child =>
      simp only [expToHOL, expToHOLStructural]
      rw [ih child (by decreasing_trivial)]
    case load shape child =>
      simp only [expToHOL, expToHOLStructural, shapeToHOL_function_eq]
      rw [ih child (by decreasing_trivial)]
    case load32 child =>
      simp only [expToHOL, expToHOLStructural]
      rw [ih child (by decreasing_trivial)]
    case loadByte child =>
      simp only [expToHOL, expToHOLStructural]
      rw [ih child (by decreasing_trivial)]
    case cmp operator left right =>
      simp only [expToHOL, expToHOLStructural]
      rw [ih left (by decreasing_trivial), ih right (by decreasing_trivial)]
    case shift operator left right =>
      simp only [expToHOL, expToHOLStructural]
      rw [ih left (by decreasing_trivial), ih right (by decreasing_trivial)]
    all_goals simp only [expToHOL, expToHOLStructural]

theorem expToHOL_function_eq : @expToHOL = @expToHOLStructural := by
  funext width inst e
  exact expToHOL_eq e

#print axioms expToHOL_function_eq

def progToHOLStructural {width : Nat} [NeZero width] : (program : Prog (BitVec width)) → ProgHOL width
  | .skip => .skip
  | .dec name shape value body =>
      .dec (ofString name) (shapeToHOLStructural shape) (expToHOLStructural value) (progToHOLStructural body)
  | .assign kind name value => .assign kind (ofString name) (expToHOLStructural value)
  | .primitive name operator args => .primitive (ofString name) operator (args.map expToHOLStructural)
  | .store address value => .store (expToHOLStructural address) (expToHOLStructural value)
  | .store32 address value => .store32 (expToHOLStructural address) (expToHOLStructural value)
  | .storeByte address value => .storeByte (expToHOLStructural address) (expToHOLStructural value)
  | .seq first second => .seq (progToHOLStructural first) (progToHOLStructural second)
  | .ite condition thenBranch elseBranch =>
      .ite (expToHOLStructural condition) (progToHOLStructural thenBranch) (progToHOLStructural elseBranch)
  | .while condition body => .while (expToHOLStructural condition) (progToHOLStructural body)
  | .break => .break
  | .continue => .continue
  | .call none name args => .call none (ofString name) (args.map expToHOLStructural)
  | .call (some (kindOpt, none)) name args =>
      .call (some (kindOpt.map (fun kv => (kv.1, ofString kv.2)), none))
        (ofString name) (args.map expToHOLStructural)
  | .call (some (kindOpt, some (eid, v, body))) name args =>
      .call
        (some (kindOpt.map (fun kv => (kv.1, ofString kv.2)),
          some (ofString eid, ofString v, progToHOLStructural body)))
        (ofString name) (args.map expToHOLStructural)
  | .decCall name shape function args body =>
      .decCall (ofString name) (shapeToHOLStructural shape) (ofString function)
        (args.map expToHOLStructural) (progToHOLStructural body)
  | .extCall function configuration configurationLength array arrayLength =>
      .extCall (ofString function) (expToHOLStructural configuration) (expToHOLStructural configurationLength)
        (expToHOLStructural array) (expToHOLStructural arrayLength)
  | .raise exception value => .raise (ofString exception) (expToHOLStructural value)
  | .return value => .return (expToHOLStructural value)
  | .shMemLoad size kind name address =>
      .shMemLoad size kind (ofString name) (expToHOLStructural address)
  | .shMemStore size address value => .shMemStore size (expToHOLStructural address) (expToHOLStructural value)
  | .tick => .tick
  | .annot tag text => .annot (ofString tag) (ofString text)
termination_by structural program => program

theorem progToHOL_eq {width : Nat} [NeZero width] (p : Prog (BitVec width)) :
    progToHOL p = progToHOLStructural p := by
  induction p using (measure (sizeOf : Prog (BitVec width) → Nat)).wf.induction with
  | h p ih =>
    change ∀ child, sizeOf child < sizeOf p → progToHOL child = progToHOLStructural child at ih
    cases p
    case dec name shape value body =>
      simp only [progToHOL, progToHOLStructural, expToHOL_function_eq, shapeToHOL_function_eq]
      rw [ih body (by decreasing_trivial)]
    case decCall name shape function args body =>
      simp only [progToHOL, progToHOLStructural, expToHOL_function_eq, shapeToHOL_function_eq]
      rw [ih body (by decreasing_trivial)]
    case seq first second =>
      simp only [progToHOL, progToHOLStructural]
      rw [ih first (by decreasing_trivial), ih second (by decreasing_trivial)]
    case ite condition first second =>
      simp only [progToHOL, progToHOLStructural, expToHOL_function_eq]
      rw [ih first (by decreasing_trivial), ih second (by decreasing_trivial)]
    case «while» condition body =>
      simp only [progToHOL, progToHOLStructural, expToHOL_function_eq]
      rw [ih body (by decreasing_trivial)]
    case call returns function args =>
      cases returns with
      | none => simp only [progToHOL, progToHOLStructural, expToHOL_function_eq]
      | some ret =>
        rcases ret with ⟨kind, handler⟩
        cases handler with
        | none => simp only [progToHOL, progToHOLStructural, expToHOL_function_eq]
        | some handler =>
          rcases handler with ⟨exception, exceptionVariable, body⟩
          simp only [progToHOL, progToHOLStructural, expToHOL_function_eq]
          rw [ih body (by simp_wf; omega)]
    all_goals simp only [progToHOL, progToHOLStructural, expToHOL_function_eq, shapeToHOL_function_eq]

theorem progToHOL_function_eq : @progToHOL = @progToHOLStructural := by
  funext width inst p
  exact progToHOL_eq p

#print axioms progToHOL_function_eq


def paramToHOLStructural (p : String × Shape) : MlS × ShapeHOL :=
  (ofString p.1, shapeToHOLStructural p.2)

theorem paramToHOL_function_eq : paramToHOL = paramToHOLStructural := by
  funext p
  simp only [paramToHOL, paramToHOLStructural, shapeToHOL_function_eq]

def funDeclToHOLStructural {width : Nat} [NeZero width] (d : FunDeclOf width) : FunDeclHOL width :=
  { name := ofString d.name
    inline := d.inline
    exported := d.exported
    params := d.params.map paramToHOLStructural
    body := progToHOLStructural d.body
    returnShape := shapeToHOLStructural d.returnShape }

theorem funDeclToHOL_function_eq : @funDeclToHOL = @funDeclToHOLStructural := by
  funext width inst d
  simp only [funDeclToHOL, funDeclToHOLStructural, paramToHOL_function_eq,
    progToHOL_function_eq, shapeToHOL_function_eq]

def declToHOLStructural {width : Nat} [NeZero width] : Decl (BitVec width) → DeclHOL width
  | .function d => .function (funDeclToHOLStructural d)
  | .decl shape name value => .decl (shapeToHOLStructural shape) (ofString name) (expToHOLStructural value)
  | .exnDecl name shape => .exnDecl (ofString name) (shapeToHOLStructural shape)
  | .name name fields => .name (ofString name) (fields.map paramToHOLStructural)

set_option linter.unusedSimpArgs false in
theorem declToHOL_eq {width : Nat} [NeZero width] (d : Decl (BitVec width)) :
    declToHOL d = declToHOLStructural d := by
  cases d <;> simp only [declToHOL, declToHOLStructural, funDeclToHOL_function_eq,
    shapeToHOL_function_eq, expToHOL_function_eq, paramToHOL_function_eq]

theorem declToHOL_function_eq : @declToHOL = @declToHOLStructural := by
  funext width inst d
  exact declToHOL_eq d

#print axioms declToHOL_function_eq

end InitECandidate.Proofs.FrontendCodecComputation
