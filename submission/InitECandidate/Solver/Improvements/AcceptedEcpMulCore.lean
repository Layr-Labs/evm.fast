import InitECandidate.Solver.Improvements.AcceptedIvvhCalleeCore
import InitECandidate.Solver.Improvements.AcceptedExactWhileCost
import InitECandidate.Solver.Improvements.AcceptedCallReturnCost

/-!
The `ecp_mul` unsigned loop bounded by the actual returned bit length.
Literal code follows accepted 6151c797 Guest.SoftwareAst (Apache-2.0).
The return bound is an explicit semantic premise; its concrete binding is
proved separately from accepted UVal.footS_u256_bit_length and UVal.ublF_le.
No assumption about successful decoding or heap provenance is introduced.
-/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace AcceptedEcpMulCore
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedIvvhCalleeCore (nm lv cw CalleeBound)
variable {σ : Type} {X : Ctx 64}

def v (s : String) : ExpHOL 64 := lv (nm s)
def callD (f : String) (args : List (ExpHOL 64)) : ProgHOL 64 :=
  .call (some (none, none)) (nm f) args

def loopBody : ProgHOL 64 :=
  .decCall (nm "bit") .one (nm "u256_bit") [v "n", v "i"]
    (.seq (.ite (.cmp .equal (v "bit") (cw 1))
        (callD "ecp_add" [v "fld", v "acc", v "acc", v "base"]) .skip)
      (.seq (.assign .local (nm "i") (.op .add [v "i", cw 1]))
        (.ite (.cmp .lower (v "i") (v "len"))
          (callD "ecp_double" [v "fld", v "base", v "base"]) .skip)))

def tail : ProgHOL 64 :=
  .seq (callD "memcpy" [v "out", v "acc", v "psz"])
    (.seq (callD "heap_release" [v "mark"]) (.return (cw 0)))

def initialized : ProgHOL 64 :=
  .dec (nm "i") .one (cw 0)
    (.seq (.while (.cmp .lower (v "i") (v "len")) loopBody) tail)

def withLength : ProgHOL 64 :=
  .decCall (nm "len") .one (nm "u256_bit_length") [v "n"] initialized

def body : ProgHOL 64 :=
  .dec (nm "psz") .one (.panop .mul [cw 3, .panop .mul [v "fld", cw 32]])
    (.decCall (nm "mark") .one (nm "heap_mark") []
      (.decCall (nm "acc") .one (nm "alloc") [v "psz"]
        (.decCall (nm "base") .one (nm "alloc") [v "psz"]
          (.seq (callD "ecp_set_inf" [v "fld", v "acc"])
            (.seq (callD "memcpy" [v "base", v "pt", v "psz"]) withLength)))))

def params : List (MlS × ShapeHOL) :=
  [(nm "fld", .one), (nm "out", .one), (nm "pt", .one),
   (nm "n", .comb [.one, .one, .one, .one])]

structure Budgets where
  alloc : Nat
  heapMark : Nat
  heapRelease : Nat
  setInf : Nat
  copy : Nat
  bitLength : Nat
  bit : Nat
  add : Nat
  double : Nat

def acceptedBudgets : Budgets :=
  ⟨2, 0, 0, 221360928884514619410, 73786976294838206468, 4, 1,
   295705376854295524795457352649153682868770,
   151085370912896677800741415559620896752853⟩

def bodyBudget (b : Budgets) : Nat := 3 + b.bit + b.add + b.double
def tailBudget (b : Budgets) : Nat := 2 + b.copy + b.heapRelease
def suffixBudget (b : Budgets) : Nat := 256 * (bodyBudget b + 1) + tailBudget b
def tighterCost (b : Budgets) : Nat :=
  8 + b.heapMark + 2 * b.alloc + b.setInf + 2 * b.copy + b.bitLength +
    b.heapRelease + 256 * (bodyBudget b + 1)

theorem accepted_tighter_cost : tighterCost acceptedBudgets =
    114378431428401203864627253596327766574169130 := by decide

