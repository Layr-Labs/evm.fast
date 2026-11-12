import InitECandidate.Solver.MemSafe.Ops6.Mid
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# The cost prefix of `op_log` (sonnet-log)

From the two pops and the stack guard on: `n = sat_word(size)`, `x = extend_memory_cost1(start, size)`,
`dc = mul64x64(8, n)`, `cost = add_sat(375 + 375 * ntopics, x.0)`, the saturating `if`, `charge_gas`.
`lg_cost` ends in `lg_topics` with the facts the rest needs (`n < 2^61` from the charge succeeding,
the `extend_memory` side conditions from `emc1_ok`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

abbrev lgCost0 : ExpHOL 64 := .op .add [cw 375, .panop .mul [cw 375, lv (nm "ntopics")]]
abbrev lgIte : ProgHOL 64 :=
  .ite (.cmp .notEqual (Struct.rf 1 "dc") (cw 0))
    (.assign .local (nm "cost") (cw 18446744073709551615))
    (.call (some (some (.local, nm "cost"), none)) (nm "add_sat")
      [lv (nm "cost"), Struct.rf 0 "dc"])
abbrev lgC : ProgHOL 64 :=
  .decCall (nm "n") .one (nm "sat_word") [lv (nm "size")]
  (.decCall (nm "x") (shK 2) (nm "extend_memory_cost1") [lv (nm "start"), lv (nm "size")]
  (.decCall (nm "dc") (shK 2) (nm "mul64x64") [cw 8, lv (nm "n")]
  (.decCall (nm "cost") .one (nm "add_sat") [lgCost0, Struct.rf 0 "x"]
  (.seq lgIte (.seq (callD (nm "charge_gas") [lv (nm "cost")]) lgL)))))

theorem ne_zero_of_cmp {D w : BitVec 64}
    (h : w = if Flapjack.Compiler.Encoders.Asm.wordCmpHOL .notEqual D 0 then 1 else 0) :
    (w ≠ 0 → D ≠ 0) ∧ (w = 0 → D = 0) := by
  constructor
  · intro hw hD
    subst hD
    simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at h
    exact hw h
  · intro hw
    by_contra hD
    simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at h
    split at h
    · exact hD (by assumption)
    · rw [h] at hw
      exact absurd hw (by decide)

section cost
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}

local notation "KJ" => GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs


