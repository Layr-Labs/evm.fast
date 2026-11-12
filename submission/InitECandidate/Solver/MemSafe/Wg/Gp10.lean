import InitECandidate.Solver.MemSafe.Wg.Gp9

/-!
# Wg: `process_general_purpose_requests`, the outer loop
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Wg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

theorem enExt_dep4 {E0 : Env} {a b c d : MlS} (ha : a ≠ nm "dep" ∧ a ≠ nm "dep_n" ∧ a ≠ nm "dep_cap")
    (hb : b ≠ nm "dep" ∧ b ≠ nm "dep_n" ∧ b ≠ nm "dep_cap") (hc : c ≠ nm "dep" ∧ c ≠ nm "dep_n" ∧ c ≠ nm "dep_cap")
    (hd : d ≠ nm "dep" ∧ d ≠ nm "dep_n" ∧ d ≠ nm "dep_cap") (va vb vc vd : ValueHOL 64) (dep dn dc : BitVec 64) :
    EnExt (EnDep ((((E0.set a va).set b vb).set c vc).set d vd) dep dn dc)
      ((((((EnDep E0 dep dn dc).set a va).set b vb).set c vc).set d vd)) := by
  have h2 := enExt_dep2 (E0 := E0) ha.1 ha.2.1 ha.2.2 hb.1 hb.2.1 hb.2.2 va vb dep dn dc
  have h3 : EnExt (EnDep (((E0.set a va).set b vb).set c vc) dep dn dc) ((((EnDep E0 dep dn dc).set a va).set b vb).set c vc) :=
    enExt_trans (enExt_depset hc.1 hc.2.1 hc.2.2 vc dep dn dc) (enExt_setc h2 c vc)
  exact enExt_trans (enExt_depset hd.1 hd.2.1 hd.2.2 vd dep dn dc) (enExt_setc h3 d vd)

section g10
variable {E : EbE σ} {En_out : Env} {S : FS}

