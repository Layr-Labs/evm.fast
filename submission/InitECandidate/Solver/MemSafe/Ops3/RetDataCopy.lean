import InitECandidate.Solver.MemSafe.Ops3.CopyBuf
import InitECandidate.Solver.MemSafe.Rec.WireR
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# `op_returndatacopy` (sonnet-gk2, step 3)

```
pops (mstart, rstart, size); n = sat_word(size); w = words_of(n); x = extend_memory_cost1(mstart, size);
cost = add_sat(3 + 3 * w, x.0); charge_gas(cost); rs = sat_word(rstart); endp = add_sat(rs, n);
if endp >+ RETDATA_N { throw EvmErr 9 }; extend_memory(x.1);
if n != 0 { ms = sat_word(mstart); memcpy(MEM + ms, RETDATA + rs, n) }; pc_add(1); return 0
```
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

def rdcCostE : ExpHOL 64 := .op .add [cw 3, .panop .mul [cw 3, lv (nm "w")]]

def rdcThen : ProgHOL 64 :=
  .decCall (nm "ms") .one (nm "sat_word") [lv (nm "mstart")]
    (callD (nm "memcpy") [memAtX "ms", .op .add [gLoad "ev" 144, lv (nm "rs")], lv (nm "n")])

def rdcBody : ProgHOL 64 :=
  .decCall (nm "mstart") (shK 4) (nm "stack_pop") []
  (.decCall (nm "rstart") (shK 4) (nm "stack_pop") []
  (.decCall (nm "size") (shK 4) (nm "stack_pop") []
  (.decCall (nm "n") .one (nm "sat_word") [lv (nm "size")]
  (.decCall (nm "w") .one (nm "words_of") [lv (nm "n")]
  (.decCall (nm "x") (shK 2) (nm "extend_memory_cost1") [lv (nm "mstart"), lv (nm "size")]
  (.decCall (nm "cost") .one (nm "add_sat") [rdcCostE, Struct.rf 0 "x"]
  (.seq (callD (nm "charge_gas") [lv (nm "cost")])
  (.decCall (nm "rs") .one (nm "sat_word") [lv (nm "rstart")]
  (.decCall (nm "endp") .one (nm "add_sat") [lv (nm "rs"), lv (nm "n")]
  (.seq (.ite (.cmp .lower (gLoad "ev" 152) (lv (nm "endp"))) (.raise (nm "EvmErr") (cw 9)) .skip)
  (.seq (callD (nm "extend_memory") [Struct.rf 1 "x"])
  (.seq (.ite (.cmp .notEqual (lv (nm "n")) (cw 0)) rdcThen .skip)
    cfbTail))))))))))))

theorem rdcBody_eq : (declPair Guest.Software.guestFn_op_returndatacopy).2.2 = rdcBody := by
  conv => lhs; cbv
  rfl


/-- The argument check of `memcpy(MEM + ms, a1, n)`. -/
theorem argsOK_mcpyMem {Γ1 : Gam} {p1 : Ptrs} {t : State σ} {fs : List Frame} {e c : BitVec 64}
    {rest : List Frame} (hfs : fs = (e, c) :: rest)
    (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ1 t) (hp : ptrsOf t = some p1)
    (hch : ChainL guestC tEV tCK Γ1 t fs) {S N : BitVec 64} {a1 a2 : ExpHOL 64}
    (hS : ev t (lv (nm "ms")) = some (.val (.word S)))
    (h2 : ev t a2 = some (.val (.word N)))
    (hlen : S.toNat + N.toNat ≤ (fld t.memory e 32).toNat) {vs : List (ValueHOL 64)}
    (hvs : evs t [memAtX "ms", a1, a2] = some vs) :
    ArgsOK guestC Γ1 p1 Helpers.sigMemcpy.params vs := by
  obtain ⟨v0, vs0, rfl, hv0, h0⟩ := evs_cons_inv hvs
  obtain ⟨v1, vs1, rfl, hv1, h1⟩ := evs_cons_inv h0
  obtain ⟨v2, vs2, rfl, hv2, h2'⟩ := evs_cons_inv h1
  have hz := evs_zero h2'
  subst hz
  obtain ⟨w, hw, hbuf⟩ := argsOK_memAtMs hfs hG hp hch hS (n := N.toNat) hlen
    (evs_cons hv0 evs_nil)
  simp only [List.cons.injEq, and_true] at hw
  subst hw
  rw [h2] at hv2; simp only [Option.some.injEq] at hv2; subst hv2
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | _ | _ | i
  · simp [Helpers.sigMemcpy] at hpt hv; subst hpt; subst hv; exact ⟨w, N, rfl, rfl, by simpa using hbuf⟩
  · simp [Helpers.sigMemcpy] at hpt; subst hpt; trivial
  · simp [Helpers.sigMemcpy] at hpt; subst hpt; trivial
  · simp [Helpers.sigMemcpy] at hpt

