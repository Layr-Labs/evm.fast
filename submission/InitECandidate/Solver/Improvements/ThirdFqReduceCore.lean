import InitECandidate.Solver.Improvements.AcceptedIvvhCalleeCore
import InitECandidate.Solver.Improvements.AcceptedCountdownCost

/-!
The literal eleven-iteration countdown in `fq12_reduce`.
The rendering is copied from accepted 6151c797 Guest/SoftwareAst.lean
(Apache-2.0). Callee costs are parameters, so stronger lower-level bounds
can be used without changing the AST or the countdown proof.
This is a draft until the root's serialized Lean check succeeds.
-/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.warning false

namespace ThirdFqReduceCore
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedIvvhCalleeCore (nm lv cw CalleeBound)

variable {σ : Type} {X : Ctx 64}

def v (x : String) : ExpHOL 64 := lv (nm x)
def u256 : ShapeHOL := .comb [.one, .one, .one, .one]
def addr0 : ExpHOL 64 := .op .add [v "t", .panop .mul [v "e", cw 32]]
def addr6 : ExpHOL 64 := .op .add [v "t", .panop .mul [.op .add [v "e", cw 6], cw 32]]
def addr12 : ExpHOL 64 := .op .add [v "t", .panop .mul [.op .add [v "e", cw 12], cw 32]]

def callResult (target fn : String) (args : List (ExpHOL 64)) : ProgHOL 64 :=
  .call (some (some (.local, nm target), none)) (nm fn) args

def lastPart : ProgHOL 64 :=
  .dec (nm "c6") u256 (.load u256 addr6)
    (.seq (callResult "c6" "fq_add" [v "c6", v "t18"])
      (.store addr6 (v "c6")))

def subPart : ProgHOL 64 :=
  .dec (nm "c0") u256 (.load u256 addr0)
    (.seq (callResult "c0" "fq_sub" [v "c0", v "t82"])
      (.seq (.store addr0 (v "c0")) lastPart))

def loopBody : ProgHOL 64 :=
  .seq (.assign .local (nm "e") (.op .sub [v "e", cw 1]))
    (.dec (nm "top") u256 (.load u256 addr12)
      (.decCall (nm "t82") u256 (nm "fq_mul_small") [v "top", cw 82]
        (.decCall (nm "t18") u256 (nm "fq_mul_small") [v "top", cw 18] subPart)))

def reduceBody : ProgHOL 64 :=
  .dec (nm "e") .one (cw 11)
    (.seq (.while (.cmp .lower (cw 0) (v "e")) loopBody) (.return (cw 0)))

def params : List (MlS × ShapeHOL) := [(nm "t", .one)]
def bodyB (S A U : Nat) : Nat := 4 + S + S + A + U
def tighterCost (S A U : Nat) : Nat := 11 * (bodyB S A U + 1)
def acceptedSmall : Nat := 166020696663385964554

structure CalleeCosts (σ : Type) (X : Ctx 64) (S A U : Nat) : Prop where
  fq_mul_small : CalleeBound σ X (nm "fq_mul_small") S
  fq_add : CalleeBound σ X (nm "fq_add") A
  fq_sub : CalleeBound σ X (nm "fq_sub") U

theorem callResult_cost {target fn : String} {args : List (ExpHOL 64)} {B : Nat}
    (hf : CalleeBound σ X (nm fn) B) : Cost σ X (callResult target fn args) (1 + B) := by
  unfold callResult
  exact cost_call (Bh := 0) hf (by intro r hid hv hp hh; cases hh)

theorem last_cost {S A U : Nat} (hc : CalleeCosts σ X S A U) :
    Cost σ X lastPart ((1 + A) + 0) := by
  unfold lastPart
  exact cost_dec (cost_seq (callResult_cost hc.fq_add) (cost_store _ _))

theorem sub_cost {S A U : Nat} (hc : CalleeCosts σ X S A U) :
    Cost σ X subPart ((1 + U) + (0 + ((1 + A) + 0))) := by
  unfold subPart
  exact cost_dec (cost_seq (callResult_cost hc.fq_sub)
    (cost_seq (cost_store _ _) (last_cost hc)))

theorem loop_steps : stepsB (nm "e") false loopBody = true := by rfl

theorem loop_cost {S A U : Nat} (hc : CalleeCosts σ X S A U) :
    Cost σ X loopBody (bodyB S A U) := by
  have h : Cost σ X loopBody
      (0 + (1 + S + (1 + S + ((1 + U) + (0 + ((1 + A) + 0)))))) := by
    unfold loopBody
    exact cost_seq (cost_assign _ _ _)
      (cost_dec (cost_decCall hc.fq_mul_small (cost_decCall hc.fq_mul_small (sub_cost hc))))
  have hB : 0 + (1 + S + (1 + S + ((1 + U) + (0 + ((1 + A) + 0))))) = bodyB S A U := by
    unfold bodyB
    omega
  rw [hB] at h
  exact h

theorem body_cost_from_callees {S A U : Nat} (hc : CalleeCosts σ X S A U) :
    Cost σ X reduceBody (tighterCost S A U) := by
  have h := AcceptedCountdownCost.cost_initialized_unsigned_seq 11 (loop_cost hc)
    (stepsB_sound (nm "e") false loopBody loop_steps) (cost_return (σ := σ) (X := X) (cw 0))
  change Cost σ X reduceBody (11 * (bodyB S A U + 1) + 0) at h
  simpa only [tighterCost, Nat.add_zero] using h

theorem callee_cost_from_callees {S A U : Nat} (hc : CalleeCosts σ X S A U)
    (installed : X.code.lookup (nm "fq12_reduce") = some (params, reduceBody, .one)) :
    CalleeBound σ X (nm "fq12_reduce") (tighterCost S A U) := by
  intro vs body callee rs hl
  obtain ⟨ps, hcode⟩ := AcceptedIvvhCalleeCore.lookupCode_some hl
  rw [installed] at hcode
  have hbody : body = reduceBody := (congrArg (fun e => e.2.1) (Option.some.inj hcode)).symm
  rw [hbody]
  exact body_cost_from_callees hc

theorem oldCost_eq : (2^64 + 1) * (bodyB acceptedSmall 3 3 + 1) =
    6125082604576892343244633393383595835423 := by decide

theorem tighterCost_eq : tighterCost acceptedSmall 3 3 = 3652455326594491220309 := by decide

#print axioms loop_steps
#print axioms body_cost_from_callees
#print axioms callee_cost_from_callees
end ThirdFqReduceCore
