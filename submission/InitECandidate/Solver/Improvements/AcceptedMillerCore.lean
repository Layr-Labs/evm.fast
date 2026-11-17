import InitECandidate.Solver.Improvements.AcceptedIvvhCalleeCore
import InitECandidate.Solver.Improvements.AcceptedCountdownCost

/-!
The fixed 64-step countdown in `bn254_miller_raw`.
The literal code is a factored rendering of accepted upstream 6151c797
Guest/SoftwareAst.lean (Apache-2.0). All callees retain their accepted
unconditional costs; only the initialized countdown receives a tighter bound.
This component does not establish the sound concrete callee table.
-/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.warning false

namespace AcceptedMillerCore
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedIvvhCalleeCore (nm lv cw CalleeBound)

variable {σ : Type} {X : Ctx 64}

def v (name : String) : ExpHOL 64 := lv (nm name)
def add (name : String) (n : Nat) : ExpHOL 64 := .op .add [v name, cw n]
abbrev Call := String × List (ExpHOL 64)

def callP (c : Call) : ProgHOL 64 := .call (some (none, none)) (nm c.1) c.2

def chain : List Call → ProgHOL 64 → ProgHOL 64
  | [], tail => tail
  | c :: cs, tail => .seq (callP c) (chain cs tail)

def budget : String → Nat
  | "alloc" => 2
  | "heap_mark" => 0
  | "heap_release" => 0
  | "memcpy" => 73786976294838206468
  | "fe_neg" => 73786976294838206468
  | "fe_set_one" => 73786976294838206469
  | "ecp_linefunc" => 138835205703742893113901660635453223601346
  | "fq12_sqr" => 8847341539944400051541926063196447178814
  | "fq12_mul" => 8847341539944400051339011878385642111027
  | "ecp_double" => 151085370912896677800741415559620896752853
  | "ecp_add" => 295705376854295524795457352649153682868770
  | "fq12_frob" => 6125082604576892343668908507078915522614
  | _ => 0

def calleeNames : List String :=
  ["alloc", "heap_mark", "heap_release", "memcpy", "fe_neg", "fe_set_one",
    "ecp_linefunc", "fq12_sqr", "fq12_mul", "ecp_double", "ecp_add", "fq12_frob"]

def knownCalls (cs : List Call) : Bool := cs.all fun c => decide (c.1 ∈ calleeNames)
def chainBudget : List Call → Nat
  | [] => 0
  | c :: cs => (1 + budget c.1) + chainBudget cs

structure CalleeCosts (σ : Type) (X : Ctx 64) : Prop where
  alloc : CalleeBound σ X (nm "alloc") (budget "alloc")
  heap_mark : CalleeBound σ X (nm "heap_mark") (budget "heap_mark")
  heap_release : CalleeBound σ X (nm "heap_release") (budget "heap_release")
  memcpy : CalleeBound σ X (nm "memcpy") (budget "memcpy")
  fe_neg : CalleeBound σ X (nm "fe_neg") (budget "fe_neg")
  fe_set_one : CalleeBound σ X (nm "fe_set_one") (budget "fe_set_one")
  ecp_linefunc : CalleeBound σ X (nm "ecp_linefunc") (budget "ecp_linefunc")
  fq12_sqr : CalleeBound σ X (nm "fq12_sqr") (budget "fq12_sqr")
  fq12_mul : CalleeBound σ X (nm "fq12_mul") (budget "fq12_mul")
  ecp_double : CalleeBound σ X (nm "ecp_double") (budget "ecp_double")
  ecp_add : CalleeBound σ X (nm "ecp_add") (budget "ecp_add")
  fq12_frob : CalleeBound σ X (nm "fq12_frob") (budget "fq12_frob")

theorem known_callee (hc : CalleeCosts σ X) (f : String) (hf : f ∈ calleeNames) :
    CalleeBound σ X (nm f) (budget f) := by
  simp only [calleeNames, List.mem_cons, List.not_mem_nil, or_false] at hf
  rcases hf with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact hc.alloc
  · exact hc.heap_mark
  · exact hc.heap_release
  · exact hc.memcpy
  · exact hc.fe_neg
  · exact hc.fe_set_one
  · exact hc.ecp_linefunc
  · exact hc.fq12_sqr
  · exact hc.fq12_mul
  · exact hc.ecp_double
  · exact hc.ecp_add
  · exact hc.fq12_frob

theorem call_cost (hc : CalleeCosts σ X) (c : Call) (h : c.1 ∈ calleeNames) :
    Cost σ X (callP c) (1 + budget c.1) := by
  unfold callP
  exact cost_call (Bh := 0) (known_callee hc c.1 h)
    (by intro r hid hv hp hh; cases hh)

