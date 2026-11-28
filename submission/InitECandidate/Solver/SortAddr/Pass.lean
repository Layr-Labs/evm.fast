import InitECandidate.Solver.SortAddr.Merge
import InitECandidate.Solver.SortAddr.CH

/-!
# One pass of `sort_elems` (`while left < n`)

Each pass iteration processes the segment `[left, right)` with `right > left` and copies its
elements to `dst + k * esz` for `k ∈ [left, right)`. The destination offset `off (dst +
left * esz)` therefore increases strictly from iteration to iteration and stays below
`Lh + esz`: the pass makes at most `Lh + 4097` iterations. At the end `left = n`, which
also bounds the element count: `n < Lh + 4096`.
-/

set_option autoImplicit false
set_option maxHeartbeats 8000000
set_option maxRecDepth 100000

namespace InitECandidate.Solver.SortAddr
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- The per-loop iteration allowance. -/
def QS : Nat := 2 ^ 35 + alignSlack 64 + 4097

theorem lh_le (d : Dom X) : d.Lh + 4096 + 1 ≤ QS := by
  unfold Dom.Lh QS; have := d.hL35; omega

theorem chn_kloop (c : MC X) {cond : ExpHOL 64} {body : ProgHOL 64} {Bb : Nat}
    (Iv : BitVec 64 → Lcl → Prop) {Ex : Lcl → Prop} (hIk : ∀ K m, Iv K m → Lk qK K m)
    (hb : Cost σ X body Bb)
    (hspec : ∀ K, Hoare σ X (fun s => Iv K s.locals ∧ CondTrue s cond) body
      (fun r t => r = none ∧ Iv (K + 1) t.locals ∧ c.d.off (c.D + K * c.E) < c.d.Lh))
    (hex : ∀ s : PanSemStateFiniteExact 64 σ, ∀ K, Iv K s.locals →
      ev s cond = some (.val (.word 0)) → Ex s.locals) :
    CHn σ X (fun s => ∃ K, Iv K s.locals) (.while cond body) (QS * (Bb + 1))
      (fun t => Ex t.locals) :=
  ⟨(costP_kloop c Iv hIk hb hspec).mono (Nat.mul_le_mul_right _ (lh_le c.d)),
    hoare_kloop c Iv hspec hex⟩

def BMerge (Cm Cg : Nat) : Nat :=
  QS * (BM Cm Cg + 1) + (QS * (BT Cm + 1) + (QS * (BT Cm + 1) + 0))

theorem chn_mMerge (hC : X.code.lookup = guestCode) (c : MC X) {Cm Cg : Nat}
    (hcm : CalleeCost σ X (nm "memcpy") Cm) (hcg : CalleeCost σ X (nm "bal_sort_gt") Cg) :
    CHn σ X (fun s => ∃ K, Iv1 c K s.locals) mMerge (BMerge Cm Cg) (fun t => MOut c t.locals) := by
  unfold mMerge mLoop tLoop BMerge
  refine chn_seq (chn_kloop c (Iv1 c) (Ex := fun m => ∃ K, Iv1 c K m) iv1_k
    (mStep_cost hcm hcg) (spec_mLoop hC c) (fun _ K h _ => ⟨K, h⟩)) ?_
  refine chn_seq (chn_kloop c (Iv1 c) (Ex := fun m => ∃ K, Iv2 c K m) iv1_k
    (tStep_cost hcm qI) (spec_tLoopI hC c) ?_) ?_
  · intro s K ⟨I, J, hm⟩ h0
    obtain ⟨hI, -, hM⟩ := minv_small hm
    have := cond_less_false hm.2.1 (agree_lk (by decide) hm.1 c.hM) hI hM h0
    have hIM : I = c.M := BitVec.eq_of_toNat_eq (by have := hm.2.2.2.2.1; omega)
    subst hIM
    exact ⟨K, J, hm⟩
  refine chn_seq (chn_kloop c (Iv2 c) (Ex := fun m => ∃ K, MInv c c.M c.R K m) iv2_k
    (tStep_cost hcm qJ) (spec_tLoopJ hC c) ?_) ?_
  · intro s K ⟨J, hm⟩ h0
    obtain ⟨-, hJ, -⟩ := minv_small hm
    have := cond_less_false hm.2.2.1 (agree_lk (by decide) hm.1 c.hR) hJ c.hR63 h0
    have hJR : J = c.R := BitVec.eq_of_toNat_eq (by have := hm.2.2.2.2.2.2.1; omega)
    subst hJR
    exact ⟨K, hm⟩
  refine chn_assign fun s _ ⟨K, hm⟩ v hv _ => ?_
  rw [ev_lk (agree_lk (by decide) hm.1 c.hR)] at hv
  cases hv
  obtain ⟨hA, -, -, -, -, -, -, h4, h5, h6⟩ := hm
  have hKR : K = c.R := BitVec.eq_of_toNat_eq (by omega)
  subst hKR
  exact ⟨agree_upd (by decide) (agree_mono (by decide) hA), lk_new _ _ _, h5, h6⟩

