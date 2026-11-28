import InitECandidate.Solver.SortAddr.Base

/-!
# One iteration of the merge loops of `sort_elems`

Each iteration of the merge loop and of the two tail loops copies one element to
`dst + k * esz` and then increments `k`. The copy returns, so its destination was hit
(`SortAddr/Hit.lean`); the destination offset grows by exactly `esz`.
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

theorem ev_add_inv_left {s : PanSemStateFiniteExact 64 σ} {x : MlS} {b : ExpHOL 64}
    {v : ValueHOL 64} (h : ev s (.op .add [lv x, b]) = some v) : ∃ w, Lk x w s.locals := by
  simp only [ev, evalHOLExact, evalListHOLExact] at h
  split at h
  · rename_i vs hvs
    split at h
    · rename_i hall
      split at hvs
      · rename_i value values hval _
        simp only [Option.some.injEq] at hvs
        subst hvs
        simp only [List.all_cons, Bool.and_eq_true] at hall
        have hv := hall.1
        have hl : s.locals.lookup x = some value := hval
        match value, hv with
        | .val (.word w), _ => exact ⟨w, hl⟩
      · simp at hvs
    · simp at h
  · simp at h

/-- `dst` holds the word `D`, or no word at all (then every copy address fails). -/
def WD (D : BitVec 64) (m : Lcl) : Prop := Lk qDst D m ∨ ∀ w, ¬ Lk qDst w m

theorem wd_agree {ns : List MlS} {m0 m : Lcl} {D : BitVec 64} (hx : qDst ∈ ns)
    (h : Agree ns m0 m) (h0 : WD D m0) : WD D m := by
  unfold WD Lk at *
  rw [h qDst hx]
  exact h0

theorem wd_exists (m : Lcl) : ∃ D, WD D m := by
  by_cases h : ∃ w, Lk qDst w m
  · obtain ⟨w, hw⟩ := h; exact ⟨w, Or.inl hw⟩
  · exact ⟨0, Or.inr fun w hw => h ⟨w, hw⟩⟩

/-- Names the merge loops never assign. -/
def mNames : List MlS := [qE, qDst, qM, qR, qL, qN, qW, qSrc, qP, qKind, qT, qMark, qAux]

/-- The fixed data of one merge phase. -/
structure MC (X : Ctx 64) where
  d : Dom X
  m0 : Lcl
  O0 : Nat
  D : BitVec 64
  E : BitVec 64
  M : BitVec 64
  R : BitVec 64
  hD : WD D m0
  hE : Lk qE E m0
  hM : Lk qM M m0
  hR : Lk qR R m0
  hE1 : 1 ≤ E.toNat
  hE2 : E.toNat ≤ 4096
  hR63 : R.toNat < 2 ^ 63
  hO0 : d.off D = O0

def MInv (c : MC X) (I J K : BitVec 64) (m : Lcl) : Prop :=
  Agree mNames c.m0 m ∧ Lk qI I m ∧ Lk qJ J m ∧ Lk qK K m ∧ NumOK c.d c.O0 c.D c.E c.M c.R I J K

theorem minv_upd {c : MC X} {I J K : BitVec 64} {m : Lcl} {x : MlS} {v : ValueHOL 64}
    (h1 : x ∉ mNames) (h2 : x ≠ qI) (h3 : x ≠ qJ) (h4 : x ≠ qK) (h : MInv c I J K m) :
    MInv c I J K (m.update (x, v)) :=
  ⟨agree_upd h1 h.1, lk_upd h2 h.2.1, lk_upd h3 h.2.2.1, lk_upd h4 h.2.2.2.1, h.2.2.2.2⟩

theorem minv_res {c : MC X} {I J K : BitVec 64} {m : Lcl} {x : MlS} {o : Option (ValueHOL 64)}
    (h1 : x ∉ mNames) (h2 : x ≠ qI) (h3 : x ≠ qJ) (h4 : x ≠ qK) (h : MInv c I J K m) :
    MInv c I J K (m.resVarEq (x, o)) :=
  ⟨agree_res h1 h.1, lk_res h2 h.2.1, lk_res h3 h.2.2.1, lk_res h4 h.2.2.2.1, h.2.2.2.2⟩

