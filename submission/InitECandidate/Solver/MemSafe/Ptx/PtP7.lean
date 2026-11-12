import InitECandidate.Solver.MemSafe.Ptx.PtP6

/-!
# F3f: the warm tables (`ptS87` to `ptS104`)
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

variable {σ : Type}

/-- The names `MsK` talks about. -/
def MsV (y : MlS) : Prop := AdV y ∨ y = nm "m"

/-- General transport of `MsK` along an environment change and added non-reading facts. -/
theorem msk_gen {E : PtE σ} {En En' : Env} {S S' : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w wt wa ak nv nkv wm : BitVec 64} {nbl : Nat} {L : List (Nat × BitVec 64)}
    (K : MsK E En S rp rl buf n CV w wt wa ak nv nkv wm nbl L) {Lf : List Fct}
    (hE : ∀ y, MsV y → ∀ u, En y = some u → En' y = some u)
    (hS : ∀ f, S f → S' f) (hS' : ∀ f, S' f → S f ∨ f ∈ Lf)
    (hL : ∀ X ∈ Lf, (∀ g ty, X ≠ Fct.gobj g ty) ∧ (∀ a v, X ≠ Fct.cellv a v) ∧ (∀ y, ¬ X.reads y))
    (hun : ∀ y, y ∉ TRK → En' y = none) :
    MsK E En' S' rp rl buf n CV w wt wa ak nv nkv wm nbl L := by
  have hA : ∀ y, AdV y → ∀ u, En y = some u → En' y = some u := fun y hy u h => hE y (Or.inl hy) u h
  have hL2 : ∀ X ∈ Lf, (∀ g ty, X ≠ Fct.gobj g ty) ∧ (∀ a v, X ≠ Fct.cellv a v) :=
    fun X hX => ⟨(hL X hX).1, (hL X hX).2.1⟩
  have hC := cy_gen K.A.C0 (L := Lf) (fun y hy u h => hA y (by unfold AdV; unfold Cx2V at hy; tauto) u h) hS hS' hL2 hun
  refine ⟨⟨hC, hA _ (by unfold AdV; simp) _ K.A.hte, hA _ (by unfold AdV; simp) _ K.A.hwa,
    hA _ (by unfold AdV; simp) _ K.A.hak, hA _ (by unfold AdV; simp) _ K.A.hnal,
    hA _ (by unfold AdV; simp) _ K.A.hnk, ?_, ?_, K.A.hnv, K.A.hnbl, K.A.hnkv, hS _ K.A.hobjte, hS _ K.A.hppa,
    hS _ K.A.hfba, hS _ K.A.harrf, hS _ K.A.harr1, hS _ K.A.hobj, hS _ K.A.hppk⟩,
    hE _ (Or.inr rfl) _ K.hm, hS _ K.hfbm, hS _ K.hppm, hS _ K.hordm, fun p hp => ?_, ?_,
    fun x hx => hS _ (K.h40 x hx)⟩
  · obtain ⟨mg, h, hm⟩ := K.A.hmg
    exact ⟨mg, hA _ (by unfold AdV; simp) _ h, hS _ hm⟩
  · obtain ⟨rs, h⟩ := K.A.hrs
    exact ⟨rs, hA _ (by unfold AdV; simp) _ h⟩
  · obtain ⟨a, b, c⟩ := K.hL p hp
    exact ⟨a, b, hS _ c⟩
  · intro f hf hy
    rcases hS' f hf with h | h
    · exact K.hrdm f h hy
    · obtain ⟨y, hy'⟩ := hy
      exact absurd hy' ((hL f h).2.2 y)

theorem msv_ne3 {y : MlS} (hy : MsV y) : y ≠ nm "aa" ∧ y ≠ nm "i" ∧ y ≠ nm "ak" := by
  unfold MsV AdV at hy
  rcases hy with (rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl) | rfl <;> decide

theorem pa_glob_pav {E : PtE σ} {En : Env} {S : FS} {pav : BitVec 64}
    (hlook : E.s0.globals.lookup (nm "precompile_addrs") = some (.val (.word pav))) (s : State σ)
    (hpa : PA E En S s) : s.globals.lookup (nm "precompile_addrs") = some (.val (.word pav)) := by
  obtain ⟨⟨D, Γ, p, hr, hD, hL⟩, -⟩ := hpa
  rw [ptRun_glob hr (by decide)]
  exact hlook

/-- `ptS87` to `ptS104`: the tables `aa` and `ak` and their loops. -/
theorem pt_c10 {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)} {w wt wa ak nv nkv wm : BitVec 64} {nbl : Nat}
    {L : List (Nat × BitVec 64)}
    (hP : PtPreX E) (hQT : LocIns QT) (K : MsK E En S rp rl buf n CV w wt wa ak nv nkv wm nbl L)
    (hk : ∀ (En' : Env) (S' : FS) (aaw akw : BitVec 64),
      MsK E En' S' rp rl buf n CV w wt wa ak nv nkv wm nbl L →
      En' (nm "aa") = some (.val (.word aaw)) → En' (nm "ak") = some (.val (.word akw)) →
      S' (Fct.obj aaw tHTh20 0) → S' (Fct.obj akw tHTh52 0) →
      Hoare σ guestCtx (PA E En' S') ptS104 QT) :
    Hoare σ guestCtx (PA E En S) ptS87 QT := by
  obtain ⟨pav, hlook, o0, ho0, hb0, ht0, hsz0, hbd0⟩ := pre_pa hP.toPtPre
  have hnvb : nv.toNat < 2 ^ 58 := nalOK_lt hP.toPtPre K.A.hnv
  have hnkb : nkv.toNat < 2 ^ 58 := nk_bound hP.toPtPre K.A.hnv K.A.hnkv
  unfold ptS87
  refine hdecHtabNew (locIns_resIns hQT _) tab_htab_new_20_64 (fun g ty h => (K.A.C0.gl g ty h).1) ?_
  intro aaw
  have K1 := msk_setF K (x := nm "aa") (by decide) (by unfold AdV; decide) (by decide) (.val (.word aaw))
    [Fct.obj aaw tHTh20 0] (by intro X hX; simp at hX; subst hX; simp [Fct.reads])
  unfold ptS89
  refine hseqN hn_skip ?_
  unfold ptS90
  refine hseqN (hn_hset (th := tHTh20) (n := 20) (m := 24) (kw := w) (csOK_htab_set tHTh20 (by decide))
    tab_htab_set_20 (aaE := nm "aa") (kE := lv (nm "sender")) (env_set_self _ _ _) (Or.inr (by simp)) ?_
    K1.A.C0.bsd (by norm_num) (fun g ty h => (K1.A.C0.gl g ty h).1)) ?_
  · intro s hpa
    exact evI_lv (hpa.2 _ _ K1.A.C0.sd)
  unfold ptS91
  refine hseqN hn_skip ?_
  unfold ptS92
  refine hghostF (Fct.obj pav tB360 360) ?_ ?_
  · intro s hpa D Γ p hr hL
    obtain ⟨o', ho', hb', ht', hs'⟩ := ptRun_ext hr o0 ho0
    exact ⟨o', ho', hb'.trans hb0, ht'.trans ht0, le_trans hsz0 hs'⟩
  refine hghostF (Fct.prop (pav.toNat + 360 ≤ heapEnd)) (fun s hpa D Γ p hr hL => hbd0) ?_
  refine hseqN (hassignS (w' := 0) (fun s hpa v hv => evI_cw s 0 v hv)) ?_
  unfold ptS93
  have hGl2 : ∀ g ty, (addF (addF (addF S [Fct.obj aaw tHTh20 0]) [Fct.obj pav tB360 360])
      [Fct.prop (pav.toNat + 360 ≤ heapEnd)]) (Fct.gobj g ty) → cW.contains g = false :=
    hgl_addF (hgl_addF (hgl_addF (fun g ty h => (K.A.C0.gl g ty h).1) (by simp)) (by simp)) (by simp)
  refine hseqN (pt_loopA (aaw := aaw) (pav := pav) (En := En.set (nm "aa") (.val (.word aaw)))
    (env_set_self _ _ _) (Or.inl (Or.inl (Or.inr (by simp)))) (Or.inl (Or.inr (by simp))) (Or.inr (by simp))
    (fun En' s hpa => pa_glob_pav hlook s hpa) hGl2) ?_
  unfold ptS94
  refine hseqN (hn_post (hassignS (w' := 0) (fun s hpa v hv => evI_cw s 0 v hv))
    (fun t _ h => by rwa [env_set_set] at h)) ?_
  unfold ptS96
  have e_wa : (En.set (nm "aa") (.val (.word aaw))) (nm "al_addrs") = some (.val (.word wa)) := by
    rw [env_set_ne _ _ (by decide)]; exact K.A.hwa
  have e_nal : (En.set (nm "aa") (.val (.word aaw))) (nm "nal") = some (.val (.word nv)) := by
    rw [env_set_ne _ _ (by decide)]; exact K.A.hnal
  refine hseqN (pt_loopB (aaw := aaw) (wa := wa) (nv := nv) (nbl := nbl) (env_set_self _ _ _) e_wa e_nal
    (by omega) (Or.inl (Or.inl (Or.inr (by simp)))) (Or.inl (Or.inl (Or.inl K.A.harrf))) hGl2) ?_
  unfold ptS97
  refine hseqN hn_skip ?_
  unfold ptS99
  refine hdecHtabNew (locIns_resIns hQT _) tab_htab_new_52_16 hGl2 ?_
  intro akw
  unfold ptS100
  refine hseqN (hassignS (w' := 0) (fun s hpa v hv => evI_cw s 0 v hv)) ?_
  unfold ptS101
  have e_al : ((((En.set (nm "aa") (.val (.word aaw))).set (nm "i")
      (.val (.word (BitVec.ofNat 64 (nv.toNat + 1))))).set (nm "ak") (.val (.word akw)))) (nm "al_keys")
      = some (.val (.word ak)) := by
    rw [env_set_ne _ _ (by decide), env_set_ne _ _ (by decide), env_set_ne _ _ (by decide)]; exact K.A.hak
  have e_nk : ((((En.set (nm "aa") (.val (.word aaw))).set (nm "i")
      (.val (.word (BitVec.ofNat 64 (nv.toNat + 1))))).set (nm "ak") (.val (.word akw)))) (nm "nkeys")
      = some (.val (.word nkv)) := by
    rw [env_set_ne _ _ (by decide), env_set_ne _ _ (by decide), env_set_ne _ _ (by decide)]; exact K.A.hnk
  refine hseqN (pt_loopC (akw := akw) (ak := ak) (nkv := nkv) (env_set_self _ _ _) e_al e_nk (by omega)
    (Or.inr (by simp)) (Or.inl (Or.inl (Or.inl (Or.inl K.A.hobj)))) (Or.inl (Or.inl (Or.inl (Or.inl K.A.hppk))))
    (hgl_addF hGl2 (by simp))) ?_
  unfold ptS102
  refine hseqN hn_skip ?_
  refine hk _ _ aaw akw (msk_gen K (Lf := [Fct.obj aaw tHTh20 0, Fct.obj pav tB360 360,
      Fct.prop (pav.toNat + 360 ≤ heapEnd), Fct.obj akw tHTh52 0]) ?_ ?_ ?_ ?_ ?_) ?_ ?_ ?_ ?_
  · intro y hy u h
    obtain ⟨h1, h2, h3⟩ := msv_ne3 hy
    rw [env_set_ne _ _ h2, env_set_ne _ _ h3, env_set_ne _ _ h2, env_set_ne _ _ h1]; exact h
  · intro f hf
    exact Or.inl (Or.inl (Or.inl (Or.inl hf)))
  · intro f hf
    rcases hf with (((hf | hf) | hf) | hf) | hf
    · exact Or.inl hf
    · exact Or.inr (by simp at hf ⊢; tauto)
    · exact Or.inr (by simp at hf ⊢; tauto)
    · exact Or.inr (by simp at hf ⊢; tauto)
    · exact Or.inr (by simp at hf ⊢; tauto)
  · intro X hX; simp at hX; rcases hX with rfl | rfl | rfl | rfl <;> simp [Fct.reads]
  · exact un_set (un_set (un_set (un_set K.A.C0.un (by decide) _) (by decide) _) (by decide) _) (by decide) _
  · rw [env_set_ne _ _ (by decide), env_set_ne _ _ (by decide), env_set_ne _ _ (by decide)]; exact env_set_self _ _ _
  · rw [env_set_ne _ _ (by decide)]; exact env_set_self _ _ _
  · exact Or.inl (Or.inl (Or.inl (Or.inr (by simp))))
  · exact Or.inr (by simp)

end InitECandidate.Solver.MemSafe.Ptx