/-! ## The pass -/

def pNames : List MlS := [qE, qDst, qN, qW, qSrc, qP, qKind, qT, qMark, qAux]

/-- The fixed data of one pass. -/
structure PC (X : Ctx 64) where
  d : Dom X
  m0 : Lcl
  O0 : Nat
  D : BitVec 64
  E : BitVec 64
  N : BitVec 64
  W : BitVec 64
  hD : WD D m0
  hE : Lk qE E m0
  hN : Lk qN N m0
  hW : Lk qW W m0
  hE1 : 1 ≤ E.toNat
  hE2 : E.toNat ≤ 4096
  hN63 : N.toNat < 2 ^ 63
  hW1 : 1 ≤ W.toNat
  hWN : W.toNat < N.toNat
  hO0 : d.off D = O0

def PInv (pc : PC X) (Lf : BitVec 64) (m : Lcl) : Prop :=
  Agree pNames pc.m0 m ∧ Lk qL Lf m ∧ Lf.toNat ≤ pc.N.toNat ∧
    pc.d.off (pc.D + Lf * pc.E) = pc.O0 + Lf.toNat * pc.E.toNat ∧
    (Lf.toNat = 0 ∨ pc.O0 + Lf.toNat * pc.E.toNat < pc.d.Lh + pc.E.toNat)

/-- After one pass iteration. -/
def PPost (pc : PC X) (Lf : BitVec 64) (m : Lcl) : Prop :=
  ∃ Lf', PInv pc Lf' m ∧ Lf.toNat < Lf'.toNat

theorem pinv_res {pc : PC X} {Lf : BitVec 64} {m : Lcl} {x : MlS} {o : Option (ValueHOL 64)}
    (h1 : x ∉ pNames) (h2 : x ≠ qL) (h : PInv pc Lf m) : PInv pc Lf (m.resVarEq (x, o)) :=
  ⟨agree_res h1 h.1, lk_res h2 h.2.1, h.2.2⟩

theorem ppost_res {pc : PC X} {Lf : BitVec 64} {m : Lcl} {x : MlS} {o : Option (ValueHOL 64)}
    (h1 : x ∉ pNames) (h2 : x ≠ qL) (h : PPost pc Lf m) : PPost pc Lf (m.resVarEq (x, o)) :=
  let ⟨Lf', hp, hlt⟩ := h; ⟨Lf', pinv_res h1 h2 hp, hlt⟩

theorem lower_iff {x y : BitVec 64} : wordCmpHOL .lower x y = decide (x.toNat < y.toNat) := by
  simp [wordCmpHOL, BitVec.lt_def]

theorem cond_lower {s : PanSemStateFiniteExact 64 σ} {x y : MlS} {A B : BitVec 64}
    (ha : Lk x A s.locals) (hb : Lk y B s.locals)
    (h : ∃ w, ev s (.cmp .lower (lv x) (lv y)) = some (.val (.word w)) ∧ w ≠ 0) :
    A.toNat < B.toNat := by
  obtain ⟨w, hw, hw0⟩ := h
  obtain ⟨a, b, h1, h2, hab⟩ := cmp_true hw hw0
  rw [ev_lk ha] at h1; cases h1
  rw [ev_lk hb] at h2; cases h2
  rw [lower_iff] at hab
  simpa using hab

theorem cond_lower_false {s : PanSemStateFiniteExact 64 σ} {x y : MlS} {A B : BitVec 64}
    (ha : Lk x A s.locals) (hb : Lk y B s.locals)
    (h : ev s (.cmp .lower (lv x) (lv y)) = some (.val (.word 0))) : B.toNat ≤ A.toNat := by
  obtain ⟨a, b, h1, h2, hab⟩ := cmp_false h
  rw [ev_lk ha] at h1; cases h1
  rw [ev_lk hb] at h2; cases h2
  rw [lower_iff] at hab
  simpa using hab

