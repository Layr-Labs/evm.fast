import InitECandidate.Solver.MemSafe.Calls.CcCode

/-!
# `op_callcode`: the call block `ccGc` (frames15)

The four `sat_word`s and `started = generic_call(…)` from a `KCall Bs d` state with
`TO ∈ Bs` (the loaded target `to`), `d ≥ mcg.1 + 3`, ending in `QJ`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
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

/-- A pure `sat_word` declaration on a `KCall Bs` state with known locals. -/
theorem cc_satw {Q : Option (PanSemResultExact 64) → State σ → Prop} (hQ : PostOK Γ0 s0 p0 fs Q)
    {rn x : MlS} {k : ProgHOL 64} {Bs : List (BitVec 64)} {d : Nat} {u0 : State σ}
    (hu : KC Bs d u0)
    {xs : List (MlS × ValueHOL 64)} (hL : LocsAre u0.locals xs) {a0 a1 a2 a3 : BitVec 64}
    (hx : xs.lookup x = some (wv [a0, a1, a2, a3]))
    (hk : ∀ u1 : State σ, KC Bs d u1 → u1.memory = u0.memory →
      LocsAre u1.locals ((rn, .val (.word (Struct.satWordF a0 a1 a2 a3))) :: xs) →
      HoareG σ guestCtx (fun t => t = u1) k Q) :
    HoareG σ guestCtx (fun t => t = u0) (.decCall rn .one (nm "sat_word") [lv x] k) Q := by
  refine hq_pure hQ (Struct.pure_sat_word guestCtx_code)
    fun vs hvs callee v st hm hg hd hbe hR _ => ?_
  rw [evs_cons (la_ev hL hx) evs_nil] at hvs
  cases hvs
  rw [hR a0 a1 a2 a3 rfl]
  exact hk _ (kcall_congr hu hm hg hd hbe) hm
    (la_set (s := { st with locals := u0.locals }) hL _ _)

