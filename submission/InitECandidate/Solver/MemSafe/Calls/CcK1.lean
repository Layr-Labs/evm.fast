import InitECandidate.Solver.MemSafe.Calls.CcK2

/-!
# `op_callcode`: the block from `extend_memory_cost2` (frames14)

**`oc_k1`**: `x = extend_memory_cost2(in_start, in_size, out_start, out_size)`,
`warm = is_warm_address(to)`, `access_cost ∈ {100, 3000}`, `transfer_cost = vz == 0 ? 11300 : 0`,
`need = add_sat(access_cost + transfer_cost, x.0)`, `charge_gas(need)` (`need + 1 < 2^64`, so
`x.0 ≠ WORD_MAX` and `emc2_ok` applies), then `oc_k2` with the budget `d = need`.
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

/-- **`ccK1`**. -/
theorem cc_k1 (hP : PreHyps σ) (hCH : CallHyps σ) (hfs : fs = (e, c) :: rest)
    (hPh : Phi s0 < 2 ^ 64) (ha0 : act s0 = 1) {Bs : List (BitVec 64)} {u0 : State σ} (hu : KC Bs 0 u0)
    {xs : List (MlS × ValueHOL 64)} (hL : LocsAre u0.locals xs)
    {g0 g1 g2 g3 v0 v1 v2 v3 a0 a1 a2 a3 b0 b1 b2 b3 o0 o1 o2 o3 z0 z1 z2 z3 TO : BitVec 64}
    (lg : xs.lookup (nm "gasv") = some (wv [g0, g1, g2, g3]))
    (lv7 : xs.lookup (nm "value") = some (wv [v0, v1, v2, v3]))
    (l1 : xs.lookup (nm "in_start") = some (wv [a0, a1, a2, a3]))
    (l2 : xs.lookup (nm "in_size") = some (wv [b0, b1, b2, b3]))
    (l3 : xs.lookup (nm "out_start") = some (wv [o0, o1, o2, o3]))
    (l4 : xs.lookup (nm "out_size") = some (wv [z0, z1, z2, z3]))
    (lto : xs.lookup (nm "to") = some (.val (.word TO))) (hTO : TO ∈ Bs)
    (l9 : xs.lookup (nm "code_address0") = some (.val (.word (e + BitVec.ofNat 64 240))))
    (hsp : (fld u0.memory e 16).toNat < (fld u0.memory e 232).toNat) :
    HoareG σ guestCtx (fun t => t = u0) ccK1 (QCall Γ0 s0) := by
  have hQ := postOK_qc (Γ0 := Γ0) (p0 := p0) (fs := fs) ha0
  have hE : u0.globals.lookup Struct.gEv = some (.val (.word e)) :=
    AllocImpl.lookup_of_gword (gk_gword hfs (kcall_gk hu))
  obtain ⟨hc32, hcb⟩ := gk_memlen hfs (kcall_gk hu)
  set cur := fld u0.memory e 32 with hcur
  unfold ccK1
  -- `x = extend_memory_cost2(…)`
  refine hq_pure hQ (pure_emc2 guestCtx_code) fun vs hvs callee v st1 hm1 hg1 hd1 hb1 hR1 _ => ?_
  rw [evs_cons (la_ev hL l1) (evs_cons (la_ev hL l2) (evs_cons (la_ev hL l3)
    (evs_cons (la_ev hL l4) evs_nil)))] at hvs
  cases hvs
  have hv := hR1 a0 a1 a2 a3 b0 b1 b2 b3 o0 o1 o2 o3 z0 z1 z2 z3 e rfl hE
  subst hv
  set XX := emc2F a0 a1 a2 a3 b0 b1 b2 b3 o0 o1 o2 o3 z0 z1 z2 z3 cur with hXX
  have hu1 : KC Bs 0 (setVarHOLFinite (nm "x") (wv [XX.1, XX.2]) { st1 with locals := u0.locals }) :=
    kcall_congr hu hm1 hg1 hd1 hb1
  have hL1 := la_set (s := { st1 with locals := u0.locals }) hL (nm "x") (wv [XX.1, XX.2])
  have hm1' : st1.memory = u0.memory := hm1
  -- `warm = is_warm_address(to)`
  refine hq_tab hfs ha0 (fun g h => h) iwa_mem iwa_fp callE_iwa (funSpec_true _) hu1
    (fun vs hvs Γ1 p1 _ _ _ _ => argsOK_any (by simp [iwaSg]) (by rw [evs_len hvs]; rfl))
    fun vs2 hvs2 callee2 vw st2 hk2 hkE2 hk2_112 _ hshw => ?_
  obtain ⟨W, rfl⟩ := val_of_shapeEq_one' hshw
  have hS2 : Slots e st2.memory u0.memory := by
    intro k hk
    have h0 : fld st1.memory e k = fld u0.memory e k := by rw [hm1']
    rw [← h0]
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hk
    rcases hk with rfl | rfl | rfl | rfl
    · exact hkE2 2 (by simp [evProtSlots]) (fun h => by simp [evKs] at h)
    · exact hkE2 29 (by simp [evProtSlots]) (fun h => by simp [evKs] at h)
    · exact hkE2 4 (by simp [evProtSlots]) (fun h => by simp [evKs] at h)
    · exact hk2_112
  set u2 := setVarHOLFinite (nm "warm") (.val (.word W))
    { st2 with locals := (setVarHOLFinite (nm "x") (wv [XX.1, XX.2]) { st1 with locals := u0.locals }).locals }
    with hu2
  have hk2' : KC Bs 0 u2 := kcall_congr hk2 rfl rfl rfl rfl
  have hL2 : LocsAre u2.locals ((nm "warm", .val (.word W)) :: (nm "x", wv [XX.1, XX.2]) :: xs) :=
    la_set hL1 _ _
  -- `access_cost = 100; if warm == 0 { access_cost = 3000 }`
  refine hoareG_dec fun s _ hs v hv _ => ?_
  subst s
  rw [ev_cw] at hv
  cases hv
  refine hoareG_conseq (Q := QCall Γ0 s0) ?_ (fun _ _ h => h) (fun r t _ _ hq => qcall_loc hq _)
  let ys2 := (nm "warm", ValueHOL.val (.word W)) :: (nm "x", wv [XX.1, XX.2]) :: xs
  let FA : State σ → Prop := fun t => t.memory = st2.memory ∧ t.globals = st2.globals ∧
    t.memaddrs = st2.memaddrs ∧ t.be = st2.be ∧ ∃ AC : BitVec 64,
      (AC = BitVec.ofNat 64 100 ∨ AC = BitVec.ofNat 64 3000) ∧
      LocsAre t.locals ((nm "access_cost", .val (.word AC)) :: ys2)
  have hLa := la_set hL2 (nm "access_cost") (.val (.word (BitVec.ofNat 64 100)))
  refine hoareG_seq (R := fun ro t => ro = none ∧ FA t) (hoareG_ite ?_ ?_)
    (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_assign fun t _ ⟨ht, _⟩ w hw _ => ?_
    subst ht
    rw [ev_cw] at hw
    cases hw
    exact ⟨rfl, rfl, rfl, rfl, rfl, _, Or.inr rfl, la_shadow (la_set hLa _ _)⟩
  · exact hoareG_skip fun t _ ⟨ht, _⟩ => by
      subst ht; exact ⟨rfl, rfl, rfl, rfl, rfl, _, Or.inl rfl, hLa⟩
  refine fun t3 ht3 ⟨_, hm3, hg3, hd3, hb3, AC, hAC, hL3⟩ hgood => ?_
  have hk3 : KC Bs 0 t3 := kcall_congr hk2 hm3 hg3 hd3 hb3
  -- `vz = u256_is_zero(value)`
  refine (hq_pure hQ (Struct.pure_u256_is_zero guestCtx_code)
    fun vs hvs callee v st3 hm3' hg3' hd3' hb3' hR3 _ => ?_) t3 ht3 rfl hgood
  rw [evs_cons (la_ev hL3 (lk_cons_ne (by decide) (lk_cons_ne (by decide) (lk_cons_ne (by decide)
    lv7)))) evs_nil] at hvs
  cases hvs
  rw [hR3 v0 v1 v2 v3 rfl]
  set Z := Struct.isZeroF v0 v1 v2 v3 with hZ
  set u3 := setVarHOLFinite (nm "vz") (.val (.word Z)) { st3 with locals := t3.locals } with hu3
  have hk3z : KC Bs 0 u3 := kcall_congr hk3 hm3' hg3' hd3' hb3'
  have hL3z : LocsAre u3.locals ((nm "vz", .val (.word Z)) :: (nm "access_cost", .val (.word AC)) :: ys2) :=
    la_set (s := { st3 with locals := t3.locals }) hL3 _ _
  have hm3z : st3.memory = st2.memory := hm3'.trans hm3
  -- `transfer_cost = 0; if vz == 0 { transfer_cost = 11300 }`
  refine hoareG_dec (Q := QCall Γ0 s0) fun s _ hs v hv _ => ?_
  subst s
  rw [ev_cw] at hv
  cases hv
  refine hoareG_conseq (Q := QCall Γ0 s0) ?_ (fun _ _ h => h) (fun r t _ _ hq => qcall_loc hq _)
  let ys3 := (nm "vz", ValueHOL.val (.word Z)) :: (nm "access_cost", ValueHOL.val (.word AC)) :: ys2
  have hLt := la_set hL3z (nm "transfer_cost") (.val (.word (BitVec.ofNat 64 0)))
  have hvz : ev (setVarHOLFinite (nm "transfer_cost") (.val (.word (BitVec.ofNat 64 0))) u3)
      (lv (nm "vz")) = some (.val (.word Z)) :=
    la_ev hLt (lk_cons_ne (by decide) rfl)
  let FT : State σ → Prop := fun t => t.memory = u3.memory ∧ t.globals = u3.globals ∧
    t.memaddrs = u3.memaddrs ∧ t.be = u3.be ∧ ∃ TC : BitVec 64,
      (TC = if Z = 0 then BitVec.ofNat 64 11300 else 0) ∧
      LocsAre t.locals ((nm "transfer_cost", .val (.word TC)) :: ys3)
  refine hoareG_seq (R := fun ro t => ro = none ∧ FT t) (hoareG_ite ?_ ?_)
    (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_assign fun t _ ⟨ht, w, hw, hw0⟩ w' hw' _ => ?_
    subst ht
    rw [ev_cw] at hw'
    cases hw'
    rw [Struct.cmp_eq_val hvz (ev_cw _ 0)] at hw
    have hZ0 : Z = 0 := by
      by_contra h
      simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
      split at hw
      · rename_i hz; exact h (of_decide_eq_true hz)
      · exact hw0 hw.symm
    exact ⟨rfl, rfl, rfl, rfl, rfl, _, by rw [if_pos hZ0], la_shadow (la_set hLt _ _)⟩
  · refine hoareG_skip fun t _ ⟨ht, hc⟩ => ?_
    subst ht
    rw [Struct.cmp_eq_val hvz (ev_cw _ 0)] at hc
    have hZ0 : Z ≠ 0 := by
      intro h
      simp [h] at hc
    exact ⟨rfl, rfl, rfl, rfl, rfl, _, by rw [if_neg hZ0]; rfl, hLt⟩
  refine fun t4 ht4 ⟨_, hm4, hg4, hd4, hb4, TC, hTC, hL4⟩ hgood4 => ?_
  have hk4 : KC Bs 0 t4 := kcall_congr hk3z hm4 hg4 hd4 hb4
  -- `need = add_sat(access_cost + transfer_cost, x.0)`
  have hACn : AC.toNat = 100 ∨ AC.toNat = 3000 := by rcases hAC with rfl | rfl <;> decide
  have hTCn : TC.toNat = 0 ∨ TC.toNat = 11300 := by
    rw [hTC]; split <;> decide
  refine (hq_pure hQ (Struct.pure_add_sat guestCtx_code)
    fun vs hvs callee v st5 hm5 hg5 hd5 hb5 hR5 _ => ?_) t4 ht4 rfl hgood4
  rw [evs_cons (ev_add2 (la_ev hL4 (lk_cons_ne (by decide) (lk_cons_ne (by decide) rfl)))
    (la_ev hL4 rfl))
    (evs_cons (Struct.ev_wv_word (hL4 (nm "x") (wv [XX.1, XX.2])
      (lk_cons_ne (by decide) (lk_cons_ne (by decide) (lk_cons_ne (by decide)
        (lk_cons_ne (by decide) rfl))))) (i := 0)
      (by simp)) evs_nil)] at hvs
  cases hvs
  rw [hR5 _ _ rfl]
  set NEED := Struct.addSatF (AC + TC) XX.1 with hNEED
  have hk5 : KC Bs 0 (setVarHOLFinite (nm "need") (.val (.word NEED)) { st5 with locals := t4.locals }) :=
    kcall_congr hk4 hm5 hg5 hd5 hb5
  have hL5 := la_set (s := { st5 with locals := t4.locals }) hL4 (nm "need") (.val (.word NEED))
  -- `charge_gas(need)`
  refine hq_charge hfs hPh hQ.toC (a := NEED) hk5 (la_ev hL5 rfl)
    fun st6 hk6 hN1 _ hm6 _ => ?_
  have hACTC : (AC + TC).toNat = AC.toNat + TC.toNat := by
    rw [BitVec.toNat_add]; exact Nat.mod_eq_of_lt (by omega)
  have hNne : NEED ≠ Struct.wMax := by
    intro h
    rw [h] at hN1
    exact absurd hN1 (by decide)
  obtain ⟨hNv, hNlt⟩ := Struct.addSatF_ne_max hNne
  have hNv' : NEED.toNat = (AC + TC).toNat + XX.1.toNat := hNv
  have hX0 : XX.1 ≠ Struct.wMax := by
    intro h
    rw [h] at hNlt
    have : (Struct.wMax).toNat = 2 ^ 64 - 1 := by decide
    omega
  obtain ⟨hX32, hXb, hin, hout⟩ := emc2_ok hc32 hcb hX0
  have hS6 : Slots e st6.memory u0.memory := by
    rw [hm6]
    have : Slots e st5.memory u0.memory := by
      intro k hk; rw [hm5, hm4, show u3.memory = st3.memory from rfl, hm3z]; exact hS2 k hk
    exact slots_charge this
  have e16 := hS6 16 (by simp)
  have e232 := hS6 232 (by simp)
  have e32 := hS6 32 (by simp)
  have hd : (mcgSt v0 v1 v2 v3).toNat + 3 ≤ 0 + NEED.toNat := by
    have := mcgSt_le hZ hTC
    rcases hTCn with h | h
    · rw [h] at this; omega
    · omega
  have lk6 : ∀ {x : MlS} {w : ValueHOL 64}, xs.lookup x = some w → x ≠ nm "need" →
      x ≠ nm "transfer_cost" → x ≠ nm "vz" → x ≠ nm "access_cost" → x ≠ nm "warm" → x ≠ nm "x" →
      ((nm "need", ValueHOL.val (.word NEED)) :: (nm "transfer_cost", .val (.word TC)) ::
        (nm "vz", .val (.word Z)) ::
        (nm "access_cost", .val (.word AC)) :: (nm "warm", .val (.word W)) ::
        (nm "x", wv [XX.1, XX.2]) :: xs).lookup x = some w :=
    fun hx h1 h2 h3 h4 h5 h6 => lk_cons_ne h1 (lk_cons_ne h2 (lk_cons_ne h3 (lk_cons_ne h4
      (lk_cons_ne h5 (lk_cons_ne h6 hx)))))
  have hL6 : LocsAre ({ st6 with locals := (setVarHOLFinite (nm "need") (.val (.word NEED))
      { st5 with locals := t4.locals }).locals } : State σ).locals
      ((nm "need", .val (.word NEED)) :: (nm "transfer_cost", .val (.word TC)) ::
        (nm "vz", .val (.word Z)) ::
        (nm "access_cost", .val (.word AC)) :: (nm "warm", .val (.word W)) ::
        (nm "x", wv [XX.1, XX.2]) :: xs) := hL5
  exact cc_k2 hP hCH hfs hPh ha0 (kcall_loc hk6 _) hL6
    (lk6 lg (by decide) (by decide) (by decide) (by decide) (by decide) (by decide))
    (lk6 lv7 (by decide) (by decide) (by decide) (by decide) (by decide) (by decide))
    (lk_cons_ne (by decide) (lk_cons_ne (by decide) (lk_cons_ne (by decide)
      (lk_cons_ne (by decide) (lk_cons_ne (by decide) rfl)))))
    (lk6 l1 (by decide) (by decide) (by decide) (by decide) (by decide) (by decide))
    (lk6 l2 (by decide) (by decide) (by decide) (by decide) (by decide) (by decide))
    (lk6 l3 (by decide) (by decide) (by decide) (by decide) (by decide) (by decide))
    (lk6 l4 (by decide) (by decide) (by decide) (by decide) (by decide) (by decide))
    (lk6 lto (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)) hTO
    (lk6 l9 (by decide) (by decide) (by decide) (by decide) (by decide) (by decide))
    (by show (fld st6.memory e 16).toNat < (fld st6.memory e 232).toNat; rw [e16, e232]; exact hsp)
    (by show fld st6.memory e 32 = cur; rw [e32]) hX32 hXb hout hin hd

end proof

end InitECandidate.Solver.MemSafe.Calls

#print axioms InitECandidate.Solver.MemSafe.Calls.cc_k1
