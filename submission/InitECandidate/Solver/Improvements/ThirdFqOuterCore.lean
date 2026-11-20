import InitECandidate.Solver.Improvements.AcceptedIvvhCalleeCore
import InitECandidate.Solver.Improvements.ThirdUnsignedInitializedCost
import Guest.SoftwareAst

/-!
The literal 23-iteration outer loops of `fq12_mul` and `fq12_sqr`.
The entire body is selected directly from the fixed guest AST; the structural
decomposition and increment checker must agree with that actual body.
Inner-body costs remain explicit premises and can be discharged using the
accepted analyzer's original sound bounds. No inner-loop bound is guessed.
Draft until root's serialized checks and concrete table binding succeed.
-/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.warning false

namespace ThirdFqOuterCore
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL progToHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedIvvhCalleeCore (nm lv cw CalleeBound)

variable {σ : Type} {X : Ctx 64}

def v (x : String) : ExpHOL 64 := lv (nm x)
def bodyOf (d : Decl (BitVec 64)) : ProgHOL 64 :=
  match d with
  | .function fd => progToHOL fd.body
  | _ => .skip

def body (square : Bool) : ProgHOL 64 :=
  if square then bodyOf Guest.Software.guestFn_fq12_sqr
  else bodyOf Guest.Software.guestFn_fq12_mul

def fnName (square : Bool) : String := if square then "fq12_sqr" else "fq12_mul"
def params (square : Bool) : List (MlS × ShapeHOL) :=
  if square then [(nm "d", .one), (nm "a", .one)]
  else [(nm "d", .one), (nm "a", .one), (nm "b", .one)]

def outerBody (square : Bool) : ProgHOL 64 :=
  match body square with
  | .decCall _ _ _ _ (.decCall _ _ _ _ (.dec _ _ _ (.seq (.while _ b) _))) => b
  | _ => .skip

def callP (fn : String) (args : List (ExpHOL 64)) : ProgHOL 64 :=
  .call (some (none, none)) (nm fn) args

def tail : ProgHOL 64 :=
  .seq (callP "fq12_reduce" [v "t"])
    (.seq (callP "memcpy" [v "d", v "t", cw 384])
      (.seq (callP "heap_release" [v "mark"]) (.return (cw 0))))

def withLoop (b : ProgHOL 64) : ProgHOL 64 :=
  .decCall (nm "mark") .one (nm "heap_mark") []
    (.decCall (nm "t") .one (nm "alloc") [.panop .mul [cw 23, cw 32]]
      (.dec (nm "k") .one (cw 0)
        (.seq (.while (.cmp .lower (v "k") (cw 23)) b) tail)))

theorem actual_shape (square : Bool) : body square = withLoop (outerBody square) := by
  cases square
  all_goals
    conv => lhs; cbv
    conv => rhs; cbv

theorem outer_steps (square : Bool) : stepsB (nm "k") true (outerBody square) = true := by
  cases square <;> decide_cbv

def acceptedOuterB (square : Bool) : Nat :=
  if square then 147573952589676412947 else 147573952589676412936

def tailB (R M : Nat) : Nat := 3 + R + M
def tighterCost (B R M : Nat) : Nat := 4 + 23 * (B + 1) + tailB R M

structure CalleeCosts (σ : Type) (X : Ctx 64) (R M : Nat) : Prop where
  reduce : CalleeBound σ X (nm "fq12_reduce") R
  memcpy : CalleeBound σ X (nm "memcpy") M
  heap_mark : CalleeBound σ X (nm "heap_mark") 0
  heap_release : CalleeBound σ X (nm "heap_release") 0
  alloc : CalleeBound σ X (nm "alloc") 2

theorem callP_cost {fn : String} {args : List (ExpHOL 64)} {B : Nat}
    (hf : CalleeBound σ X (nm fn) B) : Cost σ X (callP fn args) (1 + B) := by
  unfold callP
  exact cost_call (Bh := 0) hf (by intro r hid hv hp hh; cases hh)

theorem tail_cost {R M : Nat} (hc : CalleeCosts σ X R M) : Cost σ X tail (tailB R M) := by
  have h : Cost σ X tail ((1 + R) + ((1 + M) + ((1 + 0) + 0))) := by
    unfold tail
    exact cost_seq (callP_cost hc.reduce) (cost_seq (callP_cost hc.memcpy)
      (cost_seq (callP_cost hc.heap_release) (cost_return _)))
  have hB : (1 + R) + ((1 + M) + ((1 + 0) + 0)) = tailB R M := by
    unfold tailB
    omega
  rw [hB] at h
  exact h

theorem initialized_cost {square : Bool} {B R M : Nat}
    (hc : CalleeCosts σ X R M) (hb : Cost σ X (outerBody square) B) :
    Cost σ X (.dec (nm "k") .one (cw 0)
      (.seq (.while (.cmp .lower (v "k") (cw 23)) (outerBody square)) tail))
      (23 * (B + 1) + tailB R M) := by
  exact ThirdUnsignedInitializedCost.cost_initialized_seq 23 (by decide) hb
    (stepsB_sound (nm "k") true _ (outer_steps square)) (tail_cost hc)

theorem body_cost_from_outer {square : Bool} {B R M : Nat}
    (hc : CalleeCosts σ X R M) (hb : Cost σ X (outerBody square) B) :
    Cost σ X (body square) (tighterCost B R M) := by
  rw [actual_shape]
  have h : Cost σ X (withLoop (outerBody square))
      (1 + 0 + (1 + 2 + (23 * (B + 1) + tailB R M))) := by
    unfold withLoop
    exact cost_decCall hc.heap_mark (cost_decCall hc.alloc (initialized_cost hc hb))
  have hB : 1 + 0 + (1 + 2 + (23 * (B + 1) + tailB R M)) = tighterCost B R M := by
    unfold tighterCost
    omega
  rw [hB] at h
  exact h

theorem callee_cost_from_outer {square : Bool} {B R M : Nat}
    (hc : CalleeCosts σ X R M) (hb : Cost σ X (outerBody square) B)
    (installed : X.code.lookup (nm (fnName square)) = some (params square, body square, .one)) :
    CalleeBound σ X (nm (fnName square)) (tighterCost B R M) := by
  intro vs b callee rs hl
  obtain ⟨ps, hcode⟩ := AcceptedIvvhCalleeCore.lookupCode_some hl
  rw [installed] at hcode
  have hbody : b = body square := (congrArg (fun e => e.2.1) (Option.some.inj hcode)).symm
  rw [hbody]
  exact body_cost_from_outer hc hb

theorem oldMul_eq : 4 + (2^64 + 1) * (acceptedOuterB false + 1) +
    tailB 6125082604576892343244633393383595835423 73786976294838206468 =
    8847341539944400051339011878385642111027 := by decide

theorem oldSqr_eq : 4 + (2^64 + 1) * (acceptedOuterB true + 1) +
    tailB 6125082604576892343244633393383595835423 73786976294838206468 =
    8847341539944400051541926063196447178814 := by decide

theorem newMul_eq : tighterCost (acceptedOuterB false) 3652455326594491220309 73786976294838206468 =
    7120443212451886924335 := by decide

theorem newSqr_eq : tighterCost (acceptedOuterB true) 3652455326594491220309 73786976294838206468 =
    7120443212451886924588 := by decide

#print axioms actual_shape
#print axioms outer_steps
#print axioms body_cost_from_outer
#print axioms callee_cost_from_outer
end ThirdFqOuterCore
