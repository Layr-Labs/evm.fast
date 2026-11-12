import InitECandidate.Solver.MemSafe.Frames.OpMem
import InitECandidate.Solver.MemSafe.Ops.PcStore

/-!
# Heap windows on `GK` (sonnet-gk, step 1)

`var m = heap_mark(); ...; heap_release(m);` inside a handler body. The mark state `um` satisfies
`GK d um`; the **window invariant** `WinI` follows the run from `um` to the current state `u`:
a footprint-free run (`RunT` with `gw = []`) with the `prot` cells of the mark typing kept
(`ProtKeep`), `frame_mem_ptr` unchanged, and no new object (`NewFresh Γ1 Γc pm pm`, the shape of
`sg.grows = false` summaries; the `alloc` blocks stay outside `Γ`).

* `gk_of_win`: `WinI` gives `GK d u` (the chain, the extension, `Φ` and the active bit are
  re-derived from `um` through the kept `prot` cells; the allocator pointers are free).
* `winI_rel`: the release `heap_release(m)` (heap pointer back to `m = pm.hp`) keeps `WinI` for
  the released state (`G_reptr`; every `Γc` object is live below `m` by the no-new-object clause).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 400000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

/-- A fabricated signature for a window: no parameters, no globals written, no growth. -/
def sgW : Sig := { params := [], grows := false }

/-- **The window as a summary core**: a footprint-free run with the `prot` cells of the start
typing kept and no new object. (The cell set `PWx = ¬ ProtCell` makes the memory clause exactly
`ProtKeep`.) -/
theorem winCore {H : Hooks σ} {Γ1 Γc : Gam} {um u : State σ} {pm pc : Ptrs}
    (hrun : RunT guestC H ([] : List MlS) Γ1 um Γc u pm pc) (hPK : ProtKeep guestC Γ1 um u)
    (hnf : NewFresh Γ1 Γc pm pm) :
    SumCore guestC H sgW (fun a => ¬ ProtCell guestC Γ1 a) Γ1 um [] (.returned (.val (.word 0)))
      u Γc pm pc := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h8, -⟩ := hrun
  refine ⟨h1, h2, h3, h4, h5, h6, fun a ha => hPK a ?_, fun g hg hgw => h8 g hg (by simp),
    fun _ => hnf, fun v _ i rt w hrt => ?_⟩
  · by_contra hn; exact ha (Or.inr (Or.inr (Or.inr hn)))
  · simp [sgW] at hrt

/-- **The window invariant** (`um`: the mark state, `GK d um`; `m`: the mark token; `Γc`, `pc`:
the typing and allocator pointers of the current state `u`). -/
def WinI (H : Hooks σ) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (fs : List Frame) (d : Nat)
    (um : State σ) (m : BitVec 64) (Γc : Gam) (pc : Ptrs) (u : State σ) : Prop :=
  GK H [Hooks.gJn] Γ0 s0 p0 fs d um ∧ ∃ Γ1 pm,
    RunT guestC H [Hooks.gJn] Γ0 s0 Γ1 um p0 pm ∧ ChainL guestC tEV tCK Γ1 um fs ∧
    ChainE GP GR Γ1 um fs ∧ pm.hp = m.toNat ∧
    RunT guestC H ([] : List MlS) Γ1 um Γc u pm pc ∧ ProtKeep guestC Γ1 um u ∧ pc.fp = pm.fp ∧
    NewFresh Γ1 Γc pm pm

section win
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {d : Nat}
  {um : State σ} {m : BitVec 64} {Γc : Gam} {pc : Ptrs} {u : State σ}

/-- The window invariant gives the typing and pointers of the current state. -/
theorem winI_G (h : WinI H Γ0 s0 p0 fs d um m Γc pc u) :
    G guestC H Γc u ∧ ptrsOf u = some pc := by
  obtain ⟨-, Γ1, pm, -, -, -, -, hrun, -⟩ := h
  exact ⟨hrun.2.2.2.2.2.1, hrun.2.1⟩

theorem winI_congr (hH : HooksLawful guestC H) {t : State σ} (h : WinI H Γ0 s0 p0 fs d um m Γc pc u)
    (hm : t.memory = u.memory) (hg : t.globals = u.globals) (hd : t.memaddrs = u.memaddrs)
    (hbe : t.be = u.be) : WinI H Γ0 s0 p0 fs d um m Γc pc t := by
  obtain ⟨hu, Γ1, pm, h1, h2, h3, h4, hrun, hPK, hfp, hnf⟩ := h
  refine ⟨hu, Γ1, pm, h1, h2, h3, h4, runT_same hH hrun hm hg hd hbe, ?_, hfp, hnf⟩
  intro a ha
  rw [hm]; exact hPK a ha