theorem toNat_add_small {x y : BitVec 64} (h : x.toNat + y.toNat < 2 ^ 64) :
    (x + y).toNat = x.toNat + y.toNat := by
  rw [BitVec.toNat_add, Nat.mod_eq_of_lt h]

/-- Locals after `mid` (or `right`) was set. -/
def A1 (pc : PC X) (Lf Mv : BitVec 64) (m : Lcl) : Prop :=
  Agree pNames pc.m0 m ∧ Lk qL Lf m ∧ Lk qM Mv m

def A2 (pc : PC X) (Lf Mv Rv : BitVec 64) (m : Lcl) : Prop :=
  A1 pc Lf Mv m ∧ Lk qR Rv m

def BInner (Cm Cg : Nat) : Nat := max 0 0 + (max 0 0 + BMerge Cm Cg)

theorem chn_mInner (hC : X.code.lookup = guestCode) (pc : PC X) {Cm Cg : Nat}
    (hcm : CalleeCost σ X (nm "memcpy") Cm) (hcg : CalleeCost σ X (nm "bal_sort_gt") Cg)
    {Lf : BitVec 64} (hLf : Lf.toNat < pc.N.toNat) :
    CHn σ X (fun s => PInv pc Lf s.locals) mInner (BInner Cm Cg) (fun t => PPost pc Lf t.locals) := by
  have hN63 := pc.hN63
  have hW1 := pc.hW1
  have hWN := pc.hWN
  unfold mInner BInner
  -- mid = left + width
  refine chn_dec fun s _ hs v hv _ => ?_
  obtain ⟨hs1, hs2, hLN, hoff, hor⟩ := hs
  rw [ev_add2 (ev_lk hs2) (ev_lk (agree_lk (by decide) hs1 pc.hW))] at hv
  cases hv
  have hM0 : (Lf + pc.W).toNat = Lf.toNat + pc.W.toNat := toNat_add_small (by omega)
  refine CHn.post (Q := fun t => PPost pc Lf t.locals) ?_
    (fun t _ h => ppost_res (by decide) (by decide) h)
  refine CHn.pre (P := fun t => A1 pc Lf (Lf + pc.W) t.locals) ?_ (fun t _ ht => by
    subst ht
    exact ⟨agree_upd (by decide) hs1, lk_upd (by decide) hs2, lk_new _ _ _⟩)
  refine chn_seq (R := fun t => ∃ Mv : BitVec 64, A1 pc Lf Mv t.locals ∧
      Lf.toNat < Mv.toNat ∧ Mv.toNat ≤ pc.N.toNat) (chn_ite ?_ ?_) ?_
  · refine chn_assign fun s _ ⟨ha, hc⟩ v hv _ => ?_
    rw [ev_lk (agree_lk (by decide) ha.1 pc.hN)] at hv
    cases hv
    exact ⟨pc.N, ⟨agree_upd (by decide) ha.1, lk_upd (by decide) ha.2.1, lk_new _ _ _⟩, hLf,
      Nat.le_refl _⟩
  · refine chn_skip fun s _ ⟨ha, hc⟩ => ⟨Lf + pc.W, ha, by omega, ?_⟩
    have := cond_lower_false (agree_lk (by decide) ha.1 pc.hN) ha.2.2 hc
    omega
  refine chn_exists fun Mv => ?_
  refine CHn.pre (P := fun s => A1 pc Lf Mv s.locals ∧ Lf.toNat < Mv.toNat ∧
    Mv.toNat ≤ pc.N.toNat) ?_ (fun s _ h => h)
  refine chn_dec fun s _ ⟨ha, hLM, hMN⟩ v hv _ => ?_
  rw [ev_add2 (ev_lk ha.2.2) (ev_lk (agree_lk (by decide) ha.1 pc.hW))] at hv
  cases hv
  have hR0 : (Mv + pc.W).toNat = Mv.toNat + pc.W.toNat := toNat_add_small (by omega)
  refine CHn.post (Q := fun t => PPost pc Lf t.locals) ?_
    (fun t _ h => ppost_res (by decide) (by decide) h)
  refine CHn.pre (P := fun t => A2 pc Lf Mv (Mv + pc.W) t.locals) ?_ (fun t _ ht => by
    subst ht
    exact ⟨⟨agree_upd (by decide) ha.1, lk_upd (by decide) ha.2.1, lk_upd (by decide) ha.2.2⟩,
      lk_new _ _ _⟩)
  refine chn_seq (R := fun t => ∃ Rv : BitVec 64, A2 pc Lf Mv Rv t.locals ∧
      Mv.toNat ≤ Rv.toNat ∧ Rv.toNat ≤ pc.N.toNat) (chn_ite ?_ ?_) ?_
  · refine chn_assign fun s _ ⟨ha, hc⟩ v hv _ => ?_
    rw [ev_lk (agree_lk (by decide) ha.1.1 pc.hN)] at hv
    cases hv
    exact ⟨pc.N, ⟨⟨agree_upd (by decide) ha.1.1, lk_upd (by decide) ha.1.2.1,
      lk_upd (by decide) ha.1.2.2⟩, lk_new _ _ _⟩, hMN, Nat.le_refl _⟩
  · refine chn_skip fun s _ ⟨ha, hc⟩ => ⟨Mv + pc.W, ha, by omega, ?_⟩
    have := cond_lower_false (agree_lk (by decide) ha.1.1 pc.hN) ha.2 hc
    omega
  refine chn_exists fun Rv => ?_
  refine CHn.pre (P := fun s => A2 pc Lf Mv Rv s.locals ∧ Mv.toNat ≤ Rv.toNat ∧
    Rv.toNat ≤ pc.N.toNat) ?_ (fun s _ h => h)
  -- i = left; j = mid; k = left
  refine chn_dec fun s1 _ ⟨ha1, hMR, hRN⟩ v1 hv1 _ => ?_
  rw [ev_lk ha1.1.2.1] at hv1
  cases hv1
  refine CHn.post (Q := fun t => PPost pc Lf t.locals) ?_
    (fun t _ h => ppost_res (by decide) (by decide) h)
  refine chn_dec fun s2 _ hs2 v2 hv2 _ => ?_
  subst hs2
  rw [ev_lk (s := setVarHOLFinite qI (.val (.word Lf)) s1)
    (lk_upd (by decide) ha1.1.2.2)] at hv2
  cases hv2
  refine CHn.post (Q := fun t => PPost pc Lf t.locals) ?_
    (fun t _ h => ppost_res (by decide) (by decide) h)
  refine chn_dec fun s3 _ hs3 v3 hv3 _ => ?_
  subst hs3
  rw [ev_lk (s := setVarHOLFinite qJ (.val (.word Mv)) (setVarHOLFinite qI (.val (.word Lf)) s1))
    (lk_upd (by decide) (lk_upd (by decide) ha1.1.2.1))] at hv3
  cases hv3
  refine CHn.post (Q := fun t => PPost pc Lf t.locals) ?_
    (fun t _ h => ppost_res (by decide) (by decide) h)
  -- the merge phase, from the exact state
  let st := setVarHOLFinite qK (.val (.word Lf))
    (setVarHOLFinite qJ (.val (.word Mv)) (setVarHOLFinite qI (.val (.word Lf)) s1))
  have hag : Agree pNames pc.m0 st.locals :=
    agree_upd (by decide) (agree_upd (by decide) (agree_upd (by decide) ha1.1.1))
  have hsub : ∀ x ∈ pNames, x ∈ mNamesL := by decide
  let c : MC X :=
    { d := pc.d, m0 := st.locals, O0 := pc.O0, D := pc.D, E := pc.E, M := Mv, R := Rv
      hD := wd_agree (by decide) hag pc.hD
      hE := agree_lk (by decide) hag pc.hE
      hM := lk_upd (by decide) (lk_upd (by decide) (lk_upd (by decide) ha1.1.2.2))
      hR := lk_upd (by decide) (lk_upd (by decide) (lk_upd (by decide) ha1.2))
      hE1 := pc.hE1, hE2 := pc.hE2, hR63 := by omega, hO0 := pc.hO0 }
  refine CHn.post (CHn.pre (chn_mMerge hC c hcm hcg) ?_) ?_
  · intro t _ ht
    subst ht
    exact ⟨Lf, Lf, Mv, agree_refl _ _, lk_upd (by decide) (lk_upd (by decide) (lk_new _ _ _)),
      lk_upd (by decide) (lk_new _ _ _), lk_new _ _ _, (show Lf.toNat ≤ Mv.toNat by omega),
      Nat.le_refl _, hMR, rfl, hoff, hor⟩
  · intro t _ ⟨hA, hL, hoffR, horR⟩
    exact ⟨Rv, ⟨fun x hx => (hA x (hsub x hx)).trans (hag x hx), hL, hRN, hoffR, horR⟩, by omega⟩