/-- The copy call `memcpy(dst + k * esz, _, esz)`: locals unchanged, destination hit. -/
theorem hoare_copy (hC : X.code.lookup = guestCode) (c : MC X) {P : Lcl → Prop} {K : BitVec 64}
    {e2 : ExpHOL 64} (hP : ∀ m, P m → WD c.D m ∧ Lk qK K m ∧ Lk qE c.E m) :
    Hoare σ X (fun s => P s.locals) (callD (nm "memcpy") [kDst, e2, lv qE])
      (fun r t => r = none ∧ P t.locals ∧ c.d.off (c.D + K * c.E) < c.d.Lh) := by
  refine hoare_callD (memcpy_spec hC) ?_
  intro s _ hp vs hvs callee v st hR _
  refine ⟨rfl, hp, ?_⟩
  obtain ⟨hd, hk, he⟩ := hP _ hp
  obtain ⟨va, vs1, rfl, ha, hvs1⟩ := evs_cons_inv hvs
  obtain ⟨vb, vs2, rfl, -, hvs2⟩ := evs_cons_inv hvs1
  obtain ⟨vc, vs3, rfl, hc, -⟩ := evs_cons_inv hvs2
  unfold kDst at ha
  obtain ⟨w, hw⟩ := ev_add_inv_left ha
  have hd' : Lk qDst c.D s.locals := by
    rcases hd with hd | hd
    · exact hd
    · exact absurd hw (hd w)
  rw [ev_add2 (ev_lk hd') (ev_mul2 (ev_lk hk) (ev_lk he))] at ha
  rw [ev_lk he] at hc
  cases ha
  cases hc
  exact c.d.hit (hR v rfl _ _ rfl rfl c.hE1)

/-- After the copy and the index increment: `k` still to be incremented. -/
def MInvK (c : MC X) (I J K : BitVec 64) (m : Lcl) : Prop :=
  Agree mNames c.m0 m ∧ Lk qI I m ∧ Lk qJ J m ∧ Lk qK K m ∧
    NumOK c.d c.O0 c.D c.E c.M c.R I J (K + 1)

theorem hoare_incK (c : MC X) {K : BitVec 64} :
    Hoare σ X (fun s => (none : Option (PanSemResultExact 64)) = none ∧ (∃ I J, MInvK c I J K s.locals) ∧ c.d.off (c.D + K * c.E) < c.d.Lh)
      (.assign .local qK (.op .add [lv qK, cw 1]))
      (fun r t => r = none ∧ (∃ I J, MInv c I J (K + 1) t.locals) ∧
        c.d.off (c.D + K * c.E) < c.d.Lh) := by
  refine hoare_assign fun s _ ⟨_, ⟨I, J, hm⟩, hh⟩ v hv _ => ?_
  rw [ev_add2 (ev_lk hm.2.2.2.1) (ev_cw _ 1)] at hv
  cases hv
  exact ⟨rfl, ⟨I, J, agree_upd (by decide) hm.1, lk_upd (by decide) hm.2.1,
    lk_upd (by decide) hm.2.2.1, lk_new _ _ _, hm.2.2.2.2⟩, hh⟩

/-- Copy, then `i = i + 1` (requires `i < mid`). -/
theorem hoare_copyI (hC : X.code.lookup = guestCode) (c : MC X) {I J K : BitVec 64}
    (hlt : I.toNat < c.M.toNat) {e2 : ExpHOL 64} {P : Lcl → Prop}
    (hP : ∀ m, P m → MInv c I J K m) :
    Hoare σ X (fun s => P s.locals)
      (.seq (callD (nm "memcpy") [kDst, e2, lv qE]) (.assign .local qI (.op .add [lv qI, cw 1])))
      (fun r t => r = none ∧ (∃ I J, MInvK c I J K t.locals) ∧
        c.d.off (c.D + K * c.E) < c.d.Lh) := by
  refine hoare_seq (hoare_copy hC c (K := K) (P := fun m => MInv c I J K m)
      (fun m h => ⟨wd_agree (by decide) h.1 c.hD, h.2.2.2.1, agree_lk (by decide) h.1 c.hE⟩)
      |> fun h => hoare_pre h (fun s _ hp => hP _ hp))
    (fun r _ _ hr _ h => absurd h.1 hr) ?_
  refine hoare_assign fun s _ ⟨_, hm, hh⟩ v hv _ => ?_
  rw [ev_add2 (ev_lk hm.2.1) (ev_cw _ 1)] at hv
  cases hv
  exact ⟨rfl, ⟨I + 1, J, agree_upd (by decide) hm.1, lk_new _ _ _, lk_upd (by decide) hm.2.2.1,
    lk_upd (by decide) hm.2.2.2.1, (numOK_step hm.2.2.2.2 c.hR63 c.hE2 hh).1 hlt⟩, hh⟩

/-- Copy, then `j = j + 1` (requires `j < right`). -/
theorem hoare_copyJ (hC : X.code.lookup = guestCode) (c : MC X) {I J K : BitVec 64}
    (hlt : J.toNat < c.R.toNat) {e2 : ExpHOL 64} {P : Lcl → Prop}
    (hP : ∀ m, P m → MInv c I J K m) :
    Hoare σ X (fun s => P s.locals)
      (.seq (callD (nm "memcpy") [kDst, e2, lv qE]) (.assign .local qJ (.op .add [lv qJ, cw 1])))
      (fun r t => r = none ∧ (∃ I J, MInvK c I J K t.locals) ∧
        c.d.off (c.D + K * c.E) < c.d.Lh) := by
  refine hoare_seq (hoare_copy hC c (K := K) (P := fun m => MInv c I J K m)
      (fun m h => ⟨wd_agree (by decide) h.1 c.hD, h.2.2.2.1, agree_lk (by decide) h.1 c.hE⟩)
      |> fun h => hoare_pre h (fun s _ hp => hP _ hp))
    (fun r _ _ hr _ h => absurd h.1 hr) ?_
  refine hoare_assign fun s _ ⟨_, hm, hh⟩ v hv _ => ?_
  rw [ev_add2 (ev_lk hm.2.2.1) (ev_cw _ 1)] at hv
  cases hv
  exact ⟨rfl, ⟨I, J + 1, agree_upd (by decide) hm.1, lk_upd (by decide) hm.2.1, lk_new _ _ _,
    lk_upd (by decide) hm.2.2.2.1, (numOK_step hm.2.2.2.2 c.hR63 c.hE2 hh).2 hlt⟩, hh⟩

/-- The post of one completed iteration. -/
def StepPost (c : MC X) (K : BitVec 64) (r : Option (PanSemResultExact 64))
    (t : PanSemStateFiniteExact 64 σ) : Prop :=
  r = none ∧ (∃ I J, MInv c I J (K + 1) t.locals) ∧ c.d.off (c.D + K * c.E) < c.d.Lh

theorem hoare_tStepI (hC : X.code.lookup = guestCode) (c : MC X) {I J K : BitVec 64}
    (hlt : I.toNat < c.M.toNat) :
    Hoare σ X (fun s => MInv c I J K s.locals) (tStep qI) (StepPost c K) := by
  unfold tStep
  rw [show (Spec.callD (nm "memcpy") [kDst, kSrc qI, lv qE]) =
    callD (nm "memcpy") [kDst, kSrc qI, lv qE] from rfl]
  have h1 := hoare_copy (σ := σ) hC c (K := K) (e2 := kSrc qI) (P := fun m => MInv c I J K m)
    (fun m h => ⟨wd_agree (by decide) h.1 c.hD, h.2.2.2.1, agree_lk (by decide) h.1 c.hE⟩)
  refine hoare_seq h1 (fun r _ _ hr _ h => absurd h.1 hr) ?_
  refine hoare_seq (R := fun r t => r = none ∧ (∃ I J, MInvK c I J K t.locals) ∧
      c.d.off (c.D + K * c.E) < c.d.Lh) ?_ (fun r _ _ hr _ h => absurd h.1 hr) (hoare_incK c)
  refine hoare_assign fun s _ ⟨_, hm, hh⟩ v hv _ => ?_
  rw [ev_add2 (ev_lk hm.2.1) (ev_cw _ 1)] at hv
  cases hv
  exact ⟨rfl, ⟨I + 1, J, agree_upd (by decide) hm.1, lk_new _ _ _, lk_upd (by decide) hm.2.2.1,
    lk_upd (by decide) hm.2.2.2.1, (numOK_step hm.2.2.2.2 c.hR63 c.hE2 hh).1 hlt⟩, hh⟩

theorem hoare_tStepJ (hC : X.code.lookup = guestCode) (c : MC X) {I J K : BitVec 64}
    (hlt : J.toNat < c.R.toNat) :
    Hoare σ X (fun s => MInv c I J K s.locals) (tStep qJ) (StepPost c K) := by
  unfold tStep
  have h1 := hoare_copy (σ := σ) hC c (K := K) (e2 := kSrc qJ) (P := fun m => MInv c I J K m)
    (fun m h => ⟨wd_agree (by decide) h.1 c.hD, h.2.2.2.1, agree_lk (by decide) h.1 c.hE⟩)
  refine hoare_seq h1 (fun r _ _ hr _ h => absurd h.1 hr) ?_
  refine hoare_seq (R := fun r t => r = none ∧ (∃ I J, MInvK c I J K t.locals) ∧
      c.d.off (c.D + K * c.E) < c.d.Lh) ?_ (fun r _ _ hr _ h => absurd h.1 hr) (hoare_incK c)
  refine hoare_assign fun s _ ⟨_, hm, hh⟩ v hv _ => ?_
  rw [ev_add2 (ev_lk hm.2.2.1) (ev_cw _ 1)] at hv
  cases hv
  exact ⟨rfl, ⟨I, J + 1, agree_upd (by decide) hm.1, lk_upd (by decide) hm.2.1, lk_new _ _ _,
    lk_upd (by decide) hm.2.2.2.1, (numOK_step hm.2.2.2.2 c.hR63 c.hE2 hh).2 hlt⟩, hh⟩

end InitECandidate.Solver.SortAddr
