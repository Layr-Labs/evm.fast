import InitECandidate.Solver.MemSafe.Rec.ChkOffN

set_option autoImplicit false

/-!
# `udivmod` and `ssz_fixed_list_count`: the value

`funSpec_udivmod_val`: a returned `udivmod(A, B)` with `0 < B ≤ 2^32` is `<Q, R>` with `Q B + R = A`.
`funSpec_sfc_val`: a returned `ssz_fixed_list_count(L, S, M)` with `0 < S ≤ 2^32` is `Q` with `Q S = L`.

`decode_payload` needs the second one: the withdrawal array `[wd, wd + 44 n)` lies in the buffer.
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Dec (eq_of_then)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

/-! ## The code -/

def udmCond : ExpHOL 64 := .cmp .less (cw 0) (lv (nm "i"))

def udmIf : ProgHOL 64 :=
  .ite (.cmp .notLower (lv (nm "r")) (lv (nm "b")))
    (.seq (.assign .local (nm "r") (.op .sub [lv (nm "r"), lv (nm "b")]))
      (.assign .local (nm "q") (.op .or [lv (nm "q"), .shift .lsl (cw 1) (lv (nm "i"))])))
    .skip

def udmLoop : ProgHOL 64 :=
  .seq (.assign .local (nm "i") (.op .sub [lv (nm "i"), cw 1]))
    (.seq (.assign .local (nm "r") (.op .or [.shift .lsl (lv (nm "r")) (cw 1),
        .op .and [.shift .lsr (lv (nm "a")) (lv (nm "i")), cw 1]]))
      udmIf)

def udmBody : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (lv (nm "b")) (cw 0)) (callD (nm "trap_with") [cw 2]) .skip)
    (.seq (.ite (.cmp .lower (lv (nm "a")) (lv (nm "b"))) (.return (.rstruct [cw 0, lv (nm "a")])) .skip)
      (.dec (nm "q") .one (cw 0) (.dec (nm "r") .one (cw 0) (.dec (nm "i") .one (cw 64)
        (.seq (.while udmCond udmLoop) (.return (.rstruct [lv (nm "q"), lv (nm "r")])))))))

def udmPs : List (MlS × ShapeHOL) := [(nm "a", .one), (nm "b", .one)]

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_udivmod : fnEntry Guest.Software.guestFn_udivmod =
    (nm "udivmod", udmPs, udmBody, .comb [.one, .one]) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_udivmod : guestCode (nm "udivmod") = some (udmPs, udmBody, .comb [.one, .one]) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 33) (by decide)) ⟨_, rfl⟩
    entry_udivmod

def sfcTail : ProgHOL 64 :=
  .seq (.ite (.cmp .notEqual (.rfield 1 (lv (nm "qr"))) (cw 0)) (callD (nm "ssz_fail") [cw 30]) .skip)
    (.seq (.ite (.cmp .lower (lv (nm "lim")) (.rfield 0 (lv (nm "qr"))))
        (callD (nm "ssz_fail") [cw 31]) .skip)
      (.return (.rfield 0 (lv (nm "qr")))))

def sfcBody : ProgHOL 64 :=
  .decCall (nm "qr") (.comb [.one, .one]) (nm "udivmod") [lv (nm "len"), lv (nm "sz")] sfcTail

def sfcPs : List (MlS × ShapeHOL) := [(nm "len", .one), (nm "sz", .one), (nm "lim", .one)]

/-! ## The arithmetic of one step -/

/-- The loop invariant, on numbers. -/
def UdN (A B Q R I : Nat) : Prop :=
  R < B ∧ Q % 2 ^ I = 0 ∧ Q * B + R * 2 ^ I + A % 2 ^ I = A

theorem udN_start {A B : Nat} (hB : 0 < B) (hA : A < 2 ^ 64) : UdN A B 0 0 64 := by
  refine ⟨hB, by simp, ?_⟩
  simp only [Nat.zero_mul, Nat.zero_add]
  exact Nat.mod_eq_of_lt hA

theorem pow_mod_step (A j : Nat) : A % 2 ^ (j + 1) = 2 ^ j * ((A / 2 ^ j) % 2) + A % 2 ^ j := by
  rw [Nat.mod_pow_succ]; omega

