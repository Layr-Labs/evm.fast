import InitECandidate.Solver.SortAddr.Loop

/-!
# The merge phase `mMerge` of one `left` segment

Merge loop, `i` tail, `j` tail, `left = right`. On normal completion `i = mid`, `j = right`,
so `k = right`, and the destination offset relation holds at `right`.
-/

set_option autoImplicit false
set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

namespace InitECandidate.Solver.SortAddr
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-! ## Costs of the loop bodies -/

def BT (Cm : Nat) : Nat := (1 + Cm + 0) + (0 + 0)
def BM (Cm Cg : Nat) : Nat := 1 + Cg + (max ((1 + Cm + 0) + 0) ((1 + Cm + 0) + 0) + 0)

theorem tStep_cost {Cm : Nat} (hcm : CalleeCost σ X (nm "memcpy") Cm) (x : MlS) :
    Cost σ X (tStep x) (BT Cm) :=
  cost_seq (cost_call hcm (fun _ _ _ _ h => by simp at h))
    (cost_seq (cost_assign _ _ _) (cost_assign _ _ _))

theorem mStep_cost {Cm Cg : Nat} (hcm : CalleeCost σ X (nm "memcpy") Cm)
    (hcg : CalleeCost σ X (nm "bal_sort_gt") Cg) : Cost σ X mStep (BM Cm Cg) :=
  cost_dec (cost_dec (cost_decCall hcg (cost_seq (cost_ite
    (cost_seq (cost_call hcm (fun _ _ _ _ h => by simp at h)) (cost_assign _ _ _))
    (cost_seq (cost_call hcm (fun _ _ _ _ h => by simp at h)) (cost_assign _ _ _)))
    (cost_assign _ _ _))))

/-! ## Conditions -/

theorem mCond_true {s : PanSemStateFiniteExact 64 σ} {I M J R : BitVec 64}
    (hi : Lk qI I s.locals) (hm : Lk qM M s.locals) (hj : Lk qJ J s.locals)
    (hr : Lk qR R s.locals) (hI : I.toNat < 2 ^ 63) (hM : M.toNat < 2 ^ 63)
    (hJ : J.toNat < 2 ^ 63) (hR : R.toNat < 2 ^ 63) (h : CondTrue s mCond) :
    I.toNat < M.toNat ∧ J.toNat < R.toNat := by
  obtain ⟨w, hw, hw0⟩ := h
  have e1 := ev_cmp (o := .less) (ev_lk hi) (ev_lk hm)
  have e2 := ev_cmp (o := .less) (ev_lk hj) (ev_lk hr)
  have e3 := ev_cmp (o := .notEqual) (ev_cw s 0) e1
  have e4 := ev_cmp (o := .notEqual) (ev_cw s 0) e2
  have e5 := ev_op2 (o := .and) e3 e4
  have hw' : ev s mCond = some (.val (.word w)) := hw
  unfold mCond at hw'
  rw [e5, slt_small hI hM, slt_small hJ hR] at hw'
  by_cases h1 : I.toNat < M.toNat <;> by_cases h2 : J.toNat < R.toNat
  · exact ⟨h1, h2⟩
  all_goals
    exfalso
    apply hw0
    simp only [h1, h2, decide_true, decide_false, if_true, if_false] at hw'
    have := Option.some.inj hw'
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at this
    rw [← this]
    decide

/-! ## The three loops -/

def Iv1 (c : MC X) (K : BitVec 64) (m : Lcl) : Prop := ∃ I J, MInv c I J K m
def Iv2 (c : MC X) (K : BitVec 64) (m : Lcl) : Prop := ∃ J, MInv c c.M J K m

theorem minv_small {c : MC X} {I J K : BitVec 64} {m : Lcl} (h : MInv c I J K m) :
    I.toNat < 2 ^ 63 ∧ J.toNat < 2 ^ 63 ∧ c.M.toNat < 2 ^ 63 := by
  obtain ⟨-, -, -, -, h1, h2, h3, -⟩ := h
  have := c.hR63
  omega

