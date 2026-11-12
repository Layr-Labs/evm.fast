import InitECandidate.Solver.MemSafe.Calls.CcK5

/-!
# `op_callcode`: the block from `gw = sat_word(gasv)` (frames14)

**`oc_k4`**: `gw = sat_word(gasv)`, `mcg = calculate_message_call_gas(value, gw, GAS, 0, 0)`,
`charge_gas(mcg.0)`, `st ev + 184, …`, `extend_memory(x.1)`, `reservoir = EV 72`,
`st ev + 72, 0`, then `oc_k5`. The budget: `d ≥ stipend + 3` (`mcg.1 ≤ mcg.0 + stipend`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Calls
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

section proof
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}
variable [Fact (ChainOf s0 fs)]

local notation "KC" => KCall Γ0 s0 p0 fs

/-- **`ccK4`**. -/
theorem cc_k4 (hP : PreHyps σ) (hfs : fs = (e, c) :: rest) (hPh : Phi s0 < 2 ^ 64)
    (ha0 : act s0 = 1) {Bs : List (BitVec 64)} {d : Nat} {u0 : State σ} (hu : KC Bs d u0) {xs : List (MlS × ValueHOL 64)}
    (hL : LocsAre u0.locals xs)
    {g0 g1 g2 g3 v0 v1 v2 v3 X0 X1 a0 a1 a2 a3 b0 b1 b2 b3 o0 o1 o2 o3 z0 z1 z2 z3 CA C0 C1
      D0 D1 D2 TO cur : BitVec 64}
    (lg : xs.lookup (nm "gasv") = some (wv [g0, g1, g2, g3]))
    (lv7 : xs.lookup (nm "value") = some (wv [v0, v1, v2, v3]))
    (lx : xs.lookup (nm "x") = some (wv [X0, X1]))
    (l1 : xs.lookup (nm "in_start") = some (wv [a0, a1, a2, a3]))
    (l2 : xs.lookup (nm "in_size") = some (wv [b0, b1, b2, b3]))
    (l3 : xs.lookup (nm "out_start") = some (wv [o0, o1, o2, o3]))
    (l4 : xs.lookup (nm "out_size") = some (wv [z0, z1, z2, z3]))
    (lto : xs.lookup (nm "to") = some (.val (.word TO))) (hTO : TO ∈ Bs)
    (l10 : xs.lookup (nm "code_address") = some (.val (.word CA)))
    (l11 : xs.lookup (nm "code") = some (wv [C0, C1]))
    (l12 : xs.lookup (nm "dl") = some (wv [D0, D1, D2]))
    (hsp : (fld u0.memory e 16).toNat < (fld u0.memory e 232).toNat)
    (hcur : fld u0.memory e 32 = cur) (hX32 : X1.toNat % 32 = 0)
    (hXb : cur.toNat + X1.toNat < 2 ^ 37)
    (hout : Struct.isZeroF z0 z1 z2 z3 = 0 → (Struct.satWordF o0 o1 o2 o3).toNat +
      (Struct.satWordF z0 z1 z2 z3).toNat ≤ cur.toNat + X1.toNat)
    (hin : Struct.isZeroF b0 b1 b2 b3 = 0 → (Struct.satWordF a0 a1 a2 a3).toNat +
      (Struct.satWordF b0 b1 b2 b3).toNat ≤ cur.toNat + X1.toNat)
    (hcn : C1.toNat + 63 < 2 ^ 64) (hd : (mcgSt v0 v1 v2 v3).toNat + 3 ≤ d) :
    HoareG σ guestCtx (fun t => t = u0) ccK4 (QCall Γ0 s0) := by
  have hQ := postOK_qc (Γ0 := Γ0) (p0 := p0) (fs := fs) ha0
  unfold ccK4
  -- `gw = sat_word(gasv)`
  refine cc_satw hQ hu hL lg fun u1 hu1 hm1 hL1 => ?_
  set GW := Struct.satWordF g0 g1 g2 g3
  -- `mcg = calculate_message_call_gas(value, gw, GAS, 0, 0)`
  refine hq_pure hQ (pure_mcg guestCtx_code) fun vs hvs callee v st2 hm2 hg2 hd2 hb2 hR2 hsh2 => ?_
  obtain ⟨x1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
  obtain ⟨x2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
  obtain ⟨x3, r3, rfl, h3, hr3⟩ := evs_cons_inv hr2
  rw [la_ev hL1 (lk_cons_ne (by decide) lv7)] at h1
  cases h1
  rw [la_ev hL1 rfl] at h2
  cases h2
  obtain ⟨h3', -⟩ := ev_gLoad_eq (gk_gword hfs (kcall_gk hu1)) h3
  subst h3'
  rw [evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0) evs_nil)] at hr3
  cases hr3
  obtain ⟨M0, M1, rfl, hM⟩ := hR2 v0 v1 v2 v3 GW _ rfl
  have hu2 : KC Bs d (setVarHOLFinite (nm "mcg") (wv [M0, M1]) { st2 with locals := u1.locals }) :=
    kcall_congr hu1 hm2 hg2 hd2 hb2
  have hL2 := la_set (s := { st2 with locals := u1.locals }) hL1 (nm "mcg") (wv [M0, M1])
  have hm2' : st2.memory = u0.memory := hm2.trans hm1
  -- `charge_gas(mcg.0)`
  refine hq_charge hfs hPh hQ.toC (a := M0) hu2
    (Struct.ev_wv_word (hL2 (nm "mcg") (wv [M0, M1]) rfl) (i := 0) (by simp)) fun st3 hk3 _ _ hm3 _ => ?_
  -- `st ev + 184, …`
  refine hq_stB hfs (j := 23) rfl (by simp [evDriverSlots]) (by decide) (by decide) (by decide)
    (kcall_loc hk3 _) (fun v' hv' => ev_op_word hv') fun x4 st4 hk4 hm4 hl4 => ?_
  have k3 : ∀ k, k < 2 ^ 64 → k ≠ 64 → k ≠ 184 → fld st3.memory e k = fld u0.memory e k :=
    fun k hk h64 h184 => by
      rw [hm3]
      show fld (chargeMem st2.memory e M0) e k = _
      rw [fld_chargeK _ _ _ hk h64 h184, hm2']
  have k4 : ∀ k, k < 2 ^ 64 → k ≠ 64 → k ≠ 184 → fld st4.memory e k = fld u0.memory e k :=
    fun k hk h64 h184 => by
      rw [hm4]
      show fld (upd st3.memory (e + BitVec.ofNat 64 184) x4) e k = _
      rw [fld_upd_ne _ (off_ne e hk (by decide) h184)]
      exact k3 k hk h64 h184
  -- `extend_memory(x.1)`
  unfold ccK4b
  have hL4 : LocsAre st4.locals ((nm "mcg", wv [M0, M1]) :: (nm "gw", .val (.word GW)) :: xs) := by
    rw [hl4]; exact hL2
  refine hq_emB hfs hk4 (X := X1)
    (Struct.ev_wv_word (hL4 _ _ (lk_cons_ne (by decide) (lk_cons_ne (by decide) lx))) (i := 1)
      (by simp)) hX32 (by rw [k4 32 (by decide) (by decide) (by decide), hcur]; omega)
    fun st5 hk5 hlen5 hkeep5 h112' => ?_
  have hm16 : fld st5.memory e 16 = fld u0.memory e 16 := by
    rw [show (16 : Nat) = 8 * 2 from rfl, hkeep5 2 (by simp [evProtSlots]) (by decide)]
    exact k4 16 (by decide) (by decide) (by decide)
  have hm232 : fld st5.memory e 232 = fld u0.memory e 232 := by
    rw [show (232 : Nat) = 8 * 29 from rfl, hkeep5 29 (by simp [evProtSlots]) (by decide)]
    exact k4 232 (by decide) (by decide) (by decide)
  have hm32 : (fld st5.memory e 32).toNat = cur.toNat + X1.toNat := by
    rw [hlen5, k4 32 (by decide) (by decide) (by decide), hcur]
  -- `reservoir = EV 72`
  refine hoareG_dec fun s _ hs vr hvr _ => ?_
  subst s
  obtain ⟨hvr', -⟩ := ev_gLoad_eq (gk_gword hfs (kcall_gk (kcall_loc hk5 st4.locals))) hvr
  subst hvr'
  refine hoareG_conseq (Q := QCall Γ0 s0) ?_ (fun _ _ h => h) (fun r t _ _ hq => qcall_loc hq _)
  set R := fld st5.memory e 72
  have hL5 := la_set (s := { st5 with locals := st4.locals }) hL4 (nm "reservoir") (.val (.word R))
  -- `st ev + 72, 0`
  refine hq_stB hfs (j := 9) rfl (by simp [evDriverSlots]) (by decide) (by decide) (by decide)
    (kcall_loc hk5 _) (fun v' hv' => by rw [ev_cw] at hv'; exact ⟨_, (Option.some.inj hv').symm⟩)
    fun x6 st6 hk6 hm6 hl6 => ?_
  have k6 : ∀ k, k < 2 ^ 64 → k ≠ 72 → fld st6.memory e k = fld st5.memory e k :=
    fun k hk h72 => by
      rw [hm6]
      show fld (upd st5.memory (e + BitVec.ofNat 64 72) x6) e k = _
      rw [fld_upd_ne _ (off_ne e hk (by decide) h72)]
  have hL6 : LocsAre st6.locals ((nm "reservoir", .val (.word R)) :: (nm "mcg", wv [M0, M1]) ::
      (nm "gw", .val (.word GW)) :: xs) := by rw [hl6]; exact hL5
  refine cc_k5 hP hfs ha0 hk6 hL6 (lk_cons3 l1 (by decide) (by decide) (by decide))
    (lk_cons3 l2 (by decide) (by decide) (by decide)) (lk_cons3 l3 (by decide) (by decide) (by decide))
    (lk_cons3 l4 (by decide) (by decide) (by decide)) (lk_cons_ne (by decide) rfl) rfl
    (lk_cons3 lv7 (by decide) (by decide) (by decide)) (lk_cons3 lto (by decide) (by decide) (by decide))
    hTO (lk_cons3 l10 (by decide) (by decide) (by decide))
    (lk_cons3 l11 (by decide) (by decide) (by decide)) (lk_cons3 l12 (by decide) (by decide) (by decide))
    (by rw [k6 16 (by decide) (by decide), k6 232 (by decide) (by decide), hm16, hm232]; exact hsp)
    (fun hz => by rw [k6 32 (by decide) (by decide), hm32]; exact hout hz)
    (fun hz => by rw [k6 32 (by decide) (by decide), hm32]; exact hin hz) hcn
    (by have := hM; omega)

end proof

end InitECandidate.Solver.MemSafe.Calls

#print axioms InitECandidate.Solver.MemSafe.Calls.cc_k4