theorem chn_pure {P Q : PanSemStateFiniteExact 64 σ → Prop} {p : ProgHOL 64} {B : Nat} {q : Prop}
    (h : q → CHn σ X P p B Q) : CHn σ X (fun s => P s ∧ q) p B Q :=
  ⟨fun s hs ⟨hp, hq⟩ hg => (h hq).1 s hs hp hg, fun s hs ⟨hp, hq⟩ ht => (h hq).2 s hs hp ht⟩

/-- The pass measure. -/
def mup (pc : PC X) (s : PanSemStateFiniteExact 64 σ) : Nat :=
  match s.locals.lookup qL with
  | some (.val (.word Lf)) => pc.d.Lh + 4096 - pc.d.off (pc.D + Lf * pc.E)
  | _ => 0

theorem mup_eq (pc : PC X) {s : PanSemStateFiniteExact 64 σ} {Lf : BitVec 64}
    (h : Lk qL Lf s.locals) : mup pc s = pc.d.Lh + 4096 - pc.d.off (pc.D + Lf * pc.E) := by
  unfold mup; rw [h]

def BPass (Cm Cg : Nat) : Nat := QS * (BInner Cm Cg + 1)

theorem chn_pLoop (hC : X.code.lookup = guestCode) (pc : PC X) {Cm Cg : Nat}
    (hcm : CalleeCost σ X (nm "memcpy") Cm) (hcg : CalleeCost σ X (nm "bal_sort_gt") Cg) :
    CHn σ X (fun s => ∃ Lf, PInv pc Lf s.locals) pLoop (BPass Cm Cg)
      (fun t => PInv pc pc.N t.locals) := by
  have hN63 := pc.hN63
  have hE1 := pc.hE1
  have hE2 := pc.hE2
  refine CHn.mono (B := (pc.d.Lh + 4096 + 1) * (BInner Cm Cg + 1)) ?_
    (Nat.mul_le_mul_right _ (lh_le pc.d))
  unfold pLoop
  refine chn_while (mup pc) (pc.d.Lh + 4096) (fun s h => h) (fun s => rfl) ?_ ?_ ?_
  · intro s _ _ _
    unfold mup
    split <;> omega
  · intro k
    refine CHn.pre (P := fun s => ∃ Lf, PInv pc Lf s.locals ∧ (Lf.toNat < pc.N.toNat ∧
      k = pc.d.Lh + 4096 - (pc.O0 + Lf.toNat * pc.E.toNat))) ?_ ?_
    · refine chn_exists fun Lf => chn_pure fun ⟨hLf, hk⟩ => ?_
      refine (chn_mInner hC pc hcm hcg hLf).post fun t _ ⟨Lf', hp, hlt⟩ => ⟨⟨Lf', hp⟩, ?_⟩
      rw [mup_eq pc hp.2.1, hp.2.2.2.1, hk]
      have hm : Lf.toNat * pc.E.toNat < Lf'.toNat * pc.E.toNat :=
        Nat.mul_lt_mul_of_pos_right hlt (by omega)
      rcases hp.2.2.2.2 with h0 | h0
      · omega
      · omega
    · intro s _ ⟨⟨Lf, hp⟩, hc, hk⟩
      refine ⟨Lf, hp, ?_, ?_⟩
      · exact (cond_less hp.2.1 (agree_lk (by decide) hp.1 pc.hN) (by have := hp.2.2.1; omega)
          hc).2
      · rw [← hk, mup_eq pc hp.2.1, hp.2.2.2.1]
  · intro s _ ⟨Lf, hp⟩ h0
    have := cond_less_false hp.2.1 (agree_lk (by decide) hp.1 pc.hN)
      (by have := hp.2.2.1; omega) hN63 h0
    have hLN : Lf = pc.N := BitVec.eq_of_toNat_eq (by have := hp.2.2.1; omega)
    subst hLN
    exact hp

/-- A completed pass bounds the element count by the domain size. -/
theorem pinv_N_small {pc : PC X} {m : Lcl} (h : PInv pc pc.N m) : pc.N.toNat < pc.d.Lh + 4096 := by
  have hW1 := pc.hW1
  have hWN := pc.hWN
  have hE1 := pc.hE1
  have hE2 := pc.hE2
  have hle : pc.N.toNat ≤ pc.N.toNat * pc.E.toNat := Nat.le_mul_of_pos_right _ (by omega)
  rcases h.2.2.2.2 with h0 | h0
  · omega
  · omega

end InitECandidate.Solver.SortAddr
