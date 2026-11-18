import InitECandidate.Solver.Spec.Inv.HtabCode
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.DivCost.Reverse.Affine
variable {σ : Type}
def exp (u j n : MlS) : ExpHOL 64 := .op .add [lv u,.panop .mul [.op .add [lv j,lv n],cw 8]]
theorem inverse {s : PanSemStateFiniteExact 64 σ} {u j n : MlS} {w : BitVec 64}
 (h : ev s (exp u j n)=some (.val (.word w))) :
 ∃ U J N : BitVec 64, s.locals.lookup u=some (.val (.word U)) ∧
 s.locals.lookup j=some (.val (.word J)) ∧ s.locals.lookup n=some (.val (.word N)) ∧ w=U+(J+N)*8 := by
 unfold exp at h
 obtain ⟨U,M,hU,hM,hw⟩ := Inv.ev_add2_inv h
 obtain ⟨S,K,hS,hK,hM'⟩ := Inv.ev_mul2_inv hM
 obtain ⟨J,N,hJ,hN,hS'⟩ := Inv.ev_add2_inv hS
 rw [ev_cw] at hK
 cases hK
 simp only [ValueHOL.val.injEq,HolWordLab.word.injEq] at hw hM' hS'
 refine ⟨U,J,N,?_,?_,?_,?_⟩
 · simpa only [ev_lv] using hU
 · simpa only [ev_lv] using hJ
 · simpa only [ev_lv] using hN
 · rw [hw,hM',hS']
   rfl
#print axioms inverse
end InitECandidate.Solver.MemSafe.DivCost.Reverse.Affine
