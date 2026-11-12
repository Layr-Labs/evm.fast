import InitECandidate.Solver.MemSafe.Ptx.PtT18

/-!
# F3g: loop 1's body `var slot = lst_push(bo.LOGS, 8); st slot, lp[i]; i = i + 1`
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

theorem ev_load_word {s : State σ} {a : ExpHOL 64} {v : ValueHOL 64} (h : ev s (.load .one a) = some v) :
    ∃ x, v = .val (.word x) := by
  obtain ⟨w', hw', -, -⟩ := ev_load_one h
  exact ⟨_, HtabEntries.ev_ld hw' h⟩

section push
variable {K : TlCtx σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj}

/-- **The core of `lst_push(L, 8)` on a heap list of the entry typing** from a state with kept block cells only. -/
theorem push_core {LLv : BitVec 64} (hLL : ∃ o ∈ K.E.Γ0, o.base = LLv ∧ o.ty = tLSTh)
    (hBC : ∀ a, Z a → ∃ o ∈ K.E.Γ0, o.ty ∈ bkTys ∧ ∃ k, o.HasSlot k ∧ a = o.cell k)
    {s st : State σ} {Γ : Gam} {p : Ptrs} (hr : TlS K.A ref Z O s Γ p) {callee : Locs} {v : ValueHOL 64}
    (hR : SumRelX guestC (HR σ) HtabEntries.lpSigA HtabEntries.LpPre
      (fun vs s Γ a => ProtCell guestC Γ a ∧ HtabEntries.LpPW vs s Γ a) HtabEntries.LpPost
      [.val (.word LLv), .val (.word (BitVec.ofNat 64 8))] (callEntryStateHOLFinite s callee) (.returned v) st)
    (hgl : ∀ g, cW.contains g = false → st.globals.lookup g = s.globals.lookup g) :
    ∃ (Γ' : Gam) (p' : Ptrs) (w : BitVec 64) (x : Obj) (k : Nat), TlS K.A ref Z O { st with locals := s.locals } Γ' p' ∧
      v = .val (.word w) ∧ x ∈ Γ' ∧ IsLstA x.ty ∧ x.HasSlot k ∧ w = x.cell k := by
  obtain ⟨L0, hL0, hL0b, hL0t⟩ := hLL
  obtain ⟨L, hL, hLb, hLt, -⟩ := hr.ext L0 hL0
  have hLty : L.ty = tLSTh := hLt.trans hL0t
  have hLb' : L.base = LLv := hLb.trans hL0b
  have hLlst : L.ty ∈ lstTys := by rw [hLty]; exact lstTLSTh_ok
  have hpre : HtabEntries.LpPre [.val (.word LLv), .val (.word (BitVec.ofNat 64 8))]
      (callEntryStateHOLFinite s callee) Γ :=
    ⟨L, hL, hLlst, by rw [hLb', hLty, lstE_tLSTh]⟩
  obtain ⟨Γ', p', hc, hrun, hq⟩ := tl_call_core2 (Pre := HtabEntries.LpPre) (PWx := HtabEntries.LpPW) hR hgl
    (by simp [HtabEntries.lpSigA]) (by simp [JrOut, HtabEntries.lpSigA])
    (fun a ha hw => by
      obtain ⟨L', hL', hLt', -, hlc⟩ := hw
      exact z_not_lcell hr (bc_ext hr hr.ext hBC) hL' hLt' ha hlc) hr
    (argsOK_anys (by simp [HtabEntries.lpSigA]) rfl) (argCells_any _ (by simp [HtabEntries.lpSigA])) hpre
  obtain ⟨L1, hL1, hL1t, -, hLpR⟩ := hq v rfl
  obtain ⟨w, hv, x, hx, hxt, k, hk, hw, -⟩ := Bal.lpR_slotE hLpR.1 hc.2.2.2.2.2.1 hL1t
  exact ⟨Γ', p', w, x, k, hrun, hv, hx, hxt, hk, hw⟩

/-- **Loop 1's body** (`ptS184`). -/
theorem hn_body1 {En : Env} {LLv : BitVec 64} (hP : TlPre K)
    (hz : Z (K.E.bo + BitVec.ofNat 64 40) ∧ ref (K.E.bo + BitVec.ofNat 64 40) = LLv)
    (hLL : ∃ o ∈ K.E.Γ0, o.base = LLv ∧ o.ty = tLSTh)
    (hBC : ∀ a, Z a → ∃ o ∈ K.E.Γ0, o.ty ∈ bkTys ∧ ∃ k, o.HasSlot k ∧ a = o.cell k)
    (hslot : En (nm "slot") = none) (hi : En (nm "i") = none) :
    HN (PAg (TL K.A ref Z O) En) ptS184 (PAg (TL K.A ref Z O) En) := by
  have hB := bloc_tl K.A ref Z (O := O)
  unfold ptS184
  refine hdecCallK (resIns_PAg hB hslot)
    ((sumSpecA_relX lstPushSpec).and (funSpec_pt_gw_all guestCtx_code push_fin)) ?_
  intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst hsh
  obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
  obtain ⟨x1, x2, rfl, hx1, hx2⟩ := evs2 hvs
  have hx1' : x1 = .val (.word LLv) := by
    have h := evI_ld (evI_add (evI_gv (tl_glob_bo hr hP.B.hbo)) (evI_cw s 40))
    have h2 := h x1 hx1
    rw [h2]
    show ValueHOL.val (HolWordLab.word (rd s.memory (K.E.bo + BitVec.ofNat 64 40))) = _
    rw [hr.keep _ hz.1, hz.2]
  have hx2' : x2 = .val (.word (BitVec.ofNat 64 8)) := (evI_cw s 8) x2 hx2
  subst hx1' hx2'
  obtain ⟨Γ', p', w, x, k, hrun, hv, hx, hxt, hk, hw⟩ := push_core hLL hBC hr hR hgl
  subst hv
  subst hw
  have hr1 : TlS K.A ref Z O (setVarHOLFinite (nm "slot") (.val (.word (x.cell k))) { st with locals := s.locals }) Γ' p' :=
    tl_set hrun _ _
  have hlk1 : LKE (En.set (nm "slot") (.val (.word (x.cell k)))) (setVarHOLFinite (nm "slot") (.val (.word (x.cell k)))
      { st with locals := s.locals }) := lke_set (lke_restore hlk) _ _
  have hslotlk : (setVarHOLFinite (nm "slot") (.val (.word (x.cell k))) { st with locals := s.locals }).locals.lookup
      (nm "slot") = some (.val (.word (x.cell k))) := lk_set_self _ _ _
  unfold ptS185
  refine hseqN (P1 := fun t => PAg (TL K.A ref Z O) (En.set (nm "slot") (.val (.word (x.cell k)))) t) ?_ ?_
  · refine hoare_store fun s' hs' h1 w' v' mem hw' hv' hmem => ?_
    subst h1
    have hww := (evI_lv hslotlk) _ hw'
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hww
    subst hww
    obtain ⟨xx, rfl⟩ := ev_load_word hv'
    simp only [flattenHOL] at hmem
    obtain ⟨hd, rfl⟩ := stores_one hmem
    have hnz : ¬ Z (x.cell k) :=
      z_ne_cell hr1 (bc_ext hr1 hrun.ext hBC) hx (lstA_not_block hxt) hk
    exact ⟨rfl, ⟨⟨Γ', p', tl_store_gen hr1 hnz (cell_in (tl_ord hr1) (tl_layout hr1) hx hk) (G_st_astore hr1.hG hx hxt hk xx)⟩, hlk1⟩⟩
  · refine hoare_post (hassignF_g hB (by rw [env_set_ne _ _ (by decide)]; exact hi)) ?_
    intro r t _ _ h
    exact ⟨h.1, pag_mono h.2 (env_mono_set hslot _) (fun s h => h)⟩

end push

end InitECandidate.Solver.MemSafe.Ptx
