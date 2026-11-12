import InitECandidate.Solver.Spec.Inv.HtabNew

/-!
# `htab_new` for capacities up to `2^32`

`funSpec_htab_newW`: `funSpec_htab_new` with `cap ≤ 2^32` in place of `cap ≤ 2^20` (the bound only feeds the overflow estimate
`(cap + 1) * nS < 2^64`; with `nS ≤ 2^17` it holds up to `2^32`). A copy of `HtabNew.lean`'s proof with the bound changed; the
definitions and the bound-free lemmas are reused. Needed by `nodedb_build` (F1b): witness lists of up to `2^24` slices.
-/

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

section main
variable (s0 : PanSemStateFiniteExact 64 σ) (KL CP H0 : BitVec 64)


variable (hC : X.code.lookup = guestCode) (hKL : KL.toNat ≤ 2 ^ 16) (hCP : CP.toNat ≤ 2 ^ 32)
include hC hKL hCP

theorem new_sizesW : ((nC CP + BitVec.ofNat 64 1) * nS KL).toNat = ((nC CP).toNat + 1) * (nS KL).toNat ∧
    ((nC CP + BitVec.ofNat 64 1) * BitVec.ofNat 64 32).toNat = ((nC CP).toNat + 1) * 32 ∧
    ((nC CP + BitVec.ofNat 64 1) * BitVec.ofNat 64 8).toNat = ((nC CP).toNat + 1) * 8 := by
  have hs := nS_toNat KL hKL
  have hc := nC_toNat CP
  have hc1 : (nC CP + BitVec.ofNat 64 1).toNat = (nC CP).toNat + 1 :=
    toNat_add_lt (by rw [hc]; simp; split <;> omega)
  have hcb : (nC CP).toNat ≤ 2 ^ 32 := by rw [hc]; split <;> omega
  have hsb : (nS KL).toNat ≤ 2 ^ 17 := by rw [hs]; omega
  refine ⟨?_, ?_, ?_⟩
  · rw [toNat_mul_lt, hc1]
    rw [hc1]
    calc ((nC CP).toNat + 1) * (nS KL).toNat ≤ (2 ^ 32 + 1) * 2 ^ 17 :=
          Nat.mul_le_mul (by omega) hsb
      _ < 2 ^ 64 := by decide
  · rw [toNat_mul_lt, hc1] <;> simp [hc1] <;> omega
  · rw [toNat_mul_lt, hc1] <;> simp [hc1] <;> omega

end main

/-! ## The Hoare proof -/

section proof
variable (s0 : PanSemStateFiniteExact 64 σ) (KL CP H0 : BitVec 64)


variable (hC : X.code.lookup = guestCode) (hKL : KL.toNat ≤ 2 ^ 16) (hCP : CP.toNat ≤ 2 ^ 32)
include hC hKL hCP

