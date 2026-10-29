import InitECandidate.Proofs.StructComputation
import InitECandidate.Proofs.CompactComputation
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false
namespace InitECandidate.Proofs.StructKernelComputation
open Flapjack Flapjack.Pancake.PanLang
open Flapjack.Pancake.PanStructs.CompileShapeExact
mutual
  def shapeFree : ShapeHOL → Bool
    | .one => true
    | .comb shapes => shapesFree shapes
    | .named _ => false
  termination_by structural shape => shape
  def shapesFree : List ShapeHOL → Bool
    | [] => true
    | shape :: shapes => shapeFree shape && shapesFree shapes
  termination_by structural shapes => shapes
end
mutual
  theorem shape_identity {α : Type} (context : List (MlS × List (α × ShapeHOL)))
      (shape : ShapeHOL) (h : shapeFree shape = true) : compileShapeExact context shape = shape := by
    cases hs : shape with
    | one =>
      simp only [hs, shapeFree, shapesFree] at h
      rw [compileShapeExact]
    | named name => simp [hs, shapeFree] at h
    | comb shapes =>
      simp only [hs, shapeFree, shapesFree] at h
      rw [compileShapeExact, shapes_identity context shapes h]
  termination_by sizeOf shape
  decreasing_by
    all_goals simp_wf
    all_goals (try simp_all only)
    all_goals simp_wf
    all_goals omega
  theorem shapes_identity {α : Type} (context : List (MlS × List (α × ShapeHOL)))
      (shapes : List ShapeHOL) (h : shapesFree shapes = true) : compileShapesExact context shapes = shapes := by
    cases hs : shapes with
    | nil =>
      simp only [hs, shapeFree, shapesFree] at h
      rw [compileShapesExact]
    | cons shape shapes =>
      simp only [hs, shapeFree, shapesFree] at h
      have hs := Bool.and_eq_true_iff.mp h
      rw [compileShapesExact, shape_identity context shape hs.1, shapes_identity context shapes hs.2]
  termination_by sizeOf shapes
  decreasing_by
    all_goals simp_wf
    all_goals (try simp_all only)
    all_goals simp_wf
    all_goals omega
end
mutual
  def expFree {width : Nat} [NeZero width] : ExpHOL width → Bool
    | .nstruct _ _ | .nfield _ _ =>
      false
    | .rstruct fields =>
      expsFree fields
    | .rfield _ value =>
      expFree value
    | .load shape address =>
      shapeFree shape && expFree address
    | .loadByte address | .load32 address =>
      expFree address
    | .op _ args | .panop _ args =>
      expsFree args
    | .cmp _ left right | .shift _ left right =>
      expFree left && expFree right
    | _ =>
      true
  termination_by structural expression => expression
  def expsFree {width : Nat} [NeZero width] : List (ExpHOL width) → Bool
    | [] =>
      true
    | expression :: expressions =>
      expFree expression && expsFree expressions
  termination_by structural expressions => expressions
