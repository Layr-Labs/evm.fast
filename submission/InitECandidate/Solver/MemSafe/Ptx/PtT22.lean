import InitECandidate.Solver.MemSafe.Ptx.PtT21

/-!
# F3g: `var stable_log_cap = nl; if stable_log_cap == 0 { stable_log_cap = 1; }`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

/-- The capacity of the stable list: `max (nl, 1)`. -/
def capOf (nlw : BitVec 64) : BitVec 64 := if nlw = 0 then 1 else nlw

theorem capOf_pos {nlw : BitVec 64} : 0 < (capOf nlw).toNat := by
  unfold capOf
  split_ifs with h
  · simp
  · rw [Nat.pos_iff_ne_zero]
    intro h0
    exact h (BitVec.eq_of_toNat_eq (by simpa using h0))

theorem capOf_ge {nlw : BitVec 64} : nlw.toNat ≤ (capOf nlw).toNat := by
  unfold capOf
  split_ifs with h
  · subst h; simp
  · exact le_refl _

theorem capOf_le {nlw : BitVec 64} (h : nlw.toNat ≤ 2 ^ 25) : (capOf nlw).toNat ≤ 2 ^ 25 := by
  unfold capOf
  split_ifs with h0
  · simp
  · exact h

section tb3a
variable {A : TlA σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {En : Env}
  {QT : Option (PanSemResultExact 64) → State σ → Prop}

theorem tb3a {nlw : BitVec 64} (hQT : LocIns QT) (hnl : En (nm "nl") = some (.val (.word nlw)))
    (hcap : En (nm "stable_log_cap") = none)
    (hk : Hoare σ guestCtx (PAg (TL A ref Z O) (En.set (nm "stable_log_cap") (.val (.word (capOf nlw))))) ptS159 QT) :
    Hoare σ guestCtx (PAg (TL A ref Z O) En) ptS156 QT := by
  have hB := bloc_tl A ref Z (O := O)
  unfold ptS156
  refine hdecT_g hB (locIns_resIns hQT _) (w := nlw) (fun s hpa v hv => (evI_lv (hpa.2 _ _ hnl)) v hv) ?_
  unfold ptS158
  have hcap' : (En.set (nm "stable_log_cap") (.val (.word nlw))) (nm "stable_log_cap") = some (.val (.word nlw)) :=
    env_set_self _ _ _
  refine hseqN (P1 := PAg (TL A ref Z O) (En.set (nm "stable_log_cap") (.val (.word (capOf nlw))))) ?_ hk
  unfold ptS160
  refine hn_ite ?_ ?_
  · refine hoare_assign fun s hs ⟨hpa, w, hw, hw0⟩ v hv _ => ⟨rfl, ?_⟩
    have hA : EvI s (lv (nm "stable_log_cap")) (.val (.word nlw)) := evI_lv (hpa.2 _ _ hcap')
    have hnl0 : nlw = 0 := cond_eq_gen hA (evI_cw s 0) ⟨w, hw, hw0⟩
    have hv1 := (evI_cw s 1) v hv
    subst hv1
    have hcapw : capOf nlw = 1 := by unfold capOf; rw [if_pos hnl0]
    rw [hcapw]
    have := pag_set hB hpa (nm "stable_log_cap") (.val (.word (BitVec.ofNat 64 1)))
    exact pag_mono this (fun y v h => by rw [env_set_set_same]; exact h) (fun s h => h)
  · refine hoare_skip fun s hs ⟨hpa, hc⟩ => ⟨rfl, ?_⟩
    have hA : EvI s (lv (nm "stable_log_cap")) (.val (.word nlw)) := evI_lv (hpa.2 _ _ hcap')
    have hne : nlw ≠ 0 := cond_eq_gen_false hA (evI_cw s 0) hc
    have hcapw : capOf nlw = nlw := by unfold capOf; rw [if_neg hne]
    rw [hcapw]
    exact hpa

end tb3a

section tb3b
variable {K : TlCtx σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {En : Env}
  {QT : Option (PanSemResultExact 64) → State σ → Prop}

/-- `ptS159` to `ptS164`: `stable_logs = lst_new(8, cap); st stable_logs + 8, nl; stable_lp = ..; i = 0`. -/
theorem tb3b {nlw : BitVec 64} (hP : TlPre K) (hQT : LocIns QT)
    (hBC : ∀ a, Z a → ∃ o ∈ K.E.Γ0, o.ty ∈ bkTys ∧ ∃ k, o.HasSlot k ∧ a = o.cell k)
    (hnl : En (nm "nl") = some (.val (.word nlw))) (hnlb : nlw.toNat ≤ 2 ^ 25)
    (hcap : En (nm "stable_log_cap") = some (.val (.word (capOf nlw))))
    (hsl : En (nm "stable_logs") = none) (hlp : En (nm "stable_lp") = none) (hi : En (nm "i") = none)
    (hk : ∀ l q : BitVec 64,
      Hoare σ guestCtx (PAg (TL K.A ref Z (O ++ [⟨q, tLSTAh, 8 * (capOf nlw).toNat⟩] ++ [⟨l, tLSTh, 24⟩]))
        (((En.set (nm "stable_logs") (.val (.word l))).set (nm "stable_lp") (.val (.word q))).set (nm "i")
          (.val (.word 0)))) ptS164 QT) :
    Hoare σ guestCtx (PAg (TL K.A ref Z O) En) ptS159 QT := by
  have hB := bloc_tl K.A ref Z (O := O)
  have hc0 : 0 < (capOf nlw).toNat := capOf_pos
  have hc25 : (capOf nlw).toNat ≤ 2 ^ 25 := capOf_le hnlb
  have hEC : 8 * (capOf nlw).toNat < 2 ^ 64 := by
    have : (2 : Nat) ^ 25 < 2 ^ 60 := by norm_num
    have : (2 : Nat) ^ 60 * 8 ≤ 2 ^ 64 := by norm_num
    omega
  have hf := sumSpec_lstNewV (σ := σ) (t := tLSTh) (c := (capOf nlw).toNat) lstTLSTh_ok (by decide) hc0
    (by rw [lstE_tLSTh]; exact hEC)
  have hcn : (BitVec.ofNat 64 (capOf nlw).toNat) = capOf nlw := by simp
  unfold ptS159
  refine hdecCallK (locIns_resIns hQT _)
    ((sumSpecA_relX hf).and (funSpec_pt_gw_all guestCtx_code lstnew_fin)) ?_
  intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst hsh
  obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
  obtain ⟨x1, x2, rfl, hx1, hx2⟩ := evs2 hvs
  have hx1' : x1 = .val (.word (BitVec.ofNat 64 (lstE tLSTh))) := by
    rw [lstE_tLSTh]; exact (evI_cw s 8) x1 hx1
  have hx2' : x2 = .val (.word (BitVec.ofNat 64 (capOf nlw).toNat)) := by
    rw [hcn]; exact (evI_lv (hlk _ _ hcap)) x2 hx2
  subst hx1' hx2'
  obtain ⟨Γ', p', l, q, hrun, hv, hΓ, hm0, hm8, hm16⟩ := lstnew_core hc0 hEC hr (callee := callee) (v := v) hR hgl
  subst hv
  set c := (capOf nlw).toNat with hcdef
  have harr_l : (⟨q, tLSTAh, lstE tLSTh * c⟩ : Obj) ∈ Γ' := by rw [hΓ]; simp
  have harr : (⟨q, tLSTAh, 8 * c⟩ : Obj) ∈ Γ' := by rw [lstE_tLSTh] at harr_l; exact harr_l
  have hdhr : (⟨l, tLSTh, 24⟩ : Obj) ∈ Γ' := by rw [hΓ]; simp
  have hrA := tl_addO hrun harr (show (guestC.ty tLSTAh).region = Region.heap by decide)
  have hr1 := tl_addO hrA hdhr (show (guestC.ty tLSTh).region = Region.heap by decide)
  have hr1' := tl_set hr1 (nm "stable_logs") (.val (.word l))
  have hlk1 : LKE (En.set (nm "stable_logs") (.val (.word l)))
      (setVarHOLFinite (nm "stable_logs") (.val (.word l)) { st with locals := s.locals }) :=
    lke_set (lke_restore hlk) _ _
  have hk0 : (⟨l, tLSTh, 24⟩ : Obj).HasSlot 0 := by simp [Obj.HasSlot]
  have hk1 : (⟨l, tLSTh, 24⟩ : Obj).HasSlot 1 := by simp [Obj.HasSlot]
  have hreg : (guestC.ty tLSTh).region = Region.heap := by decide
  have hst : guestSt tLSTh = false := by decide
  have hBCΓ := bc_ext hr1 hrun.ext hBC
  have hZl : ¬ Z l := by
    have := z_ne_cell hr1 hBCΓ hdhr (x := ⟨l, tLSTh, 24⟩) (lst_not_bk lstTLSTh_ok) hk0
    simpa [Obj.cell] using this
  have hZl8 : ¬ Z (l + BitVec.ofNat 64 8) := by
    have := z_ne_cell hr1 hBCΓ hdhr (x := ⟨l, tLSTh, 24⟩) (lst_not_bk lstTLSTh_ok) hk1
    simpa [Obj.cell] using this
  have hcn' : (BitVec.ofNat 64 c).toNat = c := by
    rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt (by omega)
  have hG' : G guestC (HR σ) Γ' { st with memory := Frames.upd st.memory (l + BitVec.ofNat 64 8) nlw } :=
    G_st_newhdr hrun.hG hdhr harr_l hm0 hm16 hcn' (by have := capOf_ge (nlw := nlw); omega) hc0
  have hnlk : (En.set (nm "stable_logs") (.val (.word l))) (nm "nl") = some (.val (.word nlw)) := by
    rw [env_set_ne _ _ (by decide)]; exact hnl
  have hlk_sl : (setVarHOLFinite (nm "stable_logs") (.val (.word l)) { st with locals := s.locals }).locals.lookup
      (nm "stable_logs") = some (.val (.word l)) := lk_set_self _ _ _
  have hl0 : l + BitVec.ofNat 64 0 = l := by simp
  have hne8 : l ≠ l + BitVec.ofNat 64 8 := by
    intro he
    have := congrArg BitVec.toNat he
    have h8 : (BitVec.ofNat 64 8).toNat = 8 := rfl
    rw [BitVec.toNat_add, h8] at this
    have hb := (tl_ord hr1').2.1
    have hl := (tl_layout hr1').1 _ hdhr
    have hlive' := hl.2.2.2.2
    rw [show (guestC.ty (⟨l, tLSTh, 24⟩ : Obj).ty).region = Region.heap from hreg] at hlive'
    have : heapEnd < 2 ^ 64 := by unfold heapEnd; norm_num
    obtain ⟨hh1, hh2⟩ := hlive'
    simp only [Obj.lo] at hh2
    omega
  unfold ptS161
  refine hseqN (P1 := PAg (TL K.A (fun a => if a = l then q else ref a) (fun a => Z a ∨ a = l)
    (O ++ [⟨q, tLSTAh, 8 * c⟩] ++ [⟨l, tLSTh, 24⟩])) (En.set (nm "stable_logs") (.val (.word l)))) ?_ ?_
  · refine hoare_store fun s' hs' h1 w' v' mem hw' hv' hmem => ?_
    subst h1
    have hw'' := (evI_add (evI_lv hlk_sl) (evI_cw _ 8)) _ hw'
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hw''
    subst hw''
    have hv'' := (evI_lv (hlk1 _ _ hnlk)) _ hv'
    subst hv''
    simp only [flattenHOL] at hmem
    obtain ⟨hd, rfl⟩ := stores_one hmem
    refine ⟨rfl, ?_⟩
    have h2 := tl_store_gen hr1' hZl8 (by simpa [Obj.cell] using cell_in (tl_ord hr1') (tl_layout hr1') hdhr (o := ⟨l, tLSTh, 24⟩) hk1) hG'
    have h3 := tl_extend h2 (c := l) (x := q)
      ⟨⟨l, tLSTh, 24⟩, hdhr, hreg, hst, 0, hk0, lstH_prot 0, by unfold Obj.cell; simp⟩
      (by
        show rd (Frames.upd st.memory (l + BitVec.ofNat 64 8) nlw) l = q
        rw [rd_upd_ne _ _ hne8]
        simpa [hl0] using hm0)
    exact ⟨⟨Γ', p', h3⟩, hlk1⟩
  · unfold ptS162
    have hB1 := bloc_tl K.A (fun a => if a = l then q else ref a) (fun a => Z a ∨ a = l)
      (O := O ++ [⟨q, tLSTAh, 8 * c⟩] ++ [⟨l, tLSTh, 24⟩])
    refine hdecT_g hB1 (locIns_resIns hQT _) (w := q) ?_ ?_
    · intro s'' hpa v'' hv''
      obtain ⟨⟨Γ1, p1, hr1''⟩, hlk''⟩ := hpa
      have hsl'' : s''.locals.lookup (nm "stable_logs") = some (.val (.word l)) := hlk'' _ _ (env_set_self _ _ _)
      have h := evI_ld (evI_add (evI_lv hsl'') (evI_cw s'' 0))
      have h2 := h v'' hv''
      have hkl := hr1''.keep (l + BitVec.ofNat 64 0) (by rw [hl0]; exact Or.inr rfl)
      rw [h2]
      show ValueHOL.val (HolWordLab.word (rd s''.memory (l + BitVec.ofNat 64 0))) = _
      rw [hkl]
      simp [hl0]
    · unfold ptS163
      refine hseqN (hassignT_g hB1 (w' := 0) (fun s hpa v hv => (evI_cw s 0) v hv)) ?_
      refine hoare_pre (hk l q) ?_
      intro t _ ht
      exact pag_ref_congr (pag_restrict ht (fun a ha => Or.inl ha))
        (fun a ha => by
          have hne : a ≠ l := fun he => hZl (he ▸ ha)
          show ref a = if a = l then q else ref a
          rw [if_neg hne])

end tb3b
