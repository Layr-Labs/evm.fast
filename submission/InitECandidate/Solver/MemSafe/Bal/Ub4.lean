import InitECandidate.Solver.MemSafe.Bal.Ub3
import InitECandidate.Solver.MemSafe.Stor.Gso

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.MemSafe.Stor

variable {σ : Type}

abbrev HGS (σ : Type) : Prop :=
  CSumm σ guestCtx guestC (guestHooksR (σ := σ)) (nm "ws_get_storage") storWgsSig storWstCaps

section ub4
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

/-- The storage-slot body for a found slot. -/
theorem ub_inner (Ent : UbEnt Γ0 s0 p0) (hgs : HGS σ) {E : Env} {F : Gam → Prop} (hF : MonoF F)
    (hfr : ∀ x ∈ ubNames2, E x = none) {a2 b2 c2 a3 b3 c3 IDX : BitVec 64}
    (hs2 : E (nm "s2") = some (wv [a2, b2, c2])) (he : E (nm "e") = some (wv [a3, b3, c3]))
    (hidx : E (nm "idx") = some (.val (.word IDX)))
    (hk : ∀ Γ, F Γ → SrcKey Γ b2 20 tHTb20 ∧ SrcKey Γ b2 20 tHTd20 ∧ SrcKey Γ b3 32 tHTl32) :
    HoareG σ guestCtx (PE ubc Γ0 s0 p0 E F) ubInner (RR ubc Γ0 s0 p0 (LE E F)) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  have hS0 : St ubNames2 E F E F := ⟨envLe_refl E, fun _ h => h, hfr⟩
  unfold ubInner
  refine gdecCallE hH (sumSpec_idx_start_storage hgs) (by decide_cbv) (fun g _ => by simp [storWgsSig])
    Ent.hord Ent.hL (fun _ _ => True) hF (fun v Γ Γ1 _ h => h) (hfr _ (by simp [ubNames2])) ?_ ?_ ?_
  · intro Γ s' hP vs hvs callee
    obtain rfl := evs_det hvs (evs_cons_mk (le_rf (i := 1) (ws := [a2, b2, c2]) hP.2 hs2 (by simp))
      (evs_cons_mk (le_rf (i := 1) (ws := [a3, b3, c3]) hP.2 he (by simp)) evs_nil))
    exact hdata_any (sg := storWgsSig) (Pre := IsPre) (PW' := fun _ s Γ a => CapPW isc s Γ a)
      (by simp [storWgsSig]) rfl hP.1 (isPre_of (ub_facts Ent hP.1) (hk Γ hP.2.2).1)
      (fun y hpc hy => cpw_sub (fun c hc => ubc_sub_isc c hc) hP.1.1 Ent.hord Ent.hL y hpc hy)
  · intros; trivial
  refine hk_G (fun vpre _ => ?_)
  have hS1 := hS0.set (n := nm "pre_v") (by simp [ubNames2]) vpre
  -- post_v
  refine hdecE hH (G := fun v => ∃ A B C D : BitVec 64, v = wv [A, B, C, D]) (hfr _ (by simp [ubNames2])) ?_ ?_
  · intro Γ s' v hP hv
    exact ev_load4w (by unfold ld4 sh4 at hv; exact hv)
  rintro v ⟨A, B, C, D, rfl⟩
  have hS2 := hS1.set (n := nm "post_v") (by simp [ubNames2]) (wv [A, B, C, D])
  refine gdecCallE hH (sa_of_cs (u256_cs (σ := σ))) (by decide_cbv) (fun g _ => by simp [u256Sg])
    Ent.hord Ent.hL (fun _ _ => True) hF (fun v Γ Γ1 _ h => h) (hfr _ (by simp [ubNames2])) ?_ ?_ ?_
  · intro Γ s' hP vs hvs callee
    obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨a2', r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
    exact hdata_any (sg := u256Sg) (Pre := fun _ s Γ => ReqOK ([] : List Cap) s Γ)
      (PW' := fun _ s Γ a => CapPW ([] : List Cap) s Γ a) (by simp [u256Sg])
      (by rw [evs_len hvs]; rfl) hP.1 reqNil
      (fun y hpc hy => cpw_sub (cs' := []) (by simp) hP.1.1 Ent.hord Ent.hL y hpc hy)
  · intros; trivial
  refine hk_G (fun veq _ => ?_)
  have hS3 := hS2.set (n := nm "eq2") (by simp [ubNames2]) veq
  have hs2' : (((E.set (nm "pre_v") vpre).set (nm "post_v") (wv [A, B, C, D])).set (nm "eq2") veq) (nm "s2") =
      some (wv [a2, b2, c2]) := by simp (config := {decide := true}) [Env.set, hs2]
  have he' : (((E.set (nm "pre_v") vpre).set (nm "post_v") (wv [A, B, C, D])).set (nm "eq2") veq) (nm "e") =
      some (wv [a3, b3, c3]) := by simp (config := {decide := true}) [Env.set, he]
  have hidx' : (((E.set (nm "pre_v") vpre).set (nm "post_v") (wv [A, B, C, D])).set (nm "eq2") veq) (nm "idx") =
      some (.val (.word IDX)) := by simp (config := {decide := true}) [Env.set, hidx]
  have hpv : (((E.set (nm "pre_v") vpre).set (nm "post_v") (wv [A, B, C, D])).set (nm "eq2") veq) (nm "post_v") =
      some (wv [A, B, C, D]) := by simp (config := {decide := true}) [Env.set]
  refine hoareG_ite (hoareG_pre ?_ (fun s _ h => h.1)) (hoareG_pre ?_ (fun s _ h => h.1))
  · refine hoareG_conseq (gstepE hH sumSpec_add_storage_write (by decide_cbv) (fun g _ => by simp [swSig])
      Ent.hord Ent.hL hF ?_) (fun _ _ h => h) (fun r t _ _ hq => hS3.rr hq)
    intro Γ s' hP vs hvs callee
    obtain rfl := evs_det hvs (evs_cons_mk (le_rf (i := 1) (ws := [a2, b2, c2]) hP.2 hs2' (by simp))
      (evs_cons_mk (le_rf (i := 1) (ws := [a3, b3, c3]) hP.2 he' (by simp))
      (evs_cons_mk (le_ev hP.2 hidx') (evs_cons_mk (le_ev' hP.2 hpv) evs_nil))))
    exact hdata_any (sg := swSig) (Pre := SwPre) (PW' := fun _ s Γ a => BalPW s Γ a) (by simp [swSig]) rfl hP.1
      (swPre_of (ub_facts Ent hP.1) (hk Γ hP.2.2).2.1 (hk Γ hP.2.2).2.2)
      (fun y hpc hy => cpw_bal hP.1.1 Ent.hord Ent.hL y hpc hy)
  · refine hoareG_conseq (gstepE hH sumSpec_remove_storage_write (by decide_cbv) (fun g _ => by simp [rsSig])
      Ent.hord Ent.hL hF ?_) (fun _ _ h => h) (fun r t _ _ hq => hS3.rr hq)
    intro Γ s' hP vs hvs callee
    obtain rfl := evs_det hvs (evs_cons_mk (le_rf (i := 1) (ws := [a2, b2, c2]) hP.2 hs2' (by simp))
      (evs_cons_mk (le_rf (i := 1) (ws := [a3, b3, c3]) hP.2 he' (by simp))
      (evs_cons_mk (le_ev hP.2 hidx') evs_nil)))
    exact hdata_any (sg := rsSig) (Pre := RsPre) (PW' := fun _ s Γ a => BalPW s Γ a) (by simp [rsSig]) rfl hP.1
      (rsPre_of (ub_facts Ent hP.1))
      (fun y hpc hy => cpw_bal hP.1.1 Ent.hord Ent.hL y hpc hy)

end ub4

end InitECandidate.Solver.MemSafe.Bal