/-- **`ccGc`**: the four `sat_word`s and `generic_call`. -/
theorem cc_gc (hP : PreHyps σ) (hfs : fs = (e, c) :: rest) (ha0 : act s0 = 1)
    {Bs : List (BitVec 64)} {d : Nat}
    {u0 : State σ} (hu : KC Bs d u0) {xs : List (MlS × ValueHOL 64)} (hL : LocsAre u0.locals xs)
    {a0 a1 a2 a3 b0 b1 b2 b3 o0 o1 o2 o3 z0 z1 z2 z3 M0 M1 R CA C0 C1 D0 D1 D2 TO : BitVec 64}
    {vval : ValueHOL 64}
    (l1 : xs.lookup (nm "in_start") = some (wv [a0, a1, a2, a3]))
    (l2 : xs.lookup (nm "in_size") = some (wv [b0, b1, b2, b3]))
    (l3 : xs.lookup (nm "out_start") = some (wv [o0, o1, o2, o3]))
    (l4 : xs.lookup (nm "out_size") = some (wv [z0, z1, z2, z3]))
    (l5 : xs.lookup (nm "mcg") = some (wv [M0, M1]))
    (l6 : xs.lookup (nm "reservoir") = some (.val (.word R)))
    (l7 : xs.lookup (nm "value") = some vval)
    (lto : xs.lookup (nm "to") = some (.val (.word TO))) (hTO : TO ∈ Bs)
    (l10 : xs.lookup (nm "code_address") = some (.val (.word CA)))
    (l11 : xs.lookup (nm "code") = some (wv [C0, C1]))
    (l12 : xs.lookup (nm "dl") = some (wv [D0, D1, D2]))
    (hsp : (fld u0.memory e 16).toNat < (fld u0.memory e 232).toNat)
    (hout : Struct.isZeroF z0 z1 z2 z3 = 0 → (Struct.satWordF o0 o1 o2 o3).toNat +
      (Struct.satWordF z0 z1 z2 z3).toNat ≤ (fld u0.memory e 32).toNat)
    (hin : Struct.isZeroF b0 b1 b2 b3 = 0 → (Struct.satWordF a0 a1 a2 a3).toNat +
      (Struct.satWordF b0 b1 b2 b3).toNat ≤ (fld u0.memory e 32).toNat)
    (hcn : C1.toNat + 63 < 2 ^ 64) (hd : M1.toNat + 3 ≤ d) :
    HoareG σ guestCtx (fun t => t = u0) ccGc (QJ Γ0 s0) := by
  have hQ := postOK_qj (Γ0 := Γ0) (p0 := p0) (fs := fs) ha0
  unfold ccGc
  refine cc_satw hQ hu hL l1 fun u1 hu1 hm1 hL1 => ?_
  refine cc_satw hQ hu1 hL1 (by rw [List.lookup]; exact l2) fun u2 hu2 hm2 hL2 => ?_
  refine cc_satw hQ hu2 hL2 (by rw [List.lookup, List.lookup]; exact l3) fun u3 hu3 hm3 hL3 => ?_
  refine cc_satw hQ hu3 hL3 (by rw [List.lookup, List.lookup, List.lookup]; exact l4)
    fun u4 hu4 hm4 hL4 => ?_
  have hm : u4.memory = u0.memory := hm4.trans (hm3.trans (hm2.trans hm1))
  set IS := Struct.satWordF a0 a1 a2 a3
  set ISZ := Struct.satWordF b0 b1 b2 b3
  set OS := Struct.satWordF o0 o1 o2 o3
  set OSZ := Struct.satWordF z0 z1 z2 z3
  have g : ∀ {x : MlS} {v : ValueHOL 64}, xs.lookup x = some v → x ≠ nm "is" → x ≠ nm "isz" →
      x ≠ nm "os" → x ≠ nm "osz" → u4.locals.lookup x = some v := by
    intro x v hx h1 h2 h3 h4
    refine hL4 x v ?_
    have e1 : (x == nm "osz") = false := by simpa using h4
    have e2 : (x == nm "os") = false := by simpa using h3
    have e3 : (x == nm "isz") = false := by simpa using h2
    have e4 : (x == nm "is") = false := by simpa using h1
    simp only [List.lookup, e1, e2, e3, e4]
    exact hx
  refine hq_gcB hP hfs hu4 (gas := M1) (res := R) (value := vval) (tgt := TO)
    (ca := CA) (tr := BitVec.ofNat 64 1) (st := BitVec.ofNat 64 0) (is := IS) (isz := ISZ) (os := OS)
    (osz := OSZ) (code := C0) (cn := C1) (dp := D0) (nac := BitVec.ofNat 64 0) ?_ ?_ ?_ ?_ hcn (by omega)
  · intro vs hvs
    obtain ⟨x1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨x2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨x3, r3, rfl, h3, hr3⟩ := evs_cons_inv hr2
    rw [Struct.ev_wv_word (g l5 (by decide) (by decide) (by decide) (by decide)) (i := 1) (by simp)]
      at h1
    cases h1
    rw [ev_lv, g l6 (by decide) (by decide) (by decide) (by decide)] at h2
    cases h2
    rw [ev_lv, g l7 (by decide) (by decide) (by decide) (by decide)] at h3
    cases h3
    have e9 : ev u4 (lv (nm "to")) = some (.val (.word TO)) := by
      rw [ev_lv, g lto (by decide) (by decide) (by decide) (by decide)]
    have e10 : ev u4 (lv (nm "code_address")) = some (.val (.word CA)) := by
      rw [ev_lv, g l10 (by decide) (by decide) (by decide) (by decide)]
    have eC0 := Struct.ev_wv_word (g l11 (by decide) (by decide) (by decide) (by decide)) (i := 0)
      (by simp)
    have eC1 := Struct.ev_wv_word (g l11 (by decide) (by decide) (by decide) (by decide)) (i := 1)
      (by simp)
    have eD0 := Struct.ev_wv_word (g l12 (by decide) (by decide) (by decide) (by decide)) (i := 0)
      (by simp)
    have eIs : ev u4 (lv (nm "is")) = some (.val (.word IS)) := la_ev hL4 rfl
    have eIsz : ev u4 (lv (nm "isz")) = some (.val (.word ISZ)) := la_ev hL4 rfl
    have eOs : ev u4 (lv (nm "os")) = some (.val (.word OS)) := la_ev hL4 rfl
    have eOsz : ev u4 (lv (nm "osz")) = some (.val (.word OSZ)) := la_ev hL4 rfl
    rw [evs_cons e9 (evs_cons e9 (evs_cons e10 (evs_cons (ev_cw _ 1) (evs_cons (ev_cw _ 0)
      (evs_cons eIs (evs_cons eIsz (evs_cons eOs (evs_cons eOsz (evs_cons eC0 (evs_cons eC1
      (evs_cons eD0 (evs_cons (ev_cw _ 0) evs_nil))))))))))))] at hr3
    cases hr3
    exact ⟨TO, rfl, fun Γ1 p1 hrun hch hE hB => ⟨hB TO hTO, hB TO hTO⟩⟩
  · show (fld u4.memory e 16).toNat < (fld u4.memory e 232).toNat
    rw [hm]; exact hsp
  · by_cases hz : Struct.isZeroF z0 z1 z2 z3 = 0
    · right
      show _ ≤ (fld u4.memory e 32).toNat
      rw [hm]; exact hout hz
    · left
      exact satW_zero_of hz
  · -- eon: `in_size < 2^32`
    by_cases hz : Struct.isZeroF b0 b1 b2 b3 = 0
    · have h1 := hin hz
      have h2 := (gk_memlen32 hfs (kcall_gk hu)).2
      omega
    · show (Struct.satWordF b0 b1 b2 b3).toNat < 2 ^ 32
      rw [satW_zero_of hz]; decide

end proof

end InitECandidate.Solver.MemSafe.Calls

#print axioms InitECandidate.Solver.MemSafe.Calls.cc_satw
#print axioms InitECandidate.Solver.MemSafe.Calls.cc_gc