theorem accepted_old_cost :
    8 + acceptedBudgets.heapMark + 2 * acceptedBudgets.alloc + acceptedBudgets.setInf +
      2 * acceptedBudgets.copy + acceptedBudgets.bitLength + acceptedBudgets.heapRelease +
      (2 ^ 64 + 1) * (bodyBudget acceptedBudgets + 1) =
    8241834578562711844632095206687037737264646023051339586604838 := by decide

structure CalleeCosts (b : Budgets) (σ : Type) (X : Ctx 64) : Prop where
  alloc : CalleeBound σ X (nm "alloc") b.alloc
  heapMark : CalleeBound σ X (nm "heap_mark") b.heapMark
  heapRelease : CalleeBound σ X (nm "heap_release") b.heapRelease
  setInf : CalleeBound σ X (nm "ecp_set_inf") b.setInf
  copy : CalleeBound σ X (nm "memcpy") b.copy
  bitLength : CalleeBound σ X (nm "u256_bit_length") b.bitLength
  bit : CalleeBound σ X (nm "u256_bit") b.bit
  add : CalleeBound σ X (nm "ecp_add") b.add
  double : CalleeBound σ X (nm "ecp_double") b.double

def BitLengthReturns (σ : Type) (X : Ctx 64) : Prop :=
  FunRet σ X (nm "u256_bit_length")
    (fun _ value => ∃ n : BitVec 64, value = .val (.word n) ∧ n.toNat ≤ 256)

theorem callD_cost {f : String} {args : List (ExpHOL 64)} {B : Nat}
    (hf : CalleeBound σ X (nm f) B) : Cost σ X (callD f args) (1 + B) := by
  exact cost_call (Bh := 0) hf (by intro _ _ _ _ h; cases h)

theorem loop_steps : stepsB (nm "i") true loopBody = true := by rfl
theorem loop_keeps : keepsB (nm "len") loopBody = true := by rfl

theorem loop_body_cost {b : Budgets} (h : CalleeCosts b σ X) :
    Cost σ X loopBody (bodyBudget b) := by
  have hAdd : Cost σ X (.ite (.cmp .equal (v "bit") (cw 1))
      (callD "ecp_add" [v "fld", v "acc", v "acc", v "base"]) .skip) (1 + b.add) := by
    simpa only [Nat.max_zero] using cost_ite (callD_cost h.add) (cost_skip (σ := σ) (X := X))
  have hDouble : Cost σ X (.ite (.cmp .lower (v "i") (v "len"))
      (callD "ecp_double" [v "fld", v "base", v "base"]) .skip) (1 + b.double) := by
    simpa only [Nat.max_zero] using cost_ite (callD_cost h.double) (cost_skip (σ := σ) (X := X))
  have hp : Cost σ X loopBody (1 + b.bit + ((1 + b.add) + (0 + (1 + b.double)))) := by
    exact cost_decCall h.bit (cost_seq hAdd (cost_seq (cost_assign _ _ _) hDouble))
  have heq : 1 + b.bit + ((1 + b.add) + (0 + (1 + b.double))) = bodyBudget b := by
    unfold bodyBudget
    omega
  rw [heq] at hp
  exact hp

theorem tail_cost {b : Budgets} (h : CalleeCosts b σ X) : Cost σ X tail (tailBudget b) := by
  have hp : Cost σ X tail ((1 + b.copy) + ((1 + b.heapRelease) + 0)) :=
    cost_seq (callD_cost h.copy) (cost_seq (callD_cost h.heapRelease) (cost_return _))
  have heq : (1 + b.copy) + ((1 + b.heapRelease) + 0) = tailBudget b := by
    unfold tailBudget
    omega
  rw [heq] at hp
  exact hp

