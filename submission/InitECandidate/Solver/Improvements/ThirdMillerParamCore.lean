import InitECandidate.Solver.Improvements.AcceptedMillerCore

/-!
The checked fixed-64 Miller proof with explicit callee budgets. Its AST is the
already identity-checked AcceptedMillerCore AST. This allows independent field
and elliptic-curve improvements to feed the fixed-count proof without replacing
it by the analyzer's generic loop bound. All callee and installation premises
are explicit; the concrete sound table must discharge them separately.
-/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace ThirdMillerParamCore
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedIvvhCalleeCore (nm lv cw CalleeBound)
open AcceptedMillerCore (Call callP chain knownCalls calleeNames branchCalls branchLast
  branch schedCond baseCalls loopBody tailCalls tail preCalls initialized millerBody params loop_steps)

variable {σ : Type} {X : Ctx 64}

def Callees (σ : Type) (X : Ctx 64) (b : String → Nat) : Prop :=
  ∀ f ∈ calleeNames, CalleeBound σ X (nm f) (b f)

def chainBudget (b : String → Nat) : List Call → Nat
  | [] => 0
  | c :: cs => (1 + b c.1) + chainBudget b cs

def branchB (b : String → Nat) : Nat :=
  4 + b "ecp_linefunc" + 2 * b "fq12_mul" + b "ecp_add"

def bodyB (b : String → Nat) : Nat :=
  14 + 3 * b "ecp_linefunc" + 2 * b "fq12_sqr" +
    6 * b "fq12_mul" + b "ecp_double" + 2 * b "ecp_add"

def tailB (b : String → Nat) : Nat := chainBudget b tailCalls
def prefixB (b : String → Nat) : Nat :=
  1 + b "heap_mark" + 6 * (1 + b "alloc") + chainBudget b preCalls
def tighterCost (b : String → Nat) : Nat := prefixB b + 64 * (bodyB b + 1) + tailB b

theorem call_cost {b : String → Nat} (hc : Callees σ X b) (c : Call)
    (h : c.1 ∈ calleeNames) : Cost σ X (callP c) (1 + b c.1) := by
  unfold callP
  exact cost_call (Bh := 0) (hc c.1 h) (by intro r hid hv hp hh; cases hh)

theorem chain_cost {b : String → Nat} (hc : Callees σ X b) (cs : List Call)
    (hk : knownCalls cs = true) {tail : ProgHOL 64} {Bt : Nat}
    (ht : Cost σ X tail Bt) : Cost σ X (chain cs tail) (chainBudget b cs + Bt) := by
  induction cs with
  | nil => simpa only [chain, chainBudget, Nat.zero_add] using ht
  | cons c cs ih =>
      have hh : decide (c.1 ∈ calleeNames) = true ∧ knownCalls cs = true := by
        simpa only [knownCalls, List.all_cons, Bool.and_eq_true] using hk
      have hp := cost_seq (call_cost hc c (of_decide_eq_true hh.1)) (ih hh.2)
      simpa only [chain, chainBudget, Nat.add_assoc] using hp

theorem branch_cost {b : String → Nat} (hc : Callees σ X b) (Q : String) :
    Cost σ X (branch Q) (branchB b) := by
  have hp := chain_cost hc (branchCalls Q) (by rfl)
    (call_cost hc (branchLast Q) (by change "ecp_add" ∈ calleeNames; decide))
  have heq : chainBudget b (branchCalls Q) + (1 + b (branchLast Q).1) = branchB b := by
    simp only [chainBudget, branchCalls, branchLast, branchB]
    omega
  rw [heq] at hp
  exact hp

theorem loop_cost {b : String → Nat} (hc : Callees σ X b) : Cost σ X loopBody (bodyB b) := by
  have hb (Q : String) (n : Nat) : Cost σ X (.ite (schedCond n) (branch Q) .skip) (branchB b) := by
    simpa only [Nat.max_zero] using cost_ite (branch_cost hc Q) (cost_skip (σ := σ) (X := X))
  have hp : Cost σ X loopBody (0 + (chainBudget b baseCalls + (branchB b + branchB b))) := by
    unfold loopBody
    exact cost_seq (cost_assign (σ := σ) (X := X) _ _ _)
      (chain_cost hc baseCalls (by rfl)
        (cost_seq (hb "Q" 11637723931993326632) (hb "nQ" 290499802545784960)))
  have heq : 0 + (chainBudget b baseCalls + (branchB b + branchB b)) = bodyB b := by
    simp only [chainBudget, baseCalls, branchB, bodyB]
    omega
  rw [heq] at hp
  exact hp

theorem tail_cost {b : String → Nat} (hc : Callees σ X b) : Cost σ X tail (tailB b) := by
  have hp := chain_cost hc tailCalls (by rfl) (cost_return (σ := σ) (X := X) (cw 0))
  simpa only [tail, tailB, Nat.add_zero] using hp

theorem initialized_cost {b : String → Nat} (hc : Callees σ X b) :
    Cost σ X initialized (64 * (bodyB b + 1) + tailB b) := by
  exact AcceptedCountdownCost.cost_initialized_unsigned_seq 64 (loop_cost hc)
    (stepsB_sound (nm "i") false loopBody loop_steps) (tail_cost hc)

theorem body_cost_from_callees {b : String → Nat} (hc : Callees σ X b) :
    Cost σ X millerBody (tighterCost b) := by
  have ha : CalleeBound σ X (nm "alloc") (b "alloc") := hc _ (by decide)
  have hm : CalleeBound σ X (nm "heap_mark") (b "heap_mark") := hc _ (by decide)
  have hp : Cost σ X millerBody
      (1 + b "heap_mark" + (1 + b "alloc" + (1 + b "alloc" +
        (1 + b "alloc" + (1 + b "alloc" + (1 + b "alloc" +
          (1 + b "alloc" + (chainBudget b preCalls + (64 * (bodyB b + 1) + tailB b))))))))) := by
    unfold millerBody
    exact cost_decCall hm (cost_decCall ha (cost_decCall ha
      (cost_decCall ha (cost_decCall ha (cost_decCall ha
        (cost_decCall ha (chain_cost hc preCalls (by rfl) (initialized_cost hc))))))))
  have heq : 1 + b "heap_mark" + (1 + b "alloc" + (1 + b "alloc" +
      (1 + b "alloc" + (1 + b "alloc" + (1 + b "alloc" +
        (1 + b "alloc" + (chainBudget b preCalls + (64 * (bodyB b + 1) + tailB b)))))))) = tighterCost b := by
    unfold tighterCost prefixB
    omega
  rw [heq] at hp
  exact hp

theorem callee_cost_from_callees {b : String → Nat} (hc : Callees σ X b)
    (installed : X.code.lookup (nm "bn254_miller_raw") = some (params, millerBody, .one)) :
    CalleeBound σ X (nm "bn254_miller_raw") (tighterCost b) := by
  intro vs body callee rs hl
  obtain ⟨ps, hcode⟩ := AcceptedIvvhCalleeCore.lookupCode_some hl
  rw [installed] at hcode
  have hbody : body = millerBody := (congrArg (fun e => e.2.1) (Option.some.inj hcode)).symm
  rw [hbody]
  exact body_cost_from_callees hc

theorem matches_checked_original : tighterCost AcceptedMillerCore.budget = AcceptedMillerCore.tighterCost := by
  decide

#print axioms callee_cost_from_callees
#print axioms matches_checked_original
end ThirdMillerParamCore
