import InitECandidate.Solver.MemSafe.Ops4.Swapn
import InitECandidate.Solver.MemSafe.Hooks.Rec

set_option autoImplicit false

/-!
# `op_exchange` (the `OpStep` field)

`charge_gas(3); imm = code_imm(); if 81 < imm && imm < 128 { raise EvmErr 10 };
k = imm ^ 143; q = k >> 4; r = k & 15; n = 0; m = 0;
if q < r { n = q + 1; m = r + 1 } else { n = r + 1; m = 29 - q };
mx = max(n, m); if SP < mx + 1 { raise EvmErr 2 }; stack_swap_positions(n, m); pc_add(2); return 0`.
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Ops4
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.MemSafe.Mod (V W toNat_W W_toNat ev_addW ev_subW ev_lsrW)

variable {σ : Type}

theorem ev_xor_k {s : State σ} {x : BitVec 64} {e : ExpHOL 64}
    (he : ev s e = some (.val (.word x))) (k : Nat) :
    ev s (.op .xor [e, cw k]) = some (.val (.word (x ^^^ BitVec.ofNat 64 k))) := by
  rw [ev_op (xs := [x, BitVec.ofNat 64 k]) (evs_cons he (evs_cons (ev_cw s k) evs_nil))]
  simp only [Flapjack.wordOpHOL, Flapjack.wordOp, List.foldr, Option.map_some]
  simp

theorem xor143_lt (w : BitVec 64) (h : w.toNat < 256) : (w ^^^ BitVec.ofNat 64 143).toNat < 256 := by
  rw [BitVec.toNat_xor]
  have : (BitVec.ofNat 64 143).toNat = 143 := rfl
  rw [this]
  exact Nat.xor_lt_two_pow (n := 8) h (by norm_num)

theorem ushr4_le (w : BitVec 64) (h : w.toNat < 256) : (w >>> (4:Nat)).toNat ≤ 15 := by
  rw [BitVec.toNat_ushiftRight, Nat.shiftRight_eq_div_pow]; omega

theorem and15_le (w : BitVec 64) : (w &&& BitVec.ofNat 64 15).toNat ≤ 15 := by
  rw [BitVec.toNat_and]
  exact le_trans Nat.and_le_right (by simp)

def xchBody : ProgHOL 64 :=
  .seq (callD (nm "charge_gas") [cw 3])
   (.decCall (nm "imm") .one (nm "code_imm") []
    (.seq (.ite (.op .and [.cmp .notEqual (cw 0) (.cmp .lower (cw 81) (lv (nm "imm"))),
          .cmp .notEqual (cw 0) (.cmp .lower (lv (nm "imm")) (cw 128))])
        (.raise (nm "EvmErr") (cw 10)) .skip)
     (.dec (nm "k") .one (.op .xor [lv (nm "imm"), cw 143])
      (.dec (nm "q") .one (.shift .lsr (lv (nm "k")) (cw 4))
       (.dec (nm "r") .one (.op .and [lv (nm "k"), cw 15])
        (.dec (nm "n") .one (cw 0)
         (.dec (nm "m") .one (cw 0)
          (.seq (.ite (.cmp .lower (lv (nm "q")) (lv (nm "r")))
              (.seq (.assign .local (nm "n") (.op .add [lv (nm "q"), cw 1]))
                (.assign .local (nm "m") (.op .add [lv (nm "r"), cw 1])))
              (.seq (.assign .local (nm "n") (.op .add [lv (nm "r"), cw 1]))
                (.assign .local (nm "m") (.op .sub [cw 29, lv (nm "q")]))))
           (.decCall (nm "mx") .one (nm "max") [lv (nm "n"), lv (nm "m")]
            (.seq (.ite (.cmp .lower (gLoad "ev" 16) (.op .add [lv (nm "mx"), cw 1]))
                (.raise (nm "EvmErr") (cw 2)) .skip)
             (.seq (callD (nm "stack_swap_positions") [lv (nm "n"), lv (nm "m")]) swpnTail)))))))))))

theorem xchBody_eq : (declPair Guest.Software.guestFn_op_exchange).2.2 = xchBody := by
  conv => lhs; cbv
  rfl


section steps
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}

local notation "KJ" => GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs

