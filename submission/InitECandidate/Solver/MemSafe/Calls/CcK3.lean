import InitECandidate.Solver.MemSafe.Calls.CcK4

/-!
# `op_callcode`: the block from `ext_code_of` (frames15)

**`cc_k3`**: `code = ext_code_of(code_address)` (`hq_ecoB`, from `EcoHyp`), then `cc_k4`.
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

/-- **`ccK3`**. -/
theorem cc_k3 (hP : PreHyps σ) (hCH : CallHyps σ) (hfs : fs = (e, c) :: rest)
    (hPh : Phi s0 < 2 ^ 64) (ha0 : act s0 = 1) {Bs : List (BitVec 64)} {d : Nat} {u0 : State σ}
    {CA : BitVec 64} (hu : KC Bs d u0) (hCA : CA ∈ Bs)
    {xs : List (MlS × ValueHOL 64)} (hL : LocsAre u0.locals xs)
    {g0 g1 g2 g3 v0 v1 v2 v3 X0 X1 a0 a1 a2 a3 b0 b1 b2 b3 o0 o1 o2 o3 z0 z1 z2 z3
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
    (l12 : xs.lookup (nm "dl") = some (wv [D0, D1, D2]))
    (hsp : (fld u0.memory e 16).toNat < (fld u0.memory e 232).toNat)
    (hcur : fld u0.memory e 32 = cur) (hX32 : X1.toNat % 32 = 0)
    (hXb : cur.toNat + X1.toNat < 2 ^ 37)
    (hout : Struct.isZeroF z0 z1 z2 z3 = 0 → (Struct.satWordF o0 o1 o2 o3).toNat +
      (Struct.satWordF z0 z1 z2 z3).toNat ≤ cur.toNat + X1.toNat)
    (hin : Struct.isZeroF b0 b1 b2 b3 = 0 → (Struct.satWordF a0 a1 a2 a3).toNat +
      (Struct.satWordF b0 b1 b2 b3).toNat ≤ cur.toNat + X1.toNat)
    (hd : (mcgSt v0 v1 v2 v3).toNat + 3 ≤ d) :
    HoareG σ guestCtx (fun t => t = u0) ccK3 (QCall Γ0 s0) := by
  unfold ccK3
  refine hq_ecoB hCH.eco hfs ha0 hu hCA (la_ev hL l10) fun C0 C1 st hk1 hcn hkE hk112 => ?_
  have hL1 := la_set (s := { st with locals := u0.locals }) hL (nm "code") (wv [C0, C1])
  have e16 : fld st.memory e 16 = fld u0.memory e 16 := hkE 2 (by simp [evProtSlots])
  have e232 : fld st.memory e 232 = fld u0.memory e 232 := hkE 29 (by simp [evProtSlots])
  have e32 : fld st.memory e 32 = fld u0.memory e 32 := hkE 4 (by simp [evProtSlots])
  have hk2 := kcall_congr (t := setVarHOLFinite (nm "code") (wv [C0, C1])
    { st with locals := u0.locals }) hk1 rfl rfl rfl rfl
  exact cc_k4 hP hfs hPh ha0 hk2 hL1
    (lk_cons_ne (by decide) lg) (lk_cons_ne (by decide) lv7) (lk_cons_ne (by decide) lx)
    (lk_cons_ne (by decide) l1) (lk_cons_ne (by decide) l2) (lk_cons_ne (by decide) l3)
    (lk_cons_ne (by decide) l4) (lk_cons_ne (by decide) lto) hTO
    (lk_cons_ne (by decide) l10) rfl (lk_cons_ne (by decide) l12)
    (by show (fld st.memory e 16).toNat < (fld st.memory e 232).toNat; rw [e16, e232]; exact hsp)
    (by show fld st.memory e 32 = cur; rw [e32, hcur]) hX32 hXb hout hin hcn hd

end proof

end InitECandidate.Solver.MemSafe.Calls

#print axioms InitECandidate.Solver.MemSafe.Calls.cc_k3
