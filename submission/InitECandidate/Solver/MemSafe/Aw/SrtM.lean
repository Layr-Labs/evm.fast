import InitECandidate.Solver.MemSafe.Aw.Srt

set_option autoImplicit false

/-!
# Target G, part 4: the merge step of `sort_elems`
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
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)

variable {σ : Type} {X : Ctx 64}

def MBnames : List MlS :=
  [pN, nN, eszN, kindN, auxN, markN, srcN, dstN, widthN, leftN, midN, rightN]

/-- Frame of the merge phase: the base facts and `width`, `left`, `mid`, `right`. -/
def MB (hp : Nat) (c : SC) (W L M R : BitVec 64) (m : Locals) : Prop :=
  SBs hp c m ∧ Lk widthN W m ∧ Lk leftN L m ∧ Lk midN M m ∧ Lk rightN R m

theorem mb_upd {hp : Nat} {c : SC} {W L M R : BitVec 64} {m : Locals} {x : MlS} {v : ValueHOL 64}
    (hx : x ∉ MBnames) (h : MB hp c W L M R m) : MB hp c W L M R (m.update (x, v)) := by
  have n1 : x ≠ pN := fun e => hx (by rw [e]; simp [MBnames])
  have n2 : x ≠ nN := fun e => hx (by rw [e]; simp [MBnames])
  have n3 : x ≠ eszN := fun e => hx (by rw [e]; simp [MBnames])
  have n4 : x ≠ kindN := fun e => hx (by rw [e]; simp [MBnames])
  have n5 : x ≠ auxN := fun e => hx (by rw [e]; simp [MBnames])
  have n6 : x ≠ markN := fun e => hx (by rw [e]; simp [MBnames])
  have n7 : x ≠ srcN := fun e => hx (by rw [e]; simp [MBnames])
  have n8 : x ≠ dstN := fun e => hx (by rw [e]; simp [MBnames])
  have n9 : x ≠ widthN := fun e => hx (by rw [e]; simp [MBnames])
  have n10 : x ≠ leftN := fun e => hx (by rw [e]; simp [MBnames])
  have n11 : x ≠ midN := fun e => hx (by rw [e]; simp [MBnames])
  have n12 : x ≠ rightN := fun e => hx (by rw [e]; simp [MBnames])
  exact ⟨sbs_upd n1 n2 n3 n4 n5 n6 n7 n8 h.1, lk_updo n9 h.2.1, lk_updo n10 h.2.2.1,
    lk_updo n11 h.2.2.2.1, lk_updo n12 h.2.2.2.2⟩

theorem mb_res {hp : Nat} {c : SC} {W L M R : BitVec 64} {m : Locals} {x : MlS}
    {o : Option (ValueHOL 64)} (hx : x ∉ MBnames) (h : MB hp c W L M R m) :
    MB hp c W L M R (m.resVarEq (x, o)) := by
  have n1 : x ≠ pN := fun e => hx (by rw [e]; simp [MBnames])
  have n2 : x ≠ nN := fun e => hx (by rw [e]; simp [MBnames])
  have n3 : x ≠ eszN := fun e => hx (by rw [e]; simp [MBnames])
  have n4 : x ≠ kindN := fun e => hx (by rw [e]; simp [MBnames])
  have n5 : x ≠ auxN := fun e => hx (by rw [e]; simp [MBnames])
  have n6 : x ≠ markN := fun e => hx (by rw [e]; simp [MBnames])
  have n7 : x ≠ srcN := fun e => hx (by rw [e]; simp [MBnames])
  have n8 : x ≠ dstN := fun e => hx (by rw [e]; simp [MBnames])
  have n9 : x ≠ widthN := fun e => hx (by rw [e]; simp [MBnames])
  have n10 : x ≠ leftN := fun e => hx (by rw [e]; simp [MBnames])
  have n11 : x ≠ midN := fun e => hx (by rw [e]; simp [MBnames])
  have n12 : x ≠ rightN := fun e => hx (by rw [e]; simp [MBnames])
  exact ⟨sbs_res n1 n2 n3 n4 n5 n6 n7 n8 h.1, lk_res n9 h.2.1, lk_res n10 h.2.2.1,
    lk_res n11 h.2.2.2.1, lk_res n12 h.2.2.2.2⟩

/-- The merge-loop invariant; `d` is the lag of `k` behind `i + j - mid`. -/
def MIx (hp : Nat) (c : SC) (W L M R : BitVec 64) (d : Nat) (m : Locals) : Prop :=
  MB hp c W L M R m ∧ ∃ I J Kn : BitVec 64, Lk iN I m ∧ Lk jjN J m ∧ Lk kkN Kn m ∧
    L.toNat ≤ I.toNat ∧ I.toNat ≤ M.toNat ∧ M.toNat ≤ J.toNat ∧ J.toNat ≤ R.toNat ∧
    Kn.toNat + M.toNat + d = I.toNat + J.toNat

theorem ev_cmp2 {s : State σ} {o : Cmp} {a b : ExpHOL 64} {x y : BitVec 64}
    (ha : ev s a = some (.val (.word x))) (hb : ev s b = some (.val (.word y))) :
    ev s (.cmp o a b) = some (.val (.word (if wordCmpHOL o x y then 1 else 0))) := by
  simp only [ev, evalHOLExact] at ha hb ⊢
  rw [ha, hb]

theorem ev_lw_lk {s : State σ} {x : MlS} {w : BitVec 64} (h : Lk x w s.locals) :
    s.locals.lookup x = some (.val (.word w)) := h

