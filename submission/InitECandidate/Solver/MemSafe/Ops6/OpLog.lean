import InitECandidate.Solver.MemSafe.Ops6.Cost
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# `op_log` (sonnet-log)

**`j_op_log : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_log")`**: the two pops, the
stack guard `SP <+ ntopics` (so `ntopics ≤ SP ≤ 1024`), then `lg_cost` (cost prefix, `charge_gas`),
`lg_topics` (the `alloc`ed topics block, the pop loop), `lg_ext` (`extend_memory`,
`require_not_static`) and `lg_final` (the record window, `log_append`, `pc_add`).
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

abbrev lgGuardC : ExpHOL 64 := .cmp .lower (gLoad "ev" 16) (lv (nm "ntopics"))
abbrev lgGuard : ProgHOL 64 := .ite lgGuardC (.raise (nm "EvmErr") (cw 2)) .skip

def logBody : ProgHOL 64 :=
  .decCall (nm "start") (shK 4) (nm "stack_pop") []
  (.decCall (nm "size") (shK 4) (nm "stack_pop") [] (.seq lgGuard lgC))

theorem logBody_eq : (declPair Guest.Software.guestFn_op_log).2.2 = logBody := by
  conv => lhs; cbv
  rfl

/-- The running frame's stack pointer is at most `1024`. -/
theorem gk_sp {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
    {e c : BitVec 64} {rest : List Frame} (hfs : fs = (e, c) :: rest) {d : Nat} {u : State σ}
    (hu : GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs d u) :
    (fld u.memory e 16).toNat ≤ 1024 := by
  obtain ⟨⟨hJ, Γ1, p1, hrun, hch, hE⟩, -, -⟩ := hu
  obtain ⟨o, hevo, hob⟩ := gk_head hfs hch
  have hG1 := hrun.2.2.2.2.2.1
  obtain ⟨q, hq, hord, hL, -, -, -, hW⟩ := id hG1
  have hsm := Hooks.guestHooksR_ev.get Γ1 u o hevo.1 hevo.2.1 (hW o hevo.1)
  obtain ⟨⟨h1, h2, h3, o', ho', hb', ht', hsz⟩, -⟩ := hsm
  have hsp : (fld u.memory o.base 16).toNat ≤ (fld u.memory o.base 232).toNat := h1
  have hcap : (fld u.memory o.base 232).toNat ≤ 1024 := h3
  rw [← hob]
  omega

section main
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}

local notation "KJ" => GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs

theorem lg_main (hfs : fs = (e, c) :: rest) (hP : Phi s0 < 2 ^ 64) (hk0 : KJ 0 s0) :
    HoareG σ guestCtx (fun t => t = s0) logBody (GQ (KJ) true) := by
  unfold logBody
  refine hoareG_gkDec hfs pop_cl hk0 fun v1 st1 hk1 hsh1 => ?_
  obtain ⟨ws1, hws1, rfl⟩ := eq_wv_of_shapeEq' hsh1
  obtain ⟨a0, a1, a2, a3, rfl⟩ := Struct.wv4 hws1
  refine hoareG_gkDec hfs pop_cl (by exact kOK_KJ.congr _ _ _ hk1 rfl rfl rfl rfl)
    fun v2 st2 hk2 hsh2 => ?_
  obtain ⟨ws2, hws2, rfl⟩ := eq_wv_of_shapeEq' hsh2
  obtain ⟨b0, b1, b2, b3, rfl⟩ := Struct.wv4 hws2
  refine hoareG_pt fun t0 ht0 => ?_
  have hK0 : KJ 0 t0 := kc_kj_step ht0 hk2
  have hst0 : t0.locals.lookup (nm "start") = some (wv [a0, a1, a2, a3]) :=
    (lk_step ht0 (by decide)).trans (lk_set_self _ _ _)
  have hsz0 : t0.locals.lookup (nm "size") = some (wv [b0, b1, b2, b3]) := lk_self ht0
  refine hoareG_seq (R := fun ro s => (ro = none → s = t0 ∧ ev s lgGuardC = some (.val (.word 0))) ∧
      ∀ r, ro = some r → ¬ Abortive r → KJ (rbd r) s) (hoareG_ite ?_ ?_)
    (fun r t _ hr _ h => ⟨fun h0 => absurd h0 hr, h.2⟩) ?_
  · refine hoareG_pt fun t' ⟨ht', _⟩ => ?_
    rw [ht']
    refine hoareG_raise fun s _ hs w _ => ?_
    subst hs
    refine ⟨fun h0 => (by cases h0), fun r hr _ => ?_⟩
    cases hr
    exact kOK_KJ.congr _ _ _ (kOK_KJ.mono _ _ _ hK0 (Nat.zero_le _)) rfl rfl rfl rfl
  · exact hoareG_skip fun s _ ⟨hs, hc⟩ => ⟨fun _ => ⟨hs, hc⟩, fun r hr => by cases hr⟩
  refine hoareG_pt fun t' ht' => ?_
  obtain ⟨ht3, hc⟩ := ht'.1 rfl
  rw [ht3] at hc ⊢
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
  have hlt := Struct.cmp_lower_false hxy
  have hE : t0.globals.lookup Struct.gEv = some (.val (.word e)) :=
    AllocImpl.lookup_of_gword (gk_gword hfs hK0)
  have hxv : x = rd t0.memory (e + BitVec.ofNat 64 16) := by
    have := (Struct.ev_evL hE hx).1
    simpa using this
  have hsp := gk_sp hfs hK0
  have hnt0 : t0.locals.lookup (nm "ntopics") = some (.val (.word y)) := hy
  exact lg_cost hfs hP hK0 (nt := y) hnt0 (by rw [hxv] at hlt; exact le_trans hlt hsp) hst0 hsz0

end main

/-- **`op_log`'s bounded step spec** at `guestHooksR`. -/
theorem j_op_log : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_log") := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_op_log) :=
    declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 524) (by decide)) ⟨_, rfl⟩
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  refine gk_opStepB guestCtx_code hF.hooks (gw := [Hooks.gJn]) hcode (b := true) ?_
  intro Γ0 s0 p0 fs e c rest hfs hrdy hP hk0
  rw [logBody_eq]
  exact lg_main hfs hP hk0

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.lg_main
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_log
