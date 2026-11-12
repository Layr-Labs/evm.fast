import InitECandidate.Solver.MemSafe.Ops.Env
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# `op_jump` and `op_jumpi` step specs (sonnet-ops)

```
fun 1 op_jump() { var {1,1,1,1} dest = stack_pop(); charge_gas(8); var 1 ok = is_valid_jumpdest(dest);
  if ok == 0 { throw EvmErr E_INVALID_JUMPDEST; } st ev + EV_PC, dest.0; return 0; }
```
Hand proofs through `gk_opStep`: the calls by the `HL` combinators (`HLib`), the PC store by
`hoare_pcStore` (`PcStore`), `gc` only for the status computations (`callCl`).
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

def jumpBody : ProgHOL 64 :=
  .decCall (nm "dest") (shK 4) (nm "stack_pop") []
    (.seq (callD (nm "charge_gas") [cw 8])
      (.decCall (nm "ok") .one (nm "is_valid_jumpdest") [lv (nm "dest")]
        (.seq (.ite (.cmp .equal (lv (nm "ok")) (cw 0)) (.raise (nm "EvmErr") (cw 6)) .skip)
          (.seq (stG "ev" 0 (.rfield 0 (lv (nm "dest")))) (.return (cw 0))))))

theorem jumpBody_eq : (declPair Guest.Software.guestFn_op_jump).2.2 = jumpBody := by
  conv => lhs; cbv
  rfl

theorem jump_ok : callCl opsE false (nm "stack_pop") [] = some false := by decide +kernel
theorem jump_chg : callCl opsE false (nm "charge_gas") [cw 8] = some true := by decide +kernel
theorem jump_ivj : callCl opsE true (nm "is_valid_jumpdest") [lv (nm "dest")] = some true := by
  decide +kernel

