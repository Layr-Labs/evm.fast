import InitECandidate.Solver.MemSafe.Stor3.Env
import InitECandidate.Solver.MemSafe.Stor3.Summ

set_option autoImplicit false

/-!
# `op_sload`'s step spec (sonnet-store3)

Everything before `var target = ...` is the `op_tload` pattern; at the `target` declaration the
`GK` run is rebased (`gk_rebase_tgt`) so that the buffer fact `BufOK target 20` (from the chain
extension) is carried to `get_storage(target, key)` by `bufOK_runT`.
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Stor3
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

/-- `[target, key]` fits `[buf 20, any]` given the buffer fact for `target`. -/
theorem argsOK_tk {u : State σ} {T kk : BitVec 64}
    (hT : u.locals.lookup (nm "target") = some (.val (.word T)))
    (hk : u.locals.lookup (nm "key") = some (.val (.word kk)))
    {vs : List (ValueHOL 64)} (hvs : evs u [lv (nm "target"), lv (nm "key")] = some vs)
    {Γ1 : Gam} {p1 : Ptrs} (hB : BufOK guestC Γ1 p1 T.toNat 20) :
    ArgsOK guestC Γ1 p1 [.buf 20, .any] vs := by
  have h1 : evs u [lv (nm "target"), lv (nm "key")] = some [.val (.word T), .val (.word kk)] :=
    evs_cons (by rw [ev_lv]; exact hT) (evs_cons (by rw [ev_lv]; exact hk) evs_nil)
  rw [h1] at hvs
  cases hvs
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | _ | i
  · simp only [List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt; subst hv
    exact ⟨_, rfl, hB⟩
  · simp only [List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt; subst hv
    trivial
  · simp at hpt

def gsE : GEnv := ⟨[], [nm "get_storage"], [Hooks.gJn]⟩

theorem gsE_ok : PlainOKB gsE (nm "get_storage") Band3.gsSig gsCaps 2 := by decide +kernel
theorem gs_fp : ∀ {σ : Type}, KeepsFp σ guestCtx (nm "get_storage") :=
  fun {_} => Wire.keepsFp_guest (by decide +kernel)

theorem s3_pop : callCl s3E false (nm "stack_pop") [] = some false := by decide +kernel
theorem s3_iw : callCl s3E false (nm "is_warm_storage_key") [lv (nm "target"), lv (nm "key")] =
    some false := by decide +kernel
theorem s3_chg100 : callCl s3E false (nm "charge_gas") [cw 100] = some true := by decide +kernel
theorem s3_chg2100 : callCl s3E false (nm "charge_gas") [cw 2100] = some true := by decide +kernel
theorem s3_wsk : callCl s3E true (nm "warm_storage_key") [lv (nm "target"), lv (nm "key")] =
    some true := by decide +kernel
theorem s3_oslSuf : gc s3E true Band3.oslSuf = some true := by decide +kernel

/-- **`op_sload`'s step spec** at `guestHooksR`, from `get_storage`'s summary. -/
theorem j_op_sload
    (hGS : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "get_storage")
      Band3.gsSig gsCaps) :
    OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_sload") := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  refine gk_opStep guestCtx_code hF.hooks (gw := [Hooks.gJn]) Band3.code_osl (b := true) ?_
  intro Γ0 s0 p0 fs e c rest hfs hrdy hk0
  have hK := kOK_gk (σ := σ) (H := Hooks.guestHooksR) hF.hooks (gw := [Hooks.gJn]) (Γ0 := Γ0)
    (s0 := s0) (p0 := p0) (fs := fs)
  have hC := callSem_s3E (σ := σ) (Γ0 := Γ0) (s0 := s0) (p0 := p0) hfs
  unfold Band3.oslBody
  refine hl_decCall hK hC s3_pop hk0 ?_
  intro t ht hloc v hsh
  refine hl_dec hK ?_
  intro v' hv' hsh'
  obtain ⟨w, hw⟩ := gk_keyWord (kok_loc hK ht (t.locals))
  have hv'w : v' = .val (.word w) := by
    have h1 : t.globals.lookup (nm "evm_key_buf") = some v' := hv'
    rw [gword_some hw] at h1
    exact (Option.some.inj h1).symm
  subst hv'w
  have hS : GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs (bd false)
      (setVarHOLFinite (nm "key") (.val (.word w)) (setVarHOLFinite (nm "kv") v t)) :=
    kok_loc hK (kok_loc hK ht _) _
  refine hl_seq_last (b1 := false) (hl_callA tb_mem tb_fp hfs opsTbE_ok (fun g h => h)
    (u0 := setVarHOLFinite (nm "key") (.val (.word w)) (setVarHOLFinite (nm "kv") v t)) hS
    (fun vs hvs Γ1 p1 hrun hch _ => key_argsOK
      (u := setVarHOLFinite (nm "key") (.val (.word w)) (setVarHOLFinite (nm "kv") v t))
      hw (lk_set_self _ _ _) hvs hrun)) ?_
  intro u2 hu2 hlu2
  refine hl_dec hK ?_
  intro v2 hv2 hsh2
  obtain ⟨Γd, pd, T, rfl, hk0', hGd, hBuf, hback, -⟩ :=
    gk_rebase_tgt hF.hooks hfs (kok_loc hK hu2 u2.locals) hv2
  refine hoareG_conseq (P := fun s => s = setVarHOLFinite (nm "target") (.val (.word T)) u2)
    (Q := GQ (GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γd u2 pd fs) true) ?_
    (fun _ _ h => h) (fun r t _ _ hq => gq_rebase hK (dd := bd false) hback hq)
  have hK' := kOK_gk (σ := σ) (H := Hooks.guestHooksR) hF.hooks (gw := [Hooks.gJn]) (Γ0 := Γd)
    (s0 := u2) (p0 := pd) (fs := fs)
  have hC' := callSem_s3E (σ := σ) (Γ0 := Γd) (s0 := u2) (p0 := pd) hfs
  have hu3 : GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γd u2 pd fs (bd false)
      (setVarHOLFinite (nm "target") (.val (.word T)) u2) := kok_loc hK' hk0' _
  have lT : ∀ x : State σ, x.locals = (setVarHOLFinite (nm "target") (.val (.word T)) u2).locals →
      x.locals.lookup (nm "target") = some (.val (.word T)) := fun x hx => by
    rw [hx]; exact lk_set_self _ _ _
  have lK : ∀ x : State σ, x.locals = (setVarHOLFinite (nm "target") (.val (.word T)) u2).locals →
      x.locals.lookup (nm "key") = some (.val (.word w)) := fun x hx => by
    rw [hx, lk_set_ne _ _ (by decide), hlu2]
    show (setVarHOLFinite (nm "key") _ _).locals.lookup _ = _
    rw [lk_set_self]
  refine hl_decCall hK' hC' s3_iw hu3 ?_
  intro t4 ht4 hloc4 v4 hsh4
  have hw0 : GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γd u2 pd fs (bd false)
      (setVarHOLFinite (nm "warm") v4 t4) := kok_loc hK' ht4 _
  refine hl_seq_last (b1 := true) (hl_ite' (hl_call hK' hC' s3_chg100 hw0)
    (hl_seq (hl_call hK' hC' s3_chg2100 hw0) (fun u hu hl => ?_))) ?_
  · have := hl_call hK' hC' s3_wsk hu
    rwa [hl] at this
  intro u5 hu5 hlu5
  have lT5 : u5.locals.lookup (nm "target") = some (.val (.word T)) := by
    rw [hlu5, lk_set_ne _ _ (by decide)]; exact lT t4 hloc4
  have lK5 : u5.locals.lookup (nm "key") = some (.val (.word w)) := by
    rw [hlu5, lk_set_ne _ _ (by decide)]; exact lK t4 hloc4
  refine hl_decCallS hGS gs_fp hfs gsE_ok (fun g h => h) hu5
    (fun vs hvs Γ1 p1 hrun hch _ => argsOK_tk lT5 lK5 hvs (bufOK_runT hGd hrun hBuf)) ?_
  intro t hk ht v hsh
  exact gc_sound hK' hC' _ true true s3_oslSuf _ (kok_loc hK' hk _)

end InitECandidate.Solver.MemSafe.Stor3

#print axioms InitECandidate.Solver.MemSafe.Stor3.j_op_sload
