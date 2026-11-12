import InitECandidate.Solver.MemSafe.Wg.Gp7

/-!
# Wg: `process_general_purpose_requests`, the inner loop body and the loop
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

theorem enExt_setc {A B : Env} (h : EnExt A B) (y : MlS) (v : ValueHOL 64) : EnExt (A.set y v) (B.set y v) := by
  intro x w hx
  by_cases hxy : x = y
  · subst hxy; simpa [Env.set] using hx
  · rw [env_set_ne _ _ hxy] at hx ⊢
    exact h x w hx

theorem enExt_trans {A B C : Env} (h1 : EnExt A B) (h2 : EnExt B C) : EnExt A C := fun x v hx => h2 x v (h1 x v hx)

theorem enExt_dep2 {E0 : Env} {a b : MlS} (ha1 : a ≠ nm "dep") (ha2 : a ≠ nm "dep_n") (ha3 : a ≠ nm "dep_cap")
    (hb1 : b ≠ nm "dep") (hb2 : b ≠ nm "dep_n") (hb3 : b ≠ nm "dep_cap") (va vb : ValueHOL 64) (dep dn dc : BitVec 64) :
    EnExt (EnDep ((E0.set a va).set b vb) dep dn dc) (((EnDep E0 dep dn dc).set a va).set b vb) :=
  enExt_trans (enExt_depset hb1 hb2 hb3 vb dep dn dc) (enExt_setc (enExt_depset ha1 ha2 ha3 va dep dn dc) b vb)

theorem enExt_jinc {En_in : Env} (jv : BitVec 64) (dep dn dc : BitVec 64) :
    EnExt (EnDep (EnC En_in (nm "j") (jv + BitVec.ofNat 64 1)) dep dn dc)
      ((EnDep (EnC En_in (nm "j") jv) dep dn dc).set (nm "j") (.val (.word (jv + BitVec.ofNat 64 1)))) := by
  intro x v hx
  rw [envDep_eq] at hx
  by_cases h1 : x = nm "dep_cap"
  · subst h1; simp at hx; simp (config := { decide := true }) [Env.set, envDep_eq, hx]
  · by_cases h2 : x = nm "dep_n"
    · subst h2; simp [h1] at hx; simp (config := { decide := true }) [Env.set, envDep_eq, hx]
    · by_cases h3 : x = nm "dep"
      · subst h3; simp [h1, h2] at hx; simp (config := { decide := true }) [Env.set, envDep_eq, hx]
      · by_cases h4 : x = nm "j"
        · subst h4; simp [h1, h2, h3, EnC, Env.set] at hx ⊢; exact hx
        · simp [h1, h2, h3, EnC, Env.set, h4] at hx
          simp [h1, h2, h3, EnC, Env.set, h4, envDep_eq, hx]

section g8
variable {E : EbE σ} {En_in : Env} {S : FS}

theorem gp_body (jv : BitVec 64) {dep dn dc : BitVec 64} {Nd : Nat} (hP : DepP dn dc Nd)
    (hnj : En_in (nm "j") = none) (hnlog : En_in (nm "log") = none) (hnisdep : En_in (nm "isdep") = none)
    (hnsig : En_in (nm "sig") = none) (hnd : En_in (nm "nd") = none) (hT : Tidy zGpr S) :
    Hoare σ guestCtx (PA E (EnDep (EnC En_in (nm "j") jv) dep dn dc) (DepS S dep Nd)) gprS15
      (fun r t => r = none ∧ DepI E (EnC En_in (nm "j") (jv + BitVec.ofNat 64 1)) S t) := by
  have hE0 : ∀ y : MlS, y ≠ nm "j" → EnC En_in (nm "j") jv y = En_in y := fun y hy => by simp [EnC, Env.set, hy]
  have hE1 : ∀ y : MlS, y ≠ nm "j" → EnC En_in (nm "j") (jv + BitVec.ofNat 64 1) y = En_in y := fun y hy => by
    simp [EnC, Env.set, hy]
  have hlog : EnC En_in (nm "j") (jv + BitVec.ofNat 64 1) (nm "log") = none := by rw [hE1 _ (by decide)]; exact hnlog
  have hlog0 : EnC En_in (nm "j") jv (nm "log") = none := by rw [hE0 _ (by decide)]; exact hnlog
  have hisdep0 : EnC En_in (nm "j") jv (nm "isdep") = none := by rw [hE0 _ (by decide)]; exact hnisdep
  have hisdep1 : EnC En_in (nm "j") (jv + BitVec.ofNat 64 1) (nm "isdep") = none := by rw [hE1 _ (by decide)]; exact hnisdep
  have hnsig0 : EnC En_in (nm "j") jv (nm "sig") = none := by rw [hE0 _ (by decide)]; exact hnsig
  have hnd0 : EnC En_in (nm "j") jv (nm "nd") = none := by rw [hE0 _ (by decide)]; exact hnd
  unfold gprS15
  refine hdec_ld (resIns_depI hlog (by decide) (by decide) (by decide)) (fun wl => ?_)
  unfold gprS16
  refine hdec_tab1 (Z := zGpr) (resIns_depI hisdep1 (by decide) (by decide) (by decide)) tab_memeq rfl (by decide)
    (by simp) (by simp) (tidy_add_fbuf hT dep Nd) zGpr_tab ?_
  intro wi
  unfold gprS17
  refine hseqN (P1 := DepI E (EnC En_in (nm "j") jv) S) ?_ ?_
  · refine hn_pre (gp_s18 (En0 := EnC En_in (nm "j") jv)
      (Ecur := ((EnC En_in (nm "j") jv).set (nm "log") (.val (.word wl))).set (nm "isdep") (.val (.word wi)))
      (dep := dep) hP hnd0 hnsig0 hT (enExt_set (enExt_set (enExt_refl _) hlog0 _) hisdep0 _)) ?_
    intro t _ ht
    exact pa_enExt ht (enExt_dep2 (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) _ _ dep dn dc)
  · intro s hs ⟨dep', dn', dc', Nd', hP', hp⟩ ht
    have hjget : (EnDep (EnC En_in (nm "j") jv) dep' dn' dc') (nm "j") = some (.val (.word jv)) := by
      rw [envDep_eq]; simp (config := { decide := true }) [EnC, Env.set]
    refine (hn_post (hassignT (n := nm "j") (w' := jv + BitVec.ofNat 64 1) ⟨_, hjget⟩
      (fun s hs v hv => evI_add (evI_lv_pa hs hjget) (evI_cw s 1) v hv)) ?_) s hs hp ht
    intro t _ hh
    exact ⟨dep', dn', dc', Nd', hP', pa_enExt hh (enExt_jinc jv dep' dn' dc')⟩

end g8

end InitECandidate.Solver.MemSafe.Wg
