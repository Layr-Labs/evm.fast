import InitECandidate.Solver.MemSafe.Ops.Tload
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# `op_tstore`'s step spec (sonnet-ops)

Like `op_tload` (`key_argsOK` for `u256_to_be32(kv, evm_key_buf)`), preceded by
`require_not_static()`; the `set_transient_storage` tail is accepted by the gas checker.
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

def tsTail : ProgHOL 64 :=
  .seq (callD (nm "set_transient_storage") [lv (nm "target"), lv (nm "key"), lv (nm "v")])
    (.seq (callD (nm "pc_add") [cw 1]) (.return (cw 0)))

def tsBody : ProgHOL 64 :=
  .seq (callD (nm "require_not_static") [])
    (.decCall (nm "kv") (shK 4) (nm "stack_pop") []
      (.decCall (nm "v") (shK 4) (nm "stack_pop") []
        (.seq (callD (nm "charge_gas") [cw 100])
          (.dec (nm "key") .one (gv (nm "evm_key_buf"))
            (.seq (callD (nm "u256_to_be32") [lv (nm "kv"), lv (nm "key")])
              (.dec (nm "target") .one tgtE tsTail))))))

theorem tsBody_eq : (declPair Guest.Software.guestFn_op_tstore).2.2 = tsBody := by
  conv => lhs; cbv
  rfl

theorem ts_rns : callCl opsE false (nm "require_not_static") [] = some false := by decide +kernel
theorem ts_tail : gc opsE true tsTail = some true := by decide +kernel

/-- **`op_tstore`'s step spec.** -/
theorem j_op_tstore : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_tstore") := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_op_tstore) :=
    declPair_valid (List.getElem_mem (n := 530) (by decide)) ⟨_, rfl⟩
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  refine gk_opStep guestCtx_code hF.hooks (gw := [Hooks.gJn]) hcode (b := true) ?_
  intro Γ0 s0 p0 fs e c rest hfs hrdy hk0
  rw [tsBody_eq]
  have hK := kOK_gk (σ := σ) (H := Hooks.guestHooksR) hF.hooks (gw := [Hooks.gJn]) (Γ0 := Γ0)
    (s0 := s0) (p0 := p0) (fs := fs)
  have hC := callSem_opsE (σ := σ) (Γ0 := Γ0) (s0 := s0) (p0 := p0) hfs
  refine hl_seq_last (b1 := false) (hl_call hK hC ts_rns hk0) ?_
  intro u0 hu0 _
  refine hl_decCall hK hC opsPfx_pop hu0 ?_
  intro t ht _ v hsh
  refine hl_decCall hK hC opsPfx_pop (kok_loc hK ht _) ?_
  intro t1 ht1 _ v1 hsh1
  refine hl_seq_last (b1 := true) (hl_call hK hC tl_chg
    (u0 := setVarHOLFinite (nm "v") v1 t1) (kok_loc hK ht1 _)) ?_
  intro u hu hlu
  obtain ⟨w, hw⟩ := gk_keyWord hu
  refine hl_dec hK ?_
  intro v' hv' hsh'
  have hv'w : v' = .val (.word w) := by
    have h1 : u.globals.lookup (nm "evm_key_buf") = some v' := hv'
    rw [gword_some hw] at h1
    exact (Option.some.inj h1).symm
  subst hv'w
  have hS : GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs (bd true)
      (setVarHOLFinite (nm "key") (.val (.word w)) u) := kok_loc hK hu _
  refine hl_seq_last (b1 := true) (hl_callA tb_mem tb_fp hfs opsTbE_ok (fun g h => h)
    (u0 := setVarHOLFinite (nm "key") (.val (.word w)) u) hS
    (fun vs hvs Γ1 p1 hrun hch _ => key_argsOK (u := setVarHOLFinite (nm "key") (.val (.word w)) u)
      hw (lk_set_self _ _ _) hvs hrun)) ?_
  intro u2 hu2 hlu2
  refine hl_dec hK ?_
  intro v2 hv2 hsh2
  exact gc_sound hK hC _ true true ts_tail _ (kok_loc hK hu2 _)

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_tstore