/-- `var x = e; k` on `GK`: `k` runs from the state with the new local. -/
theorem hoareG_decGK {n : MlS} {sh : ShapeHOL} {ex : ExpHOL 64} {k : ProgHOL 64}
    {P : State σ → Prop} {b' : Bool}
    (h : ∀ u, P u → ∀ v, ev u ex = some v → shapeEqHOL sh (shapeOfHOLExact v) = true →
      HoareG σ guestCtx (fun t => t = setVarHOLFinite n v u) k (GQ (KJ) b')) :
    HoareG σ guestCtx P (.dec n sh ex k) (GQ (KJ) b') :=
  hoareG_dec fun u _ hP v hv hsh => hoareG_conseq (h u hP v hv hsh) (fun _ _ h => h)
    (fun r t _ _ hq => gq_loc kOK_KJ hq _)

/-- The state after the two assignments. -/
def IteP (uD : State σ) (s : State σ) : Prop :=
  ∃ nn mm : BitVec 64, s.locals.lookup (nm "n") = some (V nn) ∧
    s.locals.lookup (nm "m") = some (V mm) ∧ nn.toNat ≤ 30 ∧ mm.toNat ≤ 30 ∧
    s.memory = uD.memory ∧ s.globals = uD.globals ∧ s.memaddrs = uD.memaddrs ∧ s.be = uD.be

theorem xch_ite {uD : State σ} {qq rr : BitVec 64} (hq : uD.locals.lookup (nm "q") = some (V qq))
    (hr : uD.locals.lookup (nm "r") = some (V rr)) (hq15 : qq.toNat ≤ 15) (hr15 : rr.toNat ≤ 15) :
    HoareG σ guestCtx (fun s => s = uD)
      (.ite (.cmp .lower (lv (nm "q")) (lv (nm "r")))
        (.seq (.assign .local (nm "n") (.op .add [lv (nm "q"), cw 1]))
          (.assign .local (nm "m") (.op .add [lv (nm "r"), cw 1])))
        (.seq (.assign .local (nm "n") (.op .add [lv (nm "r"), cw 1]))
          (.assign .local (nm "m") (.op .sub [cw 29, lv (nm "q")]))))
      (fun ro s => ro = none ∧ IteP uD s) := by
  have h1 : (BitVec.ofNat 64 1).toNat = 1 := rfl
  have h29 : (BitVec.ofNat 64 29).toNat = 29 := rfl
  refine hoareG_ite ?_ ?_
  · -- then branch
    refine hoareG_seq (R := fun ro s => ro = none ∧ ∃ nn : BitVec 64, s.locals.lookup (nm "n") = some (V nn) ∧
        nn.toNat ≤ 30 ∧ s.locals.lookup (nm "r") = some (V rr) ∧ s.memory = uD.memory ∧
        s.globals = uD.globals ∧ s.memaddrs = uD.memaddrs ∧ s.be = uD.be)
      (hoareG_assign ?_) (fun r t _ hr _ h => absurd h.1 hr) ?_
    · intro s _ ⟨hs, _⟩ v hv _
      subst hs
      rw [ev_add2 (Struct.ev_lw' hq) (ev_cw _ 1)] at hv
      cases hv
      refine ⟨rfl, qq + BitVec.ofNat 64 1, ?_, ?_, ?_, rfl, rfl, rfl, rfl⟩
      · exact lk_set_self _ _ _
      · rw [BitVec.toNat_add, h1]; have := qq.isLt; omega
      · rw [lk_set_ne _ _ (by decide)]; exact hr
    · refine hoareG_assign ?_
      intro s _ ⟨_, nn, hn, hn30, hr', hm, hg, hd, hb⟩ v hv _
      rw [ev_add2 (Struct.ev_lw' hr') (ev_cw _ 1)] at hv
      cases hv
      refine ⟨rfl, nn, rr + BitVec.ofNat 64 1, ?_, ?_, hn30, ?_, hm, hg, hd, hb⟩
      · rw [lk_set_ne _ _ (by decide)]; exact hn
      · exact lk_set_self _ _ _
      · rw [BitVec.toNat_add, h1]; have := rr.isLt; omega
  · -- else branch
    refine hoareG_seq (R := fun ro s => ro = none ∧ ∃ nn : BitVec 64, s.locals.lookup (nm "n") = some (V nn) ∧
        nn.toNat ≤ 30 ∧ s.locals.lookup (nm "q") = some (V qq) ∧ s.memory = uD.memory ∧
        s.globals = uD.globals ∧ s.memaddrs = uD.memaddrs ∧ s.be = uD.be)
      (hoareG_assign ?_) (fun r t _ hr _ h => absurd h.1 hr) ?_
    · intro s _ ⟨hs, _⟩ v hv _
      subst hs
      rw [ev_add2 (Struct.ev_lw' hr) (ev_cw _ 1)] at hv
      cases hv
      refine ⟨rfl, rr + BitVec.ofNat 64 1, ?_, ?_, ?_, rfl, rfl, rfl, rfl⟩
      · exact lk_set_self _ _ _
      · rw [BitVec.toNat_add, h1]; have := rr.isLt; omega
      · rw [lk_set_ne _ _ (by decide)]; exact hq
    · refine hoareG_assign ?_
      intro s _ ⟨_, nn, hn, hn30, hq', hm, hg, hd, hb⟩ v hv _
      rw [ev_sub2 (ev_cw _ 29) (Struct.ev_lw' hq')] at hv
      cases hv
      refine ⟨rfl, nn, BitVec.ofNat 64 29 - qq, ?_, ?_, hn30, ?_, hm, hg, hd, hb⟩
      · rw [lk_set_ne _ _ (by decide)]; exact hn
      · exact lk_set_self _ _ _
      · rw [BitVec.toNat_sub, h29]; have := qq.isLt; omega

theorem xch_core (hfs : fs = (e, c) :: rest) {u0 : State σ} (hk0 : KJ 0 u0) :
    HoareG σ guestCtx (fun t => t = u0) xchBody (GQ (KJ) true) := by
  unfold xchBody
  refine hoareG_gkCallC hfs chg3_cl hk0 fun t1 hl1 hk1 => ?_
  refine hoareG_kPure (P := fun s => s = t1) (pureR_code_imm guestCtx_code) ?_
  intro u hu vs hvs callee v st hm hg hd hbe hRv hsh
  subst hu
  obtain ⟨w, rfl, hw⟩ := hRv
  set uA := setVarHOLFinite (nm "imm") (V w) { st with locals := u.locals } with huA
  have hk2 : KJ 1 uA := kOK_KJ.congr _ _ _ hk1 hm hg hd hbe
  refine hoareG_seq (R := fun ro s => (ro = none → s = uA) ∧
      ∀ r, ro = some r → ¬ Abortive r → KJ (rbd r) s)
    (hoareG_ite ?_ ?_) (fun r t' _ hr _ h => ⟨fun h0 => absurd h0 hr, h.2⟩) ?_
  · refine hoareG_pt fun t' ⟨ht', _⟩ => ?_
    rw [ht']
    refine hoareG_raise fun s _ hs w _ => ?_
    subst hs
    refine ⟨fun h0 => (by cases h0), fun r hr _ => ?_⟩
    cases hr
    exact kOK_KJ.congr _ _ _ (kOK_KJ.mono _ _ _ hk2 (Nat.zero_le _)) rfl rfl rfl rfl
  · exact hoareG_skip fun s _ ⟨hs, hc⟩ => ⟨fun _ => hs, fun r hr => by cases hr⟩
  refine hoareG_pt fun t' ht' => ?_
  have ht3 : t' = uA := ht'.1 rfl
  rw [ht3]
  -- k
  refine hoareG_decGK ?_
  intro u1 hu1 vk hvk hshk
  subst hu1
  rw [ev_xor_k (Struct.ev_lv_set _ _ _) 143] at hvk
  cases hvk
  have hkk := xor143_lt w (by omega)
  -- q
  refine hoareG_decGK ?_
  intro u2 hu2 vq hvq hshq
  subst hu2
  rw [WaveHelpers.ev_lsr (Struct.ev_lv_set _ _ _) (k := 4) (by norm_num)] at hvq
  cases hvq
  have hqq := ushr4_le _ hkk
  -- r
  refine hoareG_decGK ?_
  intro u3 hu3 vr hvr hshr
  subst hu3
  rw [ev_and_k (by rw [Struct.ev_lv_set_ne _ _ (by decide)]; exact Struct.ev_lv_set _ _ _) 15] at hvr
  cases hvr
  have hrr := and15_le (w ^^^ BitVec.ofNat 64 143)
  -- n, m
  refine hoareG_decGK ?_
  intro u4 hu4 vn hvn hshn
  subst hu4
  rw [ev_cw] at hvn
  cases hvn
  refine hoareG_decGK ?_
  intro u5 hu5 vm hvm hshm
  subst hu5
  rw [ev_cw] at hvm
  cases hvm
  refine hoareG_pt fun uD huD => ?_
  have hq : uD.locals.lookup (nm "q") = some (V ((w ^^^ BitVec.ofNat 64 143) >>> (4:Nat))) := by
    rw [huD, lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]
    exact lk_set_self _ _ _
  have hr : uD.locals.lookup (nm "r") = some (V ((w ^^^ BitVec.ofNat 64 143) &&& BitVec.ofNat 64 15)) := by
    rw [huD, lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]
    exact lk_set_self _ _ _
  have hkD : KJ 1 uD := by
    rw [huD]
    exact kOK_KJ.congr _ _ _ hk2 rfl rfl rfl rfl
  refine hoareG_seq (R := fun ro s => ro = none ∧ IteP uD s)
    (xch_ite hq hr hqq hrr) (fun r t' _ hr' _ h => absurd h.1 hr') ?_
  refine hoareG_kPure (P := fun s => none = none ∧ IteP uD s) (pureR_max guestCtx_code) ?_
  intro s ⟨_, nn, mm, hn, hm, hn30, hm30, hmem, hgl, hdm, hbe2⟩ vs hvs callee v st hm' hg' hd' hbe' hRv hsh
  have hnE : ev s (lv (nm "n")) = some (V nn) := Struct.ev_lw' hn
  have hmE : ev s (lv (nm "m")) = some (V mm) := Struct.ev_lw' hm
  rw [evs_cons hnE (evs_cons hmE evs_nil)] at hvs
  simp only [Option.some.injEq] at hvs
  subst hvs
  obtain ⟨ww, rfl, hww⟩ := hRv nn mm rfl
  set uS := setVarHOLFinite (nm "mx") (V ww) { st with locals := s.locals } with huS
  have hkS : KJ 1 uS :=
    kOK_KJ.congr _ _ _ hkD (hm'.trans hmem) (hg'.trans hgl) (hd'.trans hdm) (hbe'.trans hbe2)
  have hnS : ev uS (lv (nm "n")) = some (V nn) := by
    rw [huS, Struct.ev_lv_set_ne _ _ (by decide)]; exact hnE
  have hmS : ev uS (lv (nm "m")) = some (V mm) := by
    rw [huS, Struct.ev_lv_set_ne _ _ (by decide)]; exact hmE
  have hxS : ev uS (lv (nm "mx")) = some (V ww) := Struct.ev_lv_set _ _ _
  refine hoareG_seq (R := fun ro s' => (ro = none → s' = uS ∧ ev s' (.cmp .lower (gLoad "ev" 16)
      (.op .add [lv (nm "mx"), cw 1])) = some (.val (.word 0))) ∧
      ∀ r, ro = some r → ¬ Abortive r → KJ (rbd r) s')
    (hoareG_ite ?_ ?_) (fun r t' _ hr _ h => ⟨fun h0 => absurd h0 hr, h.2⟩) ?_
  · refine hoareG_pt fun t' ⟨ht', _⟩ => ?_
    rw [ht']
    refine hoareG_raise fun s' _ hs w _ => ?_
    subst hs
    refine ⟨fun h0 => (by cases h0), fun r hr _ => ?_⟩
    cases hr
    exact kOK_KJ.congr _ _ _ (kOK_KJ.mono _ _ _ hkS (Nat.zero_le _)) rfl rfl rfl rfl
  · exact hoareG_skip fun s' _ ⟨hs, hc⟩ => ⟨fun _ => ⟨hs, hc⟩, fun r hr => by cases hr⟩
  refine hoareG_pt fun t' ht' => ?_
  obtain ⟨ht3, hc⟩ := ht'.1 rfl
  rw [ht3] at hc ⊢
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
  have hle := Struct.cmp_lower_false hxy
  rw [ev_add2 hxS (ev_cw _ 1)] at hy
  cases hy
  have hww' : (ww + BitVec.ofNat 64 1).toNat = ww.toNat + 1 := by
    rw [BitVec.toNat_add]
    have : (BitVec.ofNat 64 1).toNat = 1 := rfl
    rw [this]
    have := ww.isLt
    have h30 : ww.toNat ≤ 30 := by omega
    omega
  rw [hww'] at hle
  refine hoareG_swapStep hfs hkS (aE := lv (nm "n")) (bE := lv (nm "m")) (i := nn) (j := mm)
    hnS hmS hx ?_ ?_ ?_
  · omega
  · omega
  · exact hoareG_pt fun t ⟨u, hu, hl, hK, _⟩ =>
      gc_sound kOK_KJ (callSem_gE hfs) _ true true swpnTail_gc t hK

end steps

/-- **`op_exchange`'s step spec** at `guestHooksR`. -/
theorem j_op_exchange : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_exchange") := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_op_exchange) :=
    declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 522) (by decide)) ⟨_, rfl⟩
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  refine gk_opStep guestCtx_code hF.hooks (gw := [Hooks.gJn]) hcode (b := true) ?_
  intro Γ0 s0 p0 fs e c rest hfs hrdy hk0
  rw [xchBody_eq]
  exact xch_core hfs hk0

end InitECandidate.Solver.MemSafe.Ops4

#print axioms InitECandidate.Solver.MemSafe.Ops4.xch_ite
#print axioms InitECandidate.Solver.MemSafe.Ops4.j_op_exchange