theorem chain_cost (hc : CalleeCosts σ X) (cs : List Call)
    (hk : knownCalls cs = true) {tail : ProgHOL 64} {Bt : Nat}
    (ht : Cost σ X tail Bt) : Cost σ X (chain cs tail) (chainBudget cs + Bt) := by
  induction cs with
  | nil => simpa only [chain, chainBudget, Nat.zero_add] using ht
  | cons c cs ih =>
      have hh : decide (c.1 ∈ calleeNames) = true ∧ knownCalls cs = true := by
        simpa only [knownCalls, List.all_cons, Bool.and_eq_true] using hk
      have hp := cost_seq (call_cost hc c (of_decide_eq_true hh.1)) (ih hh.2)
      simpa only [chain, chainBudget, Nat.add_assoc] using hp

def branchCalls (Q : String) : List Call :=
  [("ecp_linefunc", [cw 12, v "n", v "d", v "R", v Q, v "P"]),
   ("fq12_mul", [v "fnum", v "fnum", v "n"]),
   ("fq12_mul", [v "fden", v "fden", v "d"])]

def branchLast (Q : String) : Call :=
  ("ecp_add", [cw 12, v "R", v "R", v Q])

def branch (Q : String) : ProgHOL 64 := chain (branchCalls Q) (callP (branchLast Q))

def schedCond (n : Nat) : ExpHOL 64 :=
  .cmp .equal (.op .and [.shift .lsr (cw n) (v "i"), cw 1]) (cw 1)

def baseCalls : List Call :=
  [("ecp_linefunc", [cw 12, v "n", v "d", v "R", v "R", v "P"]),
   ("fq12_sqr", [v "fnum", v "fnum"]),
   ("fq12_mul", [v "fnum", v "fnum", v "n"]),
   ("fq12_sqr", [v "fden", v "fden"]),
   ("fq12_mul", [v "fden", v "fden", v "d"]),
   ("ecp_double", [cw 12, v "R", v "R"])]

def loopBody : ProgHOL 64 :=
  .seq (.assign .local (nm "i") (.op .sub [v "i", cw 1]))
    (chain baseCalls
      (.seq (.ite (schedCond 11637723931993326632) (branch "Q") .skip)
        (.ite (schedCond 290499802545784960) (branch "nQ") .skip)))

def tailCalls : List Call :=
  [("fq12_frob", [v "Q1", v "Q"]),
   ("fq12_frob", [add "Q1" 384, add "Q" 384]),
   ("fq12_frob", [.op .add [v "Q1", .panop .mul [cw 2, cw 384]],
      .op .add [v "Q", .panop .mul [cw 2, cw 384]]]),
   ("fq12_frob", [v "nQ2", v "Q1"]),
   ("fq12_frob", [add "nQ2" 384, add "Q1" 384]),
   ("fe_neg", [cw 12, add "nQ2" 384, add "nQ2" 384]),
   ("fq12_frob", [.op .add [v "nQ2", .panop .mul [cw 2, cw 384]],
      .op .add [v "Q1", .panop .mul [cw 2, cw 384]]]),
   ("ecp_linefunc", [cw 12, v "n", v "d", v "R", v "Q1", v "P"]),
   ("fq12_mul", [v "fnum", v "fnum", v "n"]),
   ("fq12_mul", [v "fden", v "fden", v "d"]),
   ("ecp_add", [cw 12, v "R", v "R", v "Q1"]),
   ("ecp_linefunc", [cw 12, v "n", v "d", v "R", v "nQ2", v "P"]),
   ("fq12_mul", [v "fnum", v "fnum", v "n"]),
   ("fq12_mul", [v "fden", v "fden", v "d"]),
   ("heap_release", [v "mark"])]

def tail : ProgHOL 64 := chain tailCalls (.return (cw 0))

def preCalls : List Call :=
  [("memcpy", [v "R", v "Q", cw 1152]),
   ("memcpy", [v "nQ", v "Q", cw 1152]),
   ("fe_neg", [cw 12, add "nQ" 384, add "Q" 384]),
   ("fe_set_one", [cw 12, v "fnum"]),
   ("fe_set_one", [cw 12, v "fden"])]

def initialized : ProgHOL 64 :=
  .dec (nm "i") .one (cw 64)
    (.seq (.while (.cmp .lower (cw 0) (v "i")) loopBody) tail)

def millerBody : ProgHOL 64 :=
  .decCall (nm "mark") .one (nm "heap_mark") []
    (.decCall (nm "R") .one (nm "alloc") [cw 1152]
      (.decCall (nm "nQ") .one (nm "alloc") [cw 1152]
        (.decCall (nm "Q1") .one (nm "alloc") [cw 1152]
          (.decCall (nm "nQ2") .one (nm "alloc") [cw 1152]
            (.decCall (nm "n") .one (nm "alloc") [cw 384]
              (.decCall (nm "d") .one (nm "alloc") [cw 384]
                (chain preCalls initialized)))))))

def params : List (MlS × ShapeHOL) :=
  [(nm "fnum", .one), (nm "fden", .one), (nm "Q", .one), (nm "P", .one)]

