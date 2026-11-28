import InitECandidate.Solver.Divm.Defs
import InitECandidate.Solver.TxAl.Cost

/-!
# The main loop of `divmnu`, bounded by the memory domain

Every completed iteration first decrements `j` and then loads `un + (j + n) * 8`, so it hit
that address; the next iteration's address is `8` lower. The measure `off (addr) + 1` (or `0`
once the address leaves the domain window) strictly decreases, so the loop runs at most
`2 ^ 35 + 9` iterations in the guest context (the analyzer charged `2 ^ 64 + 1`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.Divm
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.TxAl

variable {σ : Type}

/-- The address the coming iteration loads: `un + (j - 1 + n) * 8`. -/
def dAddr (t : PanSemStateFiniteExact 64 σ) : Option (BitVec 64) :=
  match wordLocal t (nm "un"), wordLocal t (nm "j"), wordLocal t (nm "n") with
  | some U, some J, some N => some (U + (J - 1 + N) * 8)
  | _, _, _ => none

theorem keeps_un : keepsB (nm "un") dBody = true := by decide_cbv
theorem keeps_n : keepsB (nm "n") dBody = true := by decide_cbv
theorem steps_j : stepsB (nm "j") false dBody = true := by decide_cbv

theorem d_hit {t : PanSemStateFiniteExact 64 σ} (hc : Completes t dBody) :
    ∃ U J N : BitVec 64, t.locals.lookup (nm "un") = some (.val (.word U)) ∧
      t.locals.lookup (nm "j") = some (.val (.word J)) ∧
      t.locals.lookup (nm "n") = some (.val (.word N)) ∧ t.memaddrs (U + (J - 1 + N) * 8) := by
  unfold dBody at hc
  have ha := seq_completes (noCont_assign _ _ _) hc
  -- the second statement completes from the state after the decrement
  have hc2 : Completes (evaluateHOLFiniteState t
      (.assign .local (nm "j") (.op .sub [.var .local (nm "j"), cw 1]))).2
      (.dec (nm "ujn") .one (.load .one (.op .add [.var .local (nm "un"), .panop .mul [.op .add
        [.var .local (nm "j"), .var .local (nm "n")], cw 8]])) dRest) := by
    unfold Completes at hc ⊢
    rw [evaluateHOLFiniteState_eq_evaluate_def t (.seq _ _)] at hc
    dsimp only at hc
    rw [ha] at hc
    exact hc
  obtain ⟨v1, hv1, -⟩ := dec_completes hc2
  set t1 := (evaluateHOLFiniteState t
      (.assign .local (nm "j") (.op .sub [.var .local (nm "j"), cw 1]))).2 with ht1
  -- the load address evaluates to words
  simp only [ev, evalHOLExact] at hv1
  split at hv1
  · split at hv1
    · rename_i w hw
      have hw' : ev t1 (.op .add [.var .local (nm "un"), .panop .mul [.op .add
          [.var .local (nm "j"), .var .local (nm "n")], cw 8]]) = some (.val (.word w)) := hw
      obtain ⟨x0, y0, hx, hy, hxy⟩ := InitECandidate.Solver.Spec.Inv.ev_add2_inv hw'
      obtain ⟨a, b, ha', hb, hab⟩ := InitECandidate.Solver.Spec.Inv.ev_mul2_inv hy
      obtain ⟨jj, nn, hj, hn, hjn⟩ := InitECandidate.Solver.Spec.Inv.ev_add2_inv ha'
      rw [ev_cw] at hb
      cases hb
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hab hxy hjn
      -- relate the locals of `t1` to those of `t`
      have hun1 : t1.locals.lookup (nm "un") = t.locals.lookup (nm "un") :=
        keepsB_sound (σ := σ) (nm "un") (.assign .local (nm "j") (.op .sub [.var .local (nm "j"), cw 1]))
          (by decide_cbv) t (Or.inl ha)
      have hn1 : t1.locals.lookup (nm "n") = t.locals.lookup (nm "n") :=
        keepsB_sound (σ := σ) (nm "n") (.assign .local (nm "j") (.op .sub [.var .local (nm "j"), cw 1]))
          (by decide_cbv) t (Or.inl ha)
      have hjt : ∃ J, t.locals.lookup (nm "j") = some (.val (.word J)) := by
        have := ha
        rw [evaluateHOLFiniteState_eq_evaluate_def] at this
        dsimp only at this
        split at this
        · simp at this
        · rename_i v hv
          obtain ⟨p, q, hp, hq, -⟩ := InitECandidate.Solver.Spec.Inv.ev_sub2_inv hv
          exact ⟨p, hp⟩
      obtain ⟨J, hJ⟩ := hjt
      have hj1 := steps_sub_one (σ := σ) (width := 64) (nm "j") t J hJ (Or.inl ha)
      have hx' : t1.locals.lookup (nm "un") = some (.val (.word x0)) := hx
      have hj' : t1.locals.lookup (nm "j") = some (.val (.word jj)) := hj
      have hn' : t1.locals.lookup (nm "n") = some (.val (.word nn)) := hn
      have hj1' : t1.locals.lookup (nm "j") = some (.val (.word (J - 1))) := hj1
      rw [hj1'] at hj'
      simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hj'
      refine ⟨x0, J, nn, by rw [← hun1]; exact hx', hJ, by rw [← hn1]; exact hn', ?_⟩
      rw [memLoadHOLExact] at hv1
      split at hv1
      · rename_i hd
        have hmd : t1.memaddrs = t.memaddrs := memaddrs_preserved t _
        rw [hmd] at hd
        have : w = x0 + (J - 1 + nn) * 8 := by
          rw [hxy, hab, hjn, hj']; rfl
        rw [this] at hd
        exact hd
      · simp at hv1
    · simp at hv1
  · simp at hv1

abbrev dPrice : Nat := 73786976294838206469

theorem dBody_cost : Cost σ guestCtx dBody dPrice := MemSafe.Wg.cost_guest_costA (by decide_cbv)

theorem off_sub8 (w lo : BitVec 64) :
    ((w - 8) - lo).toNat = if 8 ≤ (w - lo).toNat then (w - lo).toNat - 8
      else 2 ^ 64 + (w - lo).toNat - 8 := by
  have h : (w - 8) - lo = (w - lo) - 8 := by
    simp only [BitVec.sub_eq_add_neg]; ac_rfl
  rw [h, BitVec.toNat_sub]
  have h8 : (8 : BitVec 64).toNat = 8 := rfl
  rw [h8]
  have := (w - lo).isLt
  split <;> omega

theorem loopD_cost : Cost σ guestCtx (.while dCond dBody) ((2 ^ 35 + 9) * (dPrice + 1)) := by
  obtain ⟨L, hL, ⟨lo, hdom⟩, -, hL35⟩ := guestCtx_bounded
  have hsl : alignSlack 64 = 8 := by decide
  let μ : PanSemStateFiniteExact 64 σ → Nat := fun t =>
    match dAddr t with
    | some w => if (w - lo).toNat < L + 8 then (w - lo).toNat + 1 else 0
    | none => 0
  refine Cost.mono (cost_while μ (L + 8) dBody_cost ?_ ?_) ?_
  · intro s _ _
    show (match dAddr s with
      | some w => if (w - lo).toNat < L + 8 then (w - lo).toNat + 1 else 0
      | none => 0) ≤ L + 8
    split
    · split
      · next h => exact Nat.succ_le_of_lt h
      · exact Nat.zero_le _
    · exact Nat.zero_le _
  · intro s hs _ _ hexit
    obtain ⟨U, J, N, hU, hJ, hN, hm⟩ := d_hit hexit
    have hoff : ((U + (J - 1 + N) * 8) - lo).toNat < L := hdom _ (hs.2.1 ▸ hm)
    have hd : dAddr s = some (U + (J - 1 + N) * 8) := by
      unfold dAddr wordLocal
      have hU' : s.locals.lookup (nm "un") = some (.val (.word U)) := hU
      have hJ' : s.locals.lookup (nm "j") = some (.val (.word J)) := hJ
      have hN' : s.locals.lookup (nm "n") = some (.val (.word N)) := hN
      rw [hU', hJ', hN']
    have hJ2 := stepsB_sound (σ := σ) (nm "j") false dBody steps_j _ J hJ hexit
    have hU2 := keepsB_sound (σ := σ) (nm "un") dBody keeps_un (decClockHOLFinite s)
      (by rcases hexit with h | h <;> simp [LoopExit, h])
    have hN2 := keepsB_sound (σ := σ) (nm "n") dBody keeps_n (decClockHOLFinite s)
      (by rcases hexit with h | h <;> simp [LoopExit, h])
    have hd2 : dAddr (evaluateHOLFiniteState (decClockHOLFinite s) dBody).2 =
        some ((U + (J - 1 + N) * 8) - 8) := by
      unfold dAddr wordLocal
      rw [hU2, hN2, hJ2]
      have hU' : (decClockHOLFinite s).locals.lookup (nm "un") = some (.val (.word U)) := hU
      have hN' : (decClockHOLFinite s).locals.lookup (nm "n") = some (.val (.word N)) := hN
      rw [hU', hN']
      simp only [stepFun, if_false, Bool.false_eq_true]
      congr 1
      have h : (J - 1 - 1 + N) = (J - 1 + N) - 1 := by
        simp only [BitVec.sub_eq_add_neg]; ac_rfl
      have h8 : (-1 : BitVec 64) * 8 = -8 := by decide
      rw [h, BitVec.sub_eq_add_neg (J - 1 + N), BitVec.add_mul, h8, BitVec.sub_eq_add_neg _ 8,
        BitVec.add_assoc]
    show (match dAddr (evaluateHOLFiniteState (decClockHOLFinite s) dBody).2 with
      | some w => if (w - lo).toNat < L + 8 then (w - lo).toNat + 1 else 0
      | none => 0) < (match dAddr s with
      | some w => if (w - lo).toNat < L + 8 then (w - lo).toNat + 1 else 0
      | none => 0)
    rw [hd, hd2]
    dsimp only
    generalize hW : U + (J - 1 + N) * 8 = W at hoff
    rw [if_pos (show (W - lo).toNat < L + 8 by omega)]
    by_cases h8 : 8 ≤ (W - lo).toNat
    · have e : ((W - 8) - lo).toNat = (W - lo).toNat - 8 := by rw [off_sub8, if_pos h8]
      rw [e]
      by_cases hc : (W - lo).toNat - 8 < L + 8
      · rw [if_pos hc]; omega
      · rw [if_neg hc]; omega
    · have e : ((W - 8) - lo).toNat = 2 ^ 64 + (W - lo).toNat - 8 := by rw [off_sub8, if_neg h8]
      rw [e, if_neg (by unfold addrStepMax at hL; omega)]
      omega
  · exact Nat.mul_le_mul_right _ (by omega)

#print axioms loopD_cost

end InitECandidate.Solver.Divm