end
mutual
  theorem exp_identity {width : Nat} [NeZero width] (context : ContextExact)
      (expression : ExpHOL width) (h : expFree expression = true) :
      compileExpExact context expression = expression := by
    cases he : expression with
    | const value =>
      simp only [he, shapeFree, shapesFree, expFree, expsFree] at h
      rw [compileExpExact] <;> simp
    | var kind name =>
      simp only [he, shapeFree, shapesFree, expFree, expsFree] at h
      rw [compileExpExact] <;> simp
    | baseAddr =>
      simp only [he, shapeFree, shapesFree, expFree, expsFree] at h
      rw [compileExpExact] <;> simp
    | topAddr =>
      simp only [he, shapeFree, shapesFree, expFree, expsFree] at h
      rw [compileExpExact] <;> simp
    | bytesInWord =>
      simp only [he, shapeFree, shapesFree, expFree, expsFree] at h
      rw [compileExpExact] <;> simp
    | nstruct name fields => simp [he, expFree] at h
    | nfield name value => simp [he, expFree] at h
    | rstruct fields =>
      simp only [he, shapeFree, shapesFree, expFree, expsFree] at h
      rw [compileExpExact, exps_identity context fields h]
    | rfield index value =>
      simp only [he, shapeFree, shapesFree, expFree, expsFree] at h
      rw [compileExpExact, exp_identity context value h]
    | loadByte address =>
      simp only [he, shapeFree, shapesFree, expFree, expsFree] at h
      rw [compileExpExact, exp_identity context address h]
    | load32 address =>
      simp only [he, shapeFree, shapesFree, expFree, expsFree] at h
      rw [compileExpExact, exp_identity context address h]
    | op operator args =>
      simp only [he, shapeFree, shapesFree, expFree, expsFree] at h
      rw [compileExpExact, exps_identity context args h]
    | panop operator args =>
      simp only [he, shapeFree, shapesFree, expFree, expsFree] at h
      rw [compileExpExact, exps_identity context args h]
    | load shape address =>
      simp only [he, shapeFree, shapesFree, expFree, expsFree] at h
      have hs := Bool.and_eq_true_iff.mp h
      rw [compileExpExact, shape_identity context.structs shape hs.1, exp_identity context address hs.2]
    | cmp operator left right =>
      simp only [he, shapeFree, shapesFree, expFree, expsFree] at h
      have hs := Bool.and_eq_true_iff.mp h
      rw [compileExpExact, exp_identity context left hs.1, exp_identity context right hs.2]
    | shift operator left right =>
      simp only [he, shapeFree, shapesFree, expFree, expsFree] at h
      have hs := Bool.and_eq_true_iff.mp h
      rw [compileExpExact, exp_identity context left hs.1, exp_identity context right hs.2]
  termination_by sizeOf expression
  decreasing_by
    all_goals simp_wf
    all_goals (try simp_all only)
    all_goals simp_wf
    all_goals omega
  theorem exps_identity {width : Nat} [NeZero width] (context : ContextExact)
      (expressions : List (ExpHOL width)) (h : expsFree expressions = true) :
      compileExpsExact context expressions = expressions := by
    cases he : expressions with
    | nil =>
      simp only [he, shapeFree, shapesFree, expFree, expsFree] at h
      rw [compileExpsExact]
    | cons expression expressions =>
      simp only [he, shapeFree, shapesFree, expFree, expsFree] at h
      have hs := Bool.and_eq_true_iff.mp h
      rw [compileExpsExact, exp_identity context expression hs.1, exps_identity context expressions hs.2]
  termination_by sizeOf expressions
  decreasing_by
    all_goals simp_wf
    all_goals (try simp_all only)
    all_goals simp_wf
    all_goals omega
end

def progFree {width : Nat} [NeZero width] : ProgHOL width → Bool
  | .dec _ shape value body => shapeFree shape && expFree value && progFree body
  | .assign _ _ value => expFree value
  | .primitive _ _ args => expsFree args
  | .store address value | .store32 address value | .storeByte address value =>
      expFree address && expFree value
  | .seq first second => progFree first && progFree second
  | .ite condition first second => expFree condition && progFree first && progFree second
  | .while condition body => expFree condition && progFree body
  | .call info _ args => expsFree args && (match info with
      | none => true
      | some (_, handler) => match handler with
        | none => true
        | some (_, _, body) => progFree body)
  | .decCall _ shape _ args body => shapeFree shape && expsFree args && progFree body
  | .extCall _ configuration configurationLength array arrayLength =>
      expFree configuration && expFree configurationLength && expFree array && expFree arrayLength
  | .raise _ value | .return value => expFree value
  | .shMemLoad _ _ _ address => expFree address
  | .shMemStore _ address value => expFree address && expFree value
  | _ => true
termination_by structural program => program

