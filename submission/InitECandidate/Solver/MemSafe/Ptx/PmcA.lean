import InitECandidate.Solver.MemSafe.Ptx.Kit
import InitECandidate.Solver.MemSafe.Entry2.Code
import InitECandidate.Solver.MemSafe.Entry2.Pmc
import InitECandidate.Solver.MemSafe.Frames.MzVal
import InitECandidate.Solver.MemSafe.Bal.Touched

/-!
# F3: `process_message_call`, part A: `alloc(96)`, `memzero`, adopt `out` as `tMCO`
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

/-- `out` is zero in its 96 bytes. -/
def Zeros (m : Mem) (out : BitVec 64) : Prop :=
  ∀ j, j % 8 = 0 → j < 96 → m (out + BitVec.ofNat 64 j) = .word 0

theorem kb_of_runT {Γ0 Γ : Gam} {s0 u : State σ} {p0 p : Ptrs}
    (h : RunT guestC (Hooks.guestHooksR (σ := σ)) [] Γ0 s0 Γ u p0 p) (hord : p0.Ordered) :
    KB Γ0 Γ s0 u := ⟨keepH_of_runT h, h.2.2.2.2.2.2.2, p0, h.1, hord⟩

/-- After `alloc(96)`: a run from the entry, `out` fresh. -/
def JB (M : Nat) (msg : BitVec 64) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (out : BitVec 64)
    (u : State σ) : Prop :=
  ∃ Γ p, G guestC (Hooks.guestHooksR (σ := σ)) Γ u ∧ ptrsOf u = some p ∧ FoPre M msg Γ u ∧
    RunT guestC (Hooks.guestHooksR (σ := σ)) [] Γ0 s0 Γ u p0 p ∧ FreshBuf Γ p0 p out 96 ∧
    (heapBase ≤ out.toNat ∧ out.toNat + 96 ≤ p.hp) ∧
    ProtKeep guestC (nst guestSt Γ0) s0 u ∧
    u.locals.lookup (nm "msg") = some (.val (.word msg)) ∧
    u.locals.lookup (nm "out") = some (.val (.word out))

/-- The relation of the built-in allocator (`AllocSpec`). -/
def AllocR (rg : Region) (vs : List (ValueHOL 64)) (s : State σ) (r : PanSemResultExact 64)
    (t : State σ) : Prop :=
  Good (some r) → ∀ n p, vs = [.val (.word n)] →
    ptrsOf s = some p → p.Ordered →
      t.memory = s.memory ∧ (∀ g, g ≠ rg.global → t.globals.lookup g = s.globals.lookup g) ∧
      ∃ p', ptrsOf t = some p' ∧ p'.Ordered ∧ p.Mono p' ∧
        ∀ v, r = .returned v → ∃ q, v = .val (.word q) ∧ q.toNat % 8 = 0 ∧
          rg.Live p' q.toNat n.toNat ∧ ∀ a, q.toNat ≤ a → a < q.toNat + n.toNat →
            ¬ p.Allocated a

