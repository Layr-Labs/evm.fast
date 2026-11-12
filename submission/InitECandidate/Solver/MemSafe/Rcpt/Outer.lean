import InitECandidate.Solver.MemSafe.Rcpt.After

set_option autoImplicit false

/-!
# `encode_logs`: one iteration of the outer loop
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Rcpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type} {X : Ctx 64}

theorem jnext_res {D Lg : BitVec 64} {M : Mem} {i : Nat} {m : Locals} {x : MlS}
    {o : Option (ValueHOL 64)} (h : JNext D Lg M i m) (hx1 : dN ≠ x) (hx2 : logsN ≠ x)
    (hx3 : nN ≠ x) (hx4 : Aw.pN ≠ x) (hx5 : qN ≠ x) (hx6 : iN ≠ x) :
    JNext D Lg M i (m.resVarEq (x, o)) := by
  obtain ⟨Q', h1, h2, h3, h4, h5, h6, h7, h8, h9⟩ := h
  exact ⟨Q', lb_res h1 hx1, lb_res h2 hx2, lw_res h3 hx3, lb_res h4 hx4, lw_res h5 hx5,
    lw_res h6 hx6, h7, h8, h9⟩

theorem topics_part (hC : X.code.lookup = guestCode) (hA : AlignedDom X) {M : Mem}
    {D Lg : BitVec 64} (hEnv : Env M D Lg) {s0 : State σ} (hM : s0.memory = M) (i Q : Nat)
    {Ret : ValueHOL 64 → Prop} :
    HoareG σ X (LPre (Overlap D.toNat (9 + Sk M Lg (lgN M Lg))) s0 (J3 D Lg M i Q)) topicsPart
      (LZ (Overlap D.toNat (9 + Sk M Lg (lgN M Lg))) s0 (JNext D Lg M i) Ret) := by
  have hE := hEnv.hE
  have hhe2 : heapEnd < 2 ^ 40 := by decide
  unfold topicsPart
  -- ts = r
  refine hoareG_decZ' (L' := fun _ m' => JNext D Lg M i m') ?_
    (fun m m' _ h => jnext_res h (by decide) (by decide) (by decide) (by decide) (by decide) (by decide))
  intro s hs hpre v hv hsh
  rw [ev_lwn hpre.1.2.2.1] at hv
  cases hv
  refine hoareG_preZ (L' := fun m => J3 D Lg M i Q m ∧ LW m tsN (Q + 30)) ?_ (fun m hm => by
    subst hm
    refine ⟨?_, lw_set⟩
    have hJ := hpre.1
    simp (disch := decide) only [J3, JO, LB, LW, lookup_update_ne] at hJ ⊢
    exact hJ)
  -- t = r + 9
  refine hoareG_decZ' (L' := fun _ m' => JNext D Lg M i m') ?_
    (fun m m' _ h => jnext_res h (by decide) (by decide) (by decide) (by decide) (by decide) (by decide))
  intro s1 hs1 hpre1 v1 hv1 hsh1
  rw [ev_add2 (ev_lwn hpre1.1.1.2.2.1) (ev_cw _ 9)] at hv1
  cases hv1
  refine hoareG_preZ (L' := fun m => (J3 D Lg M i Q m ∧ LW m tsN (Q + 30)) ∧ LW m tN (Q + 39)) ?_
    (fun m hm => by
      subst hm
      refine ⟨⟨?_, lw_keep hpre1.1.2 (by decide)⟩, ?_⟩
      · have hJ := hpre1.1.1
        simp (disch := decide) only [J3, JO, LB, LW, lookup_update_ne] at hJ ⊢
        exact hJ
      · unfold LW
        rw [lookup_update_self, ofNat_add_ofNat'])
  -- nt = lds (log + 16)
  refine hoareG_decZ' (L' := fun _ m' => JNext D Lg M i m') ?_
    (fun m m' _ h => jnext_res h (by decide) (by decide) (by decide) (by decide) (by decide) (by decide))
  intro s2 hs2 hpre2 v2 hv2 hsh2
  have hmo : ModifiesOnly (Overlap D.toNat (9 + Sk M Lg (lgN M Lg))) M s2.memory := hM ▸ hpre2.2.2
  have hi := hpre2.1.1.1.2.2.2
  have hv2' := ev_ldk hmo hpre2.1.1.1.2.1 (env_rec hEnv hi (Or.inr (Or.inr (Or.inl rfl)))) hv2
  rw [rec_nt] at hv2'
  cases hv2'
  refine hoareG_preZ (L' := fun m => ((J3 D Lg M i Q m ∧ LW m tsN (Q + 30)) ∧ LW m tN (Q + 39)) ∧
      LW m ntN (lgNt M Lg i)) ?_ (fun m hm => by
    subst hm
    refine ⟨⟨⟨?_, lw_keep hpre2.1.1.2 (by decide)⟩, lw_keep hpre2.1.2 (by decide)⟩, lw_set⟩
    have hJ := hpre2.1.1.1
    simp (disch := decide) only [J3, JO, LB, LW, lookup_update_ne] at hJ ⊢
    exact hJ)
  -- j = 0
  refine hoareG_decZ' (L' := fun _ m' => JNext D Lg M i m') ?_
    (fun m m' _ h => jnext_res h (by decide) (by decide) (by decide) (by decide) (by decide) (by decide))
  intro s3 hs3 hpre3 v3 hv3 hsh3
  rw [ev_cw] at hv3
  cases hv3
  refine hoareG_preZ (L' := fun m => JI D Lg M i Q 0 m) ?_ (fun m hm => by
    subst hm
    obtain ⟨⟨⟨hJ3, hts⟩, ht⟩, hnt⟩ := hpre3.1
    refine ⟨?_, lw_keep hts (by decide), ?_, lw_keep hnt (by decide), lw_set, Nat.zero_le _⟩
    · simp (disch := decide) only [J3, JO, LB, LW, lookup_update_ne] at hJ3 ⊢
      exact hJ3
    · have := lw_keep (v := .val (.word (BitVec.ofNat 64 0))) ht (show tN ≠ jN by decide)
      simpa [LW] using this)
  refine hoareG_seqZ (L2 := JI D Lg M i Q (lgNt M Lg i)) ?_ ?_
  · refine hoareG_preZ (L' := fun m => ∃ j, JI D Lg M i Q j m) ?_ (fun m hm => ⟨0, hm⟩)
    exact topic_loop hC hA hEnv i Q
  · exact after_topics hC hA hEnv hM i Q

theorem ofNat_mul8' (i : Nat) : BitVec.ofNat 64 i * BitVec.ofNat 64 8 = BitVec.ofNat 64 (8 * i) := by
  rw [← BitVec.ofNat_mul, Nat.mul_comm]

theorem ev_arr {M : Mem} {D Lg : BitVec 64} (hEnv : Env M D Lg) {s : State σ} {i : Nat}
    (hmo : ModifiesOnly (Overlap D.toNat (9 + Sk M Lg (lgN M Lg))) M s.memory)
    (hp : LB s.locals Aw.pN (lgP M Lg)) (hiL : LW s.locals iN i) (hi : i < lgN M Lg)
    {v : ValueHOL 64}
    (hv : ev s (.load .one (.op .add [lv Aw.pN, .panop .mul [lv iN, cw 8]])) = some v) :
    v = .val (.word (lgRec M Lg i)) := by
  obtain ⟨w, hw, -, rfl⟩ := ev_load_one hv
  rw [ev_add2 (ev_lb hp) (ev_mul2 (ev_lwn hiL) (ev_cw _ 8))] at hw
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
  subst hw
  rw [ofNat_mul8']
  have hq := env_arr hEnv hi
  unfold lgArr at hq
  rw [mem_prot hmo hq]
  cases hM : M (lgP M Lg + BitVec.ofNat 64 (8 * i)) with
  | word w => simp [lgRec, lgArr, rd, hM]

theorem hdr20' : hdrLen 20 + 20 = 21 := by decide

theorem outer_body (hC : X.code.lookup = guestCode) (hA : AlignedDom X) {M : Mem}
    {D Lg : BitVec 64} (hEnv : Env M D Lg) {s0 : State σ} (hM : s0.memory = M) (i Q : Nat)
    {Ret : ValueHOL 64 → Prop} :
    HoareG σ X (LPre (Overlap D.toNat (9 + Sk M Lg (lgN M Lg))) s0
      (fun m => JO D Lg M i Q m ∧ i < lgN M Lg)) outerBody
      (LZ (Overlap D.toNat (9 + Sk M Lg (lgN M Lg))) s0 (JNext D Lg M i) Ret) := by
  have hE := hEnv.hE
  have hhe : heapEnd + 1000 < scratchEnd := heapEnd_lt
  have hhe2 : heapEnd < 2 ^ 40 := by decide
  unfold outerBody
  -- log
  refine hoareG_decZ' (L' := fun _ m' => JNext D Lg M i m') ?_
    (fun m m' _ h => jnext_res h (by decide) (by decide) (by decide) (by decide) (by decide) (by decide))
  intro s hs hpre v hv hsh
  have hmo : ModifiesOnly (Overlap D.toNat (9 + Sk M Lg (lgN M Lg))) M s.memory := hM ▸ hpre.2.2
  have hv' := ev_arr hEnv hmo hpre.1.1.2.2.2.1 hpre.1.1.2.2.2.2.2.1 hpre.1.2 hv
  subst hv'
  refine hoareG_preZ (L' := fun m => (JO D Lg M i Q m ∧ i < lgN M Lg) ∧ LB m logN (lgRec M Lg i)) ?_
    (fun m hm => by
      subst hm
      refine ⟨⟨?_, hpre.1.2⟩, lb_set⟩
      have hJ := hpre.1.1
      simp (disch := decide) only [JO, LB, LW, lookup_update_ne] at hJ ⊢
      exact hJ)
  -- r = q + 9
  refine hoareG_decZ' (L' := fun _ m' => JNext D Lg M i m') ?_
    (fun m m' _ h => jnext_res h (by decide) (by decide) (by decide) (by decide) (by decide) (by decide))
  intro s1 hs1 hpre1 v1 hv1 hsh1
  rw [ev_add2 (ev_lwn hpre1.1.1.1.2.2.2.2.1) (ev_cw _ 9)] at hv1
  cases hv1
  refine hoareG_preZ (L' := fun m => ((JO D Lg M i Q m ∧ i < lgN M Lg) ∧ LB m logN (lgRec M Lg i)) ∧
      LW m rN (Q + 9)) ?_ (fun m hm => by
    subst hm
    refine ⟨⟨?_, lb_keep hpre1.1.2 (by decide)⟩, ?_⟩
    · have hJ := hpre1.1.1
      simp (disch := decide) only [JO, LB, LW, lookup_update_ne] at hJ ⊢
      exact hJ
    · unfold LW
      rw [lookup_update_self, ofNat_add_ofNat'])
  -- w = rlp_encode_bytes(r, lds (log + 0), 20)
  refine hoareG_decCallFootZ (footRet_rlp_encode_bytes hC hA) (L' := fun _ m' => JNext D Lg M i m') ?_ ?_
    (fun m m' _ h => jnext_res h (by decide) (by decide) (by decide) (by decide) (by decide) (by decide))
  · intro s2 hs2 hpre2 vs hvs
    obtain ⟨v1, v2, v3, rfl, h1, h2, h3⟩ := evs_three hvs
    rw [ev_lwn hpre2.1.2] at h1
    rw [ev_cw] at h3
    cases h1
    cases h3
    obtain ⟨⟨⟨⟨_, _, _, _, _, _, hiN, hD, hQ⟩, hi⟩, hlog⟩, hr⟩ := hpre2.1
    have hb := iter_bound hi hQ
    have hnd := nd_le hEnv hi
    have h20 : (BitVec.ofNat 64 20).toNat = 20 := toNat_ofNat_lt (by omega)
    refine ⟨⟨_, _, rfl, rfl, ?_⟩, fun a ⟨D2, N2, hD2, hN2, h⟩ => ?_⟩
    · rw [toNat_ofNat_lt (by omega), h20, hdr20]
      omega
    · simp only [argW, wordOf, List.getElem?_cons_zero, List.getElem?_cons_succ, Option.some.injEq] at hD2 hN2
      subst hD2
      subst hN2
      rw [toNat_ofNat_lt (by omega), h20, hdr20] at h
      exact ovl_sub h (by omega) (by omega)
  · intro s2 vs v2 hs2 hL hvs hRet hsh
    obtain ⟨v1, v3, v4, rfl, h1, h2, h3⟩ := evs_three hvs
    obtain ⟨k, hk, k1, k2, k3⟩ := hRet (BitVec.ofNat 64 20) (by
      rw [ev_cw] at h3
      cases h3
      simp [argW, wordOf])
    have h20 : (BitVec.ofNat 64 20).toNat = 20 := toNat_ofNat_lt (by omega)
    rw [h20] at k3
    have hk21 : k = 21 := by have := k3 (by omega); rw [hdr20] at this; omega
    subst hk21
    subst hk
    refine hoareG_seqZ (L2 := J3 D Lg M i Q) ?_ (topics_part hC hA hEnv hM i Q)
    refine hoareG_assignZ fun t ht hL' v hv => ?_
    obtain ⟨⟨⟨hJO, hi⟩, hlog⟩, hr⟩ := hL
    have hLt : t.locals = s2.locals.update (wN, .val (.word (BitVec.ofNat 64 21))) := hL'
    have hr' : LW t.locals rN (Q + 9) := by rw [hLt]; exact lw_keep hr (by decide)
    have hw' : LW t.locals wN 21 := by rw [hLt]; exact lw_set
    rw [ev_add2 (ev_lwn hr') (ev_lwn hw')] at hv
    cases hv
    rw [hLt]
    refine ⟨?_, ?_, ?_, hi⟩
    · simp (disch := decide) only [JO, LB, LW, lookup_update_ne] at hJO ⊢
      exact hJO
    · exact lb_keep (lb_keep hlog (by decide)) (by decide)
    · unfold LW
      rw [lookup_update_self, ofNat_add_ofNat']

end InitECandidate.Solver.MemSafe.Rcpt