def LenBound (s : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ n : BitVec 64, s.locals.lookup (nm "len") = some (.val (.word n)) ∧ n.toNat ≤ 256

def LoopInv (s : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ i n : BitVec 64, s.locals.lookup (nm "i") = some (.val (.word i)) ∧
    s.locals.lookup (nm "len") = some (.val (.word n)) ∧
    i.toNat ≤ n.toNat ∧ n.toNat ≤ 256

theorem guard_lt {s : PanSemStateFiniteExact 64 σ} {i n : BitVec 64}
    (hi : s.locals.lookup (nm "i") = some (.val (.word i)))
    (hn : s.locals.lookup (nm "len") = some (.val (.word n)))
    (hc : CondTrue s (.cmp .lower (v "i") (v "len"))) : i.toNat < n.toNat := by
  obtain ⟨w, hw, hne⟩ := hc
  have eI : ev s (v "i") = some (.val (.word i)) := hi
  have eN : ev s (v "len") = some (.val (.word n)) := hn
  change ev s (.cmp .lower (v "i") (v "len")) = some (.val (.word w)) at hw
  rw [ev_cmp eI eN] at hw
  have cmp : wordCmpHOL .lower i n = true := by
    cases hcmp : wordCmpHOL .lower i n
    · have hz : w = 0 := by simpa [hcmp] using hw.symm
      exact False.elim (hne hz)
    · rfl
  simpa only [wordCmpHOL, decide_eq_true_eq, BitVec.lt_def] using cmp

theorem increment_nat {i n : BitVec 64} (hi : i.toNat < n.toNat) (hn : n.toNat ≤ 256) :
    (i + 1).toNat = i.toNat + 1 := by
  apply BitVec.toNat_add_of_lt
  have one : (1 : BitVec 64).toNat = 1 := by decide
  have large : 256 < 2 ^ 64 := by decide
  omega

theorem loop_cost {b : Budgets} (h : CalleeCosts b σ X) :
    AcceptedLoopRules.CostP σ X LoopInv
      (.while (.cmp .lower (v "i") (v "len")) loopBody) (256 * (bodyBudget b + 1)) := by
  let μ : PanSemStateFiniteExact 64 σ → Nat := fun s => 256 - wordOf s (nm "i")
  refine AcceptedExactWhileCost.costP_while_exact μ 256 ?_ (fun _ => rfl)
    (AcceptedLoopRules.costP_of_cost (loop_body_cost h)) ?_ ?_ ?_ ?_
  · rintro s ⟨i, n, hi, hn, hin, hnb⟩
    exact ⟨i, n, hi, hn, hin, hnb⟩
  · rintro s hs ⟨⟨i, n, hi, hn, hin, hnb⟩, hc⟩ tracked hexit
    have less := guard_lt hi hn hc
    have after : (evaluateHOLFiniteState s loopBody).2.locals.lookup (nm "i") =
        some (.val (.word (i + 1))) := by
      simpa only [stepFun, if_true] using
        stepsB_sound (σ := σ) (nm "i") true loopBody loop_steps s i hi hexit
    have kept := keepsB_sound (σ := σ) (nm "len") loopBody loop_keeps s
      (hexit.elim Or.inl (fun x => Or.inr (Or.inl x)))
    refine ⟨i + 1, n, after, kept.trans hn, ?_, hnb⟩
    rw [increment_nat less hnb]
    omega
  · intro s hs hI hc
    exact Nat.sub_le _ _
  · rintro s hs ⟨i, n, hi, hn, hin, hnb⟩ hc
    have less := guard_lt hi hn hc
    change 0 < 256 - wordOf s (nm "i")
    simp only [wordOf, hi]
    omega
  · rintro k s hs ⟨⟨i, n, hi, hn, hin, hnb⟩, hc, rank⟩ tracked hexit
    have less := guard_lt hi hn hc
    have after : (evaluateHOLFiniteState s loopBody).2.locals.lookup (nm "i") =
        some (.val (.word (i + 1))) := by
      simpa only [stepFun, if_true] using
        stepsB_sound (σ := σ) (nm "i") true loopBody loop_steps s i hi hexit
    change 256 - wordOf (evaluateHOLFiniteState s loopBody).2 (nm "i") < k
    simp only [wordOf, after, increment_nat less hnb]
    change 256 - wordOf s (nm "i") = k at rank
    simp only [wordOf, hi] at rank
    omega

theorem initialized_cost {b : Budgets} (h : CalleeCosts b σ X) :
    AcceptedLoopRules.CostP σ X LenBound initialized (suffixBudget b) := by
  refine AcceptedLoopRules.costP_dec fun s hs hlen value hv hshape => ?_
  have zero : value = .val (.word (0 : BitVec 64)) := by
    have hz : (BitVec.ofNat 64 0 : BitVec 64) = 0 := by decide
    simpa only [v, cw, ev_const, Option.some.injEq, hz] using hv.symm
  subst value
  have sequence : AcceptedLoopRules.CostP σ X LoopInv
      (.seq (.while (.cmp .lower (v "i") (v "len")) loopBody) tail) (suffixBudget b) :=
    AcceptedLoopRules.costP_seq (R := fun _ => True) (loop_cost h)
      (fun _ _ _ _ _ => trivial) (AcceptedLoopRules.costP_of_cost (tail_cost h))
  refine sequence.pre fun t hctx hEq => ?_
  subst t
  obtain ⟨n, hn, hnb⟩ := hlen
  refine ⟨0, n, ?_, ?_, by simp, hnb⟩
  · simp [setVarHOLFinite, FUPDATE]
  · simpa [setVarHOLFinite, FUPDATE, show nm "len" ≠ nm "i" by decide,
      show nm "i" ≠ nm "len" by decide] using hn

theorem length_stage_cost {b : Budgets} (h : CalleeCosts b σ X)
    (hLen : BitLengthReturns σ X) : Cost σ X withLength (1 + b.bitLength + suffixBudget b) := by
  apply AcceptedLoopRules.cost_of_costP_true
  refine AcceptedCallReturnCost.costP_decCallRet h.bitLength hLen ?_
  intro s hs hp vs hvs callee value st hRet hctx hshape
  obtain ⟨n, rfl, hn⟩ := hRet
  refine (initialized_cost h).pre fun t hctx' hEq => ?_
  subst t
  refine ⟨n, ?_, hn⟩
  simp [setVarHOLFinite, FUPDATE]

theorem body_cost_from_callees {b : Budgets} (h : CalleeCosts b σ X)
    (hLen : BitLengthReturns σ X) : Cost σ X body (tighterCost b) := by
  have hp : Cost σ X body
      (1 + b.heapMark + (1 + b.alloc + (1 + b.alloc +
        ((1 + b.setInf) + ((1 + b.copy) + (1 + b.bitLength + suffixBudget b)))))) := by
    exact cost_dec (cost_decCall h.heapMark (cost_decCall h.alloc (cost_decCall h.alloc
      (cost_seq (callD_cost h.setInf) (cost_seq (callD_cost h.copy) (length_stage_cost h hLen))))))
  have heq : 1 + b.heapMark + (1 + b.alloc + (1 + b.alloc +
      ((1 + b.setInf) + ((1 + b.copy) + (1 + b.bitLength + suffixBudget b))))) = tighterCost b := by
    unfold suffixBudget tailBudget tighterCost
    omega
  rw [heq] at hp
  exact hp

theorem callee_cost_from_callees {b : Budgets} (h : CalleeCosts b σ X)
    (hLen : BitLengthReturns σ X)
    (installed : X.code.lookup (nm "ecp_mul") = some (params, body, .one)) :
    CalleeBound σ X (nm "ecp_mul") (tighterCost b) := by
  intro vs actual callee rs lookup
  obtain ⟨ps, hcode⟩ := AcceptedIvvhCalleeCore.lookupCode_some lookup
  rw [installed] at hcode
  have hb : actual = body := (congrArg (fun e => e.2.1) (Option.some.inj hcode)).symm
  rw [hb]
  exact body_cost_from_callees h hLen

#print axioms accepted_tighter_cost
#print axioms loop_cost
#print axioms initialized_cost
#print axioms body_cost_from_callees
#print axioms callee_cost_from_callees
end AcceptedEcpMulCore
