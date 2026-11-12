import InitECandidate.Solver.MemSafe.BalEnc.Callee

set_option autoImplicit false

/-!
# `htab_keys` with the allocation bound on the array pointer

`awSpec_htab_keys2` is `awSpec_htab_keys` with `out ≤ heapEnd` in the post (the array lies in the
heap whatever the count). `asp_htab_keys2`: the derived `ASp` (stride read from `G`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Aw
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

def HkPost2 (S0 : BitVec 64) (_ : List (ValueHOL 64)) (p : Ptrs) (v : ValueHOL 64) : Prop :=
  ∃ O N : BitVec 64, v = .rStruct [.val (.word O), .val (.word N)] ∧ p.hp ≤ O.toNat ∧
    O.toNat ≤ heapEnd ∧
    (N.toNat < 2 ^ 63 → N.toNat * S0.toNat ≤ domTop + 64 ∧ O.toNat + N.toNat * S0.toNat + 8 ≤ heapEnd)

theorem awSpec_htab_keys2 {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C)
    (hAG : AllocGlobs C) (S0 : BitVec 64) :
    AWSpec σ X C H (nm "htab_keys") []
      (fun vs s _ => ∀ T : BitVec 64, argW vs 0 = some T → LdW s (T + BitVec.ofNat 64 8) S0)
      (fun vs s v _ => ∀ p, ptrsOf s = some p → HkPost2 S0 vs p v) := by
  refine awSpec_of_hoareG2 (PV := HkPost2 S0) hH hTS hAG ?_
  intro vs body callee rs hl s0 Γ h0 p hs hloc hK hG hp hB hPre
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hA', hla⟩ := lookupCode_one code_htab_keys hl
  obtain ⟨T, rfl⟩ := val_of_shapeEq_one hA'
  have hLd := hPre T rfl
  let a : AwE σ := ⟨C, H, [], s0, Γ, p, h0⟩
  have ha0 : ({ C := C, H := H, gw := [], s0 := s0, Γ0 := Γ, p0 := p, h0 := h0 } : AwE σ).h0 = h0 :=
    rfl
  have hHE : heapEnd = 2952790016 := rfl
  have hd : domTop = 1099511627776 := by decide
  have hmem := asp_memcpy hK hC hA hT
  have hAP : APre a (fun m => m.lookup tN = some (.val (.word T))) s0 :=
    ⟨awInv_init a hG hp hB, by rw [hloc]; exact hla⟩
  unfold hkBody
  -- stride
  refine hoareG_decAP hK (P := fun t => t = s0) (L := fun m => m.lookup tN = some (.val (.word T)))
    (fun s _ hP => by subst hP; exact hAP) ?_ (fun _ _ _ h => h.elim) (L' := fun _ _ => False)
  intro s1 hs1 hP1 v1 hv1 hsh1
  subst hP1
  have hT1 : ev s1 (lv tN) = some (.val (.word T)) := ev_lw (by rw [hloc]; exact hla)
  have hv1' : v1 = .val (.word S0) := by
    have := ldW_ev (e := .op .add [lv tN, cw 8]) (ev_add2 hT1 (ev_cw _ 8)) hLd
    unfold ldo at hv1
    rw [this] at hv1
    exact (Option.some.inj hv1).symm
  subst hv1'
  refine hoareG_preA (L' := fun m => m.lookup tN = some (.val (.word T)) ∧
    m.lookup hkStrideN = some (.val (.word S0))) ?_ (fun m hm => by
      subst hm
      exact ⟨by rw [lookup_update_ne _ _ (by decide)]; rw [hloc]; exact hla, lookup_update_self _ _ _⟩)
  -- n
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s2 hs2 hL2 v2 hv2 hsh2
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hsh2
  let L2 : Locals → Prop := fun m => m.lookup tN = some (.val (.word T)) ∧
    m.lookup hkStrideN = some (.val (.word S0)) ∧ m.lookup nN = some (.val (.word N))
  refine hoareG_preA (L' := L2) ?_ (fun m hm => by
    subst hm
    exact ⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL2.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL2.2, lookup_update_self _ _ _⟩)
  -- out = alloc(n * stride + 8)
  refine hoareG_decCallAs' hK (asp_alloc2 hK hC) (Lk := HkOut a T S0 N)
    (L' := fun _ _ => False) ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s hs hP vs hvs callee
    rw [evs_cons (ev_add2 (ev_mul2 (ev_lw hP.2.2.2) (ev_lw hP.2.2.1)) (ev_cw _ 8)) evs_nil] at hvs
    cases hvs
    exact ⟨_, rfl⟩
  · intro s vs v st hL hvs hRet hsh
    rw [evs_cons (ev_add2 (ev_mul2 (ev_lw hL.2.2) (ev_lw hL.2.1)) (ev_cw _ 8)) evs_nil] at hvs
    cases hvs
    obtain ⟨⟨n, q, p'', hvs, hvq, hq1, hq2, hp'', hq3, hq4⟩, q', hq', hq5⟩ := hRet
    cases hvs
    cases hvq
    cases hq'
    exact ⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL.2.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL.2.2, q, lookup_update_self _ _ _, hq5,
      by omega⟩
  intro s3
  -- keys, order
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s4 hs4 hL4 v4 hv4 hsh4
  refine hoareG_preA (L' := HkOut a T S0 N) ?_ (fun m hm => by
    subst hm
    exact hko_upd (by decide) (by decide) (by decide) (by decide) hL4)
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s5 hs5 hL5 v5 hv5 hsh5
  refine hoareG_preA (L' := HkOut a T S0 N) ?_ (fun m hm => by
    subst hm
    exact hko_upd (by decide) (by decide) (by decide) (by decide) hL5)
  -- i = 0
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s6 hs6 hL6 v6 hv6 hsh6
  rw [ev_cw] at hv6
  cases hv6
  let J : Locals → Prop := HkJ a T S0 N
  refine hoareG_preA (L' := J) ?_ (fun m hm => by
    subst hm
    exact ⟨hko_upd (by decide) (by decide) (by decide) (by decide) hL6, _, lookup_update_self _ _ _,
      by simp, by simp, fun _ => by simp⟩)
  refine hoareG_seqA (L2 := fun m => J m ∧ (N.toNat < 2 ^ 63 → ∃ I : BitVec 64,
      m.lookup iN = some (.val (.word I)) ∧ I.toNat = N.toNat))
    (hoareG_whileA hK (J := J) ?_ ?_) ?_
  · refine hoareG_loopPre2 (iN' := iN) (nN' := nN) ?_ ?_
    · -- the loop body
      refine hoareG_decA hK (L' := fun _ m' => J m') ?_
        (fun m m' _ h => hkj_res (by decide) (by decide) (by decide) (by decide) (by decide) h)
      intro s7 hs7 hL7 v7 hv7 hsh7
      obtain ⟨Lf, rfl⟩ := val_of_shapeEq_one hsh7
      let J2 : Locals → Prop := fun m => (J m ∧ ∃ I N' : BitVec 64, m.lookup iN = some (.val (.word I)) ∧
        m.lookup nN = some (.val (.word N')) ∧ I.toNat < N'.toNat ∧ N'.toNat < 2 ^ 63)
      refine hoareG_preA (L' := J2) ?_ (fun m hm => by
        subst hm
        obtain ⟨⟨hb, I, hI, i1, i2, i3⟩, I', N', hI', hN', i4, i5⟩ := hL7
        refine ⟨⟨hko_upd (by decide) (by decide) (by decide) (by decide) hb, I,
          by rw [lookup_update_ne _ _ (by decide)]; exact hI, i1, i2, i3⟩, I', N',
          by rw [lookup_update_ne _ _ (by decide)]; exact hI',
          by rw [lookup_update_ne _ _ (by decide)]; exact hN', i4, i5⟩)
      refine hoareG_seqA (L2 := fun m => J2 m ∧ ∃ I : BitVec 64, m.lookup iN = some (.val (.word I)) ∧
          (I.toNat + 1) * S0.toNat ≤ domTop + 64)
        (hoareG_callAs hK hmem ?_ ?_) ?_
      · intro s8 hs8 hP8 vs hvs callee
        obtain ⟨⟨hb, I, hI, i1, i2, i3⟩, I', N', hI', hN', i4, i5⟩ := hP8.2
        obtain ⟨e1, e2, e3, O, hO, o1, o2⟩ := hb
        obtain ⟨v1, v2, v3, rfl, f1, f2, f3⟩ := evs_three hvs
        rw [ev_add2 (ev_lw hO) (ev_mul2 (ev_lw hI) (ev_lw e2))] at f1
        cases f1
        rw [ev_lw e2] at f3
        cases f3
        have hm : (I * S0).toNat = I.toNat * S0.toNat := toNat_mul2 (by omega)
        have hlo : h0 ≤ a.p0.hp := hK.hle
        have hD : (O + I * S0).toNat = O.toNat + I.toNat * S0.toNat := by
          rw [toNat_add2 (by rw [hm]; omega), hm]
        exact ⟨_, _, rfl, rfl, by rw [hD]; omega, by rw [hD]; omega⟩
      · intro s8 vs v st hL hvs hRet
        obtain ⟨⟨hb, I, hI, i1, i2, i3⟩, I', N', hI', hN', i4, i5⟩ := hL
        obtain ⟨e1, e2, e3, O, hO, o1, o2⟩ := hb
        obtain ⟨v1, v2, v3, rfl, f1, f2, f3⟩ := evs_three hvs
        rw [ev_add2 (ev_lw hO) (ev_mul2 (ev_lw hI) (ev_lw e2))] at f1
        cases f1
        rw [ev_lw e2] at f3
        cases f3
        have hm : (I * S0).toNat = I.toNat * S0.toNat := toNat_mul2 (by omega)
        have hD : (O + I * S0).toNat = O.toNat + I.toNat * S0.toNat := by
          rw [toNat_add2 (by rw [hm]; omega), hm]
        have hr := hRet _ _ rfl rfl
        have hmul : (I.toNat + 1) * S0.toNat = I.toNat * S0.toNat + S0.toNat := by
          rw [Nat.add_mul, Nat.one_mul]
        refine ⟨⟨⟨⟨e1, e2, e3, O, hO, o1, o2⟩, I, hI, i1, i2, i3⟩, I', N', hI', hN', i4, i5⟩, I, hI, ?_⟩
        rw [hmul]
        rcases hr with h | h
        · rw [h]; omega
        · rw [hD] at h; omega
      · refine hoareG_assignA hK fun s9 _ hL9 v9 hv9 => ?_
        obtain ⟨⟨⟨⟨e1, e2, e3, O, hO, o1, o2⟩, I, hI, i1, i2, i3⟩, I', N', hI', hN', i4, i5⟩, I2, hI2, hb⟩ := hL9
        rw [ev_add2 (ev_lw hI) (ev_cw _ 1)] at hv9
        cases hv9
        rw [hI] at hI'
        cases hI'
        rw [e3] at hN'
        cases hN'
        rw [hI] at hI2
        cases hI2
        have hI3 : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := toNat_addc (by omega)
        refine ⟨hko_upd (by decide) (by decide) (by decide) (by decide) ⟨e1, e2, e3, O, hO, o1, o2⟩,
          _, lookup_update_self _ _ _, by rw [hI3]; omega, by rw [hI3]; exact hb, fun h => by rw [hI3]; omega⟩
    · intro m hm
      obtain ⟨hb, I, hI, i1, i2, i3⟩ := hm
      exact ⟨I, N, hI, hb.2.2.1, i1⟩
  · intro s9 hs9 hJ9 hc
    obtain ⟨⟨e1, e2, e3, O, hO, o1, o2⟩, I, hI, i1, i2, i3⟩ := hJ9
    refine ⟨⟨⟨e1, e2, e3, O, hO, o1, o2⟩, I, hI, i1, i2, i3⟩, fun hN => ⟨I, hI, ?_⟩⟩
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
    rw [ev_lw hI] at hx
    cases hx
    rw [ev_lw e3] at hy
    cases hy
    have h3 := i3 hN
    by_contra hne
    have := less_of_lt i1 hN (by omega)
    rw [this] at hxy
    exact absurd hxy (by decide)
  · refine hoareG_returnA hK (fun s hs hL v hv => ?_)
    obtain ⟨⟨e1, e2, e3, O, hO, o1, o2⟩, I, hI, i1, i2, i3⟩ := hL.1
    rw [ev_rstruct (evs_cons (ev_lw hO) (evs_cons (ev_lw e3) evs_nil))] at hv
    cases hv
    refine ⟨O, N, rfl, o1, by omega, fun hN => ?_⟩
    obtain ⟨I2, hI2, hIN⟩ := hL.2 hN
    rw [hI] at hI2
    cases hI2
    have hNS : N.toNat * S0.toNat ≤ domTop + 64 := by rw [← hIN]; exact i2
    refine ⟨hNS, ?_⟩
    have hm : (N * S0).toNat = N.toNat * S0.toNat := toNat_mul2 (by omega)
    have h8 : (N * S0 + BitVec.ofNat 64 8).toNat = N.toNat * S0.toNat + 8 := by
      rw [toNat_addc (by rw [hm]; omega), hm]
    rw [h8] at o2
    omega


end InitECandidate.Solver.MemSafe.Aw

namespace InitECandidate.Solver.MemSafe.BalEnc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Helpers InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type}

def HkPost2' (vs : List (ValueHOL 64)) (p : Ptrs) (v : ValueHOL 64) : Prop :=
  ∃ S0 : BitVec 64, 32 ≤ S0.toNat ∧ HkPost2 S0 vs p v

theorem awSpec_htab_keys'2 {C : Cfg} {H : Hooks σ} {X : Ctx 64}
    (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C)
    (hAG : AllocGlobs C) :
    AWSpec σ X C H (nm "htab_keys") [] (fun vs s _ => HkPre vs s)
      (fun vs s v _ => ∀ p, ptrsOf s = some p → HkPost2' vs p v) := by
  intro vs body callee rs hl s hs hloc r hr v hv Γ h0 p hG hp hB h8 hb hle hPre
  have hl' := hl
  rw [hC] at hl'
  obtain ⟨-, -, A, hvs, hA', hla⟩ := lookupCode_one code_htab_keys hl'
  obtain ⟨T, rfl⟩ := val_of_shapeEq_one hA'
  have hT0 : argW vs 0 = some T := by rw [hvs]; rfl
  obtain ⟨hd, h32⟩ := hPre T hT0
  obtain ⟨Γ', p', c1, c2, c3, c4, c5, c6, c7, c8, c9⟩ :=
    awSpec_htab_keys2 hC hA hT hH hTS hAG (rd s.memory (T + BitVec.ofNat 64 8)) vs body callee rs hl
      s hs hloc r hr v hv Γ h0 p hG hp hB h8 hb hle (fun T' hT'' => by
        have e : T = T' := Option.some.inj (hT0.symm.trans hT'')
        subst e
        unfold LdW
        rw [ev_load_one_of (by simp [ev, evalHOLExact]) hd]
        rw [mem_wd s.memory (T + BitVec.ofNat 64 8)])
  refine ⟨Γ', p', c1, c2, c3, c4, c5, c6, c7, c8, fun p2 hp2 => ?_⟩
  exact ⟨_, h32, c9 p2 hp2⟩

/-- The result of `htab_keys`: `<out, n>` with `out` in `[p0.hp, heapEnd]` and the array in the heap. -/
def KeysRet2 (a : AwE σ) (v : ValueHOL 64) : Prop :=
  ∃ O N : BitVec 64, v = .rStruct [.val (.word O), .val (.word N)] ∧ a.p0.hp ≤ O.toNat ∧
    O.toNat ≤ heapEnd ∧
    (N.toNat < 2 ^ 63 → N.toNat * 32 ≤ domTop + 64 ∧ O.toNat + N.toNat * 32 + 8 ≤ heapEnd)

theorem keysRet2_of_post {a : AwE σ} {vs : List (ValueHOL 64)} {p : Ptrs} {v : ValueHOL 64}
    (hp : a.p0.hp ≤ p.hp) (h : HkPost2' vs p v) : KeysRet2 a v := by
  obtain ⟨S0, hS0, O, N, h1, h2, h2', h3⟩ := h
  have hmul : N.toNat * 32 ≤ N.toNat * S0.toNat := Nat.mul_le_mul_left _ hS0
  refine ⟨O, N, h1, le_trans hp h2, h2', fun hN => ?_⟩
  have := h3 hN
  omega

/-- `htab_keys` on a table of the entry typing, with the array pointer bound. -/
theorem asp_htab_keys2 {a : AwE σ} (hK : AwOK a) (hc : CsE a) {th : Nat} (hth : th ∈ hdrTys)
    (hKL : htKL th = 32) :
    ASp a guestCtx (nm "htab_keys")
      (fun vs s => ∃ T : BitVec 64, vs = [.val (.word T)] ∧ Fits a.Γ0 (.ptr th) T ∧
        s.memaddrs = guestCtx.memaddrs)
      (fun _ v _ => KeysRet2 a v) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hAW : AWSpec σ guestCtx a.C a.H (nm "htab_keys") [] (fun vs s _ => HkPre vs s)
      (fun vs s v _ => ∀ p, ptrsOf s = some p → HkPost2' vs p v) := by
    rw [hc.C, hc.H]
    exact awSpec_htab_keys'2 hF.hX hF.hal domBelow_guestCtx hooksLawful_cs tagSlots_cs allocGlobs_cs
  refine asp_pre_inv (asp_of_aw2 hK hAW (fun g hg => absurd hg (by simp))
    (Ret := fun _ v _ => KeysRet2 a v) (fun vs s v t ⟨p1, hp1, hle1⟩ hpost =>
      keysRet2_of_post hle1 (hpost p1 hp1))) ?_
  intro vs s hinv ⟨T, hvs, hfit, hd⟩
  subst hvs
  intro T' hT'
  have e : T = T' := Option.some.inj hT'
  subst e
  exact tab_stride hc hinv hd hth hKL hfit

end InitECandidate.Solver.MemSafe.BalEnc