theorem spec_mLoop (hC : X.code.lookup = guestCode) (c : MC X) (K : BitVec 64) :
    Hoare σ X (fun s => Iv1 c K s.locals ∧ CondTrue s mCond) mStep
      (fun r t => r = none ∧ Iv1 c (K + 1) t.locals ∧ c.d.off (c.D + K * c.E) < c.d.Lh) := by
  intro s hs ⟨⟨I, J, hm⟩, hc⟩
  obtain ⟨hI, hJ, hM⟩ := minv_small hm
  obtain ⟨h1, h2⟩ := mCond_true hm.2.1 (agree_lk (by decide) hm.1 c.hM) hm.2.2.1
    (agree_lk (by decide) hm.1 c.hR) hI hM hJ c.hR63 hc
  exact hoare_mStep hC c h1 h2 s hs hm

theorem spec_tLoopI (hC : X.code.lookup = guestCode) (c : MC X) (K : BitVec 64) :
    Hoare σ X (fun s => Iv1 c K s.locals ∧ CondTrue s (.cmp .less (lv qI) (lv qM))) (tStep qI)
      (fun r t => r = none ∧ Iv1 c (K + 1) t.locals ∧ c.d.off (c.D + K * c.E) < c.d.Lh) := by
  intro s hs ⟨⟨I, J, hm⟩, hc⟩
  obtain ⟨hI, -, -⟩ := minv_small hm
  obtain ⟨-, h1⟩ := cond_less hm.2.1 (agree_lk (by decide) hm.1 c.hM) hI hc
  exact hoare_tStepI hC c h1 s hs hm

theorem hoare_incKI (c : MC X) {I K : BitVec 64} :
    Hoare σ X (fun s => (none : Option (PanSemResultExact 64)) = none ∧
        (∃ J, MInvK c I J K s.locals) ∧ c.d.off (c.D + K * c.E) < c.d.Lh)
      (.assign .local qK (.op .add [lv qK, cw 1]))
      (fun r t => r = none ∧ (∃ J, MInv c I J (K + 1) t.locals) ∧
        c.d.off (c.D + K * c.E) < c.d.Lh) := by
  refine hoare_assign fun s _ ⟨_, ⟨J, hm⟩, hh⟩ v hv _ => ?_
  rw [ev_add2 (ev_lk hm.2.2.2.1) (ev_cw _ 1)] at hv
  cases hv
  exact ⟨rfl, ⟨J, agree_upd (by decide) hm.1, lk_upd (by decide) hm.2.1,
    lk_upd (by decide) hm.2.2.1, lk_new _ _ _, hm.2.2.2.2⟩, hh⟩

theorem hoare_tStepJ' (hC : X.code.lookup = guestCode) (c : MC X) {J K : BitVec 64}
    (hlt : J.toNat < c.R.toNat) :
    Hoare σ X (fun s => MInv c c.M J K s.locals) (tStep qJ)
      (fun r t => r = none ∧ Iv2 c (K + 1) t.locals ∧ c.d.off (c.D + K * c.E) < c.d.Lh) := by
  unfold tStep
  have h1 := hoare_copy (σ := σ) hC c (K := K) (e2 := kSrc qJ) (P := fun m => MInv c c.M J K m)
    (fun m h => ⟨wd_agree (by decide) h.1 c.hD, h.2.2.2.1, agree_lk (by decide) h.1 c.hE⟩)
  refine hoare_seq h1 (fun r _ _ hr _ h => absurd h.1 hr) ?_
  refine hoare_seq (R := fun r t => r = none ∧ (∃ J, MInvK c c.M J K t.locals) ∧
      c.d.off (c.D + K * c.E) < c.d.Lh) ?_ (fun r _ _ hr _ h => absurd h.1 hr) (hoare_incKI c)
  refine hoare_assign fun s _ ⟨_, hm, hh⟩ v hv _ => ?_
  rw [ev_add2 (ev_lk hm.2.2.1) (ev_cw _ 1)] at hv
  cases hv
  exact ⟨rfl, ⟨J + 1, agree_upd (by decide) hm.1, lk_upd (by decide) hm.2.1, lk_new _ _ _,
    lk_upd (by decide) hm.2.2.2.1, (numOK_step hm.2.2.2.2 c.hR63 c.hE2 hh).2 hlt⟩, hh⟩