theorem lg_cost (hfs : fs = (e, c) :: rest) (hP : Phi s0 < 2 ^ 64) {d : Nat} {u : State σ}
    (hu : KJ d u) {nt a0 a1 a2 a3 b0 b1 b2 b3 : BitVec 64}
    (hnt : u.locals.lookup (nm "ntopics") = some (.val (.word nt))) (hnt1024 : nt.toNat ≤ 1024)
    (hstart : u.locals.lookup (nm "start") = some (wv [a0, a1, a2, a3]))
    (hsize : u.locals.lookup (nm "size") = some (wv [b0, b1, b2, b3])) :
    HoareG σ guestCtx (fun t => t = u) lgC (GQ (KJ) true) := by
  have h8 : (BitVec.ofNat 64 8).toNat = 8 := by decide
  -- n = sat_word(size)
  refine hoareG_kPure (Struct.pure_sat_word guestCtx_code)
    fun u' hu' vs hvs callee nv st1 hm1 hg1 hd1 hbe1 hRv1 hsh1 => ?_
  subst u'
  have hsz : ev u (lv (nm "size")) = some (wv [b0, b1, b2, b3]) := by rw [ev_lv]; exact hsize
  rw [evs_cons hsz evs_nil] at hvs
  simp only [Option.some.injEq] at hvs; subst hvs
  have hnv := hRv1 b0 b1 b2 b3 rfl
  subst hnv
  have hKst1 : KJ d st1 := kOK_KJ.congr _ _ _ hu hm1 hg1 hd1 hbe1
  refine hoareG_pt fun t1 ht1 => ?_
  have hK1 : KJ d t1 := kc_kj_step ht1 hKst1
  have hm_t1 : t1.memory = u.memory := by rw [ht1]; exact hm1
  have hn1 : t1.locals.lookup (nm "n") =
      some (.val (.word (Struct.satWordF b0 b1 b2 b3))) := lk_self ht1
  have hnt1 : t1.locals.lookup (nm "ntopics") = some (.val (.word nt)) :=
    (lk_step ht1 (by decide)).trans hnt
  have hst1 : t1.locals.lookup (nm "start") = some (wv [a0, a1, a2, a3]) :=
    (lk_step ht1 (by decide)).trans hstart
  have hsz1 : t1.locals.lookup (nm "size") = some (wv [b0, b1, b2, b3]) :=
    (lk_step ht1 (by decide)).trans hsize
  -- x = extend_memory_cost1(start, size)
  refine hoareG_kPure (Struct.pure_extend_memory_cost1 guestCtx_code)
    fun u2 hu2 vs hvs callee2 xv st2 hm2 hg2 hd2 hbe2 hRv2 hsh2 => ?_
  subst u2
  have hs1 : ev t1 (lv (nm "start")) = some (wv [a0, a1, a2, a3]) := by rw [ev_lv]; exact hst1
  have hz1 : ev t1 (lv (nm "size")) = some (wv [b0, b1, b2, b3]) := by rw [ev_lv]; exact hsz1
  rw [evs_cons hs1 (evs_cons hz1 evs_nil)] at hvs
  simp only [Option.some.injEq] at hvs; subst hvs
  have hE : (callEntryStateHOLFinite t1 callee2).globals.lookup Struct.gEv =
      some (.val (.word e)) :=
    AllocImpl.lookup_of_gword (gk_gword hfs
      (show KJ d (callEntryStateHOLFinite t1 callee2) from
        kOK_KJ.congr _ _ _ hK1 rfl rfl rfl rfl))
  have hvv := hRv2 a0 a1 a2 a3 b0 b1 b2 b3 e rfl hE
  obtain ⟨X1, X2, hCX⟩ : ∃ X1 X2, Struct.emc1F a0 a1 a2 a3 b0 b1 b2 b3
      (rd (callEntryStateHOLFinite t1 callee2).memory (e + BitVec.ofNat 64 32)) = (X1, X2) :=
    ⟨_, _, rfl⟩
  rw [hCX] at hvv
  simp only at hvv
  subst hvv
  have hKst2 : KJ d st2 := kOK_KJ.congr _ _ _ hK1 hm2 hg2 hd2 hbe2
  refine hoareG_pt fun t2 ht2 => ?_
  have hK2 : KJ d t2 := kc_kj_step ht2 hKst2
  have hm_t2 : t2.memory = t1.memory := by rw [ht2]; exact hm2
  have hx2 : t2.locals.lookup (nm "x") = some (wv [X1, X2]) := lk_self ht2
  have hn2 : t2.locals.lookup (nm "n") =
      some (.val (.word (Struct.satWordF b0 b1 b2 b3))) := (lk_step ht2 (by decide)).trans hn1
  have hnt2 : t2.locals.lookup (nm "ntopics") = some (.val (.word nt)) :=
    (lk_step ht2 (by decide)).trans hnt1
  have hst2 : t2.locals.lookup (nm "start") = some (wv [a0, a1, a2, a3]) :=
    (lk_step ht2 (by decide)).trans hst1
  -- dc = mul64x64(8, n)
  refine hoareG_kPure (Struct.pure_mul64x64 guestCtx_code)
    fun u3 hu3 vs hvs callee dv st3 hm3 hg3 hd3 hbe3 hRv3 hsh3 => ?_
  subst u3
  have hn2' : ev t2 (lv (nm "n")) = some (.val (.word (Struct.satWordF b0 b1 b2 b3))) := by
    rw [ev_lv]; exact hn2
  rw [evs_cons (ev_cw _ 8) (evs_cons hn2' evs_nil)] at hvs
  simp only [Option.some.injEq] at hvs; subst hvs
  obtain ⟨D0, D1, hdv, hD1⟩ : ∃ D0 D1 : BitVec 64, dv = wv [D0, D1] ∧
      D1 = BitVec.ofNat 64 (8 * (Struct.satWordF b0 b1 b2 b3).toNat / 2 ^ 64) :=
    ⟨BitVec.ofNat 64 (8 * (Struct.satWordF b0 b1 b2 b3).toNat),
      BitVec.ofNat 64 (8 * (Struct.satWordF b0 b1 b2 b3).toNat / 2 ^ 64),
      by have := hRv3 _ _ rfl; rw [h8] at this; exact this, rfl⟩
  subst hdv
  have hKst3 : KJ d st3 := kOK_KJ.congr _ _ _ hK2 hm3 hg3 hd3 hbe3
  refine hoareG_pt fun t3 ht3 => ?_
  have hK3 : KJ d t3 := kc_kj_step ht3 hKst3
  have hm_t3 : t3.memory = t2.memory := by rw [ht3]; exact hm3
  have hdc3 : t3.locals.lookup (nm "dc") = some (wv [D0, D1]) := lk_self ht3
  have hx3 : t3.locals.lookup (nm "x") = some (wv [X1, X2]) :=
    (lk_step ht3 (by decide)).trans hx2
  have hn3 : t3.locals.lookup (nm "n") =
      some (.val (.word (Struct.satWordF b0 b1 b2 b3))) := (lk_step ht3 (by decide)).trans hn2
  have hnt3 : t3.locals.lookup (nm "ntopics") = some (.val (.word nt)) :=
    (lk_step ht3 (by decide)).trans hnt2
  have hst3 : t3.locals.lookup (nm "start") = some (wv [a0, a1, a2, a3]) :=
    (lk_step ht3 (by decide)).trans hst2
  -- cost = add_sat(375 + 375 * ntopics, x.0)
  refine hoareG_kPure (Struct.pure_add_sat guestCtx_code)
    fun u4 hu4 vs hvs callee cv st4 hm4 hg4 hd4 hbe4 hRv4 hsh4 => ?_
  subst u4
  have hc0 : ev t3 lgCost0 = some (.val (.word (BitVec.ofNat 64 375 + BitVec.ofNat 64 375 * nt))) :=
    ev_add2 (ev_cw _ 375) (ev_mul2 (ev_cw _ 375) (by rw [ev_lv]; exact hnt3))
  have hx0 : ev t3 (Struct.rf 0 "x") = some (.val (.word X1)) :=
    Struct.ev_wv_word hx3 (i := 0) (by simp)
  rw [evs_cons hc0 (evs_cons hx0 evs_nil)] at hvs
  simp only [Option.some.injEq] at hvs; subst hvs
  have hcv := hRv4 _ _ rfl
  subst hcv
  have hKst4 : KJ d st4 := kOK_KJ.congr _ _ _ hK3 hm4 hg4 hd4 hbe4
  refine hoareG_pt fun t4 ht4 => ?_
  have hK4 : KJ d t4 := kc_kj_step ht4 hKst4
  have hm_t4 : t4.memory = t3.memory := by rw [ht4]; exact hm4
  have hcost4 : t4.locals.lookup (nm "cost") = some (.val (.word (Struct.addSatF
      (BitVec.ofNat 64 375 + BitVec.ofNat 64 375 * nt) X1))) := lk_self ht4
  have hdc4 : t4.locals.lookup (nm "dc") = some (wv [D0, D1]) :=
    (lk_step ht4 (by decide)).trans hdc3
  have hx4 : t4.locals.lookup (nm "x") = some (wv [X1, X2]) :=
    (lk_step ht4 (by decide)).trans hx3
  have hn4 : t4.locals.lookup (nm "n") = some (.val (.word (Struct.satWordF b0 b1 b2 b3))) :=
    (lk_step ht4 (by decide)).trans hn3
  have hnt4 : t4.locals.lookup (nm "ntopics") = some (.val (.word nt)) :=
    (lk_step ht4 (by decide)).trans hnt3
  have hst4 : t4.locals.lookup (nm "start") = some (wv [a0, a1, a2, a3]) :=
    (lk_step ht4 (by decide)).trans hst3
  set cv1 : BitVec 64 := Struct.addSatF (BitVec.ofNat 64 375 + BitVec.ofNat 64 375 * nt) X1
    with hcv1def
  have hD1ev : ev t4 (Struct.rf 1 "dc") = some (.val (.word D1)) :=
    Struct.ev_wv_word hdc4 (i := 1) (by simp)
  have hD0ev : ev t4 (Struct.rf 0 "dc") = some (.val (.word D0)) :=
    Struct.ev_wv_word hdc4 (i := 0) (by simp)
  refine hoareG_seq (R := fun ro t => (ro = none → ∃ (cv : BitVec 64) (st' : State σ),
        t = setVarHOLFinite (nm "cost") (.val (.word cv)) { st' with locals := t4.locals } ∧
        st'.memory = t4.memory ∧ st'.globals = t4.globals ∧ st'.memaddrs = t4.memaddrs ∧
        st'.be = t4.be ∧
        ((D1 ≠ 0 ∧ cv = Struct.wMax) ∨ (D1 = 0 ∧ cv = Struct.addSatF cv1 D0))) ∧
      ∀ r, ro = some r → False)
    (hoareG_ite ?_ ?_) ?_ ?_
  · -- the saturating branch
    refine hoareG_assign fun s _ ⟨hs, w, hw, hne⟩ v hv hvalid => ?_
    subst s
    rw [ev_cw] at hv
    have hv' : v = .val (.word Struct.wMax) := (Option.some.inj hv).symm
    subst hv'
    have := (ne_zero_of_cmp (ev_cmp0 hD1ev hw)).1 hne
    exact ⟨fun _ => ⟨Struct.wMax, t4, rfl, rfl, rfl, rfl, rfl, Or.inl ⟨this, rfl⟩⟩,
      fun r hr => (by cases hr)⟩
  · -- the add_sat branch
    refine hoareG_callA (k := .local) (x := nm "cost")
      (FunSpec.and (Struct.pure_add_sat guestCtx_code) (funSpec_dom (σ := σ) (nm "add_sat"))) ?_ ?_
    · intro s _ ⟨hs, hcond0⟩ vs hvs callee v st ⟨hR, hdom⟩ _ hvalid
      subst s
      have hcs : ev t4 (lv (nm "cost")) = some (.val (.word cv1)) := by rw [ev_lv]; exact hcost4
      rw [evs_cons hcs (evs_cons hD0ev evs_nil)] at hvs
      simp only [Option.some.injEq] at hvs; subst hvs
      obtain ⟨hm, hg, v', hv', hRv⟩ := hR (by simp [Good])
      cases hv'
      have hv'' := hRv _ _ rfl
      subst hv''
      have := (ne_zero_of_cmp (ev_cmp0 hD1ev hcond0)).2 rfl
      exact ⟨fun _ => ⟨Struct.addSatF cv1 D0, st, rfl, hm, hg, hdom.1, hdom.2,
        Or.inr ⟨this, rfl⟩⟩, fun r hr => (by cases hr)⟩
    · intro s _ ⟨hs, _⟩ vs hvs callee r st ⟨hR, hdom⟩ _ habn
      obtain ⟨-, -, v, hv, -⟩ := hR (good_of_abn habn)
      exact absurd hv (Struct.abn_ne_ret habn v)
  · intro r t _ hr _ h
    cases r with
    | none => exact absurd rfl hr
    | some r' => exact (h.2 r' rfl).elim
  refine hoareG_pt fun t5 ht5 => ?_
  obtain ⟨cv, st', ht5e, hmem5, hglob5, hd5, hbe5, hcases⟩ := ht5.1 rfl
  have hK5 : KJ d t5 := kOK_KJ.congr _ _ _ hK4 (by rw [ht5e]; exact hmem5)
    (by rw [ht5e]; exact hglob5) (by rw [ht5e]; exact hd5) (by rw [ht5e]; exact hbe5)
  have hm_t5 : t5.memory = t4.memory := by rw [ht5e]; exact hmem5
  have hcost5 : t5.locals.lookup (nm "cost") = some (.val (.word cv)) := by
    rw [ht5e]; exact lk_set_self _ _ _
  have hlk5 : ∀ y, y ≠ nm "cost" → t5.locals.lookup y = t4.locals.lookup y := fun y hy => by
    rw [ht5e]; exact lk_set_ne _ _ (Ne.symm hy)
  -- charge_gas(cost)
  refine hoareG_gkCharge hfs hP (P := fun t => t = t5) (d := d) (a := cv)
    (fun u' hu' => ?_) ?_
  · subst hu'
    exact ⟨hK5, by rw [ev_lv]; exact hcost5⟩
  refine hoareG_pt fun t6 ⟨u', hu', hl6, hK6, ha1, hale, hmem6, hg6⟩ => ?_
  subst u'
  have h64 : (2 : Nat) ^ 64 = 18446744073709551616 := by norm_num
  have hcvlt : cv.toNat + 1 < 2 ^ 64 := ha1
  have hD1z : D1 = 0 ∧ cv = Struct.addSatF cv1 D0 := by
    rcases hcases with ⟨hne, hcv⟩ | h
    · exfalso; rw [hcv, Struct.wMax_toNat] at hcvlt; omega
    · exact h
  have hnn : (Struct.satWordF b0 b1 b2 b3).toNat < 2 ^ 61 := by
    have hD := hD1z.1
    rw [hD1] at hD
    have h0 := congrArg BitVec.toNat hD
    rw [BitVec.toNat_ofNat] at h0
    have hlt := (Struct.satWordF b0 b1 b2 b3).isLt
    rw [h64] at h0 hlt
    have h61 : (2 : Nat) ^ 61 = 2305843009213693952 := by norm_num
    rw [h61]
    have hz : (0 : BitVec 64).toNat = 0 := by decide
    omega
  have hX1 : X1 ≠ Struct.wMax := by
    intro h
    have h1 : cv1 = Struct.wMax := by rw [hcv1def, h]; exact Struct.addSatF_max _
    have h2 := Struct.addSatF_ge cv1 D0
    rw [← hD1z.2, h1, Struct.wMax_toNat] at h2
    omega
  obtain ⟨hc32, hcb⟩ := gk_memlen hfs hK1
  have hem : (Struct.emc1F a0 a1 a2 a3 b0 b1 b2 b3
      (rd (callEntryStateHOLFinite t1 callee2).memory (e + BitVec.ofNat 64 32))).1 ≠ Struct.wMax := by
    rw [hCX]; exact hX1
  obtain ⟨h32, hlt, -⟩ := Struct.emc1_ok
    (cur := rd (callEntryStateHOLFinite t1 callee2).memory (e + BitVec.ofNat 64 32)) hc32 hcb hem
  rw [hCX] at h32 hlt
  simp only at h32 hlt
  have hm6 : (fld t6.memory e 32).toNat = (fld t1.memory e 32).toNat := by
    rw [hmem6, fld_charge32, hm_t5, hm_t4, hm_t3, hm_t2]
  have hXb : (fld t6.memory e 32).toNat + X2.toNat ≤ 2 ^ 40 := by
    rw [hm6]
    have h37 : (2 : Nat) ^ 37 ≤ 2 ^ 40 := Nat.pow_le_pow_right (by norm_num) (by norm_num)
    have : (fld t1.memory e 32).toNat + X2.toNat < 2 ^ 37 := hlt
    omega
  have hc0n : (BitVec.ofNat 64 375 + BitVec.ofNat 64 375 * nt).toNat = 375 + 375 * nt.toNat := by
    rw [BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat]
    have h375 : 375 % 2 ^ 64 = 375 := by norm_num
    rw [h375, Nat.mod_eq_of_lt (a := 375 * nt.toNat) (by omega), Nat.mod_eq_of_lt (by omega)]
  have hcvge : 375 ≤ cv.toNat := by
    have h1 := Struct.addSatF_ge (BitVec.ofNat 64 375 + BitVec.ofNat 64 375 * nt) X1
    have h2 := Struct.addSatF_ge cv1 D0
    rw [← hcv1def] at h1
    rw [← hD1z.2] at h2
    omega
  exact lg_topics hfs hK6 (nt := nt) (nn := Struct.satWordF b0 b1 b2 b3) (X1 := X1) (X2 := X2)
    (A0 := a0) (A1 := a1) (A2 := a2) (A3 := a3)
    (by rw [hl6, hlk5 _ (by decide)]; exact hnt4)
    (by rw [hl6, hlk5 _ (by decide)]; exact hn4) hnn
    (by rw [hl6, hlk5 _ (by decide)]; exact hst4)
    (by rw [hl6, hlk5 _ (by decide)]; exact hx4)
    h32 hXb (by omega) hnt1024

end cost

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.lg_cost