/-- **`op_jump`'s step spec.** -/
theorem j_op_jump : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_jump") := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_op_jump) :=
    declPair_valid (List.getElem_mem (n := 503) (by decide)) ⟨_, rfl⟩
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  refine gk_opStep guestCtx_code hF.hooks (gw := [Hooks.gJn]) hcode (b := true) ?_
  intro Γ0 s0 p0 fs e c rest hfs hrdy hk0
  rw [jumpBody_eq]
  have hK := kOK_gk (σ := σ) (H := Hooks.guestHooksR) hF.hooks (gw := [Hooks.gJn]) (Γ0 := Γ0)
    (s0 := s0) (p0 := p0) (fs := fs)
  have hC := callSem_opsE (σ := σ) (Γ0 := Γ0) (s0 := s0) (p0 := p0) hfs
  refine hl_decCall hK hC jump_ok (b := false) hk0 ?_
  intro t ht hloc v hsh
  obtain ⟨ws, hwl, rfl⟩ := eq_wv_of_shapeEq' (k := 4) hsh
  have hd : (setVarHOLFinite (nm "dest") (wv ws) t).locals.lookup (nm "dest") = some (wv ws) :=
    lk_set_self _ _ _
  refine hl_seq_last (b1 := true) (hl_call hK hC jump_chg
    (u0 := setVarHOLFinite (nm "dest") (wv ws) t) (kok_loc hK ht _)) ?_
  intro u hu hlu
  refine hl_decCall hK hC jump_ivj hu ?_
  intro t2 ht2 hloc2 v2 hsh2
  have hl2 : t2.locals.lookup (nm "dest") = some (wv ws) := by rw [hloc2, hlu]; exact hd
  have hl3 : (setVarHOLFinite (nm "ok") v2 t2).locals.lookup (nm "dest") = some (wv ws) := by
    rw [lk_set_ne _ _ (by decide)]; exact hl2
  have ht3 : GK Hooks.guestHooksR [Hooks.gJn] Γ0 s0 p0 fs (bd true) (setVarHOLFinite (nm "ok") v2 t2) :=
    kok_loc hK ht2 _
  refine hl_seq_last (b1 := true) (hl_ite' (hl_raise hK ht3 _) (hl_skip ht3)) ?_
  intro u3 hu3 hl3'
  have hlk : u3.locals.lookup (nm "dest") = some (wv ws) := by rw [hl3']; exact hl3
  refine hoareG_seq (R := fun ro t => ro = none ∧ GK Hooks.guestHooksR [Hooks.gJn] Γ0 s0 p0 fs (bd true) t)
    (hoare_pcStore hF hfs hu3 hlk (by omega)) (fun r t _ hr _ h => absurd h.1 hr)
    (hoareG_pt fun u4 hu4 => hoareG_conseq (hl_return hK (e := cw 0) (u0 := u4) hu4.2 u4.locals)
      (fun _ _ h => h) (fun _ _ _ _ h => h.1))

def jumpiBody : ProgHOL 64 :=
  .decCall (nm "dest") (shK 4) (nm "stack_pop") []
    (.decCall (nm "cond") (shK 4) (nm "stack_pop") []
      (.seq (callD (nm "charge_gas") [cw 10])
        (.decCall (nm "z") .one (nm "u256_is_zero") [lv (nm "cond")]
          (.seq (.ite (.cmp .notEqual (lv (nm "z")) (cw 0))
              (.seq (callD (nm "pc_add") [cw 1]) (.return (cw 0))) .skip)
            (.decCall (nm "ok") .one (nm "is_valid_jumpdest") [lv (nm "dest")]
              (.seq (.ite (.cmp .equal (lv (nm "ok")) (cw 0)) (.raise (nm "EvmErr") (cw 6)) .skip)
                (.seq (stG "ev" 0 (.rfield 0 (lv (nm "dest")))) (.return (cw 0)))))))))

theorem jumpiBody_eq : (declPair Guest.Software.guestFn_op_jumpi).2.2 = jumpiBody := by
  conv => lhs; cbv
  rfl

theorem jumpi_chg : callCl opsE false (nm "charge_gas") [cw 10] = some true := by decide +kernel
theorem jumpi_z : callCl opsE true (nm "u256_is_zero") [lv (nm "cond")] = some true := by
  decide +kernel
theorem jumpi_pc : callCl opsE true (nm "pc_add") [cw 1] = some true := by decide +kernel

/-- **`op_jumpi`'s step spec.** -/
theorem j_op_jumpi : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_jumpi") := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_op_jumpi) :=
    declPair_valid (List.getElem_mem (n := 504) (by decide)) ⟨_, rfl⟩
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  refine gk_opStep guestCtx_code hF.hooks (gw := [Hooks.gJn]) hcode (b := true) ?_
  intro Γ0 s0 p0 fs e c rest hfs hrdy hk0
  rw [jumpiBody_eq]
  have hK := kOK_gk (σ := σ) (H := Hooks.guestHooksR) hF.hooks (gw := [Hooks.gJn]) (Γ0 := Γ0)
    (s0 := s0) (p0 := p0) (fs := fs)
  have hC := callSem_opsE (σ := σ) (Γ0 := Γ0) (s0 := s0) (p0 := p0) hfs
  refine hl_decCall hK hC jump_ok (b := false) hk0 ?_
  intro t ht hloc v hsh
  obtain ⟨ws, hwl, rfl⟩ := eq_wv_of_shapeEq' (k := 4) hsh
  have hd : (setVarHOLFinite (nm "dest") (wv ws) t).locals.lookup (nm "dest") = some (wv ws) :=
    lk_set_self _ _ _
  refine hl_decCall hK hC jump_ok (b := false) (kok_loc hK ht _) ?_
  intro t1 ht1 hloc1 v1 hsh1
  have hd1 : t1.locals.lookup (nm "dest") = some (wv ws) := by rw [hloc1]; exact hd
  have hd1' : (setVarHOLFinite (nm "cond") v1 t1).locals.lookup (nm "dest") = some (wv ws) := by
    rw [lk_set_ne _ _ (by decide)]; exact hd1
  refine hl_seq_last (b1 := true) (hl_call hK hC jumpi_chg
    (u0 := setVarHOLFinite (nm "cond") v1 t1) (kok_loc hK ht1 _)) ?_
  intro u hu hlu
  refine hl_decCall hK hC jumpi_z hu ?_
  intro t2 ht2 hloc2 v2 hsh2
  have hd2 : t2.locals.lookup (nm "dest") = some (wv ws) := by rw [hloc2, hlu]; exact hd1'
  have hd2' : (setVarHOLFinite (nm "z") v2 t2).locals.lookup (nm "dest") = some (wv ws) := by
    rw [lk_set_ne _ _ (by decide)]; exact hd2
  have ht3 : GK Hooks.guestHooksR [Hooks.gJn] Γ0 s0 p0 fs (bd true) (setVarHOLFinite (nm "z") v2 t2) :=
    kok_loc hK ht2 _
  refine hl_seq_last (b1 := true) (hl_ite' (hl_seq (hl_call hK hC jumpi_pc ht3)
    (fun u' hu' _ => hl_return hK (e := cw 0) (u0 := u') hu' _)) (hl_skip ht3)) ?_
  intro u3 hu3 hl3
  refine hl_decCall hK hC jump_ivj hu3 ?_
  intro t4 ht4 hloc4 v4 hsh4
  have hd4 : t4.locals.lookup (nm "dest") = some (wv ws) := by rw [hloc4, hl3]; exact hd2'
  have hd4' : (setVarHOLFinite (nm "ok") v4 t4).locals.lookup (nm "dest") = some (wv ws) := by
    rw [lk_set_ne _ _ (by decide)]; exact hd4
  have ht5 : GK Hooks.guestHooksR [Hooks.gJn] Γ0 s0 p0 fs (bd true) (setVarHOLFinite (nm "ok") v4 t4) :=
    kok_loc hK ht4 _
  refine hl_seq_last (b1 := true) (hl_ite' (hl_raise hK ht5 _) (hl_skip ht5)) ?_
  intro u5 hu5 hl5
  have hlk : u5.locals.lookup (nm "dest") = some (wv ws) := by rw [hl5]; exact hd4'
  refine hoareG_seq (R := fun ro t => ro = none ∧ GK Hooks.guestHooksR [Hooks.gJn] Γ0 s0 p0 fs (bd true) t)
    (hoare_pcStore hF hfs hu5 hlk (by omega)) (fun r t _ hr _ h => absurd h.1 hr)
    (hoareG_pt fun u6 hu6 => hoareG_conseq (hl_return hK (e := cw 0) (u0 := u6) hu6.2 u6.locals)
      (fun _ _ h => h) (fun _ _ _ _ h => h.1))

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_jump
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_jumpi