theorem udN_taken {A B Q R j : Nat} (h : UdN A B Q R (j + 1)) {r2 : Nat}
    (hr2 : r2 = 2 * R + (A / 2 ^ j) % 2) (hge : B ≤ r2) :
    UdN A B (Q + 2 ^ j) (r2 - B) j := by
  obtain ⟨h1, h2, h3⟩ := h
  have hbit : (A / 2 ^ j) % 2 < 2 := Nat.mod_lt _ (by omega)
  refine ⟨by omega, ?_, ?_⟩
  · have hd : 2 ^ j ∣ Q := by
      have : 2 ^ (j + 1) ∣ Q := Nat.dvd_of_mod_eq_zero h2
      exact Nat.dvd_trans (Nat.pow_dvd_pow 2 (by omega)) this
    exact Nat.mod_eq_zero_of_dvd (Nat.dvd_add hd (Nat.dvd_refl _))
  · rw [pow_mod_step] at h3
    obtain ⟨d, hd⟩ : ∃ d, r2 = B + d := ⟨r2 - B, by omega⟩
    have e : r2 - B = d := by omega
    rw [e]
    have hp : 2 ^ (j + 1) = 2 * 2 ^ j := by rw [Nat.pow_succ]; omega
    rw [hp] at h3
    have hmul : (B + d) * 2 ^ j = (2 * R + (A / 2 ^ j) % 2) * 2 ^ j := by rw [← hd, hr2]
    generalize 2 ^ j = P at *
    generalize (A / P) % 2 = b at *
    generalize A % P = m at *
    have e1 : R * (2 * P) = 2 * (R * P) := by rw [Nat.mul_left_comm]
    have e2 : P * b = b * P := Nat.mul_comm _ _
    have e3 : (Q + P) * B = Q * B + B * P := by rw [Nat.add_mul, Nat.mul_comm P B]
    have e4 : (B + d) * P = B * P + d * P := Nat.add_mul _ _ _
    have e5 : (2 * R + b) * P = 2 * (R * P) + b * P := by rw [Nat.add_mul, Nat.mul_assoc]
    rw [e1, e2] at h3
    rw [e4, e5] at hmul
    rw [e3]
    omega

theorem udN_skip {A B Q R j : Nat} (h : UdN A B Q R (j + 1)) {r2 : Nat}
    (hr2 : r2 = 2 * R + (A / 2 ^ j) % 2) (hlt : r2 < B) : UdN A B Q r2 j := by
  obtain ⟨h1, h2, h3⟩ := h
  refine ⟨hlt, ?_, ?_⟩
  · have hd : 2 ^ j ∣ Q := by
      have : 2 ^ (j + 1) ∣ Q := Nat.dvd_of_mod_eq_zero h2
      exact Nat.dvd_trans (Nat.pow_dvd_pow 2 (by omega)) this
    exact Nat.mod_eq_zero_of_dvd hd
  · rw [pow_mod_step] at h3
    have hp : 2 ^ (j + 1) = 2 * 2 ^ j := by rw [Nat.pow_succ]; omega
    rw [hp] at h3
    rw [hr2]
    generalize 2 ^ j = P at *
    generalize (A / P) % 2 = b at *
    generalize A % P = m at *
    have e1 : R * (2 * P) = 2 * (R * P) := by rw [Nat.mul_left_comm]
    have e2 : P * b = b * P := Nat.mul_comm _ _
    have e5 : (2 * R + b) * P = 2 * (R * P) + b * P := by rw [Nat.add_mul, Nat.mul_assoc]
    rw [e1, e2] at h3
    rw [e5]
    omega

/-! ## The words -/

theorem ev_and2' {s : State σ} {a b : ExpHOL 64} {x y : BitVec 64}
    (ha : ev s a = some (.val (.word x))) (hb : ev s b = some (.val (.word y))) :
    ev s (.op .and [a, b]) = some (.val (.word (x &&& y))) := by
  rw [ev_op2 ha hb]
  have : wordOpHOL .and [x, y] = some (x &&& y) := by
    show wordOp .and [x, y] = _
    simp only [wordOp, List.foldr, AndOp.and, Complement.complement]
    congr 1
    have : y &&& 18446744073709551615#64 = y := by
      apply BitVec.eq_of_toNat_eq
      rw [BitVec.toNat_and]
      show y.toNat &&& (2 ^ 64 - 1) = y.toNat
      exact Nat.and_two_pow_sub_one_of_lt_two_pow y.isLt
    simp [this]
  rw [this]; rfl