theorem new_allocW {M : Mem} {Hp : BitVec 64} {x : MlS} {sz : ExpHOL 64} {Z : BitVec 64}
    {k : ProgHOL 64} {E E' : PanSemStateFiniteExact 64 σ → Prop}
    {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop}
    (hQ : ∀ r t l, Q r t → Q r { t with locals := l })
    (hHp : Hp.toNat ≤ heapEnd) (h8 : Hp.toNat % 8 = 0) (hZ8 : Z.toNat % 8 = 0)
    (hsz : ∀ t, NL KL CP H0 t → E t → ev t sz = some (.val (.word Z)))
    (hE' : ∀ t (st : PanSemStateFiniteExact 64 σ), NL KL CP H0 t → E t →
      E' (setVarHOLFinite x (.val (.word Hp)) { st with locals := t.locals }))
    (hnx : x ≠ nm "t" ∧ x ≠ nm "key_len" ∧ x ≠ nm "cap" ∧ x ≠ nm "stride" ∧ x ≠ nm "ncap")
    (hk : Hp.toNat + Z.toNat ≤ heapEnd → Hoare σ X (NP s0 KL CP H0 M (Hp + Z) E' none) k Q) :
    Hoare σ X (NP s0 KL CP H0 M Hp E none) (.decCall x .one (nm "alloc") [sz] k) Q := by
  refine hoare_decCall_alloc hC (fun u h =>
    ⟨Hp, Z, h.2.1.2.1, hHp, h8, hsz u h.2.2.1 h.2.2.2, hZ8⟩) ?_
  rintro u _ ⟨-, ⟨hm, hhp, hgl, hbe, hd⟩, hl, hxu⟩ P0 Nz st hP0 hszu hsm hshp hsgl hsbe hsd hsum
  rw [hhp] at hP0
  have eP := (word_inj hP0).symm
  rw [hsz u hl hxu] at hszu
  have eZ := (word_inj hszu).symm
  subst eP eZ
  refine hoare_post (hoare_pre (hk hsum) ?_) fun r t _ _ h => hQ _ _ _ h
  rintro t _ rfl
  obtain ⟨n1, n2, n3, n4, n5⟩ := hnx
  refine ⟨rfl, ⟨by show st.memory = _; rw [hsm, hm], by show st.globals.lookup hpN = _; exact hshp,
    fun g hg => by show st.globals.lookup g = _; rw [hsgl g hg, hgl g hg], by show st.be = _; rw [hsbe, hbe],
    by show st.memaddrs = _; rw [hsd, hd]⟩, ?_, hE' u st hl hxu⟩
  obtain ⟨l1, l2, l3, l4, l5⟩ := hl
  refine ⟨?_, ?_, ?_, ?_, ?_⟩ <;> unfold DLk at * <;> rw [lk_set_ne _ _ (by assumption)] <;>
    assumption

end proof

section body
variable (s0 : PanSemStateFiniteExact 64 σ) (KL CP H0 : BitVec 64)
variable (hC : X.code.lookup = guestCode) (hKL : KL.toNat ≤ 2 ^ 16) (hCP : CP.toNat ≤ 2 ^ 32)
include hC hKL hCP

theorem newBody_hoareW (hk0 : s0.locals.lookup (nm "key_len") = some (.val (.word KL)))
    (hc0 : s0.locals.lookup (nm "cap") = some (.val (.word CP)))
    (hH : s0.globals.lookup hpN = some (.val (.word H0))) (hHle : H0.toNat ≤ heapEnd)
    (hH8 : H0.toNat % 8 = 0) :
    Hoare σ X (fun t => t = s0) newBody
      (fun r t => ∀ v, r = some (.returned v) → NewPost s0 t KL H0 v) := by
  have hhe : heapEnd = 2952790016 := rfl
  obtain ⟨sz1, sz2, sz3⟩ := new_sizesW KL CP hC hKL hCP
  have hS := nS_toNat KL hKL
  have hCn := nC_toNat CP
  have hS8 : (nS KL).toNat % 8 = 0 := by rw [hS]; omega
  have hC2 : 2 ≤ (nC CP).toNat := by rw [hCn]; split <;> omega
  refine hoare_decCall_alloc hC (fun u hu => ⟨H0, BitVec.ofNat 64 88, by rw [hu]; exact hH, hHle, hH8,
    ev_cw _ 88, by decide⟩) ?_
  intro u _ hu P0 Nz st hP0 hsz hsm hshp hsgl hsbe hsd hsum
  subst u
  rw [hH] at hP0
  have e1 := word_inj hP0
  subst e1
  rw [ev_cw] at hsz
  have e2 := word_inj hsz
  subst e2
  have h88 : (H0 + BitVec.ofNat 64 88).toNat = H0.toNat + 88 := toNat_add_lt (by simp; omega)
  have hsum0 : H0.toNat + 88 ≤ heapEnd := by
    have := hsum; simp only [BitVec.toNat_ofNat] at this; omega
  -- `stride`
  refine hoare_dec fun u1 _ hu1 v hv _ => ?_
  have hu1' : u1 = setVarHOLFinite (nm "t") (.val (.word H0)) { st with locals := s0.locals } := hu1
  subst hu1'
  have hklU : DLk (setVarHOLFinite (nm "t") (.val (.word H0)) { st with locals := s0.locals })
      "key_len" KL := by lks
  have hval : ev (setVarHOLFinite (nm "t") (.val (.word H0)) { st with locals := s0.locals })
      (.op .and [.op .add [lv (nm "key_len"), cw 7], .op .sub [cw 0, cw 8]]) =
      some (.val (.word (nS KL))) := by
    rw [ev_op2 (ev_add2 (ev_lv_w hklU) (ev_cw _ 7)) (ev_sub2 (ev_cw _ 0) (ev_cw _ 8))]
    rfl
  rw [hval] at hv
  have e3 := (Option.some.inj hv).symm
  subst e3
  -- `ncap`
  refine hoare_dec fun u2 _ hu2 v2 hv2 _ => ?_
  have hu2' : u2 = setVarHOLFinite (nm "stride") (.val (.word (nS KL)))
      (setVarHOLFinite (nm "t") (.val (.word H0)) { st with locals := s0.locals }) := hu2
  subst hu2'
  have hcU : DLk (setVarHOLFinite (nm "stride") (.val (.word (nS KL)))
      (setVarHOLFinite (nm "t") (.val (.word H0)) { st with locals := s0.locals })) "cap" CP := by lks
  rw [ev_lv_w hcU] at hv2
  have e4 := (Option.some.inj hv2).symm
  subst e4
  have hns : NS s0 s0.memory (H0 + BitVec.ofNat 64 88) (setVarHOLFinite (nm "ncap") (.val (.word CP))
      (setVarHOLFinite (nm "stride") (.val (.word (nS KL)))
        (setVarHOLFinite (nm "t") (.val (.word H0)) { st with locals := s0.locals }))) :=
    ⟨hsm, hshp, hsgl, hsbe, hsd⟩
  refine hoare_seq (R := NP s0 KL CP H0 s0.memory (H0 + BitVec.ofNat 64 88) (fun _ => True)) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_ite ?_ ?_
    · refine hoare_assign fun t _ ⟨ht, w, hw, hw0⟩ v hv _ => ?_
      subst ht
      obtain ⟨a, b, ha, hb, hlt⟩ := cmp_true hw hw0
      have hnc : DLk (setVarHOLFinite (nm "ncap") (.val (.word CP))
          (setVarHOLFinite (nm "stride") (.val (.word (nS KL)))
            (setVarHOLFinite (nm "t") (.val (.word H0)) { st with locals := s0.locals }))) "ncap" CP := by lks
      rw [ev_lv_w hnc] at ha
      rw [ev_cw] at hb
      have ea := word_inj ha
      have eb := word_inj hb
      subst ea eb
      have hlt' := lower_true hlt
      rw [ev_cw] at hv
      have e5 := (Option.some.inj hv).symm
      subst e5
      have hCe : nC CP = BitVec.ofNat 64 2 := by unfold nC; rw [if_pos (by simpa using hlt')]
      refine ⟨rfl, hns, ⟨by lks, by lks, by lks, by lks, ?_⟩, trivial⟩
      unfold DLk; rw [lk_set_self, hCe]
    · refine hoare_skip fun t _ ⟨ht, hw⟩ => ?_
      subst ht
      obtain ⟨a, b, ha, hb, hlt⟩ := cmp_false hw
      have hnc : DLk (setVarHOLFinite (nm "ncap") (.val (.word CP))
          (setVarHOLFinite (nm "stride") (.val (.word (nS KL)))
            (setVarHOLFinite (nm "t") (.val (.word H0)) { st with locals := s0.locals }))) "ncap" CP := by lks
      rw [ev_lv_w hnc] at ha
      rw [ev_cw] at hb
      have ea := word_inj ha
      have eb := word_inj hb
      subst ea eb
      have hge := lower_false hlt
      have hCe : nC CP = CP := by unfold nC; rw [if_neg (by simp at hge; omega)]
      refine ⟨rfl, hns, ⟨by lks, by lks, by lks, by lks, ?_⟩, trivial⟩
      rw [hCe]; exact hnc
  -- the four header stores
  refine hoare_seq (new_store s0 KL CP H0 (k := 0) (fun t hl _ => ev_lv_w hl.2.1) (fun _ _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoare_seq (new_store s0 KL CP H0 (k := 8) (fun t hl _ => ev_lv_w hl.2.2.2.1) (fun _ _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoare_seq (new_store s0 KL CP H0 (k := 16) (fun t hl _ => ev_lv_w hl.2.2.1) (fun _ _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoare_seq (new_store s0 KL CP H0 (k := 24) (fun t _ _ => ev_cw t 0) (fun _ _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  -- the key array
  have hZ1 : ∀ t : PanSemStateFiniteExact 64 σ, NL KL CP H0 t → True → ev t (szE (lv (nm "stride"))) =
      some (.val (.word ((nC CP + BitVec.ofNat 64 1) * nS KL))) :=
    fun t hl _ => ev_mul2 (ev_add2 (ev_lv_w hl.2.2.2.2) (ev_cw t 1)) (ev_lv_w hl.2.2.2.1)
  refine new_allocW s0 KL CP H0 hC hKL hCP (E' := fun t => DLk t "keys" (H0 + BitVec.ofNat 64 88))
    (fun _ _ _ h => h) (by rw [h88]; omega) (by rw [h88]; omega) (by rw [sz1, Nat.mul_mod, hS8]; simp)
    hZ1 (fun t st _ _ => by unfold DLk; exact lk_set_self _ _ _) (by decide) fun hsum1 => ?_
  refine hoare_seq (new_store s0 KL CP H0 (k := 32) (fun t _ hx => ev_lv_w hx) (fun _ _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  -- the node array
  have hK1 : (H0 + BitVec.ofNat 64 88 + (nC CP + BitVec.ofNat 64 1) * nS KL).toNat =
      H0.toNat + 88 + ((nC CP).toNat + 1) * (nS KL).toNat := by
    rw [toNat_add_lt (by rw [h88, sz1]; rw [h88, sz1] at hsum1; omega), h88, sz1]
  refine new_allocW s0 KL CP H0 hC hKL hCP
    (E' := fun t => DLk t "keys" (H0 + BitVec.ofNat 64 88) ∧
      DLk t "nodes" (H0 + BitVec.ofNat 64 88 + (nC CP + BitVec.ofNat 64 1) * nS KL))
    (fun _ _ _ h => h) (by rw [hK1]; rw [h88, sz1] at hsum1; omega)
    (by rw [hK1]; have : ((nC CP).toNat + 1) * (nS KL).toNat % 8 = 0 := by
          rw [Nat.mul_mod, hS8]; simp
        omega)
    (by rw [sz2]; omega) (fun t hl _ => ev_mul2 (ev_add2 (ev_lv_w hl.2.2.2.2) (ev_cw t 1)) (ev_cw t 32))
    (fun t st _ hx => ⟨by unfold DLk at *; rw [lk_set_ne _ _ (by decide)]; exact hx,
      by unfold DLk; exact lk_set_self _ _ _⟩) (by decide) fun hsum2 => ?_
  refine hoare_seq (new_store s0 KL CP H0 (k := 40) (fun t _ hx => ev_lv_w hx.2) (fun _ _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  -- the order array
  have hK2 : (H0 + BitVec.ofNat 64 88 + (nC CP + BitVec.ofNat 64 1) * nS KL +
      (nC CP + BitVec.ofNat 64 1) * BitVec.ofNat 64 32).toNat =
      H0.toNat + 88 + ((nC CP).toNat + 1) * (nS KL).toNat + ((nC CP).toNat + 1) * 32 := by
    rw [toNat_add_lt (by rw [hK1, sz2]; rw [hK1, sz2] at hsum2; omega), hK1, sz2]
  refine new_allocW s0 KL CP H0 hC hKL hCP
    (E' := fun t => (DLk t "keys" (H0 + BitVec.ofNat 64 88) ∧
      DLk t "nodes" (H0 + BitVec.ofNat 64 88 + (nC CP + BitVec.ofNat 64 1) * nS KL)) ∧
      DLk t "order" (H0 + BitVec.ofNat 64 88 + (nC CP + BitVec.ofNat 64 1) * nS KL +
        (nC CP + BitVec.ofNat 64 1) * BitVec.ofNat 64 32))
    (fun _ _ _ h => h) (by rw [hK2]; rw [hK1, sz2] at hsum2; omega)
    (by rw [hK2]; have : ((nC CP).toNat + 1) * (nS KL).toNat % 8 = 0 := by
          rw [Nat.mul_mod, hS8]; simp
        omega)
    (by rw [sz3]; omega) (fun t hl _ => ev_mul2 (ev_add2 (ev_lv_w hl.2.2.2.2) (ev_cw t 1)) (ev_cw t 8))
    (fun t st _ hx => ⟨⟨by unfold DLk at *; rw [lk_set_ne _ _ (by decide)]; exact hx.1,
      by unfold DLk at *; rw [lk_set_ne _ _ (by decide)]; exact hx.2⟩,
      by unfold DLk; exact lk_set_self _ _ _⟩) (by decide) fun hsum3 => ?_
  -- the tail
  refine hoare_seq (new_store s0 KL CP H0 (k := 48) (fun t _ hx => ev_lv_w hx.2) (fun _ _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoare_seq (new_store s0 KL CP H0 (k := 56) (fun t _ _ => ev_cw t 0) (fun _ _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoare_seq (new_store s0 KL CP H0 (k := 64) (fun t _ _ => ev_cw t 1) (fun _ _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoare_seq (new_store s0 KL CP H0 (k := 72) (fun t _ _ => ev_cw t 0) (fun _ _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoare_seq (new_store s0 KL CP H0 (k := 80) (fun t hl _ => ev_lv_w hl.2.2.2.2) (fun _ _ h => h))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoare_return fun t _ ⟨_, ⟨hm, hhp, hgl, hbe, hd⟩, hl, _⟩ v hv => ?_
  rw [ev_lv_w hl.1] at hv
  have e6 := (Option.some.inj hv).symm
  subst e6
  intro v' hv'
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv'
  subst hv'
  have hK3 : (H0 + BitVec.ofNat 64 88 + (nC CP + BitVec.ofNat 64 1) * nS KL +
      (nC CP + BitVec.ofNat 64 1) * BitVec.ofNat 64 32 +
      (nC CP + BitVec.ofNat 64 1) * BitVec.ofNat 64 8).toNat =
      H0.toNat + 88 + ((nC CP).toNat + 1) * (nS KL).toNat + ((nC CP).toNat + 1) * 32 +
        ((nC CP).toNat + 1) * 8 := by
    rw [toNat_add_lt (by rw [hK2, sz3]; rw [hK2, sz3] at hsum3; omega), hK2, sz3]
  have hSC : ((nC CP).toNat + 1) * (nS KL).toNat % 8 = 0 := by rw [Nat.mul_mod, hS8]; simp
  have hsum3' : H0.toNat + 88 + ((nC CP).toNat + 1) * (nS KL).toNat + ((nC CP).toNat + 1) * 32 +
      ((nC CP).toNat + 1) * 8 ≤ heapEnd := by rw [hK2, sz3] at hsum3; omega
  obtain ⟨sep', sh', ex', hcnt', h0', hreg'⟩ := newMem_wf (m := s0.memory) (d := s0.memaddrs)
    (be := s0.be) (T := H0) (KL := KL) (S := nS KL) (CP := CP) (C := nC CP)
    (K := H0 + BitVec.ofNat 64 88) (N := H0 + BitVec.ofNat 64 88 + (nC CP + BitVec.ofNat 64 1) * nS KL)
    (O := H0 + BitVec.ofNat 64 88 + (nC CP + BitVec.ofNat 64 1) * nS KL +
      (nC CP + BitVec.ofNat 64 1) * BitVec.ofNat 64 32)
    (E := H0.toNat + 88 + ((nC CP).toNat + 1) * (nS KL).toNat +
      ((nC CP).toNat + 1) * 32 + ((nC CP).toNat + 1) * 8) hH8 h88
    (by rw [hK1, h88, Nat.mul_comm (nS KL).toNat])
    (by rw [hK2, hK1] <;> omega)
    (by rw [hK2] <;> omega) hsum3' hS8 (by rw [hS]; omega) hC2 (by rw [hS]; omega)
    (by rw [hCn]; split <;> omega)
  have hmod : ∀ a, ¬ InR a H0 (H0.toNat + 88 + ((nC CP).toNat + 1) * (nS KL).toNat +
      ((nC CP).toNat + 1) * 32 + ((nC CP).toNat + 1) * 8 - H0.toNat) →
      newMem s0.memory H0 KL (nS KL) CP (nC CP)
        (H0 + BitVec.ofNat 64 88) (H0 + BitVec.ofNat 64 88 + (nC CP + BitVec.ofNat 64 1) * nS KL)
        (H0 + BitVec.ofNat 64 88 + (nC CP + BitVec.ofNat 64 1) * nS KL +
          (nC CP + BitVec.ofNat 64 1) * BitVec.ofNat 64 32) a = s0.memory a := by
    intro a ha
    refine newMem_out (by omega) fun hin => ha ?_
    unfold InR at hin ⊢; omega
  have hmem : (emptyLocalsHOLFinite t).memory = newMem s0.memory H0 KL (nS KL) CP (nC CP)
      (H0 + BitVec.ofNat 64 88) (H0 + BitVec.ofNat 64 88 + (nC CP + BitVec.ofNat 64 1) * nS KL)
      (H0 + BitVec.ofNat 64 88 + (nC CP + BitVec.ofNat 64 1) * nS KL +
        (nC CP + BitVec.ofNat 64 1) * BitVec.ofNat 64 32) := hm
  have hd' : (emptyLocalsHOLFinite t).memaddrs = s0.memaddrs := hd
  have hbe' : (emptyLocalsHOLFinite t).be = s0.be := hbe
  have hgl' : ∀ g, g ≠ hpN → (emptyLocalsHOLFinite t).globals.lookup g = s0.globals.lookup g := hgl
  have hhp' : (emptyLocalsHOLFinite t).globals.lookup hpN = some (.val (.word
      (H0 + BitVec.ofNat 64 88 + (nC CP + BitVec.ofNat 64 1) * nS KL +
        (nC CP + BitVec.ofNat 64 1) * BitVec.ofNat 64 32 +
        (nC CP + BitVec.ofNat 64 1) * BitVec.ofNat 64 8))) := hhp
  generalize newMem s0.memory H0 KL (nS KL) CP (nC CP)
      (H0 + BitVec.ofNat 64 88) (H0 + BitVec.ofNat 64 88 + (nC CP + BitVec.ofNat 64 1) * nS KL)
      (H0 + BitVec.ofNat 64 88 + (nC CP + BitVec.ofNat 64 1) * nS KL +
        (nC CP + BitVec.ofNat 64 1) * BitVec.ofNat 64 32) = M at sep' sh' ex' hcnt' h0' hreg' hmod hmem
  generalize emptyLocalsHOLFinite t = U at hmem hd' hbe' hgl' hhp' ⊢
  refine ⟨rfl, ?_, by rw [hmem]; exact hcnt', by rw [hmem]; exact h0', _, hhp', ?_, ?_, ?_, ?_, ?_, hgl'⟩
  · unfold TableWF; rw [hmem, hd', hbe']; exact ⟨sep', _, sh', ex'⟩
  · rw [hK3]; omega
  · rw [hK3]; omega
  · rw [hK3]; omega
  · intro a ha; rw [hmem] at ha; have := hreg' a ha; rw [hK3]; exact this
  · intro a ha
    rw [hmem]
    exact hmod a (by rw [hK3] at ha; exact ha)

end body

/-- **`htab_new` creates a well-formed empty table** (the FunSpec form). -/
theorem funSpec_htab_newW (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "htab_new") (fun vs s r u => ∀ KL CP H0 : BitVec 64,
      vs = [.val (.word KL), .val (.word CP)] → s.globals.lookup hpN = some (.val (.word H0)) →
      H0.toNat ≤ heapEnd → H0.toNat % 8 = 0 → KL.toNat ≤ 2 ^ 16 → CP.toNat ≤ 2 ^ 32 →
      ∀ v, r = .returned v → NewPost s u KL H0 v) := by
  intro vs body callee rs hl s hs hloc r hr KL CP H0 hvs hH hHle hH8 hKL hCP v hv
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, hAB, -, -, hA, hB⟩ := lookupCode_two code_htab_new (by decide) hl
  rw [hvs] at hAB
  simp only [List.cons.injEq, and_true] at hAB
  obtain ⟨rfl, rfl⟩ := hAB
  have hk0 : s.locals.lookup (nm "key_len") = some (.val (.word KL)) := by rw [hloc]; exact hA
  have hc0 : s.locals.lookup (nm "cap") = some (.val (.word CP)) := by rw [hloc]; exact hB
  have H := newBody_hoareW s KL CP H0 hC hKL hCP hk0 hc0 hH hHle hH8 s hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H
  exact H v rfl

end InitECandidate.Solver.Spec.Inv

#print axioms InitECandidate.Solver.Spec.Inv.funSpec_htab_newW
