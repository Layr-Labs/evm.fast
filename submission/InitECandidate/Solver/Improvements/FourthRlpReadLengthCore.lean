import InitECandidate.Solver.Improvements.AcceptedEcpMulCore

/-! Conditional eight-byte cost for the literal `rlp_read_length` loop.
The function itself has no `n > 8` rejection guard, so this theorem deliberately
requires the actual argument `n <= 8`; callers must prove that condition.
No memory-success assumption is used. Accepted 6151c797 code, Apache-2.0. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace FourthRlpReadLengthCore
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedIvvhCalleeCore (nm lv cw CalleeBound)
variable {σ : Type} {X : Ctx 64}

def v (s : String) : ExpHOL 64 := lv (nm s)
def failPrefix : ProgHOL 64 :=
  .ite (.op .and
      [.cmp .notEqual (cw 0) (.cmp .lower (cw 1) (v "n")),
       .cmp .notEqual (cw 0) (.cmp .equal (.loadByte (v "p")) (cw 0))])
    (.call (some (none, none)) (nm "rlp_fail") [cw 2]) .skip

def loopBody : ProgHOL 64 :=
  .seq (.assign .local (nm "v")
      (.op .or [.shift .lsl (v "v") (cw 8), .loadByte (.op .add [v "p", v "i"])]))
    (.assign .local (nm "i") (.op .add [v "i", cw 1]))

def loop : ProgHOL 64 := .while (.cmp .lower (v "i") (v "n")) loopBody

def initialized : ProgHOL 64 :=
  .dec (nm "i") .one (cw 0) (.seq loop (.return (v "v")))

def suffix : ProgHOL 64 := .dec (nm "v") .one (cw 0) initialized

def body : ProgHOL 64 := .seq failPrefix suffix

def params : List (MlS × ShapeHOL) := [(nm "p", .one), (nm "n", .one)]

