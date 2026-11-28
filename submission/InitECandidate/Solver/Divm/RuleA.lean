import InitECandidate.Solver.Divm.Rule

/-!
# The single-digit branch of `divmnu`

`while 0 <+ j { j = j - 1; qr = div64by32(k, lds 1 (u + j * 8), d); ... }`: the call's
argument list loads `u + j * 8` after the decrement, so every completed iteration hit that
address, which moves down by `8`. Same measure as the main loop.
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

def aRest : ProgHOL 64 :=
  .seq (.store (.op .add [.var .local (nm "q"), .panop .mul [.var .local (nm "j"), cw 8]])
      (.rfield 0 (.var .local (nm "qr"))))
    (.assign .local (nm "k") (.rfield 1 (.var .local (nm "qr"))))

def aBody : ProgHOL 64 :=
  .seq (.assign .local (nm "j") (.op .sub [.var .local (nm "j"), cw 1]))
    (.decCall (nm "qr") (.comb [.one, .one]) (nm "div64by32")
      [.var .local (nm "k"), .load .one (.op .add [.var .local (nm "u"), .panop .mul [.var .local (nm "j"), cw 8]]),
        .var .local (nm "d")] aRest)

def aAddr (t : PanSemStateFiniteExact 64 σ) : Option (BitVec 64) :=
  match wordLocal t (nm "u"), wordLocal t (nm "j") with
  | some U, some J => some (U + (J - 1) * 8)
  | _, _ => none

theorem keeps_u : keepsB (nm "u") aBody = true := by decide_cbv
theorem steps_ja : stepsB (nm "j") false aBody = true := by decide_cbv

theorem decCall_args {t : PanSemStateFiniteExact 64 σ} {rn f : MlS} {sh : ShapeHOL}
    {as : List (ExpHOL 64)} {k : ProgHOL 64} (h : Completes t (.decCall rn sh f as k)) :
    ∃ vs, evs t as = some vs := by
  unfold Completes at h
  rw [evaluateHOLFiniteState_eq_evaluate_def t (.decCall rn sh f as k)] at h
  dsimp only at h
  split at h
  · simp at h
  · rename_i vs hvs
    exact ⟨vs, hvs⟩

