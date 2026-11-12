import InitECandidate.Solver.MemSafe.Bal.Ub1

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

variable {σ : Type}

section ub2
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

/-- The body of the account loop for a found entry. -/
theorem ub_then (Ent : UbEnt Γ0 s0 p0) {E : Env} {F : Gam → Prop} (hF : MonoF F)
    (hfr : ∀ x ∈ ubNames, E x = none) {a b c IDX : BitVec 64}
    (hs : E (nm "s") = some (wv [a, b, c])) (hidx : E (nm "idx") = some (.val (.word IDX)))
    (hk : ∀ Γ, F Γ → SrcKey Γ b 20 tHTd20 ∧ SrcKey Γ b 20 tHTb20) :
    HoareG σ guestCtx (PE ubc Γ0 s0 p0 E F) ubThen (RR ubc Γ0 s0 p0 (LE E F)) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  have hS0 : St ubNames E F E F := ⟨envLe_refl E, fun _ h => h, hfr⟩
  unfold ubThen
  refine hdecE hH (G := fun v => v = .val (.word b)) (hfr _ (by simp [ubNames])) ?_ ?_
  · intro Γ s' v hP hv
    have h1 : ev s' (.rfield 1 (lvv "s")) = some (.val (.word b)) :=
      ev_rfield_wv (ws := [a, b, c]) (le_ev' hP.2 hs) (i := 1) (by simp)
    rw [h1] at hv
    exact (Option.some.inj hv).symm
  intro v hv
  subst hv
  have hS1 := hS0.set (n := nm "addr") (by simp [ubNames]) (.val (.word b))
  -- post
  refine hdecU hH (by simp (config := {decide := true}) [Env.set]; exact hfr _ (by simp [ubNames]))
    (hfr _ (by simp [ubNames])) ?_
  -- pre = idx_start_account(addr)
  refine gdecCallE hH sumSpec_idx_start_account (by decide_cbv) (fun g _ => by simp [rprSig])
    Ent.hord Ent.hL (fun _ _ => True) hF (fun v Γ Γ1 _ h => h) (hfr _ (by simp [ubNames])) ?_ ?_ ?_
  · intro Γ s' hP vs hvs callee
    have hA : (E.set (nm "addr") (.val (.word b))) (nm "addr") = some (.val (.word b)) := env_set_self _ _ _
    obtain rfl := evs_det hvs (evs_cons_mk (le_ev hP.2 hA) evs_nil)
    exact hdata_any (sg := rprSig) (Pre := IaPre) (PW' := fun _ s Γ a => CapPW idc s Γ a) (by simp [rprSig]) rfl
      hP.1 (iaPre_of (ub_facts Ent hP.1) (hk Γ hP.2.2).2)
      (fun y hpc hy => cpw_sub (fun c hc => ubc_sub_idc c hc) hP.1.1 Ent.hord Ent.hL y hpc hy)
  · intros; trivial
  refine hk_G (fun vpre _ => ?_)
  have hS2 := hS1.set (n := nm "pre") (by simp [ubNames]) vpre
  -- pre_bal, pre_nonce, pre_ch
  refine hdecU hH (by simp (config := {decide := true}) [Env.set]; exact hfr _ (by simp [ubNames]))
    (hfr _ (by simp [ubNames])) ?_
  refine hdecU hH (by simp (config := {decide := true}) [Env.set]; exact hfr _ (by simp [ubNames]))
    (hfr _ (by simp [ubNames])) ?_
  refine hdecU hH (by simp (config := {decide := true}) [Env.set]; exact hfr _ (by simp [ubNames]))
    (hfr _ (by simp [ubNames])) ?_
  -- post_bal = {0,0,0,0}
  refine hdecE hH (G := fun v => v = wv [BitVec.ofNat 64 0, BitVec.ofNat 64 0, BitVec.ofNat 64 0, BitVec.ofNat 64 0])
    (hfr _ (by simp [ubNames])) ?_ ?_
  · intro Γ s' v hP hv
    obtain ⟨vs, rfl, hvs⟩ := ev_rstruct_inv hv
    obtain rfl := evs_det hvs (evs_cons_mk (ev_cw _ 0) (evs_cons_mk (ev_cw _ 0) (evs_cons_mk (ev_cw _ 0)
      (evs_cons_mk (ev_cw _ 0) evs_nil))))
    rfl
  intro vb hvb
  subst hvb
  have hS3 := hS2.set (n := nm "post_bal") (by simp [ubNames]) (wv [BitVec.ofNat 64 0, BitVec.ofNat 64 0, BitVec.ofNat 64 0, BitVec.ofNat 64 0])
  -- post_nonce = 0
  refine hdecE hH (G := fun v => v = .val (.word (BitVec.ofNat 64 0))) (hfr _ (by simp [ubNames])) ?_ ?_
  · intro Γ s' v hP hv
    rw [ev_cw] at hv
    exact (Option.some.inj hv).symm
  intro vn hvn
  subst hvn
  have hS4 := hS3.set (n := nm "post_nonce") (by simp [ubNames]) (.val (.word (BitVec.ofNat 64 0)))
  -- post_ch
  refine hdecU hH (by simp (config := {decide := true}) [Env.set]; exact hfr _ (by simp [ubNames]))
    (hfr _ (by simp [ubNames])) ?_
  refine ub_post Ent hF hS4 (b := b) (IDX := IDX) (A := BitVec.ofNat 64 0) (B := BitVec.ofNat 64 0)
    (C := BitVec.ofNat 64 0) (D := BitVec.ofNat 64 0) (N := BitVec.ofNat 64 0) ?_ ?_ ?_ ?_ ?_ (fun Γ h => (hk Γ h).1)
  · simp (config := {decide := true}) [Env.set]
  · simp (config := {decide := true}) [Env.set, hidx]
  · simp (config := {decide := true}) [Env.set]
  · simp (config := {decide := true}) [Env.set]
  · simp (config := {decide := true}) [Env.set]; exact hfr _ (by simp [ubNames])

end ub2

end InitECandidate.Solver.MemSafe.Bal
