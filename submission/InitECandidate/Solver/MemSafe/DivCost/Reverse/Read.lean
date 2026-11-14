import InitECandidate.Solver.MemSafe.DivCost.Reverse.Affine
import InitECandidate.Solver.MemSafe.InitCost.Reads
import InitECandidate.Solver.MemSafe.Helpers.Divmnu
import InitECandidate.Solver.MemSafe.CryptoCost.Countdown
import InitECandidate.Solver.MemSafe.ArenaCost.SourceReads
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
def addr (s : PanSemStateFiniteExact 64 σ) : Option (BitVec 64) :=
 match wordLocal s (nm "un"),wordLocal s (nm "j"),wordLocal s (nm "n") with
 | some U,some J,some N => some (U+(J-1+N)*8)
 | _,_,_ => none
def tail : ProgHOL 64 := match Helpers.dvBody3 with | .seq _ r => r | _ => .skip
theorem body_eq : Helpers.dvBody3 = .seq (.assign .local (nm "j") (.op .sub [lv (nm "j"),cw 1])) tail := by cbv
theorem read_first {t : PanSemStateFiniteExact 64 σ}
 (hcond : CondTrue t (.cmp .lower (cw 0) (lv (nm "j")))) (hc : Completes t Helpers.dvBody3) :
 ∃ w, addr t=some w ∧ Hit t.memaddrs w := by
 obtain ⟨J,hJ,hJ0⟩ := CryptoCost.Countdown.cond_word hcond
 have heq : evaluateHOLFiniteState t Helpers.dvBody3 = evaluateHOLFiniteState (setVarHOLFinite (nm "j") (.val (.word (J-1))) t) tail := by
  rw [body_eq,evaluateHOLFiniteState_eq_evaluate_def _ (.seq _ _)]
  dsimp only
  have hd : evaluateHOLFiniteState t (.assign .local (nm "j") (.op .sub [lv (nm "j"),cw 1])) = (none,setVarHOLFinite (nm "j") (.val (.word (J-1))) t) := by
   have hp : (ProgHOL.assign .local (nm "j") (.op .sub [lv (nm "j"),cw 1]) : ProgHOL 64) = .assign .local (nm "j") (.op .sub [.var .local (nm "j"),.const 1]) := by
    conv => lhs; cbv
    conv => rhs; cbv
    all_goals rfl
   rw [hp]
   exact eval_decrement hJ
  rw [hd]
 have htail : Completes (setVarHOLFinite (nm "j") (.val (.word (J-1))) t) tail := by
  unfold Completes at hc ⊢
  rw [heq] at hc
  exact hc
 obtain ⟨inst,v,hv⟩ := decl_source_eval htail
 obtain ⟨w,hw,hhit⟩ := eval_load_one_hit hv
 have hi : inst = (fun a => Classical.propDecidable ((setVarHOLFinite (nm "j") (.val (.word (J-1))) t).memaddrs a)) := Subsingleton.elim _ _
 rw [hi] at hw
 obtain ⟨U,J',N,hU,hJ',hN,hw'⟩ := InitECandidate.Solver.MemSafe.DivCost.Reverse.Affine.inverse hw
 rw [lk_set_ne _ _ (by decide)] at hU hN
 rw [lk_set_self] at hJ'
 simp only [Option.some.injEq,ValueHOL.val.injEq,HolWordLab.word.injEq] at hJ'
 subst J'
 refine ⟨w,?_,hhit⟩
 unfold addr wordLocal
 rw [hU,hJ,hN]
 simpa only [hw']
#print axioms read_first
end InitECandidate.Solver.MemSafe.DivCost.Reverse
