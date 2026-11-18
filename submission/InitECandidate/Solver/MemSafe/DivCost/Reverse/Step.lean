import InitECandidate.Solver.MemSafe.DivCost.Reverse.Read
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.DivCost.Reverse
variable {σ : Type}
theorem address_arith (U J N : BitVec 64) : U+(J-1-1+N)*8=(U+(J-1+N)*8)-8 := by
 simp only [BitVec.sub_eq_add_neg,BitVec.add_mul,BitVec.neg_mul,BitVec.one_mul,BitVec.add_assoc]
 have h18 : (1:BitVec 64)*8=8 := by decide +kernel
 rw [h18,BitVec.add_comm (-8) (N*8)]
theorem addr_some {t : PanSemStateFiniteExact 64 σ} {w : BitVec 64} (h : addr t=some w) :
 ∃ U J N : BitVec 64, wordLocal t (nm "un")=some U ∧ wordLocal t (nm "j")=some J ∧
 wordLocal t (nm "n")=some N ∧ w=U+(J-1+N)*8 := by
 cases hU : wordLocal t (nm "un") with
 | none => simp [addr,hU] at h
 | some U =>
  cases hJ : wordLocal t (nm "j") with
  | none => simp [addr,hU,hJ] at h
  | some J =>
   cases hN : wordLocal t (nm "n") with
   | none => simp [addr,hU,hJ,hN] at h
   | some N =>
    have hw : w=U+(J-1+N)*8 := (Option.some.inj (by simpa only [addr,hU,hJ,hN] using h)).symm
    exact ⟨U,J,N,rfl,rfl,rfl,hw⟩
theorem eval_body {t : PanSemStateFiniteExact 64 σ} {J : BitVec 64}
 (hJ : t.locals.lookup (nm "j")=some (.val (.word J))) :
 evaluateHOLFiniteState t Helpers.dvBody3 = evaluateHOLFiniteState (setVarHOLFinite (nm "j") (.val (.word (J-1))) t) tail := by
 rw [body_eq,evaluateHOLFiniteState_eq_evaluate_def _ (.seq _ _)]
 dsimp only
 have hp : (ProgHOL.assign .local (nm "j") (.op .sub [lv (nm "j"),cw 1]) : ProgHOL 64) = .assign .local (nm "j") (.op .sub [.var .local (nm "j"),.const 1]) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl
 rw [hp,eval_decrement hJ]
theorem complete_exit {t : PanSemStateFiniteExact 64 σ} {p : ProgHOL 64}
 (hc : Completes t p) : LoopExit (evaluateHOLFiniteState t p).1 := by
 rcases hc with h | h
 · exact Or.inl h
 · exact Or.inr (Or.inl h)
theorem step {t : PanSemStateFiniteExact 64 σ} {w : BitVec 64}
 (ha : addr t=some w) (hc : Completes t Helpers.dvBody3) :
 addr (evaluateHOLFiniteState t Helpers.dvBody3).2=some (w-8) := by
 obtain ⟨U,J,N,hU,hJ,hN,hw⟩ := addr_some ha
 have hj := wordLocal_some hJ
 have heq := eval_body hj
 have ht : Completes (setVarHOLFinite (nm "j") (.val (.word (J-1))) t) tail := by
  unfold Completes at hc ⊢
  rw [heq] at hc
  exact hc
 have hu' := (keepsB_sound (σ := σ) (nm "un") Helpers.dvBody3 (by decide_cbv)) t (complete_exit hc)
 have hn' := (keepsB_sound (σ := σ) (nm "n") Helpers.dvBody3 (by decide_cbv)) t (complete_exit hc)
 have hj' := (keepsB_sound (σ := σ) (nm "j") tail (by decide_cbv)) _ (complete_exit ht)
 have hlu : (evaluateHOLFiniteState t Helpers.dvBody3).2.locals.lookup (nm "un")=some (.val (.word U)) := hu'.trans (wordLocal_some hU)
 have hln : (evaluateHOLFiniteState t Helpers.dvBody3).2.locals.lookup (nm "n")=some (.val (.word N)) := hn'.trans (wordLocal_some hN)
 have hlj : (evaluateHOLFiniteState t Helpers.dvBody3).2.locals.lookup (nm "j")=some (.val (.word (J-1))) := by
  rw [heq]
  exact hj'.trans (lk_set_self _ _ _)
 unfold addr wordLocal
 rw [hlu,hlj,hln]
 dsimp only
 rw [hw,address_arith]
#print axioms step
end InitECandidate.Solver.MemSafe.DivCost.Reverse