/-- `(r << 1) | ((a >>> j) & 1)`. -/
theorem word_r2 (R A : BitVec 64) {j : Nat} (hR : R.toNat < 2 ^ 63) :
    ((R <<< (1 : Nat)) ||| ((A >>> j) &&& BitVec.ofNat 64 1)).toNat =
      2 * R.toNat + (A.toNat / 2 ^ j) % 2 := by
  have h1 : (R <<< (1 : Nat)).toNat = 2 * R.toNat := by
    rw [BitVec.toNat_shiftLeft, Nat.shiftLeft_eq, Nat.mod_eq_of_lt (by omega)]; omega
  have h2 : ((A >>> j) &&& BitVec.ofNat 64 1).toNat = (A.toNat / 2 ^ j) % 2 := by
    rw [BitVec.toNat_and, BitVec.toNat_ushiftRight, Nat.shiftRight_eq_div_pow]
    have : (BitVec.ofNat 64 1).toNat = 2 ^ 1 - 1 := rfl
    rw [this, Nat.and_two_pow_sub_one_eq_mod]
  rw [BitVec.toNat_or, h1, h2]
  have hlt : (A.toNat / 2 ^ j) % 2 < 2 ^ 1 := Nat.mod_lt _ (by omega)
  have := Nat.two_pow_add_eq_or_of_lt hlt R.toNat
  simp only [Nat.pow_one] at this hlt ⊢
  exact this.symm

/-- `q | (1 << j)` when `q` has no bit at or below `j`. -/
theorem word_q (Q : BitVec 64) {j : Nat} (hj : j < 64) (hQ : Q.toNat % 2 ^ (j + 1) = 0) :
    (Q ||| (BitVec.ofNat 64 1 <<< j)).toNat = Q.toNat + 2 ^ j := by
  have h1 : (BitVec.ofNat 64 1 <<< j).toNat = 2 ^ j := by
    rw [BitVec.toNat_shiftLeft, Nat.shiftLeft_eq]
    have e : (BitVec.ofNat 64 1).toNat = 1 := rfl
    rw [e, Nat.one_mul]
    exact Nat.mod_eq_of_lt (Nat.pow_lt_pow_right (by omega) hj)
  rw [BitVec.toNat_or, h1]
  have hlt : 2 ^ j < 2 ^ (j + 1) := Nat.pow_lt_pow_right (by omega) (by omega)
  obtain ⟨c, hc⟩ : 2 ^ (j + 1) ∣ Q.toNat := Nat.dvd_of_mod_eq_zero hQ
  rw [hc]
  exact (Nat.two_pow_add_eq_or_of_lt hlt c).symm

/-- The locals of the loop. -/
def UdI (A B : BitVec 64) (t : State σ) : Prop :=
  t.locals.lookup (nm "a") = some (.val (.word A)) ∧
    t.locals.lookup (nm "b") = some (.val (.word B)) ∧
    ∃ Q R I : BitVec 64, t.locals.lookup (nm "q") = some (.val (.word Q)) ∧
      t.locals.lookup (nm "r") = some (.val (.word R)) ∧
      t.locals.lookup (nm "i") = some (.val (.word I)) ∧ I.toNat ≤ 64 ∧
      UdN A.toNat B.toNat Q.toNat R.toNat I.toNat