/-- `alloc(96)` as a `decCall` from the entry state. -/
theorem jb_alloc {M : Nat} {msg : BitVec 64} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
    (hG0 : G guestC (Hooks.guestHooksR (σ := σ)) Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    (hfo0 : FoPre M msg Γ0 s0) (hl : s0.locals.lookup (nm "msg") = some (.val (.word msg)))
    {callee : Locs} {vs : List (ValueHOL 64)} {v : ValueHOL 64} {st : State σ}
    (hvs : evs s0 [cw 96] = some vs)
    (hR : SumRelX guestC (Hooks.guestHooksR (σ := σ)) ⟨[.any], [.freshArg 0 1 0], [], false⟩
      (fun _ s Γ => ReqOK [] s Γ) (fun _ s Γ a => ProtCell guestC Γ a ∧ CapPW [] s Γ a)
      (fun _ _ _ _ _ _ => True) vs (callEntryStateHOLFinite s0 callee) (.returned v) st)
    (hA : AllocR (σ := σ) .heap vs (callEntryStateHOLFinite s0 callee) (.returned v) st)
    (hsh : shapeEqHOL (shapeOfHOLExact v) ShapeHOL.one = true) :
    ∃ out, JB M msg Γ0 s0 p0 out (setVarHOLFinite (nm "out") v { st with locals := s0.locals }) := by
  have hH := Hooks.guestHooksR_lawful (σ := σ)
  obtain ⟨o, rfl⟩ := val_of_shapeEq_one' hsh
  rw [evs_cons (ev_cw s0 96) evs_nil] at hvs
  cases hvs
  have hGe : G guestC (Hooks.guestHooksR (σ := σ)) Γ0 (callEntryStateHOLFinite s0 callee) :=
    (G_locFree hH s0 _ _).mpr hG0
  have hpe : ptrsOf (callEntryStateHOLFinite s0 callee) = some p0 := (ptrsOf_congr rfl).trans hp0
  obtain ⟨Γ', p', hc, hG', hp', hfo', hrun⟩ := fi_rel (M := M) (msg := msg) hR hGe hpe
    hfo0 (argsOK_any (by simp) rfl) (by simp) (by simp)
    (fun c hc => absurd hc (by simp))
    (fun a h => absurd h.2 (by rintro ⟨c, hc, -⟩; exact absurd hc (by simp)))
  have hret := hc.2.2.2.2.2.2.2.2.2 _ rfl 0 (RT.freshArg 0 1 0) o rfl (by simp [flattenHOL])
  obtain ⟨x, hx, hfb⟩ := hret
  simp only [argW, wordOf, List.getElem?_cons_zero, Option.some.injEq] at hx
  subst hx
  obtain ⟨-, -, p'', hp'', -, -, hq⟩ := hA (by simp [Good]) (BitVec.ofNat 64 96) p0 rfl hpe (ordered_of_G hG0 hp0)
  obtain ⟨q, hqo, -, hlive, -⟩ := hq _ rfl
  have hpp : p'' = p' := Option.some.inj (hp''.symm.trans hp')
  rw [hpp] at hlive
  have hqq : q = o := by simpa using hqo.symm
  subst hqq
  refine ⟨q, Γ', p', (G_locFree hH st s0.locals st.clock).mpr hG', (ptrsOf_congr rfl).trans hp',
    ?_, ?_, hfb, hlive, ?_, ?_, lk_set_self _ _ _⟩
  · exact hfo'
  · exact runT_locals hH (runT_src hrun rfl rfl) _
  · exact fun a ha => (protKeep_nst_of_sumCore hGe Bal.argsOK_any1 hc) a ha
  · rw [lk_set_ne _ _ (by decide)]; exact hl


/-- After `memzero(out, 96)`. -/
def JC (M : Nat) (msg : BitVec 64) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (out : BitVec 64)
    (u : State σ) : Prop :=
  JB M msg Γ0 s0 p0 out u ∧ Zeros u.memory out

theorem hoare_mzJC (M : Nat) (msg : BitVec 64) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs)
    (hord0 : p0.Ordered) :
    Hoare σ guestCtx (fun t => ∃ out, JB M msg Γ0 s0 p0 out t) (callD (nm "memzero") [lv (nm "out"), cw 96])
      (fun r t => r = none → ∃ out, JC M msg Γ0 s0 p0 out t) := by
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
  intro _
  have hpkC : ProtKeep guestC (nst guestSt Γ) s st :=
    fun a ha => (protKeep_nst_of_sumCore hGe (argsOK_mz hb) hc) a ha
  refine ⟨out, ⟨Γ', p', (G_locFree hH st s.locals st.clock).mpr hG', (ptrsOf_congr rfl).trans hp',
    hfo', runT_locals hH hrunT _, freshBuf_runT hord0 hrun hfb hordp,
    ⟨hlv.1, by have := hrun.2.2.1; unfold Ptrs.Mono at this; omega⟩, ?_, hl1, hl2⟩, ?_⟩
  · exact protKeep_trans_nst hrunB.2.2.2.1 hpkB hpkC
  · exact hz

end InitECandidate.Solver.MemSafe.Ptx
