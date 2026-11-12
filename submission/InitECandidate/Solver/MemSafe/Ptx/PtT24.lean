import InitECandidate.Solver.MemSafe.Ptx.PtT23

/-!
# F3g: `rl = lst_push(bo.RECEIPT_LOGS, 8); st rl, stable_logs`
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

section tb5
variable {K : TlCtx σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {En : Env}
  {QT : Option (PanSemResultExact 64) → State σ → Prop}

/-- `ptS165`: `var rl = lst_push(bo[72], 8); st rl, stable_logs`, then the continuation `ptS168`. -/
theorem tb5 {RLv l : BitVec 64} (hP : TlPre K) (hQT : LocIns QT)
    (hz : Z (K.E.bo + BitVec.ofNat 64 72) ∧ ref (K.E.bo + BitVec.ofNat 64 72) = RLv)
    (hRL : ∃ o ∈ K.E.Γ0, o.base = RLv ∧ o.ty = tLSTh)
    (hBC : ∀ a, Z a → ∃ o ∈ K.E.Γ0, o.ty ∈ bkTys ∧ ∃ k, o.HasSlot k ∧ a = o.cell k)
    (hrl : En (nm "rl") = none) (hsl : En (nm "stable_logs") = some (.val (.word l)))
    (hk : Hoare σ guestCtx (PAg (TL K.A ref Z O) En) ptS168 QT) :
    Hoare σ guestCtx (PAg (TL K.A ref Z O) En) ptS165 QT := by
  have hB := bloc_tl K.A ref Z (O := O)
  unfold ptS165
  refine hdecCallK (locIns_resIns hQT _)
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
  refine hseqN (P1 := fun t => PAg (TL K.A ref Z O) (En.set (nm "rl") (.val (.word (x.cell k)))) t) ?_ ?_
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
  · refine hoare_pre hk ?_
    intro t _ ht
    exact pag_mono ht (env_mono_set hrl _) (fun s h => h)

end tb5

end InitECandidate.Solver.MemSafe.Ptx
