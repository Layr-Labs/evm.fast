import InitECandidate.Solver.MemSafe.Ops.Charge
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# `op_exp`'s step spec (sonnet-ops)

```
fun 1 op_exp() { var base = stack_pop(); var exponent = stack_pop();
  var 1 nb = u256_byte_length(exponent); charge_gas(10 + 50 * nb);
  var r = u256_exp(base, exponent); stack_push(r); pc_add(1); return 0; }
```
`nb ≤ 32` (`Rec.footS_u256_byte_length`, `ubyF_le`) makes the charge `10 + 50 * nb ≥ 10` without
wrap-around; `hl_chargeDyn` then sets the status and the rest is accepted by `gc_sound`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

def expChargeE : ExpHOL 64 := .op .add [cw 10, .panop .mul [cw 50, lv (nm "nb")]]

def expTail : ProgHOL 64 :=
  .decCall (nm "r") (shK 4) (nm "u256_exp") [lv (nm "base"), lv (nm "exponent")]
    (.seq (callD (nm "stack_push") [lv (nm "r")])
      (.seq (callD (nm "pc_add") [cw 1]) (.return (cw 0))))

def expBody : ProgHOL 64 :=
  .decCall (nm "base") (shK 4) (nm "stack_pop") []
    (.decCall (nm "exponent") (shK 4) (nm "stack_pop") []
      (.decCall (nm "nb") .one (nm "u256_byte_length") [lv (nm "exponent")]
        (.seq (callD (nm "charge_gas") [expChargeE]) expTail)))

theorem expBody_eq : (declPair Guest.Software.guestFn_op_exp).2.2 = expBody := by
  conv => lhs; cbv
  rfl

theorem exp_pop : callCl opsE false (nm "stack_pop") [] = some false := by decide +kernel
theorem exp_nb : callCl opsE false (nm "u256_byte_length") [lv (nm "exponent")] = some false := by
  decide +kernel
theorem exp_tail : gc opsE true expTail = some true := by decide +kernel

/-- The value spec of `u256_byte_length` as a result relation. -/
theorem exp_nbSpec : FunSpec σ guestCtx (nm "u256_byte_length")
    (fun vs _ r _ => Good (some r) → ∀ v, r = .returned v → ∀ a0 a1 a2 a3 : BitVec 64,
      vs = [wv [a0, a1, a2, a3]] → v = .val (.word (Rec.ubyF a0 a1 a2 a3))) :=
  FunSpec.mono (Rec.footS_u256_byte_length (σ := σ) guestCtx_code) fun vs s r t h hg v hv a0 a1 a2 a3 hvs =>
    (h hg trivial).2.2 v hv a0 a1 a2 a3 hvs

/-- **`op_exp`'s step spec.** -/
theorem j_op_exp : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_exp") := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_op_exp) :=
    declPair_valid (List.getElem_mem (n := 484) (by decide)) ⟨_, rfl⟩
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  refine gk_opStep guestCtx_code hF.hooks (gw := [Hooks.gJn]) hcode (b := true) ?_
  intro Γ0 s0 p0 fs e c rest hfs hrdy hk0
  rw [expBody_eq]
  have hK := kOK_gk (σ := σ) (H := Hooks.guestHooksR) hF.hooks (gw := [Hooks.gJn]) (Γ0 := Γ0)
    (s0 := s0) (p0 := p0) (fs := fs)
  have hC := callSem_opsE (σ := σ) (Γ0 := Γ0) (s0 := s0) (p0 := p0) hfs
  refine hl_decCall hK hC exp_pop (b := false) hk0 ?_
  intro t ht hloc v hsh
  refine hl_decCall hK hC exp_pop (b := false) (kok_loc hK ht _) ?_
  intro t1 ht1 hloc1 v1 hsh1
  obtain ⟨ws1, hwl1, rfl⟩ := eq_wv_of_shapeEq' (k := 4) hsh1
  have hu1 : GK Hooks.guestHooksR [Hooks.gJn] Γ0 s0 p0 fs (bd false)
      (setVarHOLFinite (nm "exponent") (wv ws1) t1) := kok_loc hK ht1 _
  refine hl_decCallV hK hC (exp_nbSpec) exp_nb hu1 ?_
  intro t2 ht2 hloc2 v2 hsh2 hRv
  obtain ⟨vs, callee, st, hvs, hRv⟩ := hRv
  have hlk : (setVarHOLFinite (nm "exponent") (wv ws1) t1).locals.lookup (nm "exponent") =
      some (wv ws1) := lk_set_self _ _ _
  have hev : evs (setVarHOLFinite (nm "exponent") (wv ws1) t1) [lv (nm "exponent")] =
      some [wv ws1] := evs_cons (by rw [ev_lv]; exact hlk) evs_nil
  rw [hev] at hvs
  cases hvs
  obtain ⟨a0, a1, a2, a3, rfl⟩ : ∃ a0 a1 a2 a3, ws1 = [a0, a1, a2, a3] := by
    match ws1, hwl1 with
    | [a0, a1, a2, a3], _ => exact ⟨a0, a1, a2, a3, rfl⟩
  have hv2 := hRv (by simp [Good]) v2 rfl a0 a1 a2 a3 rfl
  subst hv2
  have hnb := Rec.ubyF_le a0 a1 a2 a3
  set n := Rec.ubyF a0 a1 a2 a3 with hn
  have hu2 : GK Hooks.guestHooksR [Hooks.gJn] Γ0 s0 p0 fs 0
      (setVarHOLFinite (nm "nb") (.val (.word n)) t2) := kok_loc hK ht2 _
  refine hl_seq_last (b1 := true) (hl_chargeDyn hF charge_fp hfs hu2 ?_) ?_
  · intro a ha
    have hnbv : ev (setVarHOLFinite (nm "nb") (.val (.word n)) t2) (lv (nm "nb")) =
        some (.val (.word n)) := by rw [ev_lv]; exact lk_set_self _ _ _
    have hcalc : ev (setVarHOLFinite (nm "nb") (.val (.word n)) t2) expChargeE =
        some (.val (.word (BitVec.ofNat 64 10 + BitVec.ofNat 64 50 * n))) :=
      ev_add2 (ev_cw _ 10) (ev_mul2 (ev_cw _ 50) hnbv)
    rw [hcalc] at ha
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at ha
    subst ha
    rw [BitVec.toNat_add, BitVec.toNat_mul]
    simp only [BitVec.toNat_ofNat]
    have h50 : 50 % 2 ^ 64 = 50 := by norm_num
    have h10 : 10 % 2 ^ 64 = 10 := by norm_num
    rw [h50, h10, Nat.mod_eq_of_lt (a := 50 * n.toNat) (by omega), Nat.mod_eq_of_lt (by omega)]
    omega
  · intro u hu _
    exact gc_sound hK hC _ true true exp_tail u hu

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_exp