def branchB : Nat := 4 + budget "ecp_linefunc" + 2 * budget "fq12_mul" + budget "ecp_add"
def bodyB : Nat := 14 + 3 * budget "ecp_linefunc" + 2 * budget "fq12_sqr" +
  6 * budget "fq12_mul" + budget "ecp_double" + 2 * budget "ecp_add"
def tailB : Nat := chainBudget tailCalls
def prefixB : Nat := 1 + budget "heap_mark" + 6 * (1 + budget "alloc") + chainBudget preCalls
def tighterCost : Nat := prefixB + 64 * (bodyB + 1) + tailB

theorem tighterCost_eq : tighterCost =
    79351465989394403122537730568637504761257207 := by decide

theorem oldCost_eq : prefixB + (2 ^ 64 + 1) * (bodyB + 1) + tailB =
    22685445671687464285842934441929714673871141658897275649277715 := by decide

theorem branch_cost (hc : CalleeCosts σ X) (Q : String) : Cost σ X (branch Q) branchB := by
  have hp := chain_cost hc (branchCalls Q) (by rfl)
    (call_cost hc (branchLast Q) (by change "ecp_add" ∈ calleeNames; decide))
  have heq : chainBudget (branchCalls Q) + (1 + budget (branchLast Q).1) = branchB := by
    change (1 + budget "ecp_linefunc") + ((1 + budget "fq12_mul") +
      ((1 + budget "fq12_mul") + 0)) + (1 + budget "ecp_add") = branchB
    decide
  rw [heq] at hp
  exact hp

theorem loop_steps : stepsB (nm "i") false loopBody = true := by rfl

theorem loop_cost (hc : CalleeCosts σ X) : Cost σ X loopBody bodyB := by
  have hb (Q : String) (n : Nat) : Cost σ X (.ite (schedCond n) (branch Q) .skip) branchB := by
    simpa only [Nat.max_zero] using cost_ite (branch_cost hc Q) (cost_skip (σ := σ) (X := X))
  have hp : Cost σ X loopBody (0 + (chainBudget baseCalls + (branchB + branchB))) := by
    unfold loopBody
    exact cost_seq (cost_assign (σ := σ) (X := X) _ _ _)
      (chain_cost hc baseCalls (by rfl) (cost_seq (hb "Q" 11637723931993326632) (hb "nQ" 290499802545784960)))
  have heq : 0 + (chainBudget baseCalls + (branchB + branchB)) = bodyB := by decide
  rw [heq] at hp
  exact hp

theorem tail_cost (hc : CalleeCosts σ X) : Cost σ X tail tailB := by
  have hp := chain_cost hc tailCalls (by rfl) (cost_return (σ := σ) (X := X) (cw 0))
  simpa only [tail, tailB, Nat.add_zero] using hp

theorem initialized_cost (hc : CalleeCosts σ X) :
    Cost σ X initialized (64 * (bodyB + 1) + tailB) := by
  exact AcceptedCountdownCost.cost_initialized_unsigned_seq 64 (loop_cost hc)
    (stepsB_sound (nm "i") false loopBody loop_steps) (tail_cost hc)

theorem body_cost_from_callees (hc : CalleeCosts σ X) : Cost σ X millerBody tighterCost := by
  have hp : Cost σ X millerBody
      (1 + budget "heap_mark" + (1 + budget "alloc" + (1 + budget "alloc" +
        (1 + budget "alloc" + (1 + budget "alloc" + (1 + budget "alloc" +
          (1 + budget "alloc" + (chainBudget preCalls + (64 * (bodyB + 1) + tailB))))))))) := by
    unfold millerBody
    exact cost_decCall hc.heap_mark (cost_decCall hc.alloc (cost_decCall hc.alloc
      (cost_decCall hc.alloc (cost_decCall hc.alloc (cost_decCall hc.alloc
        (cost_decCall hc.alloc (chain_cost hc preCalls (by rfl) (initialized_cost hc))))))))
  have heq : 1 + budget "heap_mark" + (1 + budget "alloc" + (1 + budget "alloc" +
      (1 + budget "alloc" + (1 + budget "alloc" + (1 + budget "alloc" +
        (1 + budget "alloc" + (chainBudget preCalls + (64 * (bodyB + 1) + tailB)))))))) = tighterCost := by decide
  rw [heq] at hp
  exact hp

theorem callee_cost_from_callees (hc : CalleeCosts σ X)
    (installed : X.code.lookup (nm "bn254_miller_raw") = some (params, millerBody, .one)) :
    CalleeBound σ X (nm "bn254_miller_raw") tighterCost := by
  intro vs body callee rs hl
  obtain ⟨ps, hcode⟩ := AcceptedIvvhCalleeCore.lookupCode_some hl
  rw [installed] at hcode
  have hbody : body = millerBody := (congrArg (fun e => e.2.1) (Option.some.inj hcode)).symm
  rw [hbody]
  exact body_cost_from_callees hc

#print axioms tighterCost_eq
#print axioms oldCost_eq
#print axioms loop_steps
#print axioms body_cost_from_callees
#print axioms callee_cost_from_callees
end AcceptedMillerCore
