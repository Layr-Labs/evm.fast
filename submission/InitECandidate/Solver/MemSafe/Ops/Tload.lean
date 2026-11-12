import InitECandidate.Solver.MemSafe.Ops.ExtCode
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# `op_tload` and `op_tstore` (sonnet-ops)

The `buf 32` argument of `u256_to_be32` is the global `evm_key_buf` (typed `.ptr tB32` in
`guestC.GT`, so `Globs` gives its 32-byte all-scalar object): `key_bufOK`.
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

/-- `var n = e; p` (a plain declaration). -/
theorem hl_dec {X : Ctx 64} {K : Nat → State σ → Prop} (hK : KOK K) {n : MlS} {sh : ShapeHOL}
    {e : ExpHOL 64} {p : ProgHOL 64} {b' : Bool} {u0 : State σ}
    (hcont : ∀ v : ValueHOL 64, ev u0 e = some v → shapeEqHOL sh (shapeOfHOLExact v) = true →
      HoareG σ X (fun s => s = setVarHOLFinite n v u0) p (GQ K b')) :
    HoareG σ X (fun t => t = u0) (.dec n sh e p) (GQ K b') := by
  refine hoareG_dec fun s _ hs v hv hsh => ?_
  subst hs
  exact hoareG_conseq (hcont v hv hsh) (fun _ _ h => h) fun r t _ _ hq => gq_loc hK hq _

/-- **`evm_key_buf` is a writable 32-byte block.** -/
theorem key_bufOK {H : Hooks σ} {Γ : Gam} {s : State σ} {p : Ptrs} (hG : G guestC H Γ s)
    (hps : ptrsOf s = some p) {w : BitVec 64} (hw : gword s (nm "evm_key_buf") = some w) :
    BufOK guestC Γ p w.toNat 32 := by
  obtain ⟨q, hq, hord, hL, -, -, hGl, -⟩ := id hG
  obtain rfl : p = q := Option.some.inj (hps.symm.trans hq)
  obtain ⟨v, hv, o, ho, hob, hot⟩ := hGl (nm "evm_key_buf") (.ptr tB32) gt_evm_key_buf
  have hvw : v = w := Option.some.inj (hv.symm.trans hw)
  subst hvw
  have hal := (hL.1 o ho).1
  have hs : 32 ≤ o.size := by
    have := (hL.1 o ho).2.2.2.1
    rw [hot, ty_B32] at this
    exact this
  have hlo : o.lo = v.toNat := by rw [← hob]; rfl
  rintro a ⟨ha8, hl, hh⟩
  left
  have hk : a.toNat = o.lo ∨ a.toNat = o.lo + 8 ∨ a.toNat = o.lo + 16 ∨ a.toNat = o.lo + 24 := by
    omega
  have hcell : ∀ k, k < 4 → o.lo + 8 * k = a.toNat → o.HasSlot k ∧ a = o.cell k := by
    intro k hk4 hka
    refine ⟨by unfold Obj.HasSlot; omega, ?_⟩
    apply BitVec.eq_of_toNat_eq
    rw [(cell_toNat hord hL ho (k := k) (by unfold Obj.HasSlot; omega)).1]
    omega
  have hsc : ∀ k, (guestC.ty o.ty).slot k = .scalar := by
    intro k
    rw [hot, ty_B32]
    rfl
  rcases hk with hk | hk | hk | hk
  · obtain ⟨h1, h2⟩ := hcell 0 (by omega) (by omega)
    exact ⟨o, ho, 0, h1, hsc 0, h2⟩
  · obtain ⟨h1, h2⟩ := hcell 1 (by omega) (by omega)
    exact ⟨o, ho, 1, h1, hsc 1, h2⟩
  · obtain ⟨h1, h2⟩ := hcell 2 (by omega) (by omega)
    exact ⟨o, ho, 2, h1, hsc 2, h2⟩
  · obtain ⟨h1, h2⟩ := hcell 3 (by omega) (by omega)
    exact ⟨o, ho, 3, h1, hsc 3, h2⟩

def tbSg : Sig := ⟨[.any, .buf 32], [], [], false⟩
def opsTbE : GEnv := ⟨[], [nm "u256_to_be32"], [Hooks.gJn]⟩

theorem tb_mem : (nm "u256_to_be32", tbSg, ([] : List Cap)) ∈ ShardsJL.tab26 := by decide +kernel
theorem tb_fp : ∀ {σ : Type}, KeepsFp σ guestCtx (nm "u256_to_be32") :=
  fun {_} => Wire.keepsFp_guest (by decide +kernel)
theorem opsTbE_ok : PlainOKB opsTbE (nm "u256_to_be32") tbSg [] 2 := by decide +kernel

/-- `u256_to_be32(kv, key)` with `key` the local copy of `evm_key_buf` fits `[.any, .buf 32]`. -/
theorem key_argsOK {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
    {u : State σ} {w : BitVec 64} (hw : gword u (nm "evm_key_buf") = some w)
    (hlk : u.locals.lookup (nm "key") = some (.val (.word w))) {vs : List (ValueHOL 64)}
    (hvs : evs u [lv (nm "kv"), lv (nm "key")] = some vs) {Γ1 : Gam} {p1 : Ptrs}
    (hrun : RunT guestC (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 Γ1 u p0 p1) :
    ArgsOK guestC Γ1 p1 [.any, .buf 32] vs := by
  obtain ⟨v1, vs1, rfl, hv1, h1⟩ := evs_cons_inv hvs
  obtain ⟨v2, vs2, rfl, hv2, h2⟩ := evs_cons_inv h1
  rw [evs_zero h2]
  rw [ev_lv, hlk, Option.some.injEq] at hv2
  subst hv2
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | _ | i
  · simp only [List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt; subst hv
    trivial
  · simp only [List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt; subst hv
    exact ⟨_, rfl, key_bufOK hrun.2.2.2.2.2.1 hrun.2.1 hw⟩
  · simp at hpt

def tlTail : ProgHOL 64 :=
  .seq (callD (nm "stack_push") [lv (nm "v")]) (.seq (callD (nm "pc_add") [cw 1]) (.return (cw 0)))

def tlInner : ProgHOL 64 :=
  .dec (nm "target") .one tgtE
    (.decCall (nm "v") (shK 4) (nm "get_transient_storage") [lv (nm "target"), lv (nm "key")]
      tlTail)

def tlBody : ProgHOL 64 :=
  .decCall (nm "kv") (shK 4) (nm "stack_pop") []
    (.seq (callD (nm "charge_gas") [cw 100])
      (.dec (nm "key") .one (gv (nm "evm_key_buf"))
        (.seq (callD (nm "u256_to_be32") [lv (nm "kv"), lv (nm "key")]) tlInner)))

theorem tlBody_eq : (declPair Guest.Software.guestFn_op_tload).2.2 = tlBody := by
  conv => lhs; cbv
  rfl

theorem tl_chg : callCl opsE false (nm "charge_gas") [cw 100] = some true := by decide +kernel
theorem tl_gts : callCl opsE true (nm "get_transient_storage") [lv (nm "target"), lv (nm "key")] =
    some true := by decide +kernel
theorem tl_tail : gc opsE true tlTail = some true := by decide +kernel

/-- The global `evm_key_buf` is a word on a `GK` run. -/
theorem gk_keyWord {H : Hooks σ} {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
    {fs : List Frame} {d : Nat} {u : State σ} (hu : GK H gw Γ0 s0 p0 fs d u) :
    ∃ w, gword u (nm "evm_key_buf") = some w := by
  obtain ⟨⟨hJ, Γ1, p1, hrun, hch, hE⟩, -, -⟩ := hu
  obtain ⟨q, hq, hord, hL, -, -, hGl, -⟩ := id hrun.2.2.2.2.2.1
  obtain ⟨v, hv, -⟩ := hGl (nm "evm_key_buf") (.ptr tB32) gt_evm_key_buf
  exact ⟨v, hv⟩

/-- **`op_tload`'s step spec.** -/
theorem j_op_tload : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_tload") := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_op_tload) :=
    declPair_valid (List.getElem_mem (n := 529) (by decide)) ⟨_, rfl⟩
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  refine gk_opStep guestCtx_code hF.hooks (gw := [Hooks.gJn]) hcode (b := true) ?_
  intro Γ0 s0 p0 fs e c rest hfs hrdy hk0
  rw [tlBody_eq]
  have hK := kOK_gk (σ := σ) (H := Hooks.guestHooksR) hF.hooks (gw := [Hooks.gJn]) (Γ0 := Γ0)
    (s0 := s0) (p0 := p0) (fs := fs)
  have hC := callSem_opsE (σ := σ) (Γ0 := Γ0) (s0 := s0) (p0 := p0) hfs
  refine hl_decCall hK hC opsPfx_pop hk0 ?_
  intro t ht hloc v hsh
  refine hl_seq_last (b1 := true) (hl_call hK hC tl_chg
    (u0 := setVarHOLFinite (nm "kv") v t) (kok_loc hK ht _)) ?_
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
  refine hl_decCall hK hC tl_gts (kok_loc hK hu2 _) ?_
  intro t3 ht3 _ v3 _
  exact gc_sound hK hC _ true true tl_tail _ (kok_loc hK ht3 _)

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_tload