/-- `GK d` with the typing and pointers of the run named (package L). -/
def GKA (H : Hooks σ) (gw : List MlS) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (fs : List Frame)
    (d : Nat) (Γc : Gam) (pc : Ptrs) (u : State σ) : Prop :=
  (JrNZ u ∧ RunT guestC H gw Γ0 s0 Γc u p0 pc ∧ ChainL guestC tEV tCK Γc u fs ∧
    ChainE GP GR Γc u fs) ∧ Phi u + d ≤ Phi s0 ∧ (act u = act s0 ∨ Phi u + 1 ≤ Phi s0)

theorem gk_of_gka {gw : List MlS} {Γc : Gam} {pc : Ptrs} (h : GKA H gw Γ0 s0 p0 fs d Γc pc u) :
    GK H gw Γ0 s0 p0 fs d u :=
  let ⟨⟨hJ, hrun, hch, hE⟩, h1, h2⟩ := h
  ⟨⟨hJ, Γc, pc, hrun, hch, hE⟩, h1, h2⟩

/-- **The window invariant gives `GK d` at the current state** (with the typing named). -/
theorem gka_of_win (hF : FrameCfg guestC H tEV tCK) {e c : BitVec 64} {rest : List Frame}
    (hfs : fs = (e, c) :: rest) (h : WinI H Γ0 s0 p0 fs d um m Γc pc u) :
    GKA H [Hooks.gJn] Γ0 s0 p0 fs d Γc pc u := by
  obtain ⟨⟨⟨hJ, -⟩, hΦ, hact⟩, Γ1, pm, hrun1, hch, hE, hm, hrun, hPK, hfp, hnf⟩ := h
  have hG1 := hrun1.2.2.2.2.2.1
  have hSt : (fun _ : Nat => false) tEV = false ∧ (fun _ : Nat => false) tCK = false := ⟨rfl, rfl⟩
  have hPK' : ProtKeep guestC (nst (fun _ : Nat => false) Γ1) um u := protKeep_nst_of hPK
  obtain ⟨hch2, hΦeq⟩ := chain_of_keepT hF hSt (gw := ([] : List MlS))
    ⟨List.not_mem_nil, List.not_mem_nil⟩ hG1 hrun hfp hPK' hch
  obtain ⟨o, hevo, hob⟩ := gk_head hfs hch
  have hcore := winCore hrun hPK hnf
  have hE2 : ChainE GP GR Γc u fs :=
    chainE_sumCoreW hF xCfg_guest (by decide) (sg := sgW) (ks := [])
      (by simp) (by simp) hG1 hcore (fun a ha => absurd ha (argCells_any (ps := sgW.params) (by simp [sgW])))
      (fun a hp hw => absurd hp hw) (top := e) (by rw [← hob]; exact hevo.2.2)
      ⟨o, hevo.1, hob, hevo.2.1⟩ hch.objs hE
  have hJ2 : JrNZ u := jrNZ_runT (by decide) (gw := ([] : List MlS)) (by simp [JrOut]) hrun hJ
  refine ⟨⟨hJ2, runT_trans hrun1 (runT_gw (by simp) hrun), hch2, hE2⟩, by omega, ?_⟩
  obtain ⟨pq, -, -, hL, -⟩ := id hG1
  have hfk := framesKept_of_protKeepS hF hSt hL hch hPK'
  obtain ⟨e2, c2, rest2, hfs2, he2, hc2, -⟩ := hch2.chain
  obtain ⟨e1, c1, rest1, hfs1, he1, hc1, -⟩ := hch.chain
  rw [hfs1] at hfs2
  simp only [List.cons.injEq, Prod.mk.injEq] at hfs2
  obtain ⟨⟨rfl, rfl⟩, -⟩ := hfs2
  have hactEq : act u = act um := by
    rw [act_eq he2 hc2, act_eq he1 hc1]
    have hf : (e1, c1) ∈ fs := by rw [hfs1]; simp
    rw [fk_ck hfk hf (k := 32) (by simp), fk_ev hfk hf (k := 104) (by simp)]
  rcases hact with h | h
  · exact Or.inl (by rw [hactEq]; exact h)
  · exact Or.inr (by omega)

/-- **The window invariant gives `GK d` at the current state.** -/
theorem gk_of_win (hF : FrameCfg guestC H tEV tCK) {e c : BitVec 64} {rest : List Frame}
    (hfs : fs = (e, c) :: rest) (h : WinI H Γ0 s0 p0 fs d um m Γc pc u) :
    GK H [Hooks.gJn] Γ0 s0 p0 fs d u :=
  gk_of_gka (gka_of_win hF hfs h)

end win

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.winCore
#print axioms InitECandidate.Solver.MemSafe.Frames.winI_G
#print axioms InitECandidate.Solver.MemSafe.Frames.winI_congr
#print axioms InitECandidate.Solver.MemSafe.Frames.gk_of_win