theorem srtCond_true {s : State σ} {I M J R : BitVec 64} (hi : s.locals.lookup iN = some (.val (.word I)))
    (hm : s.locals.lookup midN = some (.val (.word M))) (hj : s.locals.lookup jjN = some (.val (.word J)))
    (hr : s.locals.lookup rightN = some (.val (.word R))) (h : CondTrue s srtCond) :
    wordCmpHOL .less I M = true ∧ wordCmpHOL .less J R = true := by
  obtain ⟨w, hw, hw0⟩ := h
  unfold srtCond at hw
  obtain ⟨x, y, hx, hy, he⟩ := Spec.Inv.ev_op2_inv hw
  have e1 := ev_cmp2 (o := .less) (ev_lw hi) (ev_lw hm)
  have e2 := ev_cmp2 (o := .less) (ev_lw hj) (ev_lw hr)
  have e3 := ev_cmp2 (o := .notEqual) (ev_cw s 0) e1
  have e4 := ev_cmp2 (o := .notEqual) (ev_cw s 0) e2
  rw [e3] at hx
  rw [e4] at hy
  cases hx
  cases hy
  have hw' : ev s (.op .and [.cmp .notEqual (cw 0) (.cmp .less (lv iN) (lv midN)),
      .cmp .notEqual (cw 0) (.cmp .less (lv jjN) (lv rightN))]) = some (.val (.word w)) := hw
  rw [hw'] at he
  simp only [wordOpHOL] at he
  have hw1 := Option.some.inj he
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hw1
  have k0 : wordCmpHOL Cmp.notEqual (0 : BitVec 64) (0 : BitVec 64) = false := by decide
  have k1 : wordCmpHOL Cmp.notEqual (0 : BitVec 64) (1 : BitVec 64) = true := by decide
  by_cases hI : wordCmpHOL Cmp.less I M = true <;> by_cases hJ : wordCmpHOL Cmp.less J R = true
  · exact ⟨hI, hJ⟩
  all_goals
    exfalso
    apply hw0
    rw [hw1]
    simp only [List.foldr, hI, hJ, if_true, if_false]
    decide

/-- `memcpy(dst + k*esz, ·, esz)` with `k < n` as a call in the merge phase. -/
theorem srt_cp {a : AwE σ} (hK : AwOK a) {c : SC} (hSH : SH a.C a.Γ0 a.h0 c)
    (hN : c.N.toNat < 2 ^ 63)
    (hmem : ASp a X (nm "memcpy") (fun vs _ => MemCov a vs) (fun _ _ _ => True))
    {L : Locals → Prop} {Ret : ValueHOL 64 → Prop} {x2 : ExpHOL 64}
    (hL : ∀ m, L m → SBs a.p0.hp c m ∧ ∃ Kn : BitVec 64, Lk kkN Kn m ∧ Kn.toNat < c.N.toNat) :
    HoareG σ X (APre a L) (callD (nm "memcpy") [cpDst, x2, lv eszN]) (AQ a L Ret) := by
  refine hoareG_callAs hK hmem ?_ (fun _ _ _ _ hL' _ _ => hL')
  intro s hs hP vs hvs callee
  obtain ⟨hsb, Kn, hKn, hk⟩ := hL _ hP.2
  obtain ⟨-, -, a3, -, -, -, s1, d1, b1, b2, b3⟩ := hsb
  obtain ⟨v1, v2, v3, rfl, f1, f2, f3⟩ := evs_three hvs
  unfold cpDst at f1
  rw [ev_add2 (ev_lw b2) (ev_mul2 (ev_lw hKn) (ev_lw a3))] at f1
  cases f1
  rw [ev_lw a3] at f3
  cases f3
  refine memcov_dst hSH hN (W := d1) (KB := Kn) ?_ hk v2
  rcases b3 with ⟨-, e⟩ | ⟨-, -, e⟩
  · exact Or.inr e
  · exact Or.inl e

theorem srt_tailJ {a : AwE σ} (hK : AwOK a) {c : SC} (hSH : SH a.C a.Γ0 a.h0 c)
    (hN : c.N.toNat < 2 ^ 63)
    (hmem : ASp a X (nm "memcpy") (fun vs _ => MemCov a vs) (fun _ _ _ => True))
    {W L M R : BitVec 64} (hRN : R.toNat ≤ c.N.toNat) {Ret : ValueHOL 64 → Prop} :
    HoareG σ X (APre a (MIx a.p0.hp c W L M R 0))
      (.while (.cmp .less (lv jjN) (lv rightN)) srtTailJ) (AQ a (MIx a.p0.hp c W L M R 0) Ret) := by
  refine hoareG_whileA hK (J := MIx a.p0.hp c W L M R 0) ?_ (fun s _ h _ => h)
  let L1 : Locals → Prop := fun m => MIx a.p0.hp c W L M R 0 m ∧ ∃ J : BitVec 64, Lk jjN J m ∧
    J.toNat < R.toNat
  have key : HoareG σ X (APre a L1) srtTailJ (AQ a (MIx a.p0.hp c W L M R 0) Ret) := by
    unfold srtTailJ
    refine hoareG_seqA (L2 := L1) (srt_cp hK hSH hN hmem (x2 := cpSrc jjN) ?_) ?_
    · intro m ⟨⟨hb, I, J, Kn, hI, hJ, hKn, f1, f2, f3, f4, f5⟩, J', hJ', hlt⟩
      have hee := lk_inj hJ' hJ
      rw [hee] at hlt
      exact ⟨hb.1, Kn, hKn, by omega⟩
    refine hoareG_seqA (L2 := MIx a.p0.hp c W L M R 1) (hoareG_assignA hK fun s _ hL v hv => ?_) ?_
    · obtain ⟨⟨hb, I, J, Kn, hI, hJ, hKn, f1, f2, f3, f4, f5⟩, J', hJ', hlt⟩ := hL
      have hee := lk_inj hJ' hJ
      rw [hee] at hlt
      rw [ev_add2 (ev_lw hJ) (ev_cw _ 1)] at hv
      cases hv
      have hJ1 : (J + BitVec.ofNat 64 1).toNat = J.toNat + 1 := toNat_addc (by omega)
      exact ⟨mb_upd (by decide) hb, I, J + BitVec.ofNat 64 1, Kn, lk_updo (by decide) hI,
        lk_new _ _ _, lk_updo (by decide) hKn, f1, f2, by rw [hJ1]; omega, by rw [hJ1]; omega,
        by rw [hJ1]; omega⟩
    · refine hoareG_assignA hK fun s _ hL v hv => ?_
      obtain ⟨hb, I, J, Kn, hI, hJ, hKn, f1, f2, f3, f4, f5⟩ := hL
      rw [ev_add2 (ev_lw hKn) (ev_cw _ 1)] at hv
      cases hv
      have hK1 : (Kn + BitVec.ofNat 64 1).toNat = Kn.toNat + 1 := toNat_addc (by omega)
      exact ⟨mb_upd (by decide) hb, I, J, Kn + BitVec.ofNat 64 1, lk_updo (by decide) hI,
        lk_updo (by decide) hJ, lk_new _ _ _, f1, f2, f3, f4, by rw [hK1]; omega⟩
  refine hoareG_pre key (fun s hs ⟨hP, hc⟩ => ⟨hP.1, hP.2, ?_⟩)
  obtain ⟨hb, I, J, Kn, hI, hJ, hKn, f1, f2, f3, f4, f5⟩ := hP.2
  obtain ⟨w, hw, hw0⟩ := hc
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
  rw [ev_lw hJ] at hx
  cases hx
  rw [ev_lw hb.2.2.2.2] at hy
  cases hy
  have := less_lt (by omega) hxy
  exact ⟨J, hJ, this.2⟩

theorem mix_upd {hp : Nat} {c : SC} {W L M R : BitVec 64} {d : Nat} {m : Locals} {x : MlS}
    {v : ValueHOL 64} (hx : x ∉ MBnames) (hi : x ≠ iN) (hj : x ≠ jjN) (hk : x ≠ kkN)
    (h : MIx hp c W L M R d m) : MIx hp c W L M R d (m.update (x, v)) := by
  obtain ⟨hb, I, J, Kn, a1, a2, a3, r⟩ := h
  exact ⟨mb_upd hx hb, I, J, Kn, lk_updo hi a1, lk_updo hj a2, lk_updo hk a3, r⟩

theorem mix_res {hp : Nat} {c : SC} {W L M R : BitVec 64} {d : Nat} {m : Locals} {x : MlS}
    {o : Option (ValueHOL 64)} (hx : x ∉ MBnames) (hi : x ≠ iN) (hj : x ≠ jjN) (hk : x ≠ kkN)
    (h : MIx hp c W L M R d m) : MIx hp c W L M R d (m.resVarEq (x, o)) := by
  obtain ⟨hb, I, J, Kn, a1, a2, a3, r⟩ := h
  exact ⟨mb_res hx hb, I, J, Kn, lk_res hi a1, lk_res hj a2, lk_res hk a3, r⟩

theorem mix_inc_i {a : AwE σ} (hK : AwOK a) {c : SC} {W L M R : BitVec 64} {d : Nat}
    {Ret : ValueHOL 64 → Prop} :
    HoareG σ X (APre a (fun m => MIx a.p0.hp c W L M R d m ∧ ∃ I : BitVec 64, Lk iN I m ∧
      I.toNat < M.toNat)) (.assign .local iN (.op .add [lv iN, cw 1]))
      (AQ a (MIx a.p0.hp c W L M R (d + 1)) Ret) := by
  refine hoareG_assignA hK fun s _ hL v hv => ?_
  obtain ⟨⟨hb, I, J, Kn, hI, hJ, hKn, f1, f2, f3, f4, f5⟩, I', hI', hlt⟩ := hL
  have hee := lk_inj hI' hI
  rw [hee] at hlt
  rw [ev_add2 (ev_lw hI) (ev_cw _ 1)] at hv
  cases hv
  have hI1 : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := toNat_addc (by have := I.isLt; omega)
  exact ⟨mb_upd (by decide) hb, I + BitVec.ofNat 64 1, J, Kn, lk_new _ _ _, lk_updo (by decide) hJ,
    lk_updo (by decide) hKn, by rw [hI1]; omega, by rw [hI1]; omega, f3, f4, by rw [hI1]; omega⟩

theorem mix_inc_j {a : AwE σ} (hK : AwOK a) {c : SC} {W L M R : BitVec 64} {d : Nat}
    {Ret : ValueHOL 64 → Prop} :
    HoareG σ X (APre a (fun m => MIx a.p0.hp c W L M R d m ∧ ∃ J : BitVec 64, Lk jjN J m ∧
      J.toNat < R.toNat)) (.assign .local jjN (.op .add [lv jjN, cw 1]))
      (AQ a (MIx a.p0.hp c W L M R (d + 1)) Ret) := by
  refine hoareG_assignA hK fun s _ hL v hv => ?_
  obtain ⟨⟨hb, I, J, Kn, hI, hJ, hKn, f1, f2, f3, f4, f5⟩, J', hJ', hlt⟩ := hL
  have hee := lk_inj hJ' hJ
  rw [hee] at hlt
  rw [ev_add2 (ev_lw hJ) (ev_cw _ 1)] at hv
  cases hv
  have hJ1 : (J + BitVec.ofNat 64 1).toNat = J.toNat + 1 := toNat_addc (by have := J.isLt; omega)
  exact ⟨mb_upd (by decide) hb, I, J + BitVec.ofNat 64 1, Kn, lk_updo (by decide) hI, lk_new _ _ _,
    lk_updo (by decide) hKn, f1, f2, by rw [hJ1]; omega, by rw [hJ1]; omega, by rw [hJ1]; omega⟩

theorem mix_inc_k {a : AwE σ} (hK : AwOK a) {c : SC} {W L M R : BitVec 64} {d : Nat}
    {Ret : ValueHOL 64 → Prop} :
    HoareG σ X (APre a (MIx a.p0.hp c W L M R (d + 1))) (.assign .local kkN (.op .add [lv kkN, cw 1]))
      (AQ a (MIx a.p0.hp c W L M R d) Ret) := by
  refine hoareG_assignA hK fun s _ hL v hv => ?_
  obtain ⟨hb, I, J, Kn, hI, hJ, hKn, f1, f2, f3, f4, f5⟩ := hL
  rw [ev_add2 (ev_lw hKn) (ev_cw _ 1)] at hv
  cases hv
  have hK1 : (Kn + BitVec.ofNat 64 1).toNat = Kn.toNat + 1 := toNat_addc (by have := Kn.isLt; omega)
  exact ⟨mb_upd (by decide) hb, I, J, Kn + BitVec.ofNat 64 1, lk_updo (by decide) hI,
    lk_updo (by decide) hJ, lk_new _ _ _, f1, f2, f3, f4, by rw [hK1]; omega⟩

theorem srt_tailI {a : AwE σ} (hK : AwOK a) {c : SC} (hSH : SH a.C a.Γ0 a.h0 c)
    (hN : c.N.toNat < 2 ^ 63)
    (hmem : ASp a X (nm "memcpy") (fun vs _ => MemCov a vs) (fun _ _ _ => True))
    {W L M R : BitVec 64} (hRN : R.toNat ≤ c.N.toNat) {Ret : ValueHOL 64 → Prop} :
    HoareG σ X (APre a (MIx a.p0.hp c W L M R 0))
      (.while (.cmp .less (lv iN) (lv midN)) srtTailI) (AQ a (MIx a.p0.hp c W L M R 0) Ret) := by
  refine hoareG_whileA hK (J := MIx a.p0.hp c W L M R 0) ?_ (fun s _ h _ => h)
  let L1 : Locals → Prop := fun m => MIx a.p0.hp c W L M R 0 m ∧ ∃ I : BitVec 64, Lk iN I m ∧
    I.toNat < M.toNat
  have key : HoareG σ X (APre a L1) srtTailI (AQ a (MIx a.p0.hp c W L M R 0) Ret) := by
    unfold srtTailI
    refine hoareG_seqA (L2 := L1) (srt_cp hK hSH hN hmem (x2 := cpSrc iN) ?_) ?_
    · intro m ⟨⟨hb, I, J, Kn, hI, hJ, hKn, f1, f2, f3, f4, f5⟩, I', hI', hlt⟩
      have hee := lk_inj hI' hI
      rw [hee] at hlt
      exact ⟨hb.1, Kn, hKn, by omega⟩
    exact hoareG_seqA (L2 := MIx a.p0.hp c W L M R 1) (mix_inc_i hK) (mix_inc_k hK)
  refine hoareG_pre key (fun s hs ⟨hP, hc⟩ => ⟨hP.1, hP.2, ?_⟩)
  obtain ⟨hb, I, J, Kn, hI, hJ, hKn, f1, f2, f3, f4, f5⟩ := hP.2
  obtain ⟨w, hw, hw0⟩ := hc
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
  rw [ev_lw hI] at hx
  cases hx
  rw [ev_lw hb.2.2.2.1] at hy
  cases hy
  have := less_lt (by omega) hxy
  exact ⟨I, hI, this.2⟩

theorem srt_step {a : AwE σ} (hK : AwOK a) {c : SC} (hSH : SH a.C a.Γ0 a.h0 c)
    (hN : c.N.toNat < 2 ^ 63)
    (hmem : ASp a X (nm "memcpy") (fun vs _ => MemCov a vs) (fun _ _ _ => True))
    (hgt : ASp a X (nm "bal_sort_gt") (fun _ _ => True) (fun _ _ _ => True))
    {W L M R : BitVec 64} (hRN : R.toNat ≤ c.N.toNat) {Ret : ValueHOL 64 → Prop} :
    HoareG σ X (APre a (fun m => MIx a.p0.hp c W L M R 0 m ∧ ∃ I J : BitVec 64, Lk iN I m ∧
      Lk jjN J m ∧ I.toNat < M.toNat ∧ J.toNat < R.toNat)) srtStep
      (AQ a (MIx a.p0.hp c W L M R 0) Ret) := by
  let L1 : Locals → Prop := fun m => MIx a.p0.hp c W L M R 0 m ∧ ∃ I J : BitVec 64, Lk iN I m ∧
      Lk jjN J m ∧ I.toNat < M.toNat ∧ J.toNat < R.toNat
  have hL1k : ∀ m, L1 m → SBs a.p0.hp c m ∧ ∃ Kn : BitVec 64, Lk kkN Kn m ∧ Kn.toNat < c.N.toNat := by
    intro m ⟨⟨hb, I, J, Kn, hI, hJ, hKn, f1, f2, f3, f4, f5⟩, I', J', hI', hJ', hlt1, hlt2⟩
    have e1 := lk_inj hI' hI
    have e2 := lk_inj hJ' hJ
    rw [e1] at hlt1
    rw [e2] at hlt2
    exact ⟨hb.1, Kn, hKn, by omega⟩
  have hL1u : ∀ (m : Locals) (x : MlS) (v : ValueHOL 64), L1 m → x ∉ MBnames → x ≠ iN → x ≠ jjN →
      x ≠ kkN → L1 (m.update (x, v)) := by
    intro m x v ⟨hm, I, J, hI, hJ, i1, i2⟩ h1 h2 h3 h4
    exact ⟨mix_upd h1 h2 h3 h4 hm, I, J, lk_updo h2 hI, lk_updo h3 hJ, i1, i2⟩
  unfold srtStep
  refine hoareG_decA hK (L' := fun _ m' => MIx a.p0.hp c W L M R 0 m') ?_
    (fun m m' _ h => mix_res (by decide) (by decide) (by decide) (by decide) h)
  intro s1 hs1 hL1 v1 hv1 hsh1
  refine hoareG_preA (L' := L1) ?_ (fun m hm => by
    subst hm
    exact hL1u _ _ _ hL1 (by decide) (by decide) (by decide) (by decide))
  refine hoareG_decA hK (L' := fun _ m' => MIx a.p0.hp c W L M R 0 m') ?_
    (fun m m' _ h => mix_res (by decide) (by decide) (by decide) (by decide) h)
  intro s2 hs2 hL2 v2 hv2 hsh2
  refine hoareG_preA (L' := L1) ?_ (fun m hm => by
    subst hm
    exact hL1u _ _ _ hL2 (by decide) (by decide) (by decide) (by decide))
  refine hoareG_decCallAs' hK hgt (Lk := L1) (L' := fun _ m' => MIx a.p0.hp c W L M R 0 m') ?_ ?_ ?_
    (fun m m' _ h => mix_res (by decide) (by decide) (by decide) (by decide) h)
  · intro s hs hP vs hvs callee
    trivial
  · intro s vs v st hL hvs hRet hsh
    exact hL1u _ _ _ hL (by decide) (by decide) (by decide) (by decide)
  intro s3
  refine hoareG_seqA (L2 := MIx a.p0.hp c W L M R 1) (hoareG_iteA ?_ ?_) (mix_inc_k hK)
  · refine hoareG_seqA (L2 := L1) (srt_cp hK hSH hN hmem (x2 := lv aN) hL1k) ?_
    refine hoareG_pre (mix_inc_i hK) (fun s _ h => ⟨h.1, h.2.1, ?_⟩)
    obtain ⟨⟨hb, I, J, Kn, hI, hJ, hKn, f1, f2, f3, f4, f5⟩, I', J', hI', hJ', hlt1, hlt2⟩ := h.2
    exact ⟨I', hI', hlt1⟩
  · refine hoareG_seqA (L2 := L1) (srt_cp hK hSH hN hmem (x2 := lv bN) hL1k) ?_
    refine hoareG_pre (mix_inc_j hK) (fun s _ h => ⟨h.1, h.2.1, ?_⟩)
    obtain ⟨⟨hb, I, J, Kn, hI, hJ, hKn, f1, f2, f3, f4, f5⟩, I', J', hI', hJ', hlt1, hlt2⟩ := h.2
    exact ⟨J', hJ', hlt2⟩

theorem srt_merge {a : AwE σ} (hK : AwOK a) {c : SC} (hSH : SH a.C a.Γ0 a.h0 c)
    (hN : c.N.toNat < 2 ^ 63)
    (hmem : ASp a X (nm "memcpy") (fun vs _ => MemCov a vs) (fun _ _ _ => True))
    (hgt : ASp a X (nm "bal_sort_gt") (fun _ _ => True) (fun _ _ _ => True))
    {W L M R : BitVec 64} (hRN : R.toNat ≤ c.N.toNat) (hW1 : 1 ≤ W.toNat) (hW2 : W.toNat < c.N.toNat)
    {Ret : ValueHOL 64 → Prop} :
    HoareG σ X (APre a (MIx a.p0.hp c W L M R 0)) srtMerge (AQ a (SrI a.p0.hp c) Ret) := by
  unfold srtMerge
  refine hoareG_seqA (L2 := MIx a.p0.hp c W L M R 0) ?_ (hoareG_seqA (L2 := MIx a.p0.hp c W L M R 0)
    (srt_tailI hK hSH hN hmem hRN) (hoareG_seqA (L2 := MIx a.p0.hp c W L M R 0)
      (srt_tailJ hK hSH hN hmem hRN) ?_))
  · refine hoareG_whileA hK (J := MIx a.p0.hp c W L M R 0) ?_ (fun s _ h _ => h)
    refine hoareG_pre (srt_step hK hSH hN hmem hgt hRN) (fun s hs ⟨hP, hc⟩ => ⟨hP.1, hP.2, ?_⟩)
    obtain ⟨hb, I, J, Kn, hI, hJ, hKn, f1, f2, f3, f4, f5⟩ := hP.2
    have := srtCond_true (ev_lw_lk hI) (ev_lw_lk hb.2.2.2.1) (ev_lw_lk hJ) (ev_lw_lk hb.2.2.2.2) hc
    have h1 := less_lt (by omega) this.1
    have h2 := less_lt (by omega) this.2
    exact ⟨I, J, hI, hJ, h1.2, h2.2⟩
  · refine hoareG_assignA hK fun s _ hL v hv => ?_
    obtain ⟨hb, I, J, Kn, hI, hJ, hKn, f1, f2, f3, f4, f5⟩ := hL
    rw [ev_lw hb.2.2.2.2] at hv
    cases hv
    exact ⟨⟨sbs_upd (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) hb.1, W, lk_updo (by decide) hb.2.1, hW1, hW2⟩, R, lk_new _ _ _, hRN⟩

def SBnames : List MlS := [pN, nN, eszN, kindN, auxN, markN, srcN, dstN]

theorem sbs_upd2 {hp : Nat} {c : SC} {m : Locals} {x : MlS} {v : ValueHOL 64}
    (hx : x ∉ SBnames) (h : SBs hp c m) : SBs hp c (m.update (x, v)) := by
  have n1 : x ≠ pN := fun e => hx (by rw [e]; simp [SBnames])
  have n2 : x ≠ nN := fun e => hx (by rw [e]; simp [SBnames])
  have n3 : x ≠ eszN := fun e => hx (by rw [e]; simp [SBnames])
  have n4 : x ≠ kindN := fun e => hx (by rw [e]; simp [SBnames])
  have n5 : x ≠ auxN := fun e => hx (by rw [e]; simp [SBnames])
  have n6 : x ≠ markN := fun e => hx (by rw [e]; simp [SBnames])
  have n7 : x ≠ srcN := fun e => hx (by rw [e]; simp [SBnames])
  have n8 : x ≠ dstN := fun e => hx (by rw [e]; simp [SBnames])
  exact sbs_upd n1 n2 n3 n4 n5 n6 n7 n8 h

theorem sbs_res2 {hp : Nat} {c : SC} {m : Locals} {x : MlS} {o : Option (ValueHOL 64)}
    (hx : x ∉ SBnames) (h : SBs hp c m) : SBs hp c (m.resVarEq (x, o)) := by
  have n1 : x ≠ pN := fun e => hx (by rw [e]; simp [SBnames])
  have n2 : x ≠ nN := fun e => hx (by rw [e]; simp [SBnames])
  have n3 : x ≠ eszN := fun e => hx (by rw [e]; simp [SBnames])
  have n4 : x ≠ kindN := fun e => hx (by rw [e]; simp [SBnames])
  have n5 : x ≠ auxN := fun e => hx (by rw [e]; simp [SBnames])
  have n6 : x ≠ markN := fun e => hx (by rw [e]; simp [SBnames])
  have n7 : x ≠ srcN := fun e => hx (by rw [e]; simp [SBnames])
  have n8 : x ≠ dstN := fun e => hx (by rw [e]; simp [SBnames])
  exact sbs_res n1 n2 n3 n4 n5 n6 n7 n8 h

theorem lower_iff {x y : BitVec 64} : wordCmpHOL .lower x y = true ↔ x.toNat < y.toNat := by
  simp [wordCmpHOL, BitVec.lt_def]

/-- `SrI` after the inner-loop body's `dec`s: the names introduced there are not part of it. -/
theorem sri_res2 {hp : Nat} {c : SC} {m : Locals} {x : MlS} {o : Option (ValueHOL 64)}
    (h1 : x ≠ pN) (h2 : x ≠ nN) (h3 : x ≠ eszN) (h4 : x ≠ kindN) (h5 : x ≠ auxN) (h6 : x ≠ markN)
    (h7 : x ≠ srcN) (h8 : x ≠ dstN) (h9 : x ≠ widthN) (h10 : x ≠ leftN) (h : SrI hp c m) :
    SrI hp c (m.resVarEq (x, o)) := sri_res h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h

def MB1 (hp : Nat) (c : SC) (W L M : BitVec 64) (m : Locals) : Prop :=
  SBs hp c m ∧ Lk widthN W m ∧ Lk leftN L m ∧ Lk midN M m

theorem srt_inner {a : AwE σ} (hK : AwOK a) {c : SC} (hSH : SH a.C a.Γ0 a.h0 c)
    (hN : c.N.toNat < 2 ^ 63)
    (hmem : ASp a X (nm "memcpy") (fun vs _ => MemCov a vs) (fun _ _ _ => True))
    (hgt : ASp a X (nm "bal_sort_gt") (fun _ _ => True) (fun _ _ _ => True))
    {Ret : ValueHOL 64 → Prop} :
    HoareG σ X (APre a (SrI a.p0.hp c)) srtInner (AQ a (SrI a.p0.hp c) Ret) := by
  have hd : domTop = 1099511627776 := by decide
  have hbig := hSH.big hN
  have hcN : c.N.toNat ≤ domTop := hbig.1
  refine hoareG_pre (hoareG_exF (α := BitVec 64 × BitVec 64)
    (F := fun x => 1 ≤ x.1.toNat ∧ x.1.toNat < c.N.toNat ∧ x.2.toNat ≤ c.N.toNat)
    (B := fun x m => SBs a.p0.hp c m ∧ Lk widthN x.1 m ∧ Lk leftN x.2 m) ?_)
    (fun s _ ⟨hI, ⟨hb, W, hW, w1, w2⟩, L, hL, l1⟩ => ⟨hI, (W, L), ⟨w1, w2, l1⟩, hb, hW, hL⟩)
  rintro ⟨W, L⟩ ⟨hW1, hW2, hL1⟩
  unfold srtInner
  -- mid
  refine hoareG_decA hK (L' := fun _ m' => SrI a.p0.hp c m') ?_
    (fun m m' _ h => sri_res2 (by decide) (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide) (by decide) h)
  intro s1 hs1 hL1' v1 hv1 hsh1
  obtain ⟨hb, hW, hL⟩ := hL1'
  rw [ev_add2 (ev_lw hL) (ev_lw hW)] at hv1
  cases hv1
  have hM0 : (L + W).toNat = L.toNat + W.toNat := toNat_add2 (by simp at hW1 hW2 hL1; omega)
  refine hoareG_preA (L' := MB1 a.p0.hp c W L (L + W)) ?_ (fun m hm => by
    subst hm
    exact ⟨sbs_upd2 (by decide) hb, lk_updo (by decide) hW, lk_updo (by decide) hL, lk_new _ _ _⟩)
  -- if n < mid then mid = n
  refine hoareG_seqA (L2 := fun m => ∃ M : BitVec 64, (L.toNat ≤ M.toNat ∧ M.toNat ≤ c.N.toNat ∧
      M.toNat ≤ L.toNat + W.toNat) ∧ MB1 a.p0.hp c W L M m) (hoareG_iteC ?_ ?_) ?_
  · refine hoareG_pre (hoareG_assignA hK (L := fun m => MB1 a.p0.hp c W L (L + W) m ∧
        c.N.toNat < L.toNat + W.toNat) (L' := fun m => ∃ M : BitVec 64, (L.toNat ≤ M.toNat ∧
          M.toNat ≤ c.N.toNat ∧ M.toNat ≤ L.toNat + W.toNat) ∧ MB1 a.p0.hp c W L M m) (Ret := Ret)
        fun s _ hL' v hv => ?_) (fun s _ h => ⟨h.1.1, h.1.2, ?_⟩)
    · obtain ⟨⟨hb, hW', hL', hM⟩, hlt⟩ := hL'
      rw [ev_lw hb.2.1] at hv
      cases hv
      exact ⟨c.N, ⟨hL1, Nat.le_refl _, by omega⟩, sbs_upd2 (by decide) hb,
        lk_updo (by decide) hW', lk_updo (by decide) hL', lk_new _ _ _⟩
    · obtain ⟨w, hw, hw0⟩ := h.2
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
      rw [ev_lw h.1.2.1.2.1] at hx
      cases hx
      rw [ev_lw h.1.2.2.2.2] at hy
      cases hy
      rw [← hM0]
      exact lower_iff.mp hxy
  · refine hoareG_pre (hoareG_skipA (L := fun m => MB1 a.p0.hp c W L (L + W) m ∧
        L.toNat + W.toNat ≤ c.N.toNat) (L' := fun m => ∃ M : BitVec 64, (L.toNat ≤ M.toNat ∧
          M.toNat ≤ c.N.toNat ∧ M.toNat ≤ L.toNat + W.toNat) ∧ MB1 a.p0.hp c W L M m) (Ret := Ret)
        fun m ⟨hm, hle⟩ => ⟨L + W, ⟨by omega, by omega, by omega⟩, hm⟩) (fun s _ h => ⟨h.1.1, h.1.2, ?_⟩)
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false h.2
    rw [ev_lw h.1.2.1.2.1] at hx
    cases hx
    rw [ev_lw h.1.2.2.2.2] at hy
    cases hy
    have hnl : ¬ (c.N.toNat < (L + W).toNat) := fun hh => by
      have := lower_iff.mpr hh
      rw [hxy] at this
      exact absurd this (by decide)
    rw [hM0] at hnl
    omega
  refine hoareG_exF (α := BitVec 64) (F := fun M => L.toNat ≤ M.toNat ∧ M.toNat ≤ c.N.toNat ∧
      M.toNat ≤ L.toNat + W.toNat) (B := fun M m => MB1 a.p0.hp c W L M m) (fun M hMf => ?_)
  obtain ⟨hLM, hMN, hMW⟩ := hMf
  -- right = mid + width
  refine hoareG_decA hK (L' := fun _ m' => SrI a.p0.hp c m') ?_
    (fun m m' _ h => sri_res2 (by decide) (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide) (by decide) h)
  intro s2 hs2 hL2 v2 hv2 hsh2
  obtain ⟨hb, hW, hL, hM⟩ := hL2
  rw [ev_add2 (ev_lw hM) (ev_lw hW)] at hv2
  cases hv2
  have hR0 : (M + W).toNat = M.toNat + W.toNat := toNat_add2 (by simp at hW1 hW2 hL1; omega)
  refine hoareG_preA (L' := MB a.p0.hp c W L M (M + W)) ?_ (fun m hm => by
    subst hm
    exact ⟨sbs_upd2 (by decide) hb, lk_updo (by decide) hW, lk_updo (by decide) hL,
      lk_updo (by decide) hM, lk_new _ _ _⟩)
  refine hoareG_seqA (L2 := fun m => ∃ R : BitVec 64, (M.toNat ≤ R.toNat ∧ R.toNat ≤ c.N.toNat ∧
      R.toNat ≤ M.toNat + W.toNat) ∧ MB a.p0.hp c W L M R m) (hoareG_iteC ?_ ?_) ?_
  · refine hoareG_pre (hoareG_assignA hK (L := fun m => MB a.p0.hp c W L M (M + W) m ∧
        c.N.toNat < M.toNat + W.toNat) (L' := fun m => ∃ R : BitVec 64, (M.toNat ≤ R.toNat ∧
          R.toNat ≤ c.N.toNat ∧ R.toNat ≤ M.toNat + W.toNat) ∧ MB a.p0.hp c W L M R m) (Ret := Ret)
        fun s _ hL' v hv => ?_) (fun s _ h => ⟨h.1.1, h.1.2, ?_⟩)
    · obtain ⟨⟨hb', hW', hL', hM', hR'⟩, hlt⟩ := hL'
      rw [ev_lw hb'.2.1] at hv
      cases hv
      exact ⟨c.N, ⟨hMN, Nat.le_refl _, by omega⟩, sbs_upd2 (by decide) hb',
        lk_updo (by decide) hW', lk_updo (by decide) hL', lk_updo (by decide) hM', lk_new _ _ _⟩
    · obtain ⟨w, hw, hw0⟩ := h.2
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
      rw [ev_lw h.1.2.1.2.1] at hx
      cases hx
      rw [ev_lw h.1.2.2.2.2.2] at hy
      cases hy
      rw [← hR0]
      exact lower_iff.mp hxy
  · refine hoareG_pre (hoareG_skipA (L := fun m => MB a.p0.hp c W L M (M + W) m ∧
        M.toNat + W.toNat ≤ c.N.toNat) (L' := fun m => ∃ R : BitVec 64, (M.toNat ≤ R.toNat ∧
          R.toNat ≤ c.N.toNat ∧ R.toNat ≤ M.toNat + W.toNat) ∧ MB a.p0.hp c W L M R m) (Ret := Ret)
        fun m ⟨hm, hle⟩ => ⟨M + W, ⟨by omega, by omega, by omega⟩, hm⟩) (fun s _ h => ⟨h.1.1, h.1.2, ?_⟩)
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false h.2
    rw [ev_lw h.1.2.1.2.1] at hx
    cases hx
    rw [ev_lw h.1.2.2.2.2.2] at hy
    cases hy
    have hnl : ¬ (c.N.toNat < (M + W).toNat) := fun hh => by
      have := lower_iff.mpr hh
      rw [hxy] at this
      exact absurd this (by decide)
    rw [hR0] at hnl
    omega
  refine hoareG_exF (α := BitVec 64) (F := fun R => M.toNat ≤ R.toNat ∧ R.toNat ≤ c.N.toNat ∧
      R.toNat ≤ M.toNat + W.toNat) (B := fun R m => MB a.p0.hp c W L M R m) (fun R hRf => ?_)
  obtain ⟨hMR, hRN, hRW⟩ := hRf
  have hLM' : L.toNat ≤ M.toNat := hLM
  have hresx : ∀ (m m' : Locals) (x : MlS), x ∉ SBnames → x ≠ widthN → x ≠ leftN →
      SrI a.p0.hp c m' → SrI a.p0.hp c (m'.resVarEq (x, m.lookup x)) := by
    intro m m' x h1 h2 h3 h
    exact sri_res2 (fun e => h1 (by rw [e]; simp [SBnames])) (fun e => h1 (by rw [e]; simp [SBnames]))
      (fun e => h1 (by rw [e]; simp [SBnames])) (fun e => h1 (by rw [e]; simp [SBnames]))
      (fun e => h1 (by rw [e]; simp [SBnames])) (fun e => h1 (by rw [e]; simp [SBnames]))
      (fun e => h1 (by rw [e]; simp [SBnames])) (fun e => h1 (by rw [e]; simp [SBnames])) h2 h3 h
  -- i = left
  refine hoareG_decA hK (L' := fun _ m' => SrI a.p0.hp c m') ?_
    (fun m m' _ h => hresx m m' iN (by decide) (by decide) (by decide) h)
  intro s3 hs3 hL3 v3 hv3 hsh3
  obtain ⟨hb3, hW3, hL3', hM3, hR3⟩ := hL3
  rw [ev_lw hL3'] at hv3
  cases hv3
  refine hoareG_preA (L' := fun m => MB a.p0.hp c W L M R m ∧ Lk iN L m) ?_ (fun m hm => by
    subst hm
    exact ⟨mb_upd (by decide) ⟨hb3, hW3, hL3', hM3, hR3⟩, lk_new _ _ _⟩)
  refine hoareG_decA hK (L' := fun _ m' => SrI a.p0.hp c m') ?_
    (fun m m' _ h => hresx m m' jjN (by decide) (by decide) (by decide) h)
  intro s4 hs4 hL4 v4 hv4 hsh4
  obtain ⟨hb4, hi4⟩ := hL4
  rw [ev_lw hb4.2.2.2.1] at hv4
  cases hv4
  refine hoareG_preA (L' := fun m => (MB a.p0.hp c W L M R m ∧ Lk iN L m) ∧ Lk jjN M m) ?_
    (fun m hm => by
      subst hm
      exact ⟨⟨mb_upd (by decide) hb4, lk_updo (by decide) hi4⟩, lk_new _ _ _⟩)
  refine hoareG_decA hK (L' := fun _ m' => SrI a.p0.hp c m') ?_
    (fun m m' _ h => hresx m m' kkN (by decide) (by decide) (by decide) h)
  intro s5 hs5 hL5 v5 hv5 hsh5
  obtain ⟨⟨hb5, hi5⟩, hj5⟩ := hL5
  rw [ev_lw hb5.2.2.1] at hv5
  cases hv5
  refine hoareG_preA (L' := MIx a.p0.hp c W L M R 0) ?_ (fun m hm => by
    subst hm
    exact ⟨mb_upd (by decide) hb5, L, M, L, lk_updo (by decide) hi5, lk_updo (by decide) hj5,
      lk_new _ _ _, Nat.le_refl _, hLM', Nat.le_refl _, hMR, by omega⟩)
  exact srt_merge hK hSH hN hmem hgt hRN hW1 hW2

end InitECandidate.Solver.MemSafe.Aw