theorem ud_body {A B : BitVec 64} (hB : B.toNat ≤ 2 ^ 32) :
    Hoare σ X (fun t => UdI A B t ∧ CondTrue t udmCond) udmLoop (fun r t => r = none ∧ UdI A B t) := by
  refine hoare_of_eq fun s hs ⟨⟨hA', hB', Q, R, I, hq, hr, hi, hI64, hN⟩, hc⟩ => ?_
  have hI0 : 0 < I.toNat := by
    have := signed_lt (x := BitVec.ofNat 64 0) (y := I) (by decide) (by omega)
      (cmp_true (ev_cw _ 0) (ev_lw hi) hc)
    simpa using this
  obtain ⟨j, hj⟩ : ∃ j, I.toNat = j + 1 := ⟨I.toNat - 1, by omega⟩
  have hIm : (I - BitVec.ofNat 64 1).toNat = j := by
    rw [BitVec.toNat_sub, BitVec.toNat_ofNat]; omega
  rw [hj] at hN
  have hRlt : R.toNat < 2 ^ 63 := by have := hN.1; omega
  unfold udmLoop
  refine hoare_seq (R := fun r t => r = none ∧ t = setVarHOLFinite (nm "i")
      (.val (.word (I - BitVec.ofNat 64 1))) s) ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_assign fun s' _ hs' v hv _ => ?_
    subst hs'
    rw [ev_sub2 (ev_lw hi) (ev_cw _ 1)] at hv
    cases hv
    exact ⟨rfl, rfl⟩
  refine hoare_pre (P := fun t => t = setVarHOLFinite (nm "i")
      (.val (.word (I - BitVec.ofNat 64 1))) s) ?_ (fun t _ h => h.2)
  set s1 := setVarHOLFinite (nm "i") (.val (.word (I - BitVec.ofNat 64 1))) s with hs1
  have ha1 : s1.locals.lookup (nm "a") = some (.val (.word A)) := by
    rw [hs1, lk_set_ne _ _ (by decide)]; exact hA'
  have hb1 : s1.locals.lookup (nm "b") = some (.val (.word B)) := by
    rw [hs1, lk_set_ne _ _ (by decide)]; exact hB'
  have hq1 : s1.locals.lookup (nm "q") = some (.val (.word Q)) := by
    rw [hs1, lk_set_ne _ _ (by decide)]; exact hq
  have hr1 : s1.locals.lookup (nm "r") = some (.val (.word R)) := by
    rw [hs1, lk_set_ne _ _ (by decide)]; exact hr
  have hi1 : s1.locals.lookup (nm "i") = some (.val (.word (I - BitVec.ofNat 64 1))) :=
    lk_set_self _ _ _
  have hj64 : j < 64 := by omega
  have hsh1 : ev s1 (.shift .lsl (lv (nm "r")) (cw 1)) = some (.val (.word (R <<< (1 : Nat)))) := by
    rw [ev_shift (ev_lw hr1) (ev_cw _ 1)]
    simp [wordShiftHOL]
  have hsh2 : ev s1 (.shift .lsr (lv (nm "a")) (lv (nm "i"))) = some (.val (.word (A >>> j))) := by
    rw [ev_shift (ev_lw ha1) (ev_lw hi1), hIm]
    simp only [wordShiftHOL]
    rw [if_neg (by omega)]
    rfl
  set R2 := (R <<< (1 : Nat)) ||| ((A >>> j) &&& BitVec.ofNat 64 1) with hR2
  have hr2n : R2.toNat = 2 * R.toNat + (A.toNat / 2 ^ j) % 2 := word_r2 R A hRlt
  refine hoare_seq (R := fun r t => r = none ∧ t = setVarHOLFinite (nm "r") (.val (.word R2)) s1) ?_
    (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_assign fun s' _ hs' v hv _ => ?_
    subst hs'
    have hand : ev s1 (.op .and [.shift .lsr (lv (nm "a")) (lv (nm "i")), cw 1]) =
        some (.val (.word ((A >>> j) &&& BitVec.ofNat 64 1))) := ev_and2' hsh2 (ev_cw _ 1)
    have hor : ev s1 (.op .or [.shift .lsl (lv (nm "r")) (cw 1),
        .op .and [.shift .lsr (lv (nm "a")) (lv (nm "i")), cw 1]]) = some (.val (.word R2)) :=
      ev_or2 hsh1 hand
    rw [hor] at hv
    cases hv
    exact ⟨rfl, rfl⟩
  refine hoare_pre (P := fun t => t = setVarHOLFinite (nm "r") (.val (.word R2)) s1) ?_
    (fun t _ h => h.2)
  set s2 := setVarHOLFinite (nm "r") (.val (.word R2)) s1 with hs2
  have ha2 : s2.locals.lookup (nm "a") = some (.val (.word A)) := by
    rw [hs2, lk_set_ne _ _ (by decide)]; exact ha1
  have hb2 : s2.locals.lookup (nm "b") = some (.val (.word B)) := by
    rw [hs2, lk_set_ne _ _ (by decide)]; exact hb1
  have hq2 : s2.locals.lookup (nm "q") = some (.val (.word Q)) := by
    rw [hs2, lk_set_ne _ _ (by decide)]; exact hq1
  have hr2 : s2.locals.lookup (nm "r") = some (.val (.word R2)) := lk_set_self _ _ _
  have hi2 : s2.locals.lookup (nm "i") = some (.val (.word (I - BitVec.ofNat 64 1))) := by
    rw [hs2, lk_set_ne _ _ (by decide)]; exact hi1
  have hIj : (I - BitVec.ofNat 64 1).toNat ≤ 64 := by omega
  unfold udmIf
  refine hoare_ite ?_ ?_
  · -- `r >=+ b`
    have hnl : ev s2 (.cmp .notLower (lv (nm "r")) (lv (nm "b"))) = some (.val (.word 1)) ∨ True :=
      Or.inr trivial
    clear hnl
    refine hoare_of_eq fun s' _ ⟨hs', w, hw, hw0⟩ => ?_
    subst hs'
    have hge : B.toNat ≤ R2.toNat := by
      have := cmp_val_true hw hw0 (ev_lw hr2) (ev_lw hb2)
      simpa [wordCmpHOL, BitVec.lt_def] using this
    have hN' := udN_taken hN hr2n hge
    have hsub : (R2 - B).toNat = R2.toNat - B.toNat := by
      rw [BitVec.toNat_sub]; omega
    refine hoare_seq (R := fun r t => r = none ∧ t = setVarHOLFinite (nm "r")
        (.val (.word (R2 - B))) s2) ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
    · refine hoare_assign fun s' _ hs' v hv _ => ?_
      subst hs'
      rw [ev_sub2 (ev_lw hr2) (ev_lw hb2)] at hv
      cases hv
      exact ⟨rfl, rfl⟩
    refine hoare_assign fun s' _ ⟨_, hs'⟩ v hv _ => ?_
    subst hs'
    have hsh3 : ev (setVarHOLFinite (nm "r") (.val (.word (R2 - B))) s2)
        (.shift .lsl (cw 1) (lv (nm "i"))) = some (.val (.word (BitVec.ofNat 64 1 <<< j))) := by
      rw [ev_shift (ev_cw _ 1) (ev_lw (x := nm "i") (w := I - BitVec.ofNat 64 1)
        (by rw [lk_set_ne _ _ (by decide)]; exact hi2)), hIm]
      simp only [wordShiftHOL]
      rw [if_neg (by omega)]
      rfl
    have hor3 := ev_or2 (a := lv (nm "q")) (ev_lw (x := nm "q") (w := Q)
      (s := setVarHOLFinite (nm "r") (.val (.word (R2 - B))) s2)
      (by rw [lk_set_ne _ _ (by decide)]; exact hq2)) hsh3
    rw [hor3] at hv
    cases hv
    refine ⟨rfl, ?_, ?_, Q ||| (BitVec.ofNat 64 1 <<< j), R2 - B, I - BitVec.ofNat 64 1,
      lk_set_self _ _ _, ?_, ?_, hIj, ?_⟩
    · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact ha2
    · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hb2
    · rw [lk_set_ne _ _ (by decide)]; exact lk_set_self _ _ _
    · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hi2
    · rw [hIm, word_q Q hj64 hN.2.1, hsub]
      exact hN'
  · refine hoare_skip fun s' _ ⟨hs', hc'⟩ => ?_
    subst hs'
    have hlt : R2.toNat < B.toNat := by
      have := cmp_val_false hc' (ev_lw hr2) (ev_lw hb2)
      simpa [wordCmpHOL, BitVec.lt_def] using this
    refine ⟨rfl, ha2, hb2, Q, R2, I - BitVec.ofNat 64 1, hq2, hr2, hi2, hIj, ?_⟩
    rw [hIm]
    exact udN_skip hN hr2n hlt

theorem ud_loop {A B : BitVec 64} (hB : B.toNat ≤ 2 ^ 32) :
    Hoare σ X (UdI A B) (.while udmCond udmLoop) (fun r t => r = none ∧ UdI A B t ∧
      ∃ Q R : BitVec 64, t.locals.lookup (nm "q") = some (.val (.word Q)) ∧
        t.locals.lookup (nm "r") = some (.val (.word R)) ∧ Q.toNat * B.toNat + R.toNat = A.toNat) := by
  refine hoare_while (fun _ h => h) (hoare_post (ud_body hB)
    fun r t _ _ ⟨hr, hI⟩ => ⟨fun _ => hI, fun h => by subst hr; exact absurd h (by simp),
      fun h => by subst hr; exact absurd h (by simp),
      fun v h => by subst hr; exact absurd h (by simp)⟩) ?_
  intro t _ hI hc
  obtain ⟨h1, h2, Q, R, I, hq, hr, hi, hI64, hN⟩ := hI
  have hI0 : I.toNat = 0 := by
    have := signed_ge' (x := BitVec.ofNat 64 0) (y := I) (by decide) (by omega)
      (cmp_val_false hc (ev_cw _ 0) (ev_lw hi))
    simpa using this
  refine ⟨rfl, ⟨h1, h2, Q, R, I, hq, hr, hi, hI64, hN⟩, Q, R, hq, hr, ?_⟩
  rw [hI0] at hN
  have := hN.2.2
  simpa [Nat.mod_one] using this

/-- **`udivmod`, the value.** -/
theorem funSpec_udivmod_val (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "udivmod") (fun vs _ r _ => ∀ v, r = .returned v → ∀ A B : BitVec 64,
      vs = [.val (.word A), .val (.word B)] → 0 < B.toNat → B.toNat ≤ 2 ^ 32 →
      ∃ Q R : BitVec 64, v = .rStruct [.val (.word Q), .val (.word R)] ∧
        Q.toNat * B.toNat + R.toNat = A.toNat) := by
  refine funSpec_of_hoare (R := fun vs _ v _ => ∀ A B : BitVec 64,
      vs = [.val (.word A), .val (.word B)] → 0 < B.toNat → B.toNat ≤ 2 ^ 32 →
      ∃ Q R : BitVec 64, v = .rStruct [.val (.word Q), .val (.word R)] ∧
        Q.toNat * B.toNat + R.toNat = A.toNat) ?_
  intro vs body callee rs hl s0 _ hloc
  rw [hC] at hl
  obtain ⟨rfl, -, Av, Bv, rfl, hsA, hsB, hlA, hlB⟩ := lookupCode_two code_udivmod (by decide) hl
  obtain ⟨A, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨B, rfl⟩ := val_of_shapeEq_one hsB
  by_cases hN : 0 < B.toNat ∧ B.toNat ≤ 2 ^ 32
  swap
  · intro s _ _ _ v _ A' B' hvs h1 h2
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
    obtain ⟨-, rfl⟩ := hvs
    exact absurd ⟨h1, h2⟩ hN
  obtain ⟨hB0, hB32⟩ := hN
  have hla : s0.locals.lookup (nm "a") = some (.val (.word A)) := by rw [hloc]; exact hlA
  have hlb : s0.locals.lookup (nm "b") = some (.val (.word B)) := by rw [hloc]; exact hlB
  have hpost : ∀ (Q R : BitVec 64), Q.toNat * B.toNat + R.toNat = A.toNat → ∀ A' B' : BitVec 64,
      [ValueHOL.val (.word A), ValueHOL.val (.word B)] = [.val (.word A'), .val (.word B')] →
      0 < B'.toNat → B'.toNat ≤ 2 ^ 32 →
      ∃ Q' R' : BitVec 64, ValueHOL.rStruct [.val (.word Q), .val (.word R)] =
        .rStruct [.val (.word Q'), .val (.word R')] ∧ Q'.toNat * B'.toNat + R'.toNat = A'.toNat := by
    intro Q R h A' B' hvs _ _
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
    obtain ⟨rfl, rfl⟩ := hvs
    exact ⟨Q, R, rfl, h⟩
  refine hoare_pre (P := fun s => s = s0) ?_ (fun s _ h => h)
  unfold udmBody
  refine hoare_seq (R := fun r t => r = none ∧ t = s0) ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_ite ?_ ?_
    · refine hoare_of_eq fun s' _ ⟨hs', w, hw, hw0⟩ => ?_
      subst hs'
      exfalso
      have e := eq_of_then (ev_lw hlb) ⟨w, hw, hw0⟩
      rw [e] at hB0
      simp at hB0
    · exact hoare_skip fun t _ ⟨ht, _⟩ => ⟨rfl, ht⟩
  refine hoare_pre (P := fun t => t = s0) ?_ (fun t _ h => h.2)
  refine hoare_seq (R := fun r t => (r = none → t = s0 ∧ B.toNat ≤ A.toNat) ∧
      ∀ v, r = some (.returned v) → ∀ A' B' : BitVec 64,
        [ValueHOL.val (.word A), ValueHOL.val (.word B)] = [.val (.word A'), .val (.word B')] →
        0 < B'.toNat → B'.toNat ≤ 2 ^ 32 →
        ∃ Q' R' : BitVec 64, v = .rStruct [.val (.word Q'), .val (.word R')] ∧
          Q'.toNat * B'.toNat + R'.toNat = A'.toNat) ?_
    (fun r t _ hr _ h => h.2) ?_
  · refine hoare_ite ?_ ?_
    · refine hoare_return fun t _ ⟨ht, w, hw, hw0⟩ v hv => ⟨fun h => by simp at h, fun u hu => ?_⟩
      subst ht
      simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hu
      subst hu
      rw [ev_rstruct (evs_cons (ev_cw _ 0) (evs_cons (ev_lw hla) evs_nil))] at hv
      cases hv
      exact hpost (BitVec.ofNat 64 0) A (by simp)
    · refine hoare_skip fun t _ ⟨ht, hc⟩ => ⟨fun _ => ⟨ht, ?_⟩, fun u hu => by simp at hu⟩
      subst ht
      have := cmp_val_false hc (ev_lw hla) (ev_lw hlb)
      simpa [wordCmpHOL, BitVec.lt_def] using this
  refine hoare_pre (P := fun t => t = s0) ?_ (fun t _ h => (h.1 rfl).1)
  refine hoare_dec fun s1 _ hs1 v hv _ => ?_
  subst s1
  rw [ev_cw] at hv
  cases hv
  refine hoare_dec fun s1 _ hs1 v hv _ => ?_
  subst s1
  rw [ev_cw] at hv
  cases hv
  refine hoare_dec fun s1 _ hs1 v hv _ => ?_
  subst s1
  rw [ev_cw] at hv
  cases hv
  refine hoare_seq (R := fun r t => r = none ∧ UdI A B t ∧
      ∃ Q R : BitVec 64, t.locals.lookup (nm "q") = some (.val (.word Q)) ∧
        t.locals.lookup (nm "r") = some (.val (.word R)) ∧ Q.toNat * B.toNat + R.toNat = A.toNat) ?_
    (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_pre (ud_loop hB32) ?_
    intro t _ ht
    subst ht
    refine ⟨?_, ?_, BitVec.ofNat 64 0, BitVec.ofNat 64 0, BitVec.ofNat 64 64, ?_, ?_, ?_, by decide, ?_⟩
    · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hla
    · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hlb
    · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact lk_set_self _ _ _
    · rw [lk_set_ne _ _ (by decide)]; exact lk_set_self _ _ _
    · exact lk_set_self _ _ _
    · simpa using udN_start hB0 A.isLt
  · refine hoare_return fun t _ ⟨_, _, Q, R, hq, hr, hN⟩ v hv u hu => ?_
    simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hu
    subst hu
    rw [ev_rstruct (evs_cons (ev_lw hq) (evs_cons (ev_lw hr) evs_nil))] at hv
    cases hv
    exact hpost Q R hN

/-! ## `ssz_fixed_list_count` -/

/-- A call of `ssz_fail` never returns. -/
theorem hoare_seqFail_of {k : Nat} {P : State σ → Prop}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hfr : FunRet σ X (nm "ssz_fail") (fun _ _ => False)) :
    Hoare σ X P (callD (nm "ssz_fail") [cw k]) Q :=
  hoare_callD (funSpec_of_funRet hfr) fun _ _ _ _ _ _ v _ hR _ => (hR v rfl).elim

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_sfc : fnEntry Guest.Software.guestFn_ssz_fixed_list_count =
    (nm "ssz_fixed_list_count", sfcPs, sfcBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_sfc : guestCode (nm "ssz_fixed_list_count") = some (sfcPs, sfcBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 203) (by decide)) ⟨_, rfl⟩
    entry_sfc

/-- **`ssz_fixed_list_count`, the value.** -/
theorem funSpec_sfc_val (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "ssz_fixed_list_count") (fun vs _ r _ => ∀ v, r = .returned v →
      ∀ L S M : BitVec 64, vs = [.val (.word L), .val (.word S), .val (.word M)] → 0 < S.toNat →
        S.toNat ≤ 2 ^ 32 → ∃ Q : BitVec 64, v = .val (.word Q) ∧ Q.toNat * S.toNat = L.toNat) := by
  have hfr := funRet_ssz_fail (σ := σ) hC
  refine funSpec_of_hoare (R := fun vs _ v _ => ∀ L S M : BitVec 64,
      vs = [.val (.word L), .val (.word S), .val (.word M)] → 0 < S.toNat →
        S.toNat ≤ 2 ^ 32 → ∃ Q : BitVec 64, v = .val (.word Q) ∧ Q.toNat * S.toNat = L.toNat) ?_
  intro vs body callee rs hl s0 _ hloc
  rw [hC] at hl
  obtain ⟨rfl, -, Lv, Sv, Mv, rfl, hsA, hsB, hsC, hlL, hlS, hlM⟩ :=
    lookupCode_three code_sfc (by decide) (by decide) (by decide) hl
  obtain ⟨L, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨Z, rfl⟩ := val_of_shapeEq_one hsB
  obtain ⟨M, rfl⟩ := val_of_shapeEq_one hsC
  by_cases hN : 0 < Z.toNat ∧ Z.toNat ≤ 2 ^ 32
  swap
  · intro s _ _ _ v _ L' S' M' hvs h1 h2
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
    obtain ⟨-, rfl, -⟩ := hvs
    exact absurd ⟨h1, h2⟩ hN
  obtain ⟨hZ0, hZ32⟩ := hN
  have hla : s0.locals.lookup (nm "len") = some (.val (.word L)) := by rw [hloc]; exact hlL
  have hlb : s0.locals.lookup (nm "sz") = some (.val (.word Z)) := by rw [hloc]; exact hlS
  have hlc : s0.locals.lookup (nm "lim") = some (.val (.word M)) := by rw [hloc]; exact hlM
  refine hoare_pre (P := fun s => s = s0) ?_ (fun s _ h => h)
  unfold sfcBody
  refine Spec.Mpt.Leaves.hoare_decCallL (funSpec_udivmod_val hC) (fun _ _ _ h => h)
    fun s _ hs avs havs callee v st hR _ hsh => ?_
  subst hs
  rw [evs_cons (ev_lw hla) (evs_cons (ev_lw hlb) evs_nil)] at havs
  simp only [Option.some.injEq] at havs
  subst havs
  obtain ⟨Q, R, rfl, hQR⟩ := hR v rfl L Z rfl hZ0 hZ32
  set s1 := setVarHOLFinite (nm "qr") (.rStruct [.val (.word Q), .val (.word R)])
    { st with locals := s.locals } with hs1
  have hqr : s1.locals.lookup (nm "qr") = some (.rStruct [.val (.word Q), .val (.word R)]) :=
    lk_set_self _ _ _
  have hlim : s1.locals.lookup (nm "lim") = some (.val (.word M)) := by
    rw [hs1, lk_set_ne _ _ (by decide)]; exact hlc
  have ev0 : ev s1 (.rfield 0 (lv (nm "qr"))) = some (.val (.word Q)) :=
    Spec.Mpt.Dec.ev_rfield_w hqr rfl
  have ev1 : ev s1 (.rfield 1 (lv (nm "qr"))) = some (.val (.word R)) :=
    Spec.Mpt.Dec.ev_rfield_w hqr rfl
  refine hoare_pre (P := fun t => t = s1) ?_ (fun t _ h => h)
  unfold sfcTail
  refine hoare_seq (R := fun r t => r = none ∧ t = s1 ∧ R = BitVec.ofNat 64 0) ?_
    (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_ite ?_ ?_
    · exact hoare_seqFail_of hfr
    · refine hoare_skip fun t _ ⟨ht, hc⟩ => ⟨rfl, ht, ?_⟩
      subst ht
      have := cmp_val_false hc ev1 (ev_cw _ 0)
      simpa [wordCmpHOL] using this
  refine hoare_of_eq fun t _ ⟨_, ht, hR0⟩ => ?_
  subst ht
  refine hoare_seq (R := fun r t => r = none ∧ t = s1) ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_ite ?_ ?_
    · exact hoare_seqFail_of hfr
    · exact hoare_skip fun t _ ⟨ht, _⟩ => ⟨rfl, ht⟩
  refine hoare_return fun t _ ⟨_, ht⟩ v hv u hu => ?_
  subst ht
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hu
  subst hu
  rw [ev0] at hv
  cases hv
  intro L' S' M' hvs _ _
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
  obtain ⟨rfl, rfl, rfl⟩ := hvs
  refine ⟨Q, rfl, ?_⟩
  rw [hR0] at hQR
  simpa using hQR

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.funSpec_udivmod_val
#print axioms InitECandidate.Solver.MemSafe.Rec.funSpec_sfc_val
