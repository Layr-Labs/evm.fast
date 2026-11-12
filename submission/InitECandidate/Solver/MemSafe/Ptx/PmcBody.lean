import InitECandidate.Solver.MemSafe.Ptx.PmcCreate2

/-!
# F3: `process_message_call`, part T: `alloc(96)`, `memzero`, the adoption of `out`, and the `FunSpec`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Entry2

variable {σ : Type}

section body
variable {M : Nat} {msg : BitVec 64} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

/-- `memzero(out, 96)` with a normal end. -/
theorem hoare_mzJC' (hord0 : p0.Ordered) :
    Hoare σ guestCtx (fun t => ∃ out, JB M msg Γ0 s0 p0 out t)
      (callD (nm "memzero") [lv (nm "out"), cw 96])
      (fun r t => r = none ∧ ∃ out, JC M msg Γ0 s0 p0 out t) := by
  have hH := Hooks.guestHooksR_lawful (σ := σ)
  refine hoare_callD ((sumSpecA_relX mz_R).and (Frames.funSpec_memzeroZ guestCtx_code)) ?_
  intro s hs ⟨out, hP⟩ vs hvs callee v st ⟨hR, hZ⟩ hst
  obtain ⟨Γ, p, hG, hp, hfo, hrunB, hfb, hlv, hpkB, hl1, hl2⟩ := hP
  rw [evs_cons (ev_lv_eq hl2) (evs_cons (ev_cw s 96) evs_nil)] at hvs
  cases hvs
  have hGe : G guestC (Hooks.guestHooksR (σ := σ)) Γ (callEntryStateHOLFinite s callee) :=
    (G_locFree hH s _ _).mpr hG
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p := (ptrsOf_congr rfl).trans hp
  have hordp := ordered_of_G hG hp
  have hb : BufOK guestC Γ p out.toNat n96 :=
    bufOK_of_fresh hord0 hordp hrunB.2.2.1 hfb
  have hJ : JrNZ (callEntryStateHOLFinite s callee) := jrNZ_congr (s := s) rfl hfo.2.2.2.2.1
  obtain ⟨Γ', p', hc, hG', hp', hfo', hrun⟩ := fi_rel (M := M) (msg := msg) hR hGe hpe hfo
    (argsOK_mz hb) (by simp [Helpers.sigMemzero]) (by simp [Helpers.sigMemzero])
    (fun c hc => absurd hc (by simp))
    (fun a h => absurd h.2 (by rintro ⟨c, hc, -⟩; exact absurd hc (by simp)))
  have hz := hZ v rfl out (BitVec.ofNat 64 96) rfl hfb.1 (by decide) (by decide)
  have hrun' := runT_src hrun (s := s) rfl rfl
  have hrunT : RunT guestC (Hooks.guestHooksR (σ := σ)) [] Γ0 s0 Γ' st p0 p' := by
    refine runT_trans hrunB ?_
    exact runT_gw (fun g hg => absurd hg (by simp [Helpers.sigMemzero])) hrun'
  have hpkC : ProtKeep guestC (nst guestSt Γ) s st :=
    fun a ha => (protKeep_nst_of_sumCore hGe (argsOK_mz hb) hc) a ha
  refine ⟨rfl, out, ⟨Γ', p', (G_locFree hH st s.locals st.clock).mpr hG', (ptrsOf_congr rfl).trans hp',
    hfo', runT_locals hH hrunT _, freshBuf_runT hord0 hrun hfb hordp,
    ⟨hlv.1, by have := hrun.2.2.1; unfold Ptrs.Mono at this; omega⟩, ?_, hl1, hl2⟩, ?_⟩
  · exact protKeep_trans_nst hrunB.2.2.2.1 hpkB hpkC
  · exact hz

/-- `out`'s bytes are outside the entry typing. -/
theorem outFresh_of_jc {out : BitVec 64} {u : State σ}
    (h : JC M msg Γ0 s0 p0 out u) : OutFresh Γ0 out := by
  obtain ⟨⟨Γ, p, hG, hp, hfo, hrun, hfb, hlv, hpk, hl1, hl2⟩, hz⟩ := h
  have hordp := ordered_of_G hG hp
  obtain ⟨q, hq, -, hL, -⟩ := id hG
  obtain rfl : q = p := Option.some.inj (hq.symm.trans hp)
  have hw : out.toNat + 96 < 2 ^ 64 := by
    have := hlv.2; have := hordp.2.1; unfold heapEnd at *; omega
  intro a ha1 ha2 ⟨o, ho, hlo, hhi⟩
  obtain ⟨o', ho', hb, ht, hsz⟩ := hrun.2.2.2.1 o ho
  exact freshBuf_disj hL (by decide) hfb ha1 ha2 hw ⟨o', ho', by unfold Obj.lo at *; rw [hb]; exact hlo,
    by unfold Obj.hi at *; rw [hb]; omega⟩

theorem fe_of_jc (hG0 : G guestC (Hooks.guestHooksR (σ := σ)) Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    (hfo0 : FoPre M msg Γ0 s0) {out : BitVec 64} {u : State σ} (h : JC M msg Γ0 s0 p0 out u) :
    FE M msg Γ0 s0 out u := by
  have hFr := outFresh_of_jc h
  have h24 : fld u.memory msg 24 = fld s0.memory msg 24 := by
    obtain ⟨⟨-, -, -, -, -, -, -, -, hpk, -⟩, -⟩ := id h
    exact fld24_keep hfo0.1.1 hpk
  obtain ⟨Γ, p, hG, hp, hfo, hrun, ⟨o, ho, hob, hot, hos⟩, hz, hl1, hl2⟩ := jd_of_jc hG0 hp0 hfo0 h
  exact ⟨Γ, p, hG, hp, hfo, kb_of_runT hrun (ordered_of_G hG0 hp0), h24, ⟨o, ho, hob, hot, by omega⟩, hFr, hz,
    hl1, hl2⟩

end body

end InitECandidate.Solver.MemSafe.Ptx
