import InitECandidate.Solver.MemSafe.Frames.GChkJL
import InitECandidate.Solver.MemSafe.Frames.DispChk
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# Handler step specs from a `GK` Hoare proof (frames11, helper interface)

**`gk_opStep`**: to prove an `FHyps` handler field `OpStep σ guestCtx guestHooksR f`, it suffices
to prove, for the handler's body and every entry state `s0` on a chain `fs = (e, c) :: rest`, the
Hoare triple `HoareG σ guestCtx (· = s0) body (GQ (GK … s0 … fs) b)` from `GK … fs 0 s0` (and
`Ready s0`). Inside, the tools are:

* `kc_core` (one summarized call: chain, extension, `Φ`, active bit), `gk_plain` (a plain fold
  callee), `gk_charge` (`charge_gas`), `kg_top` (a store into the running frame's driver cells);
* `gc_sound … p b b' h u0 hu` for any sub-block `p` the gas checker accepts
  (`gc gE b p = some b'`, by `decide +kernel`), with `callSem_gk` and `kOK_gk`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type} {X : Ctx 64} {H : Hooks σ}

/-- **A handler's step spec from a `GK` Hoare proof of its body.** -/
theorem gk_opStep (hC : X.code.lookup = guestCode) (hH : HooksLawful guestC H) {gw : List MlS}
    {f : MlS} {ps : List (MlS × ShapeHOL)} {body : ProgHOL 64} {sh : ShapeHOL}
    (hcode : guestCode f = some (ps, body, sh)) {b : Bool}
    (hbody : ∀ (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (fs : List Frame) (e c : BitVec 64)
      (rest : List Frame), fs = (e, c) :: rest → Ready s0 → GK H gw Γ0 s0 p0 fs 0 s0 →
        HoareG σ X (fun t => t = s0) body (GQ (GK H gw Γ0 s0 p0 fs) b)) :
    OpStep σ X H f := by
  intro M vs body' callee rs hl s0 hs0 hloc r hr hg hna Γ hG hpre
  obtain ⟨⟨⟨fs, hch, hE⟩, -, hrdy⟩, hJ⟩ := hpre
  rw [hC] at hl
  obtain ⟨ps', hps, -⟩ := lookupCode_k hl
  rw [hcode] at hps
  simp only [Option.some.injEq, Prod.mk.injEq] at hps
  obtain ⟨-, rfl, -⟩ := hps
  obtain ⟨e, c, rest, hfs, -, -, -⟩ := hch.chain
  obtain ⟨p, hps0, -⟩ := id hG
  have hk0 : GK H gw Γ s0 p fs 0 s0 :=
    ⟨⟨hJ, Γ, p, runT_refl hG hps0, hch, hE⟩, by omega, Or.inl rfl⟩
  have H0 := hbody Γ s0 p fs e c rest hfs hrdy hk0 s0 hs0 rfl (by rw [hr]; exact hg)
  rw [hr] at H0
  obtain ⟨⟨hJt, Γ', p', hrun, hch', hE'⟩, hΦt, hactt⟩ := H0.2 r rfl hna
  have ha0 : act s0 = 1 := by unfold act; rw [if_pos hrdy]
  refine ⟨Γ', hrun.2.2.2.2.2.1, ⟨fun v hv => ?_, fun v hv => ?_⟩, fun _ _ => hJt, fun _ _ => hJt,
    fun _ _ => keepH_of_runT hrun, fun _ _ => keepH_of_runT hrun,
    fun _ _ => rootK_of_same hch.chain hch'.chain, fun _ _ => rootK_of_same hch.chain hch'.chain,
    fun _ _ => bkeep_of_runT hrun, fun _ _ => bkeep_of_runT hrun⟩
  · subst hv
    exact ⟨⟨fs, hch', hE'⟩, by simp only [rbd] at hΦt; omega⟩
  · subst hv
    refine ⟨⟨fs, hch', hE'⟩, ?_⟩
    simp only [rbd] at hΦt
    rcases hactt with h | h
    · rw [h, ha0]; omega
    · omega

/-- The checker's call semantics at `guestHooksR` for any entry (for `gc_sound` on sub-blocks). -/
theorem callSem_gE {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
    {rest : List Frame} (hfs : fs = (e, c) :: rest) :
    CallSem σ guestCtx gE (GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs) :=
  callSem_gk guestCtx_code Hooks.frameCfg_guestHooksR gtab_sound gfp_sound charge_fp hfs
    (fun g h => h)

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.gk_opStep
#print axioms InitECandidate.Solver.MemSafe.Frames.callSem_gE
