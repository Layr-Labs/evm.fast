import InitECandidate.Solver.HtFd.Cost
import InitECandidate.Solver.SourceCost.Shards.All

/-!
# `rlp_read_length`: the byte loop is bounded by the memory domain

`while i <+ n { v = (v << 8) | ld8 (p + i); i = i + 1 }`: every completed iteration loaded the
mapped byte `p + i`, and the address moves by `1`, so `cost_while_addr` bounds the loop by the size
of the memory domain (`2 ^ 35 + 9` iterations) instead of the analyzer's `2 ^ 64 + 1`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.RlpLen
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

def vExp : ExpHOL 64 :=
  ExpHOL.op .or [ExpHOL.shift .lsl (ExpHOL.var .local (nm "v")) ((cw 8)), ExpHOL.loadByte (ExpHOL.op .add [ExpHOL.var .local (nm "p"), ExpHOL.var .local (nm "i")])]

def lBody : ProgHOL 64 :=
  ProgHOL.seq (ProgHOL.assign .local (nm "v") vExp) (ProgHOL.assign .local (nm "i") (ExpHOL.op .add [ExpHOL.var .local (nm "i"), (cw 1)]))

def rlPre : ProgHOL 64 :=
  ProgHOL.ite (ExpHOL.op .and [ExpHOL.cmp .notEqual ((cw 0)) (ExpHOL.cmp .lower ((cw 1)) (ExpHOL.var .local (nm "n"))), ExpHOL.cmp .notEqual ((cw 0)) (ExpHOL.cmp .equal (ExpHOL.loadByte (ExpHOL.var .local (nm "p"))) ((cw 0)))]) (ProgHOL.call (some (none, none)) (nm "rlp_fail") [(cw 2)]) (ProgHOL.skip)

def rlBody : ProgHOL 64 :=
  ProgHOL.seq rlPre (ProgHOL.dec (nm "v") .one ((cw 0)) (ProgHOL.dec (nm "i") .one ((cw 0)) (ProgHOL.seq (ProgHOL.while (ExpHOL.cmp .lower (ExpHOL.var .local (nm "i")) (ExpHOL.var .local (nm "n"))) lBody) (ProgHOL.return (ExpHOL.var .local (nm "v"))))))

def rlParams : List (MlS × ShapeHOL) := [((nm "p"), ShapeHOL.one), ((nm "n"), ShapeHOL.one)]

theorem code_rl : guestCode (nm "rlp_read_length") = some (rlParams, rlBody, .one) := by
  have h : fnEntry Guest.Software.guestFn_rlp_read_length =
      (nm "rlp_read_length", rlParams, rlBody, .one) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 106) (by decide)) ⟨_, rfl⟩ h

variable {σ : Type}

theorem assign_completes {t : PanSemStateFiniteExact 64 σ} {n : MlS} {e : ExpHOL 64}
    (h : (evaluateHOLFiniteState t (.assign .local n e)).1 = none) : ∃ v, ev t e = some v := by
  revert h
  rw [evaluateHOLFiniteState_eq_evaluate_def t (.assign .local n e)]
  dsimp only
  split
  · intro h; simp at h
  · rename_i v hv
    intro _
    exact ⟨v, hv⟩

def byteAddr (t : PanSemStateFiniteExact 64 σ) : Option (BitVec 64) :=
  match wordLocal t (nm "p"), wordLocal t (nm "i") with
  | some A, some I => some (A + I)
  | _, _ => none

theorem lBody_hit {t : PanSemStateFiniteExact 64 σ} (hc : Completes t lBody) :
    ∃ A I : BitVec 64, t.locals.lookup (nm "p") = some (.val (.word A)) ∧
      t.locals.lookup (nm "i") = some (.val (.word I)) ∧ Hit t.memaddrs (A + I) := by
  unfold lBody at hc
  have h1 := seq_completes (noContB_sound _ (by decide)) hc
  obtain ⟨v1, hv1⟩ := assign_completes h1
  unfold vExp at hv1
  obtain ⟨x, y, -, hy, -⟩ := InitECandidate.Solver.Spec.Inv.ev_op2_inv hv1
  obtain ⟨w, hw, hhit⟩ := ev_loadByte_hit hy
  obtain ⟨A, I, hA, hI, hAI⟩ := InitECandidate.Solver.Spec.Inv.ev_add2_inv hw
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hAI
  subst hAI
  exact ⟨A, I, hA, hI, hhit⟩

theorem lSteps : stepsB (nm "i") true lBody = true := by decide_cbv
theorem pKeeps : keepsB (nm "p") lBody = true := by decide_cbv

theorem lBody_cost : Cost σ guestCtx lBody 0 := by
  unfold lBody
  exact cost_seq (cost_assign _ _ _) (cost_assign _ _ _)

theorem loop_cost :
    Cost σ guestCtx (.while (.cmp .lower (.var .local (nm "i")) (.var .local (nm "n"))) lBody)
      ((2 ^ 35 + 9) * (0 + 1)) := by
  obtain ⟨L, hL, ⟨lo, hdom⟩, -, hL35⟩ := guestCtx_bounded
  have hLs : L + alignSlack 64 ≤ 2 ^ 64 := by unfold addrStepMax at hL; omega
  have hsl : alignSlack 64 = 8 := by decide
  refine Cost.mono (cost_while_addr byteAddr lo (L + alignSlack 64) 1
    (by unfold addrStepMax at hL; omega) lBody_cost (fun _ => rfl) ?_) ?_
  · intro t ht hc
    obtain ⟨A, I, hA, hI, hm⟩ := lBody_hit hc
    have hw : byteAddr t = some (A + I) := by
      unfold byteAddr wordLocal; rw [hA, hI]
    refine ⟨A + I, hw, hit_offset hdom hLs (ht.2.1 ▸ hm), 1, by decide, by decide, ?_⟩
    have hI' := stepsB_sound (σ := σ) (nm "i") true lBody lSteps t I hI hc
    have hA' := keepsB_sound (σ := σ) (nm "p") lBody pKeeps t
      (by rcases hc with h | h <;> simp [LoopExit, h])
    unfold byteAddr wordLocal
    rw [hA', hA, hI']
    simp only [stepFun, if_true]
    congr 1
    rw [BitVec.add_assoc]
  · rw [hsl]
    exact Nat.mul_le_mul_right _ (by omega)

abbrev rlPrice : Nat := max (1 + 0 + 0) 0 + ((2 ^ 35 + 9) * (0 + 1) + 0)

theorem rl_cost : CalleeCost σ guestCtx (nm "rlp_read_length") rlPrice := by
  intro vs actual callee rs lookup
  obtain ⟨ps, hc⟩ := InitECandidate.Solver.SourceCost.lookupCode_some lookup
  rw [guestCtx_code, code_rl] at hc
  have body : actual = rlBody := (congrArg (fun entry => entry.2.1) (Option.some.inj hc)).symm
  rw [body]
  unfold rlBody rlPre
  have hf : CalleeCost σ guestCtx (nm "rlp_fail") 0 :=
    calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  have hcall : Cost σ guestCtx (.call (some (none, none)) (nm "rlp_fail") [cw 2]) (1 + 0) :=
    cost_call (Bh := 0) hf (by intro _ _ _ _ he; cases he)
  exact cost_seq (cost_ite hcall cost_skip)
    (cost_dec (cost_dec (cost_seq loop_cost (cost_return _))))

#print axioms rl_cost

end InitECandidate.Solver.RlpLen
