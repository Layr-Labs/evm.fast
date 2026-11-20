import InitECandidate.Solver.Improvements.AcceptedIvvhCalleeCore
import InitECandidate.Solver.Improvements.AcceptedCountdownCost
import InitECandidate.Solver.Improvements.AcceptedCallReturnCost

/-! The actual unsigned countdown in fq_mul_small is initialized by
bit_length64. Its existing semantic return bound limits this loop to 64
iterations for every successfully shaped input. Callee costs and the return
bound remain explicit premises; no assumptions about memory are introduced. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace ThirdFqSmallCore
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedIvvhCalleeCore (nm lv cw CalleeBound)
variable {σ : Type} {X : Ctx 64}

def v (s : String) : ExpHOL 64 := lv (nm s)
def sh4 : ShapeHOL := .comb [.one, .one, .one, .one]
def addInto (a b : String) : ProgHOL 64 :=
  .call (some (some (.local, nm "r"), none)) (nm "fq_add") [v a, v b]
def loopBody : ProgHOL 64 :=
  .seq (.assign .local (nm "i") (.op .sub [v "i", cw 1]))
    (.seq (addInto "r" "r")
      (.ite (.cmp .equal (.op .and [.shift .lsr (v "k") (v "i"), cw 1]) (cw 1))
        (addInto "r" "a") .skip))
def suffix : ProgHOL 64 :=
  .seq (.while (.cmp .lower (cw 0) (v "i")) loopBody) (.return (v "r"))
def withLength : ProgHOL 64 :=
  .decCall (nm "i") .one (nm "bit_length64") [v "k"] suffix
def body : ProgHOL 64 :=
  .dec (nm "r") sh4 (.rstruct [cw 0, cw 0, cw 0, cw 0]) withLength
def params : List (MlS × ShapeHOL) := [(nm "a", sh4), (nm "k", .one)]

def BitLengthReturns (σ : Type) (X : Ctx 64) : Prop :=
  FunRet σ X (nm "bit_length64")
    (fun _ value => ∃ n : BitVec 64, value = .val (.word n) ∧ n.toNat ≤ 64)
def bodyB (A : Nat) : Nat := 2 * (1 + A)
def tighterCost (L A : Nat) : Nat := 1 + L + 64 * (bodyB A + 1)

theorem loop_steps : stepsB (nm "i") false loopBody = true := by rfl

theorem addInto_cost {a b : String} {A : Nat}
    (hA : CalleeBound σ X (nm "fq_add") A) : Cost σ X (addInto a b) (1 + A) := by
  exact cost_call (Bh := 0) hA (by intro _ _ _ _ h; cases h)

theorem loop_body_cost {A : Nat} (hA : CalleeBound σ X (nm "fq_add") A) :
    Cost σ X loopBody (bodyB A) := by
  have hi : Cost σ X
      (.ite (.cmp .equal (.op .and [.shift .lsr (v "k") (v "i"), cw 1]) (cw 1))
        (addInto "r" "a") .skip) (1 + A) := by
    simpa only [Nat.max_zero] using cost_ite (addInto_cost hA) (cost_skip (σ := σ) (X := X))
  have hp : Cost σ X loopBody (0 + ((1 + A) + (1 + A))) :=
    cost_seq (cost_assign _ _ _) (cost_seq (addInto_cost hA) hi)
  have heq : 0 + ((1 + A) + (1 + A)) = bodyB A := by unfold bodyB; omega
  rw [heq] at hp
  exact hp

theorem suffix_cost {A : Nat} (hA : CalleeBound σ X (nm "fq_add") A) :
    AcceptedLoopRules.CostP σ X (AcceptedCountdownCost.AtMost (nm "i") 64)
      suffix (64 * (bodyB A + 1)) := by
  have hp := AcceptedLoopRules.costP_seq (R := fun _ => True)
    (AcceptedCountdownCost.cost_while_dec_atMost 64 (nonzero_lower_zero (nm "i"))
      (loop_body_cost hA) (stepsB_sound (nm "i") false _ loop_steps))
    (fun _ _ _ _ _ => trivial) (AcceptedLoopRules.costP_of_cost (cost_return (v "r")))
  change AcceptedLoopRules.CostP σ X (AcceptedCountdownCost.AtMost (nm "i") 64)
    suffix (64 * (bodyB A + 1) + 0) at hp
  simpa only [Nat.add_zero] using hp

theorem body_cost {L A : Nat}
    (hL : CalleeBound σ X (nm "bit_length64") L)
    (hA : CalleeBound σ X (nm "fq_add") A) (hRet : BitLengthReturns σ X) :
    Cost σ X body (tighterCost L A) := by
  have hp : Cost σ X withLength (1 + L + 64 * (bodyB A + 1)) := by
    apply AcceptedLoopRules.cost_of_costP_true
    refine AcceptedCallReturnCost.costP_decCallRet hL hRet ?_
    intro s hs hp vs hvs callee value st hR hctx hshape
    obtain ⟨n, rfl, hn⟩ := hR
    refine (suffix_cost hA).pre fun t hctx' hEq => ?_
    subst t
    refine ⟨n, ?_, hn⟩
    simp [setVarHOLFinite, FUPDATE]
  exact cost_dec hp

theorem callee_cost {L A : Nat}
    (hL : CalleeBound σ X (nm "bit_length64") L)
    (hA : CalleeBound σ X (nm "fq_add") A) (hRet : BitLengthReturns σ X)
    (installed : X.code.lookup (nm "fq_mul_small") = some (params, body, sh4)) :
    CalleeBound σ X (nm "fq_mul_small") (tighterCost L A) := by
  intro vs actual callee rs lookup
  obtain ⟨ps, hcode⟩ := AcceptedIvvhCalleeCore.lookupCode_some lookup
  rw [installed] at hcode
  have hb : actual = body := (congrArg (fun e => e.2.1) (Option.some.inj hcode)).symm
  rw [hb]
  exact body_cost hL hA hRet

theorem newCost_eq : tighterCost 0 3 = 577 := by decide
theorem oldCost_eq : 1 + (2^64 + 1) * (bodyB 3 + 1) = 166020696663385964554 := by decide

#print axioms loop_body_cost
#print axioms suffix_cost
#print axioms body_cost
#print axioms callee_cost
end ThirdFqSmallCore