def NBound (s : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ n : BitVec 64, s.locals.lookup (nm "n") = some (.val (.word n)) ∧ n.toNat ≤ 8

def LoopInv (s : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ i n : BitVec 64, s.locals.lookup (nm "i") = some (.val (.word i)) ∧
    s.locals.lookup (nm "n") = some (.val (.word n)) ∧ i.toNat ≤ n.toNat ∧ n.toNat ≤ 8

theorem loop_steps : stepsB (nm "i") true loopBody = true := by rfl
theorem loop_keeps : keepsB (nm "n") loopBody = true := by rfl
theorem prefix_keeps : keepsB (nm "n") failPrefix = true := by rfl

theorem loop_body_cost : Cost σ X loopBody 0 :=
  cost_seq (cost_assign _ _ _) (cost_assign _ _ _)

theorem guard_lt {s : PanSemStateFiniteExact 64 σ} {i n : BitVec 64}
    (hi : s.locals.lookup (nm "i") = some (.val (.word i)))
    (hn : s.locals.lookup (nm "n") = some (.val (.word n)))
    (hc : CondTrue s (.cmp .lower (v "i") (v "n"))) : i.toNat < n.toNat := by
  obtain ⟨w, hw, hne⟩ := hc
  change ev s (.cmp .lower (v "i") (v "n")) = some (.val (.word w)) at hw
  have ei : ev s (v "i") = some (.val (.word i)) := hi
  have en : ev s (v "n") = some (.val (.word n)) := hn
  rw [ev_cmp ei en] at hw
  have hcmp : Flapjack.Compiler.Encoders.Asm.wordCmpHOL .lower i n = true := by
    cases hc : Flapjack.Compiler.Encoders.Asm.wordCmpHOL .lower i n
    · have hz : w = 0 := by simpa [hc] using hw.symm
      exact False.elim (hne hz)
    · rfl
  simpa only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, decide_eq_true_eq,
    BitVec.lt_def] using hcmp

theorem increment_nat {i n : BitVec 64} (hi : i.toNat < n.toNat) (hn : n.toNat ≤ 8) :
    (i + 1).toNat = i.toNat + 1 :=
  AcceptedEcpMulCore.increment_nat hi (by omega)

theorem loop_cost : AcceptedLoopRules.CostP σ X LoopInv loop 8 := by
  let μ : PanSemStateFiniteExact 64 σ → Nat := fun s => 8 - wordOf s (nm "i")
  refine AcceptedExactWhileCost.costP_while_exact μ 8 ?_ (fun _ => rfl)
    (AcceptedLoopRules.costP_of_cost loop_body_cost) ?_ ?_ ?_ ?_
  · rintro s ⟨i, n, hi, hn, hin, hnb⟩
    exact ⟨i, n, hi, hn, hin, hnb⟩
  · rintro s hs ⟨⟨i, n, hi, hn, hin, hnb⟩, hc⟩ tracked hexit
    have less := guard_lt hi hn hc
    have after : (evaluateHOLFiniteState s loopBody).2.locals.lookup (nm "i") =
        some (.val (.word (i + 1))) := by
      simpa only [stepFun, if_true] using
        stepsB_sound (σ := σ) (nm "i") true loopBody loop_steps s i hi hexit
    have kept := keepsB_sound (σ := σ) (nm "n") loopBody loop_keeps s
      (hexit.elim Or.inl (fun x => Or.inr (Or.inl x)))
    refine ⟨i + 1, n, after, kept.trans hn, ?_, hnb⟩
    rw [increment_nat less hnb]
    omega
  · intro s hs hI hc
    exact Nat.sub_le _ _
  · rintro s hs ⟨i, n, hi, hn, hin, hnb⟩ hc
    have less := guard_lt hi hn hc
    change 0 < 8 - wordOf s (nm "i")
    simp only [wordOf, hi]
    omega
  · rintro k s hs ⟨⟨i, n, hi, hn, hin, hnb⟩, hc, rank⟩ tracked hexit
    have less := guard_lt hi hn hc
    have after : (evaluateHOLFiniteState s loopBody).2.locals.lookup (nm "i") =
        some (.val (.word (i + 1))) := by
      simpa only [stepFun, if_true] using
        stepsB_sound (σ := σ) (nm "i") true loopBody loop_steps s i hi hexit
    change 8 - wordOf (evaluateHOLFiniteState s loopBody).2 (nm "i") < k
    simp only [wordOf, after, increment_nat less hnb]
    change 8 - wordOf s (nm "i") = k at rank
    simp only [wordOf, hi] at rank
    omega

theorem initialized_cost : AcceptedLoopRules.CostP σ X NBound initialized 8 := by
  refine AcceptedLoopRules.costP_dec fun s hs hn value hv hshape => ?_
  have zero : value = .val (.word (0 : BitVec 64)) := by
    have hz : (BitVec.ofNat 64 0 : BitVec 64) = 0 := by decide
    simpa only [v, cw, ev_const, Option.some.injEq, hz] using hv.symm
  subst value
  have sequence : AcceptedLoopRules.CostP σ X LoopInv (.seq loop (.return (v "v"))) 8 :=
    AcceptedLoopRules.costP_seq (R := fun _ => True) loop_cost
      (fun _ _ _ _ _ => trivial) (AcceptedLoopRules.costP_of_cost (cost_return _))
  refine sequence.pre fun t ht heq => ?_
  subst t
  obtain ⟨n, hn, hnb⟩ := hn
  refine ⟨0, n, ?_, ?_, by simp, hnb⟩
  · simp [setVarHOLFinite, FUPDATE]
  · simpa [setVarHOLFinite, FUPDATE, show nm "i" ≠ nm "n" by decide] using hn

theorem suffix_cost : AcceptedLoopRules.CostP σ X NBound suffix 8 := by
  refine AcceptedLoopRules.costP_dec fun s hs hn value hv hshape => ?_
  refine initialized_cost.pre fun t ht heq => ?_
  subst t
  obtain ⟨n, hn, hnb⟩ := hn
  refine ⟨n, ?_, hnb⟩
  simpa [setVarHOLFinite, FUPDATE, show nm "v" ≠ nm "n" by decide] using hn

theorem prefix_cost {Bf : Nat} (hf : CalleeBound σ X (nm "rlp_fail") Bf) :
    Cost σ X failPrefix (1 + Bf) := by
  have hc : Cost σ X (.call (some (none, none)) (nm "rlp_fail") [cw 2]) (1 + Bf) :=
    cost_call (Bh := 0) hf (by intro _ _ _ _ h; cases h)
  simpa only [failPrefix, Nat.max_zero] using cost_ite hc (cost_skip (σ := σ) (X := X))

theorem body_cost {Bf : Nat} (hf : CalleeBound σ X (nm "rlp_fail") Bf) :
    AcceptedLoopRules.CostP σ X NBound body (9 + Bf) := by
  have seqCost : AcceptedLoopRules.CostP σ X NBound body ((1 + Bf) + 8) := by
    refine AcceptedLoopRules.costP_seq (AcceptedLoopRules.costP_of_cost (prefix_cost hf)) ?_ suffix_cost
    intro s hs hN tracked hr
    obtain ⟨n, hn, hnb⟩ := hN
    refine ⟨n, ?_, hnb⟩
    exact (keepsB_sound (σ := σ) (nm "n") failPrefix prefix_keeps s (Or.inl hr)).trans hn
  exact seqCost.mono (by omega)

#print axioms loop_cost
#print axioms body_cost
end FourthRlpReadLengthCore
