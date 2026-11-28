import InitECandidate.Solver.TxAl.Defs
import InitECandidate.Solver.SourceCost.LoopExtra.AddrLoop
import InitECandidate.Solver.Spec.Inv.HtabCode
import InitECandidate.Solver.Spec.Bridge
import InitECandidate.Solver.SourceCost.Table
import InitECandidate.Solver.Spec.CostInv

/-! # `htab_first_diff`: restated body -/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.HtFd
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- Body of the bit loop `while j < 8`. -/
def jBody : ProgHOL 64 :=
  ProgHOL.seq (ProgHOL.ite (ExpHOL.cmp .notEqual (ExpHOL.op .and [ExpHOL.shift .lsr (ExpHOL.var .local (nm "x")) (ExpHOL.op .sub [(cw 7), ExpHOL.var .local (nm "j")]), (cw 1)]) ((cw 0))) (ProgHOL.return (ExpHOL.op .add [ExpHOL.panop .mul [ExpHOL.var .local (nm "i"), (cw 8)], ExpHOL.var .local (nm "j")])) (ProgHOL.skip)) (ProgHOL.assign .local (nm "j") (ExpHOL.op .add [ExpHOL.var .local (nm "j"), (cw 1)]))

def jLoop : ProgHOL 64 :=
  ProgHOL.dec (nm "j") .one ((cw 0)) (ProgHOL.while (ExpHOL.cmp .less (ExpHOL.var .local (nm "j")) ((cw 8))) jBody)

def xExp : ExpHOL 64 :=
  ExpHOL.op .xor [ExpHOL.loadByte (ExpHOL.op .add [ExpHOL.var .local (nm "a"), ExpHOL.var .local (nm "i")]), ExpHOL.loadByte (ExpHOL.op .add [ExpHOL.var .local (nm "b"), ExpHOL.var .local (nm "i")])]

def iRest : ProgHOL 64 :=
  ProgHOL.seq (ProgHOL.ite (ExpHOL.cmp .notEqual (ExpHOL.var .local (nm "x")) ((cw 0))) jLoop (ProgHOL.skip)) (ProgHOL.assign .local (nm "i") (ExpHOL.op .add [ExpHOL.var .local (nm "i"), (cw 1)]))

def iBody : ProgHOL 64 := ProgHOL.dec (nm "x") .one xExp iRest

def fdBody : ProgHOL 64 :=
  ProgHOL.dec (nm "i") .one ((cw 0)) (ProgHOL.seq (ProgHOL.while (ExpHOL.cmp .lower (ExpHOL.var .local (nm "i")) (ExpHOL.var .local (nm "key_len"))) iBody) (ProgHOL.return (ExpHOL.panop .mul [ExpHOL.var .local (nm "key_len"), (cw 8)])))

def fdParams : List (MlS × ShapeHOL) := [((nm "a"), ShapeHOL.one), ((nm "b"), ShapeHOL.one), ((nm "key_len"), ShapeHOL.one)]

theorem code_fd : guestCode (nm "htab_first_diff") = some (fdParams, fdBody, .one) := by
  have h : fnEntry Guest.Software.guestFn_htab_first_diff =
      (nm "htab_first_diff", fdParams, fdBody, .one) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 130) (by decide)) ⟨_, rfl⟩ h

variable {σ : Type}

/-- A completed `var x = e; b` evaluated `e` and completed `b` from the extended state. -/
theorem dec_completes {t : PanSemStateFiniteExact 64 σ} {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64}
    {b : ProgHOL 64} (h : Completes t (.dec n sh e b)) :
    ∃ v, ev t e = some v ∧ Completes (setVarHOLFinite n v t) b := by
  unfold Completes at h ⊢
  rw [evaluateHOLFiniteState_eq_evaluate_def t (.dec n sh e b)] at h
  dsimp only at h
  split at h
  · simp at h
  · rename_i v hv
    split at h
    · exact ⟨v, hv, h⟩
    · simp at h

end InitECandidate.Solver.HtFd