theorem spec_tLoopJ (hC : X.code.lookup = guestCode) (c : MC X) (K : BitVec 64) :
    Hoare σ X (fun s => Iv2 c K s.locals ∧ CondTrue s (.cmp .less (lv qJ) (lv qR))) (tStep qJ)
      (fun r t => r = none ∧ Iv2 c (K + 1) t.locals ∧ c.d.off (c.D + K * c.E) < c.d.Lh) := by
  intro s hs ⟨⟨J, hm⟩, hc⟩
  obtain ⟨-, hJ, -⟩ := minv_small hm
  obtain ⟨-, hlt⟩ := cond_less hm.2.2.1 (agree_lk (by decide) hm.1 c.hR) hJ hc
  exact hoare_tStepJ' hC c hlt s hs hm

theorem iv1_k {c : MC X} : ∀ K m, Iv1 c K m → Lk qK K m := fun _ _ ⟨_, _, h⟩ => h.2.2.2.1
theorem iv2_k {c : MC X} : ∀ K m, Iv2 c K m → Lk qK K m := fun _ _ ⟨_, h⟩ => h.2.2.2.1

/-! ## The merge phase -/

def mNamesL : List MlS := [qE, qDst, qM, qR, qN, qW, qSrc, qP, qKind, qT, qMark, qAux]

/-- The state after the merge phase. -/
def MOut (c : MC X) (m : Lcl) : Prop :=
  Agree mNamesL c.m0 m ∧ Lk qL c.R m ∧
    c.d.off (c.D + c.R * c.E) = c.O0 + c.R.toNat * c.E.toNat ∧
    (c.R.toNat = 0 ∨ c.O0 + c.R.toNat * c.E.toNat < c.d.Lh + c.E.toNat)

theorem hoare_mMerge (hC : X.code.lookup = guestCode) (c : MC X) :
    Hoare σ X (fun s => ∃ K, Iv1 c K s.locals) mMerge (fun r t => r = none ∧ MOut c t.locals) := by
  unfold mMerge mLoop tLoop
  refine hoare_seq (R := fun r t => r = none ∧ ∃ K, Iv1 c K t.locals)
    (hoare_kloop c (Iv1 c) (Ex := fun m => ∃ K, Iv1 c K m) (spec_mLoop hC c)
      (fun _ K h _ => ⟨K, h⟩))
    (fun r _ _ hr _ h => absurd h.1 hr) ?_
  refine hoare_seq (R := fun r t => r = none ∧ ∃ K, Iv2 c K t.locals)
    (hoare_pre (hoare_kloop c (Iv1 c) (Ex := fun m => ∃ K, Iv2 c K m) (spec_tLoopI hC c) ?_) (fun _ _ h => h.2))
    (fun r _ _ hr _ h => absurd h.1 hr) ?_
  · intro s K ⟨I, J, hm⟩ h0
    obtain ⟨hI, -, hM⟩ := minv_small hm
    have := cond_less_false hm.2.1 (agree_lk (by decide) hm.1 c.hM) hI hM h0
    have hIM : I = c.M := BitVec.eq_of_toNat_eq (by have := hm.2.2.2.2.1; omega)
    subst hIM
    exact ⟨K, J, hm⟩
  refine hoare_seq (R := fun r t => r = none ∧ ∃ K, MInv c c.M c.R K t.locals)
    (hoare_pre (hoare_kloop c (Iv2 c) (Ex := fun m => ∃ K, MInv c c.M c.R K m) (spec_tLoopJ hC c) ?_) (fun _ _ h => h.2))
    (fun r _ _ hr _ h => absurd h.1 hr) ?_
  · intro s K ⟨J, hm⟩ h0
    obtain ⟨-, hJ, -⟩ := minv_small hm
    have := cond_less_false hm.2.2.1 (agree_lk (by decide) hm.1 c.hR) hJ c.hR63 h0
    have hJR : J = c.R := BitVec.eq_of_toNat_eq (by have := hm.2.2.2.2.2.2.1; omega)
    subst hJR
    exact ⟨K, hm⟩
  refine hoare_assign fun s _ ⟨_, K, hm⟩ v hv _ => ?_
  rw [ev_lk (agree_lk (by decide) hm.1 c.hR)] at hv
  cases hv
  obtain ⟨hA, -, -, -, -, -, -, h4, h5, h6⟩ := hm
  have hKR : K = c.R := BitVec.eq_of_toNat_eq (by omega)
  subst hKR
  exact ⟨rfl, agree_upd (by decide) (agree_mono (by decide) hA), lk_new _ _ _, h5, h6⟩

end InitECandidate.Solver.SortAddr