theorem gp_obody_fixed (iv : BitVec 64) {dep dn dc : BitVec 64} {Nd : Nat} (hP : DepP dn dc Nd)
    (hnj : En_out (nm "j") = none) (hnlog : En_out (nm "log") = none) (hnisdep : En_out (nm "isdep") = none)
    (hnsig : En_out (nm "sig") = none) (hnd : En_out (nm "nd") = none) (hnlogs : En_out (nm "logs") = none)
    (hnnl : En_out (nm "nl") = none) (hnlp : En_out (nm "lp") = none) (hT : Tidy zGpr S) :
    Hoare σ guestCtx (PA E (EnDep (EnC En_out (nm "i") iv) dep dn dc) (DepS S dep Nd)) gprS9
      (fun r t => r = none ∧ DepI E (EnC En_out (nm "i") (iv + BitVec.ofNat 64 1)) S t) := by
  have hE1 : ∀ y : MlS, y ≠ nm "i" → EnC En_out (nm "i") (iv + BitVec.ofNat 64 1) y = En_out y := fun y hy => by
    simp [EnC, Env.set, hy]
  have hq : ∀ y : MlS, En_out y = none → y ≠ nm "i" → y ≠ nm "dep" → y ≠ nm "dep_n" → y ≠ nm "dep_cap" →
      ResIns y (fun r (t : State σ) => r = none ∧ DepI E (EnC En_out (nm "i") (iv + BitVec.ofNat 64 1)) S t) :=
    fun y hy h1 h2 h3 h4 => resIns_depI (by rw [hE1 y h1]; exact hy) h2 h3 h4
  unfold gprS9
  refine hdec_ld (hq _ hnlogs (by decide) (by decide) (by decide) (by decide)) (fun wlogs => ?_)
  unfold gprS10
  refine hdec_ld (hq _ hnnl (by decide) (by decide) (by decide) (by decide)) (fun wnl => ?_)
  unfold gprS11
  refine hdec_ld (hq _ hnlp (by decide) (by decide) (by decide) (by decide)) (fun wlp => ?_)
  unfold gprS12
  refine hdecT (w := BitVec.ofNat 64 0) (hq _ hnj (by decide) (by decide) (by decide) (by decide)) (fun s hs v hv => evI_cw s 0 v hv) ?_
  unfold gprS13
  set Ein : Env := (((EnC En_out (nm "i") iv).set (nm "logs") (.val (.word wlogs))).set (nm "nl") (.val (.word wnl))).set
    (nm "lp") (.val (.word wlp)) with hEin
  have hEin_j : Ein (nm "j") = none := by simp (config := { decide := true }) [hEin, EnC, Env.set, hnj]
  have hEin_log : Ein (nm "log") = none := by simp (config := { decide := true }) [hEin, EnC, Env.set, hnlog]
  have hEin_isdep : Ein (nm "isdep") = none := by simp (config := { decide := true }) [hEin, EnC, Env.set, hnisdep]
  have hEin_sig : Ein (nm "sig") = none := by simp (config := { decide := true }) [hEin, EnC, Env.set, hnsig]
  have hEin_nd : Ein (nm "nd") = none := by simp (config := { decide := true }) [hEin, EnC, Env.set, hnd]
  have hEin_nl : Ein (nm "nl") = some (.val (.word wnl)) := by simp (config := { decide := true }) [hEin, EnC, Env.set]
  refine hseqN (P1 := fun t => ∃ jv, DepI E (EnC Ein (nm "j") jv) S t) ?_ ?_
  · refine hoare_pre (gp_inner_loop hEin_j hEin_log hEin_isdep hEin_sig hEin_nd hEin_nl hT) ?_
    intro t _ ht
    refine ⟨dep, dn, dc, Nd, hP, pa_enExt ht ?_⟩
    exact enExt_dep4 (E0 := EnC En_out (nm "i") iv) (a := nm "logs") (b := nm "nl") (c := nm "lp") (d := nm "j")
      ⟨by decide, by decide, by decide⟩ ⟨by decide, by decide, by decide⟩ ⟨by decide, by decide, by decide⟩
      ⟨by decide, by decide, by decide⟩ _ _ _ _ dep dn dc
  · intro s hs ⟨jv, dep', dn', dc', Nd', hP', hp⟩ ht
    have higet : (EnDep (EnC Ein (nm "j") jv) dep' dn' dc') (nm "i") = some (.val (.word iv)) := by
      rw [envDep_eq]; simp (config := { decide := true }) [hEin, EnC, Env.set]
    refine (hn_post (hassignT (n := nm "i") (w' := iv + BitVec.ofNat 64 1) ⟨_, higet⟩
      (fun s hs v hv => evI_add (evI_lv_pa hs higet) (evI_cw s 1) v hv)) ?_) s hs hp ht
    intro t _ hh
    refine ⟨dep', dn', dc', Nd', hP', pa_enExt hh ?_⟩
    refine enExt_cinc (by decide) (by decide) (by decide) ?_ dep' dn' dc'
    refine enExt_set (enExt_set (enExt_set (enExt_set (enExt_refl _) ?_ _) ?_ _) ?_ _) ?_ _
    all_goals simp (config := { decide := true }) [EnC, Env.set, hnj, hnnl, hnlp, hnlogs, hEin]

theorem gp_obody (iv : BitVec 64)
    (hnj : En_out (nm "j") = none) (hnlog : En_out (nm "log") = none) (hnisdep : En_out (nm "isdep") = none)
    (hnsig : En_out (nm "sig") = none) (hnd : En_out (nm "nd") = none) (hnlogs : En_out (nm "logs") = none)
    (hnnl : En_out (nm "nl") = none) (hnlp : En_out (nm "lp") = none) (hT : Tidy zGpr S) :
    Hoare σ guestCtx (DepI E (EnC En_out (nm "i") iv) S) gprS9
      (fun r t => r = none ∧ DepI E (EnC En_out (nm "i") (iv + BitVec.ofNat 64 1)) S t) := by
  intro s hs ⟨dep, dn, dc, Nd, hP, hp⟩ ht
  exact gp_obody_fixed iv hP hnj hnlog hnisdep hnsig hnd hnlogs hnnl hnlp hT s hs hp ht

/-- `while i < nr { … }`. -/
theorem gp_outer_loop {nr : BitVec 64} (hnj : En_out (nm "j") = none) (hnlog : En_out (nm "log") = none)
    (hnisdep : En_out (nm "isdep") = none) (hnsig : En_out (nm "sig") = none) (hnd : En_out (nm "nd") = none)
    (hnlogs : En_out (nm "logs") = none) (hnnl : En_out (nm "nl") = none) (hnlp : En_out (nm "lp") = none)
    (hnr : En_out (nm "nr") = some (.val (.word nr))) (hT : Tidy zGpr S) :
    Hoare σ guestCtx (DepI E (EnC En_out (nm "i") (BitVec.ofNat 64 0)) S) gprS8
      (fun r t => r = none ∧ ∃ iv, DepI E (EnC En_out (nm "i") iv) S t) := by
  unfold gprS8
  refine hoare_cnt2 (P := fun iv => DepI E (EnC En_out (nm "i") iv) S) (ci := nm "i") (cn := nm "nr") (N := nr) ?_ ?_ ?_
  · intro iv s ⟨dep, dn, dc, Nd, hP, hp⟩
    exact ⟨dep, dn, dc, Nd, hP, pa_decClock hp⟩
  · intro iv s ⟨dep, dn, dc, Nd, hP, hp⟩
    refine ⟨hp.2 _ _ ?_, hp.2 _ _ ?_⟩
    · rw [envDep_eq]; simp (config := { decide := true }) [EnC, Env.set]
    · rw [envDep_eq]
      simp (config := { decide := true }) [EnC, Env.set, hnr]
  · intro iv hlt hN
    exact gp_obody iv hnj hnlog hnisdep hnsig hnd hnlogs hnnl hnlp hT

end g10

end InitECandidate.Solver.MemSafe.Wg
