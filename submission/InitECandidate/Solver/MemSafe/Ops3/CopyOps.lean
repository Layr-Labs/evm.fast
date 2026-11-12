import InitECandidate.Solver.MemSafe.Ops3.CopyBuf
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# `op_calldatacopy` / `op_codecopy` (sonnet-gk2, step 3)

Both are `copy_from_buffer(3, buf, buf_len); return 0` (calldatacopy first loads `msg`); the work is
`cfb_spec` (CopyBuf.lean), a `GK` function specification of `copy_from_buffer`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

def cdcBody : ProgHOL 64 :=
  .dec (nm "msg") .one (gLoad "ev" 112)
    (.seq (callD (nm "copy_from_buffer") [cw 3, .load .one (.op .add [lv (nm "msg"), cw 88]),
        .load .one (.op .add [lv (nm "msg"), cw 96])]) Struct.rz)

def cocBody : ProgHOL 64 :=
  .seq (callD (nm "copy_from_buffer") [cw 3, gLoad "ev" 48, gLoad "ev" 56]) Struct.rz

theorem cdcBody_eq : (declPair Guest.Software.guestFn_op_calldatacopy).2.2 = cdcBody := by
  conv => lhs; cbv
  rfl

theorem cocBody_eq : (declPair Guest.Software.guestFn_op_codecopy).2.2 = cocBody := by
  conv => lhs; cbv
  rfl

section steps
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}

local notation "KJ" => GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs

/-- `copy_from_buffer(3, y, z); rest` from `GK 0`. -/
theorem copy3_step (hfs : fs = (e, c) :: rest) (hP : Phi s0 < 2 ^ 64) {u0 : State σ}
    (hu : KJ 0 u0) {a1 a2 : ExpHOL 64} :
    HoareG σ guestCtx (fun t => t = u0)
      (.seq (callD (nm "copy_from_buffer") [cw 3, a1, a2]) Struct.rz) (GQ (KJ) true) := by
  refine hoareG_gkCallR hfs (cfb_spec (Γ0 := Γ0) (p0 := p0) hfs hP) (b1 := true) ?_ fun t hl hk => ?_
  · intro vs hvs callee r st hR hg hna
    obtain ⟨v0, vs0, rfl, hv0, h0⟩ := evs_cons_inv hvs
    obtain ⟨v1, vs1, rfl, hv1, h1⟩ := evs_cons_inv h0
    obtain ⟨v2, vs2, rfl, hv2, h2⟩ := evs_cons_inv h1
    have hz := evs_zero h2
    subst hz
    rw [ev_cw] at hv0
    simp only [Option.some.injEq] at hv0
    subst hv0
    have := hR hg (BitVec.ofNat 64 3) v1 v2 rfl (by decide) (by decide)
      (kOK_KJ.congr _ _ _ hu rfl rfl rfl rfl) hna
    cases r <;> simpa [cbd, rbd, bd] using this
  · exact gc_sound kOK_KJ (callSem_gE hfs) _ true true rz_gc t hk

end steps

/-- **`op_codecopy`'s bounded step spec.** -/
theorem j_op_codecopy : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_codecopy") := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_op_codecopy) :=
    declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 541) (by decide)) ⟨_, rfl⟩
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  refine gk_opStepB guestCtx_code hF.hooks (gw := [Hooks.gJn]) hcode (b := true) ?_
  intro Γ0 s0 p0 fs e c rest hfs hrdy hP hk0
  rw [cocBody_eq]
  exact copy3_step hfs hP hk0

/-- **`op_calldatacopy`'s bounded step spec.** -/
theorem j_op_calldatacopy : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_calldatacopy") := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_op_calldatacopy) :=
    declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 539) (by decide)) ⟨_, rfl⟩
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  refine gk_opStepB guestCtx_code hF.hooks (gw := [Hooks.gJn]) hcode (b := true) ?_
  intro Γ0 s0 p0 fs e c rest hfs hrdy hP hk0
  rw [cdcBody_eq]
  refine hl_dec kOK_KJ fun msgv hmsg hsh2 => ?_
  exact copy3_step hfs hP (by exact kOK_KJ.congr _ _ _ hk0 rfl rfl rfl rfl)

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_codecopy
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_calldatacopy