theorem prog_identity {width : Nat} [NeZero width] (context : ContextExact)
    (program : ProgHOL width) (h : progFree program = true) :
    compileProgExact context program = program := by
  cases hp : program with
  | skip => rw [compileProgExact] <;> simp
  | «break» => rw [compileProgExact] <;> simp
  | «continue» => rw [compileProgExact] <;> simp
  | tick => rw [compileProgExact] <;> simp
  | annot tag text => rw [compileProgExact] <;> simp
  | assign kind name value =>
    simp only [hp, progFree] at h
    rw [compileProgExact, exp_identity context value h]
  | primitive name operator args =>
    simp only [hp, progFree] at h
    rw [compileProgExact, exps_identity context args h]
  | store address value =>
    simp only [hp, progFree, Bool.and_eq_true_iff] at h
    rw [compileProgExact, exp_identity context address h.1, exp_identity context value h.2]
  | store32 address value =>
    simp only [hp, progFree, Bool.and_eq_true_iff] at h
    rw [compileProgExact, exp_identity context address h.1, exp_identity context value h.2]
  | storeByte address value =>
    simp only [hp, progFree, Bool.and_eq_true_iff] at h
    rw [compileProgExact, exp_identity context address h.1, exp_identity context value h.2]
  | dec name shape value body =>
    simp only [hp, progFree, Bool.and_eq_true_iff] at h
    rw [compileProgExact, shape_identity context.structs shape h.1.1,
      exp_identity context value h.1.2, prog_identity _ body h.2]
  | decCall name shape function args body =>
    simp only [hp, progFree, Bool.and_eq_true_iff] at h
    rw [compileProgExact, shape_identity context.structs shape h.1.1,
      exps_identity context args h.1.2, prog_identity _ body h.2]
  | seq first second =>
    simp only [hp, progFree, Bool.and_eq_true_iff] at h
    rw [compileProgExact, prog_identity context first h.1, prog_identity context second h.2]
  | ite condition first second =>
    simp only [hp, progFree, Bool.and_eq_true_iff] at h
    rw [compileProgExact, exp_identity context condition h.1.1,
      prog_identity context first h.1.2, prog_identity context second h.2]
  | «while» condition body =>
    simp only [hp, progFree, Bool.and_eq_true_iff] at h
    rw [compileProgExact, exp_identity context condition h.1, prog_identity context body h.2]
  | «return» value =>
    simp only [hp, progFree] at h
    rw [compileProgExact, exp_identity context value h]
  | raise exception value =>
    simp only [hp, progFree] at h
    rw [compileProgExact, exp_identity context value h]
  | shMemLoad size kind name address =>
    simp only [hp, progFree] at h
    rw [compileProgExact, exp_identity context address h]
  | shMemStore size address value =>
    simp only [hp, progFree, Bool.and_eq_true_iff] at h
    rw [compileProgExact, exp_identity context address h.1, exp_identity context value h.2]
  | extCall function configuration configurationLength array arrayLength =>
    simp only [hp, progFree, Bool.and_eq_true_iff] at h
    rw [compileProgExact, exp_identity context configuration h.1.1.1,
      exp_identity context configurationLength h.1.1.2, exp_identity context array h.1.2,
      exp_identity context arrayLength h.2]
  | call info name args =>
    cases info with
    | none =>
      simp only [hp, progFree, Bool.and_true] at h
      rw [compileProgExact, exps_identity context args h]
    | some pair =>
      cases hpair : pair with
      | mk target handler =>
        cases hhandler : handler with
        | none =>
          simp only [hp, hpair, hhandler, progFree, Bool.and_true] at h
          rw [compileProgExact, exps_identity context args h]
        | some triple =>
          cases htriple : triple with
          | mk exception tail =>
            cases htail : tail with
            | mk nameBound body =>
              simp only [hp, hpair, hhandler, htriple, htail, progFree, Bool.and_eq_true_iff] at h
              rw [compileProgExact, exps_identity context args h.1, prog_identity context body h.2]

termination_by sizeOf program
decreasing_by
  all_goals simp_wf
  all_goals (try simp_all only)
  all_goals simp_wf
  all_goals omega

def declarationFree {width : Nat} [NeZero width] : DeclHOL width → Bool
  | .function declaration =>
      declaration.params.all (fun p => shapeFree p.2) &&
        progFree declaration.body && shapeFree declaration.returnShape
  | .decl shape _ value => shapeFree shape && expFree value
  | .exnDecl _ shape => shapeFree shape
  | .name _ _ => false

theorem params_identity {α : Type} (context : List (MlS × List (α × ShapeHOL)))
    (params : List (MlS × ShapeHOL)) (h : params.all (fun p => shapeFree p.2) = true) :
    params.map (fun p => (p.1, compileShapeExact context p.2)) = params := by
  induction params with
  | nil => rfl
  | cons p params ih =>
    simp only [List.all_cons, Bool.and_eq_true_iff] at h
    simp only [List.map_cons, shape_identity context p.2 h.1, ih h.2]

theorem declaration_identity {width : Nat} [NeZero width]
    (context finalContext : ContextExact) (declaration : DeclHOL width)
    (h : declarationFree declaration = true) :
    InitECandidate.Proofs.StructComputation.compileDeclaration context finalContext declaration = some declaration := by
  cases hd : declaration with
  | name name fields => simp [hd, declarationFree] at h
  | exnDecl name shape =>
    simp only [hd, declarationFree] at h
    rw [InitECandidate.Proofs.StructComputation.compileDeclaration, shape_identity context.structs shape h]
  | decl shape name value =>
    simp only [hd, declarationFree, Bool.and_eq_true_iff] at h
    rw [InitECandidate.Proofs.StructComputation.compileDeclaration, shape_identity context.structs shape h.1,
      exp_identity context value h.2]
  | function fn =>
    simp only [hd, declarationFree, Bool.and_eq_true_iff] at h
    rw [InitECandidate.Proofs.StructComputation.compileDeclaration, params_identity context.structs fn.params h.1.1,
      prog_identity _ fn.body h.1.2, shape_identity context.structs fn.returnShape h.2]

#print axioms declaration_identity
end InitECandidate.Proofs.StructKernelComputation