theorem mcpy_fp : ∀ {σ : Type}, KeepsFp σ guestCtx (nm "memcpy") :=
  fun {_} => Wire.keepsFp_guest (by decide +kernel)

section steps
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}

local notation "KJ" => GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs

theorem rdc_core (hfs : fs = (e, c) :: rest) (hP : Phi s0 < 2 ^ 64) {u0 : State σ}
    (hk0 : KJ 0 u0) :
    HoareG σ guestCtx (fun t => t = u0) rdcBody (GQ (KJ) true) := by
  unfold rdcBody
  refine hoareG_gkDec hfs pop_cl hk0 fun v1 st1 hk1 hsh1 => ?_
  obtain ⟨ws1, hws1, rfl⟩ := eq_wv_of_shapeEq' hsh1
  obtain ⟨a0, a1, a2, a3, rfl⟩ := Struct.wv4 hws1
  refine hoareG_gkDec hfs pop_cl (by exact kOK_KJ.congr _ _ _ hk1 rfl rfl rfl rfl)
    fun v2 st2 hk2 hsh2 => ?_
  obtain ⟨ws2, hws2, rfl⟩ := eq_wv_of_shapeEq' hsh2
  obtain ⟨r0, r1, r2, r3, rfl⟩ := Struct.wv4 hws2
  refine hoareG_gkDec hfs pop_cl (by exact kOK_KJ.congr _ _ _ hk2 rfl rfl rfl rfl)
    fun v3 st3 hk3 hsh3 => ?_
  obtain ⟨ws3, hws3, rfl⟩ := eq_wv_of_shapeEq' hsh3
  obtain ⟨b0, b1, b2, b3, rfl⟩ := Struct.wv4 hws3
  refine hoareG_kPure (Struct.pure_sat_word guestCtx_code)
    fun u hu vs hvs callee nv st4 hm hg hd hbe hRv hsh4 => ?_
  have hKu : KJ 0 u := by rw [hu]; exact kOK_KJ.congr _ _ _ hk3 rfl rfl rfl rfl
  have hsize : ev u (lv (nm "size")) = some (wv [b0, b1, b2, b3]) := ev_self hu
  rw [evs_cons hsize evs_nil] at hvs
  simp only [Option.some.injEq] at hvs; subst hvs
  have hnv := hRv b0 b1 b2 b3 rfl
  subst hnv
  have hKs4 : KJ 0 st4 := kOK_KJ.congr _ _ _ hKu hm hg hd hbe
  refine hoareG_kPure (Struct.pure_words_of guestCtx_code)
    fun u2 hu2 vs2 hvs2 callee2 wv2 st5 hm2 hg2 hd2 hbe2 hRv2 hsh5 => ?_
  have hKu2 : KJ 0 u2 := kc_kj_step hu2 hKs4
  have hn : ev u2 (lv (nm "n")) = some (.val (.word (Struct.satWordF b0 b1 b2 b3))) := ev_self hu2
  rw [evs_cons hn evs_nil] at hvs2
  simp only [Option.some.injEq] at hvs2; subst hvs2
  have hwv := hRv2 _ rfl
  subst hwv
  have hKs5 : KJ 0 st5 := kOK_KJ.congr _ _ _ hKu2 hm2 hg2 hd2 hbe2
  refine hoareG_kPure (Struct.pure_extend_memory_cost1 guestCtx_code)
    fun u3 hu3 vs3 hvs3 callee3 xv st6 hm3 hg3 hd3 hbe3 hRv3 hsh6 => ?_
  have hKu3 : KJ 0 u3 := kc_kj_step hu3 hKs5
  have hstart : ev u3 (lv (nm "mstart")) = some (wv [a0, a1, a2, a3]) := by
    rw [ev_step hu3 (by decide), ev_step hu2 (by decide), ev_step hu (by decide)]
    exact (ev_step (y := nm "rstart") (x := nm "mstart") rfl (by decide)).trans (ev_self rfl)
  have hsize3 : ev u3 (lv (nm "size")) = some (wv [b0, b1, b2, b3]) := by
    rw [ev_step hu3 (by decide), ev_step hu2 (by decide)]
    exact ev_self hu
  rw [evs_cons hstart (evs_cons hsize3 evs_nil)] at hvs3
  simp only [Option.some.injEq] at hvs3; subst hvs3
  have hE : (callEntryStateHOLFinite u3 callee3).globals.lookup Struct.gEv = some (.val (.word e)) :=
    AllocImpl.lookup_of_gword (gk_gword hfs
      (show KJ 0 (callEntryStateHOLFinite u3 callee3) from kOK_KJ.congr _ _ _ hKu3 rfl rfl rfl rfl))
  have hvv := hRv3 a0 a1 a2 a3 b0 b1 b2 b3 e rfl hE
  obtain ⟨X1, X2, hCX⟩ : ∃ X1 X2, Struct.emc1F a0 a1 a2 a3 b0 b1 b2 b3
      (rd (callEntryStateHOLFinite u3 callee3).memory (e + BitVec.ofNat 64 32)) = (X1, X2) :=
    ⟨_, _, rfl⟩
  rw [hCX] at hvv
  simp only at hvv
  subst hvv
  have hKs6 : KJ 0 st6 := kOK_KJ.congr _ _ _ hKu3 hm3 hg3 hd3 hbe3
  refine hoareG_kPure (Struct.pure_add_sat guestCtx_code)
    fun u4 hu4 vs4 hvs4 callee4 cv st7 hm4 hg4 hd4 hbe4 hRv4 hsh7 => ?_
  have hKu4 : KJ 0 u4 := kc_kj_step hu4 hKs6
  have hw : ev u4 (lv (nm "w")) = some (.val (.word (Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3)))) := by
    rw [ev_step hu4 (by decide)]; exact ev_self hu3
  have hx0 : ev u4 (Struct.rf 0 "x") = some (.val (.word X1)) :=
    Struct.ev_wv_word (lk_self hu4) (i := 0) (by simp)
  have hcost : ev u4 rdcCostE = some (.val (.word (BitVec.ofNat 64 3 + BitVec.ofNat 64 3 *
      Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3)))) :=
    ev_add2 (ev_cw _ 3) (ev_mul2 (ev_cw _ 3) hw)
  rw [evs_cons hcost (evs_cons hx0 evs_nil)] at hvs4
  simp only [Option.some.injEq] at hvs4; subst hvs4
  have hcv := hRv4 _ _ rfl
  subst hcv
  have hKs7 : KJ 0 st7 := kOK_KJ.congr _ _ _ hKu4 hm4 hg4 hd4 hbe4
  have hmem7 : st7.memory = (callEntryStateHOLFinite u3 callee3).memory :=
    hm4.trans (by rw [hu4]; exact hm3)
  obtain ⟨hc32, hcb⟩ := gk_memlen hfs hKs7
  have hmem32 : (rd (callEntryStateHOLFinite u3 callee3).memory (e + BitVec.ofNat 64 32)).toNat =
      (fld st7.memory e 32).toNat := by rw [hmem7]; rfl
  have hemok : (Struct.addSatF (BitVec.ofNat 64 3 + BitVec.ofNat 64 3 *
      Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3)) X1).toNat
      + 1 < 2 ^ 64 → X2.toNat % 32 = 0 ∧ (fld st7.memory e 32).toNat + X2.toNat < 2 ^ 37 ∧
        (Struct.isZeroF b0 b1 b2 b3 = 0 → (Struct.satWordF a0 a1 a2 a3).toNat +
          (Struct.satWordF b0 b1 b2 b3).toNat ≤ (fld st7.memory e 32).toNat + X2.toNat) := by
    intro ha1
    have hne : X1 ≠ Struct.wMax := by
      intro h
      rw [h, Struct.addSatF_max, Struct.wMax_toNat] at ha1; omega
    have hem : (Struct.emc1F a0 a1 a2 a3 b0 b1 b2 b3
        (rd (callEntryStateHOLFinite u3 callee3).memory (e + BitVec.ofNat 64 32))).1 ≠ Struct.wMax := by
      rw [hCX]; exact hne
    obtain ⟨h32, hlt, hrng⟩ := Struct.emc1_ok
      (cur := rd (callEntryStateHOLFinite u3 callee3).memory (e + BitVec.ofNat 64 32))
      (by rw [hmem32]; exact hc32) (by rw [hmem32]; exact hcb) hem
    rw [hCX] at h32 hlt hrng
    simp only at h32 hlt hrng
    rw [hmem32] at hlt hrng
    exact ⟨h32, hlt, hrng⟩
  refine hoareG_gkCharge hfs hP (d := 0)
    (a := Struct.addSatF (BitVec.ofNat 64 3 + BitVec.ofNat 64 3 *
      Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3)) X1)
    (P := fun t => t = setVarHOLFinite (nm "cost") (.val (.word (Struct.addSatF (BitVec.ofNat 64 3 +
      BitVec.ofNat 64 3 * Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3)) X1)))
      { st7 with locals := u4.locals }) (x := lv (nm "cost")) ?_ ?_
  · intro u hu0
    subst hu0
    exact ⟨kOK_KJ.congr _ _ _ hKs7 rfl rfl rfl rfl, Struct.ev_lv_set _ _ _⟩
  refine hoareG_pt fun t ⟨u, hu', hl, hKt, ha1, hale, hmem, hg⟩ => ?_
  subst hu'
  have hmem32' : (fld t.memory e 32).toNat = (fld st7.memory e 32).toNat := by
    rw [hmem, fld_charge32]; rfl
  have hK1 : KJ 1 t := kOK_KJ.mono _ _ _ hKt (by
    have := cost3_pos (BitVec.ofNat 64 3) _ X1 (by decide) (by decide)
      (wordsOfF_lt (Struct.satWordF b0 b1 b2 b3))
    omega)
  have ht : t.locals = (setVarHOLFinite (nm "cost") (.val (.word (Struct.addSatF (BitVec.ofNat 64 3 +
      BitVec.ofNat 64 3 * Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3)) X1)))
      { st7 with locals := u4.locals }).locals := hl
  have hmsT : ev t (lv (nm "mstart")) = some (wv [a0, a1, a2, a3]) := by
    rw [ev_lv_locals ht]
    refine (ev_step (y := nm "cost") (x := nm "mstart") rfl (by decide)).trans ?_
    rw [ev_step hu4 (by decide), ev_step hu3 (by decide), ev_step hu2 (by decide),
      ev_step hu (by decide)]
    exact (ev_step (y := nm "rstart") (x := nm "mstart") rfl (by decide)).trans (ev_self rfl)
  have hrsT : ev t (lv (nm "rstart")) = some (wv [r0, r1, r2, r3]) := by
    rw [ev_lv_locals ht]
    refine (ev_step (y := nm "cost") (x := nm "rstart") rfl (by decide)).trans ?_
    rw [ev_step hu4 (by decide), ev_step hu3 (by decide), ev_step hu2 (by decide),
      ev_step hu (by decide)]
    exact ev_self rfl
  have hnT : ev t (lv (nm "n")) = some (.val (.word (Struct.satWordF b0 b1 b2 b3))) := by
    rw [ev_lv_locals ht]
    refine (ev_step (y := nm "cost") (x := nm "n") rfl (by decide)).trans ?_
    rw [ev_step hu4 (by decide), ev_step hu3 (by decide)]
    exact ev_self hu2
  have hxT : t.locals.lookup (nm "x") = some (wv [X1, X2]) := by
    rw [ht]
    show (setVarHOLFinite (nm "cost") _ _).locals.lookup _ = _
    rw [lk_set_ne _ _ (by decide)]
    exact lk_self (t := u4) hu4
  refine hoareG_kPure (Struct.pure_sat_word guestCtx_code)
    fun v hv vs hvs callee rsv st8 hm8 hg8 hd8 hbe8 hRv8 hsh8 => ?_
  subst hv
  rw [evs_cons hrsT evs_nil] at hvs
  simp only [Option.some.injEq] at hvs; subst hvs
  have hrsv := hRv8 r0 r1 r2 r3 rfl
  subst hrsv
  have hK8 : KJ 1 st8 := kOK_KJ.congr _ _ _ hK1 hm8 hg8 hd8 hbe8
  refine hoareG_kPure (Struct.pure_add_sat guestCtx_code)
    fun v2 hv2 vs9 hvs9 callee9 ev9 st9 hm9 hg9 hd9 hbe9 hRv9 hsh9 => ?_
  have hrsV : ev v2 (lv (nm "rs")) = some (.val (.word (Struct.satWordF r0 r1 r2 r3))) := ev_self hv2
  have hnV : ev v2 (lv (nm "n")) = some (.val (.word (Struct.satWordF b0 b1 b2 b3))) := by
    rw [ev_step hv2 (by decide)]; exact hnT
  rw [evs_cons hrsV (evs_cons hnV evs_nil)] at hvs9
  simp only [Option.some.injEq] at hvs9; subst hvs9
  have hev9 := hRv9 _ _ rfl
  subst hev9
  have hKv2 : KJ 1 v2 := kc_kj_step hv2 hK8
  have hK9 : KJ 1 st9 := kOK_KJ.congr _ _ _ hKv2 hm9 hg9 hd9 hbe9
  have hmm9 : st9.memory = v.memory := hm9.trans (by rw [hv2]; exact hm8)
  refine hoareG_pt fun v3 hv3 => ?_
  have hK3 : KJ 1 v3 := kc_kj_step hv3 hK9
  have hmemV3 : (fld v3.memory e 32).toNat = (fld st7.memory e 32).toNat := by
    rw [hv3]; show (fld st9.memory e 32).toNat = _; rw [hmm9]; exact hmem32'
  refine hoareG_seq (R := fun ro s => (ro = none → s = v3) ∧
      ∀ r, ro = some r → ¬ Abortive r → KJ (rbd r) s)
    (hoareG_ite ?_ ?_) (fun r t' _ hr _ h => ⟨fun h0 => absurd h0 hr, h.2⟩) ?_
  · refine hoareG_pt fun t' ⟨ht', _⟩ => ?_
    rw [ht']
    refine hoareG_raise fun s _ hs w _ => ?_
    subst hs
    refine ⟨fun h0 => (by cases h0), fun r hr _ => ?_⟩
    cases hr
    exact kOK_KJ.congr _ _ _ (kOK_KJ.mono _ _ _ hK3 (Nat.zero_le _)) rfl rfl rfl rfl
  · exact hoareG_skip fun s _ ⟨hs, _⟩ => ⟨fun _ => hs, fun r hr => by cases hr⟩
  refine hoareG_pt fun t' ht' => ?_
  have ht3 := ht'.1 rfl
  rw [ht3]
  have hlx : v3.locals.lookup (nm "x") = some (wv [X1, X2]) := by
    rw [lk_step hv3 (by decide), lk_step hv2 (by decide)]; exact hxT
  refine hoareG_gkEm hfs (P := fun s => s = v3) (d := 1) (X := X2) (fun u hu => ?_) ?_
  · subst hu
    obtain ⟨h32, hlt, -⟩ := hemok ha1
    refine ⟨hK3, Struct.ev_wv_word hlx (i := 1) (by simp), h32, ?_⟩
    omega
  refine hoareG_pt fun t2 ⟨u, hu, hl2, hK2, hlen2, hprot⟩ => ?_
  rw [hu] at hl2 hlen2
  have hnT2 : ev t2 (lv (nm "n")) = some (.val (.word (Struct.satWordF b0 b1 b2 b3))) := by
    rw [ev_lv_locals hl2]; exact (ev_step hv3 (by decide)).trans hnV
  have hmsT2 : ev t2 (lv (nm "mstart")) = some (wv [a0, a1, a2, a3]) := by
    rw [ev_lv_locals hl2, ev_step hv3 (by decide), ev_step hv2 (by decide)]; exact hmsT
  refine hoareG_seq (R := GQ (KJ) true) (hoareG_ite ?_ ?_) (fun r t' _ hr _ h => h)
    (hoareG_pt fun t' ht' => gc_sound kOK_KJ (callSem_gE hfs) _ true true cfbTail_gc t'
      (ht'.1 rfl))
  · refine hoareG_pt fun t' ⟨ht', w, hw, hw0⟩ => ?_
    rw [ht'] at hw ⊢
    rw [Struct.cmp_ne_val hnT2 (ev_cw _ 0)] at hw
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    have hN : Struct.satWordF b0 b1 b2 b3 ≠ 0 := by
      intro h0; rw [← hw] at hw0; simp [h0] at hw0
    have hsum := (hemok ha1).2.2 (iz_of_sat hN)
    refine hoareG_kPure (Struct.pure_sat_word guestCtx_code)
      fun v5 hv5 vs5 hvs5 callee5 msv st10 hm10 hg10 hd10 hbe10 hRv10 hsh10 => ?_
    subst hv5
    rw [evs_cons hmsT2 evs_nil] at hvs5
    simp only [Option.some.injEq] at hvs5; subst hvs5
    have hmsv := hRv10 a0 a1 a2 a3 rfl
    subst hmsv
    have hK10 : KJ 1 st10 := kOK_KJ.congr _ _ _ hK2 hm10 hg10 hd10 hbe10
    have hmm10 : st10.memory = _ := hm10
    refine hoareG_end_skip ?_
    refine hoareG_gkSumm hfs (sg := Helpers.sigMemcpy) rfl
      (Helpers.summ_memcpy Hooks.guestHooksR_lawful Helpers.tagSlots_guestC guestCtx_code
        (Rec.foldOK_guestR (σ := σ)).hal) mcpy_fp (d := 1) ?_ ?_
    · intro u hu
      subst hu
      refine ⟨kc_kj_step rfl hK10, fun vs hvs Γ1 p1 hG hp hch => ?_⟩
      refine argsOK_mcpyMem hfs hG hp hch (S := Struct.satWordF a0 a1 a2 a3)
        (N := Struct.satWordF b0 b1 b2 b3) (a2 := lv (nm "n")) ?_ ?_ ?_ hvs
      · exact ev_self rfl
      · exact (ev_step (y := nm "ms") (x := nm "n") rfl (by decide)).trans hnT2
      · show _ ≤ (fld st10.memory e 32).toNat
        rw [hmm10]; omega
    · exact hoareG_skip fun s _ ⟨u, hu, hl, hK, _⟩ => ⟨fun _ => hK, fun r hr => by cases hr⟩
  · exact hoareG_skip fun s _ ⟨hs, _⟩ => ⟨fun _ => hs ▸ hK2, fun r hr => by cases hr⟩

end steps

/-- **`op_returndatacopy`'s bounded step spec.** -/
theorem j_op_returndatacopy :
    OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_returndatacopy") := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_op_returndatacopy) :=
    declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 547) (by decide)) ⟨_, rfl⟩
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  refine gk_opStepB guestCtx_code hF.hooks (gw := [Hooks.gJn]) hcode (b := true) ?_
  intro Γ0 s0 p0 fs e c rest hfs hrdy hP hk0
  rw [rdcBody_eq]
  exact rdc_core hfs hP hk0

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.rdc_core
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_returndatacopy
