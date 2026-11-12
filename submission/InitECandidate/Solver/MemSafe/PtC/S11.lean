import InitECandidate.Solver.MemSafe.PtC.S10

/-!
# PtC: stages 1 to 3
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.PtC
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Ptx InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

section
variable {K : TlCtx σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj}

theorem ctb1 {lw rp rl : BitVec 64} {QT : Option (PanSemResultExact 64) → State σ → Prop} (hP : TlPre K)
    (hQT : LocIns QT) (hL : LgOut K ref Z O lw)
    (hb32 : Z (K.E.bo + BitVec.ofNat 64 32) ∧ ref (K.E.bo + BitVec.ofNat 64 32) = K.E.rcs)
    (hk : ∀ (ref2 : BitVec 64 → BitVec 64) (Z2 : BitVec 64 → Prop) (nlw : BitVec 64),
      (∀ a, Z a → Z2 a ∧ ref2 a = ref a) → (∀ a, Z2 a → Z a ∨ a = K.E.rcs + K.E.idx * 16 ∨ a = K.E.rcs + K.E.idx * 16 + 8) →
      (Z2 (K.E.rcs + K.E.idx * 16) ∧ ref2 (K.E.rcs + K.E.idx * 16) = rp) →
      (Z2 (K.E.rcs + K.E.idx * 16 + 8) ∧ ref2 (K.E.rcs + K.E.idx * 16 + 8) = rl) →
      nlw = ref (lw + 8) →
      CW' (PAg (TL K.A ref2 Z2 O) ((En3 K lw rp rl).set (nm "nl") (.val (.word nlw)))) ptS155 (cbd ptS155) QT) :
    CW' (PAg (TL K.A ref Z O) (En3 K lw rp rl)) ptS148 (cbd ptS148) QT := by
  have hn1 := lgOut_nz hL (wt_c1 K)
  have hn2 := lgOut_nz hL (wt_c2 K)
  have hne12 : K.E.rcs + K.E.idx * 16 + 8 ≠ K.E.rcs + K.E.idx * 16 := bv_add8_ne _
  have hZne : ∀ a, Z a → a ≠ K.E.rcs + K.E.idx * 16 ∧ a ≠ K.E.rcs + K.E.idx * 16 + 8 :=
    fun a ha => ⟨fun e => hn1 (e ▸ ha), fun e => hn2 (e ▸ ha)⟩
  unfold ptS148
  refine cw_seqN (hn_st_rcs1 hP hb32 hn1 (en3_index K lw rp rl) (en3_rc K lw rp rl)) ?_
  unfold ptS149
  have hb32' : (Z (K.E.bo + BitVec.ofNat 64 32) ∨ K.E.bo + BitVec.ofNat 64 32 = K.E.rcs + K.E.idx * 16) ∧
      (fun a => if a = K.E.rcs + K.E.idx * 16 then rp else ref a) (K.E.bo + BitVec.ofNat 64 32) = K.E.rcs := by
    refine ⟨Or.inl hb32.1, ?_⟩
    simp only [if_neg (hZne _ hb32.1).1]
    exact hb32.2
  refine cw_seqN (hn_st_rcs2 hP hb32' ?_ (en3_index K lw rp rl) (en3_rc K lw rp rl)) ?_
  · rintro (h | h)
    · exact hn2 h
    · exact hne12 h
  have hB := bloc_tl K.A (fun a => if a = K.E.rcs + K.E.idx * 16 + 8 then rl else
    (fun a => if a = K.E.rcs + K.E.idx * 16 then rp else ref a) a)
    (fun a => (Z a ∨ a = K.E.rcs + K.E.idx * 16) ∨ a = K.E.rcs + K.E.idx * 16 + 8) (O := O)
  unfold ptS151
  refine cw_decT_g hB (locIns_resIns hQT _) (w := ref (lw + 8)) ?_ ?_
  · intro s hpa v hv
    obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
    have h1 := evI_ld (evI_add (evI_lv (hlk _ _ (en3_logs K lw rp rl))) (evI_cw s 8))
    have h2 := h1 v hv
    have hk8 := hL.rd8 _ _ s Γ p hr (fun a ha => ⟨Or.inl (Or.inl ha), by
      simp only [if_neg (hZne a ha).2, if_neg (hZne a ha).1]⟩)
    show v = .val (.word (ref (lw + 8)))
    rw [h2]
    show ValueHOL.val (HolWordLab.word (rd s.memory (lw + 8))) = _
    rw [hk8]
  unfold ptS153
  refine cw_decF_g hB (locIns_resIns hQT _) ?_ ?_
  · rw [env_set_ne _ _ (by decide)]
    exact en3_none K lw rp rl (by decide) (by decide) (by decide) (by decide) (by decide)
  unfold ptS154
  refine cw_seqN (hassignF_g hB ?_) ?_
  · rw [env_set_ne _ _ (by decide)]
    exact en3_none K lw rp rl (by decide) (by decide) (by decide) (by decide) (by decide)
  refine hk _ _ (ref (lw + 8)) (fun a ha => ⟨Or.inl (Or.inl ha), ?_⟩) ?_ ⟨Or.inl (Or.inr rfl), ?_⟩ ⟨Or.inr rfl, ?_⟩ rfl
  · simp only [if_neg (hZne a ha).2, if_neg (hZne a ha).1]
  · intro a ha
    rcases ha with (ha | ha) | ha
    · exact Or.inl ha
    · exact Or.inr (Or.inl ha)
    · exact Or.inr (Or.inr ha)
  · simp only [if_neg hne12.symm, if_true]
  · simp only [if_true]

end

theorem ctb2 {K : TlCtx σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {En : Env}
    {LLv : BitVec 64} {QT : Option (PanSemResultExact 64) → State σ → Prop} (hP : TlPre K)
    (hz : Z (K.E.bo + BitVec.ofNat 64 40) ∧ ref (K.E.bo + BitVec.ofNat 64 40) = LLv)
    (hLL : ∃ o ∈ K.E.Γ0, o.base = LLv ∧ o.ty = tLSTh)
    (hBC : ∀ a, Z a → ∃ o ∈ K.E.Γ0, o.ty ∈ bkTys ∧ ∃ k, o.HasSlot k ∧ a = o.cell k)
    (hslot : En (nm "slot") = none) (hi : En (nm "i") = none)
    (hk : CW' (PAg (TL K.A ref Z O) En) ptS156 (cbd ptS156) QT) :
    CW' (PAg (TL K.A ref Z O) En) ptS155 (cbd ptS155) QT := by
  have hB := bloc_tl K.A ref Z (O := O)
  unfold ptS155
  refine cw_seqN ?_ hk
  unfold ptS157
  exact hn_whileG hB (hn_body1 hP hz hLL hBC hslot hi)

section
variable {A : TlA σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {En : Env}
  {QT : Option (PanSemResultExact 64) → State σ → Prop}

theorem ctb3a {nlw : BitVec 64} (hQT : LocIns QT) (hnl : En (nm "nl") = some (.val (.word nlw)))
    (hcap : En (nm "stable_log_cap") = none)
    (hk : CW' (PAg (TL A ref Z O) (En.set (nm "stable_log_cap") (.val (.word (capOf nlw))))) ptS159 (cbd ptS159) QT) :
    CW' (PAg (TL A ref Z O) En) ptS156 (cbd ptS156) QT := by
  have hB := bloc_tl A ref Z (O := O)
  unfold ptS156
  refine cw_decT_g hB (locIns_resIns hQT _) (w := nlw) (fun s hpa v hv => (evI_lv (hpa.2 _ _ hnl)) v hv) ?_
  unfold ptS158
  have hcap' : (En.set (nm "stable_log_cap") (.val (.word nlw))) (nm "stable_log_cap") = some (.val (.word nlw)) :=
    env_set_self _ _ _
  refine cw_seqN (P1 := PAg (TL A ref Z O) (En.set (nm "stable_log_cap") (.val (.word (capOf nlw))))) ?_ hk
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

end

section
variable {K : TlCtx σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {En : Env}
  {QT : Option (PanSemResultExact 64) → State σ → Prop}

theorem ctb3b {nlw : BitVec 64} (hP : TlPre K) (hQT : LocIns QT)
    (hBC : ∀ a, Z a → ∃ o ∈ K.E.Γ0, o.ty ∈ bkTys ∧ ∃ k, o.HasSlot k ∧ a = o.cell k)
    (hnl : En (nm "nl") = some (.val (.word nlw))) (hnlb : nlw.toNat ≤ 2 ^ 25)
    (hcap : En (nm "stable_log_cap") = some (.val (.word (capOf nlw))))
    (hsl : En (nm "stable_logs") = none) (hlp : En (nm "stable_lp") = none) (hi : En (nm "i") = none)
    (hk : ∀ l q : BitVec 64,
      CW' (PAg (TL K.A ref Z (O ++ [⟨q, tLSTAh, 8 * (capOf nlw).toNat⟩] ++ [⟨l, tLSTh, 24⟩]))
        (((En.set (nm "stable_logs") (.val (.word l))).set (nm "stable_lp") (.val (.word q))).set (nm "i")
          (.val (.word 0)))) ptS164 (cbd ptS164) QT) :
    CW' (PAg (TL K.A ref Z O) En) ptS159 (cbd ptS159) QT := by
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
  refine cw_decCallKT (locIns_resIns hQT _)
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
  refine cw_seqN (P1 := PAg (TL K.A (fun a => if a = l then q else ref a) (fun a => Z a ∨ a = l)
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
    refine cw_decT_g hB1 (locIns_resIns hQT _) (w := q) ?_ ?_
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
      refine cw_seqN (hassignT_g hB1 (w' := 0) (fun s hpa v hv => (evI_cw s 0) v hv)) ?_
      refine Eb.cw_pre (hk l q) ?_
      intro t _ ht
      exact pag_ref_congr (pag_restrict ht (fun a ha => Or.inl ha))
        (fun a ha => by
          have hne : a ≠ l := fun he => hZl (he ▸ ha)
          show ref a = if a = l then q else ref a
          rw [if_neg hne])

end

section
variable {K : TlCtx σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {En : Env}

theorem ctb4 {q nlw : BitVec 64} {c : Nat} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hBC : ∀ a, Z a → ∃ o ∈ K.E.Γ0, o.ty ∈ bkTys ∧ ∃ k, o.HasSlot k ∧ a = o.cell k)
    (harr : (⟨q, tLSTAh, 8 * c⟩ : Obj) ∈ O) (hcl : nlw.toNat ≤ c) (hnlb : nlw.toNat ≤ 2 ^ 25)
    (hsp : En (nm "stable_lp") = some (.val (.word q))) (hnl : En (nm "nl") = some (.val (.word nlw)))
    (hk : CW' (PAg (TL K.A ref Z O) (En.set (nm "i") (.val (.word (BitVec.ofNat 64 nlw.toNat))))) ptS165 (cbd ptS165) QT) :
    CW' (PAg (TL K.A ref Z O) (En.set (nm "i") (.val (.word 0)))) ptS164 (cbd ptS164) QT := by
  have hB := bloc_tl K.A ref Z (O := O)
  unfold ptS164
  refine cw_seqN ?_ hk
  unfold ptS166
  have hnl' : ∀ x : BitVec 64, (En.set (nm "i") (.val (.word x))) (nm "nl") = some (.val (.word nlw)) := fun x => by
    rw [env_set_ne _ _ (by decide)]; exact hnl
  have h25 : (2 : Nat) ^ 25 < 2 ^ 63 := by norm_num
  have h58 : (2 : Nat) ^ 25 < 2 ^ 58 := by norm_num
  refine hn_cloopG (N := nlw.toNat) hB ?_ ?_ (by omega) ?_
  · intro x s hx hpa hc
    exact cond_lt_gen (evI_lv (hpa.2 _ _ (env_set_self _ _ _))) (evI_lv (hpa.2 _ _ (hnl' x))) (by omega) (by omega) hc
  · intro x s hx hpa hc
    exact cond_lt_gen_false (evI_lv (hpa.2 _ _ (env_set_self _ _ _))) (evI_lv (hpa.2 _ _ (hnl' x))) (by omega) (by omega) hc
  · intro x hx
    exact hn_body2 hBC harr hcl hnlb hsp hnl (Or.inr trivial) x hx

end

section
variable {K : TlCtx σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {En : Env}
  {QT : Option (PanSemResultExact 64) → State σ → Prop}

theorem ctb5 {RLv l : BitVec 64} (hP : TlPre K) (hQT : LocIns QT)
    (hz : Z (K.E.bo + BitVec.ofNat 64 72) ∧ ref (K.E.bo + BitVec.ofNat 64 72) = RLv)
    (hRL : ∃ o ∈ K.E.Γ0, o.base = RLv ∧ o.ty = tLSTh)
    (hBC : ∀ a, Z a → ∃ o ∈ K.E.Γ0, o.ty ∈ bkTys ∧ ∃ k, o.HasSlot k ∧ a = o.cell k)
    (hrl : En (nm "rl") = none) (hsl : En (nm "stable_logs") = some (.val (.word l)))
    (hk : CW' (PAg (TL K.A ref Z O) En) ptS168 (cbd ptS168) QT) :
    CW' (PAg (TL K.A ref Z O) En) ptS165 (cbd ptS165) QT := by
  have hB := bloc_tl K.A ref Z (O := O)
  unfold ptS165
  refine cw_decCallKT (locIns_resIns hQT _)
    ((sumSpecA_relX lstPushSpec).and (funSpec_pt_gw_all guestCtx_code push_fin)) ?_
  intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst hsh
  obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
  obtain ⟨x1, x2, rfl, hx1, hx2⟩ := evs2 hvs
  have hx1' : x1 = .val (.word RLv) := by
    have h := evI_ld (evI_add (evI_gv (tl_glob_bo hr hP.B.hbo)) (evI_cw s 72))
    have h2 := h x1 hx1
    rw [h2]
    show ValueHOL.val (HolWordLab.word (rd s.memory (K.E.bo + BitVec.ofNat 64 72))) = _
    rw [hr.keep _ hz.1, hz.2]
  have hx2' : x2 = .val (.word (BitVec.ofNat 64 8)) := (evI_cw s 8) x2 hx2
  subst hx1' hx2'
  obtain ⟨Γ', p', w, x, k, hrun, hv, hx, hxt, hk', hw⟩ := push_core hRL hBC hr hR hgl
  subst hv
  subst hw
  have hr1 : TlS K.A ref Z O (setVarHOLFinite (nm "rl") (.val (.word (x.cell k))) { st with locals := s.locals }) Γ' p' :=
    tl_set hrun _ _
  have hlk1 : LKE (En.set (nm "rl") (.val (.word (x.cell k)))) (setVarHOLFinite (nm "rl") (.val (.word (x.cell k)))
      { st with locals := s.locals }) := lke_set (lke_restore hlk) _ _
  have hslotlk : (setVarHOLFinite (nm "rl") (.val (.word (x.cell k))) { st with locals := s.locals }).locals.lookup
      (nm "rl") = some (.val (.word (x.cell k))) := lk_set_self _ _ _
  have hsll : (En.set (nm "rl") (.val (.word (x.cell k)))) (nm "stable_logs") = some (.val (.word l)) := by
    rw [env_set_ne _ _ (by decide)]; exact hsl
  unfold ptS167
  refine cw_seqN (P1 := fun t => PAg (TL K.A ref Z O) (En.set (nm "rl") (.val (.word (x.cell k)))) t) ?_ ?_
  · refine hoare_store fun s' hs' h1 w' v' mem hw' hv' hmem => ?_
    subst h1
    have hww := (evI_lv hslotlk) _ hw'
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hww
    subst hww
    have hv'' := (evI_lv (hlk1 _ _ hsll)) _ hv'
    subst hv''
    simp only [flattenHOL] at hmem
    obtain ⟨hd, rfl⟩ := stores_one hmem
    have hnz : ¬ Z (x.cell k) :=
      z_ne_cell hr1 (bc_ext hr1 hrun.ext hBC) hx (lstA_not_block hxt) hk'
    exact ⟨rfl, ⟨⟨Γ', p', tl_store_gen hr1 hnz (cell_in (tl_ord hr1) (tl_layout hr1) hx hk') (G_st_astore hr1.hG hx hxt hk' l)⟩, hlk1⟩⟩
  · refine Eb.cw_pre hk ?_
    intro t _ ht
    exact pag_mono ht (env_mono_set hrl _) (fun s h => h)

end

end InitECandidate.Solver.MemSafe.PtC