theorem a_hit {t : PanSemStateFiniteExact 64 σ} (hc : Completes t aBody) :
    ∃ U J : BitVec 64, t.locals.lookup (nm "u") = some (.val (.word U)) ∧
      t.locals.lookup (nm "j") = some (.val (.word J)) ∧ t.memaddrs (U + (J - 1) * 8) := by
  unfold aBody at hc
  have ha := seq_completes (noCont_assign _ _ _) hc
  have hc2 : Completes (evaluateHOLFiniteState t
      (.assign .local (nm "j") (.op .sub [.var .local (nm "j"), cw 1]))).2
      (.decCall (nm "qr") (.comb [.one, .one]) (nm "div64by32")
        [.var .local (nm "k"), .load .one (.op .add [.var .local (nm "u"), .panop .mul [.var .local (nm "j"), cw 8]]),
          .var .local (nm "d")] aRest) := by
    unfold Completes at hc ⊢
    rw [evaluateHOLFiniteState_eq_evaluate_def t (.seq _ _)] at hc
    dsimp only at hc
    rw [ha] at hc
    exact hc
  obtain ⟨vs, hvs⟩ := decCall_args hc2
  set t1 := (evaluateHOLFiniteState t
      (.assign .local (nm "j") (.op .sub [.var .local (nm "j"), cw 1]))).2 with ht1
  obtain ⟨va, vs1, rfl, -, hvs1⟩ := evs_cons_inv hvs
  obtain ⟨vb, vs2, rfl, hb2, -⟩ := evs_cons_inv hvs1
  have hun1 : t1.locals.lookup (nm "u") = t.locals.lookup (nm "u") :=
    keepsB_sound (σ := σ) (nm "u") (.assign .local (nm "j") (.op .sub [.var .local (nm "j"), cw 1]))
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
  have hj1' : t1.locals.lookup (nm "j") = some (.val (.word (J - 1))) := hj1
  simp only [ev, evalHOLExact] at hb2
  split at hb2
  · split at hb2
    · rename_i w hw
      have hw' : ev t1 (.op .add [.var .local (nm "u"), .panop .mul [.var .local (nm "j"), cw 8]]) =
          some (.val (.word w)) := hw
      obtain ⟨x0, y0, hx, hy, hxy⟩ := InitECandidate.Solver.Spec.Inv.ev_add2_inv hw'
      obtain ⟨a, b, ha', hb, hab⟩ := InitECandidate.Solver.Spec.Inv.ev_mul2_inv hy
      rw [ev_cw] at hb
      cases hb
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hab hxy
      have hx' : t1.locals.lookup (nm "u") = some (.val (.word x0)) := hx
      have hj' : t1.locals.lookup (nm "j") = some (.val (.word a)) := ha'
      rw [hj1'] at hj'
      simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hj'
      refine ⟨x0, J, by rw [← hun1]; exact hx', hJ, ?_⟩
      rw [memLoadHOLExact] at hb2
      split at hb2
      · rename_i hd
        have hmd : t1.memaddrs = t.memaddrs := memaddrs_preserved t _
        rw [hmd] at hd
        have : w = x0 + (J - 1) * 8 := by
          rw [hxy, hab, hj']; rfl
        rw [this] at hd
        exact hd
      · simp at hb2
    · simp at hb2
  · simp at hb2

abbrev aPrice : Nat := 18446744073709551618

theorem aBody_cost : Cost σ guestCtx aBody aPrice := MemSafe.Wg.cost_guest_costA (by decide_cbv)

theorem loopA_cost : Cost σ guestCtx (.while dCond aBody) ((2 ^ 35 + 9) * (aPrice + 1)) := by
  obtain ⟨L, hL, ⟨lo, hdom⟩, -, hL35⟩ := guestCtx_bounded
  let μ : PanSemStateFiniteExact 64 σ → Nat := fun t =>
    match aAddr t with
    | some w => if (w - lo).toNat < L + 8 then (w - lo).toNat + 1 else 0
    | none => 0
  refine Cost.mono (cost_while μ (L + 8) aBody_cost ?_ ?_) ?_
  · intro s _ _
    show (match aAddr s with
      | some w => if (w - lo).toNat < L + 8 then (w - lo).toNat + 1 else 0
      | none => 0) ≤ L + 8
    split
    · split
      · next h => exact Nat.succ_le_of_lt h
      · exact Nat.zero_le _
    · exact Nat.zero_le _
  · intro s hs _ _ hexit
    obtain ⟨U, J, hU, hJ, hm⟩ := a_hit hexit
    have hoff : ((U + (J - 1) * 8) - lo).toNat < L := hdom _ (hs.2.1 ▸ hm)
    have hd : aAddr s = some (U + (J - 1) * 8) := by
      unfold aAddr wordLocal
      have hU' : s.locals.lookup (nm "u") = some (.val (.word U)) := hU
      have hJ' : s.locals.lookup (nm "j") = some (.val (.word J)) := hJ
      rw [hU', hJ']
    have hJ2 := stepsB_sound (σ := σ) (nm "j") false aBody steps_ja _ J hJ hexit
    have hU2 := keepsB_sound (σ := σ) (nm "u") aBody keeps_u (decClockHOLFinite s)
      (by rcases hexit with h | h <;> simp [LoopExit, h])
    have hd2 : aAddr (evaluateHOLFiniteState (decClockHOLFinite s) aBody).2 =
        some ((U + (J - 1) * 8) - 8) := by
      unfold aAddr wordLocal
      rw [hU2, hJ2]
      have hU' : (decClockHOLFinite s).locals.lookup (nm "u") = some (.val (.word U)) := hU
      rw [hU']
      simp only [stepFun, if_false, Bool.false_eq_true]
      congr 1
      have h8 : (-1 : BitVec 64) * 8 = -8 := by decide
      rw [BitVec.sub_eq_add_neg (J - 1), BitVec.add_mul, h8, BitVec.sub_eq_add_neg _ 8,
        BitVec.add_assoc]
    show (match aAddr (evaluateHOLFiniteState (decClockHOLFinite s) aBody).2 with
      | some w => if (w - lo).toNat < L + 8 then (w - lo).toNat + 1 else 0
      | none => 0) < (match aAddr s with
      | some w => if (w - lo).toNat < L + 8 then (w - lo).toNat + 1 else 0
      | none => 0)
    rw [hd, hd2]
    dsimp only
    generalize hW : U + (J - 1) * 8 = W at hoff
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

#print axioms loopA_cost

end InitECandidate.Solver.Divm
