import InitECandidate.Solver.MemSafe.Entry2.Final
import InitECandidate.Solver.MemSafe.Exb.PhDefs
import InitECandidate.Solver.MemSafe.D0.BlockSt

/-!
# `execute_block`: the run invariant `EbRun`

`EbRun Γ0 s0 p0 Γ u p`: from the entry `(Γ0, s0, p0)` to `(Γ, u, p)`: allocator monotone, `Ext`, `NewFresh`, `G`, the journal and
scratch-key globals non-null, `ev` / `cur_cont` small. (The block walk of package F2; the memory content it needs from the block
objects is carried by the facts of `Eb/Facts.lean`.)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

abbrev HR (σ : Type) : Hooks σ := Hooks.guestHooksR (σ := σ)

theorem ordered_of_G {Γ : Gam} {s : State σ} {p : Ptrs} (hG : G guestC (HR σ) Γ s)
    (hp : ptrsOf s = some p) : p.Ordered := by
  obtain ⟨q, hq, hord, -⟩ := hG
  rw [hq] at hp; cases hp; exact hord

theorem alloc_of_fresh {p0 p : Ptrs} (h0 : p0.Ordered) (h : p.Ordered) {a : BitVec 64}
    (hf : Fresh p0 p a) : p.Allocated a.toNat := by
  unfold Ptrs.Ordered at h0 h
  unfold Fresh at hf
  unfold Ptrs.Allocated
  omega

/-- A cell fresh between two ghost allocators is a heap cell allocated at the later real one. -/
theorem alloc_of_gfresh {p0 p : Ptrs} (h0 : p0.Ordered) {a : BitVec 64}
    (hf : Fresh (Exb.gp0 p0) (Exb.gp0 p) a) : p0.hp ≤ a.toNat ∧ a.toNat < p.hp ∧ p.Allocated a.toNat := by
  simp only [Fresh, Exb.gp0, Ptrs.Ordered, Ptrs.Allocated] at *; omega

/-- The heap-part monotonicity of the ghost entry allocator: composes (`mono_g_trans`). -/
theorem mono_g_trans {p0 p p' : Ptrs} (h : (Exb.gp0 p0).Mono p) (h' : (Exb.gp0 p).Mono p') :
    (Exb.gp0 p0).Mono p' := by
  simp only [Ptrs.Mono, Exb.gp0] at *; omega

theorem mono_g_of_mono {p p' : Ptrs} (hp : p.Ordered) (hp' : p'.Ordered) (h : p.Mono p') :
    (Exb.gp0 p).Mono p' := by
  simp only [Ptrs.Mono, Exb.gp0, Ptrs.Ordered] at *; omega

theorem mono_g_refl {p : Ptrs} (hp : p.Ordered) : (Exb.gp0 p).Mono p := by
  simp only [Ptrs.Mono, Exb.gp0, Ptrs.Ordered] at *; omega

theorem fresh_gp0 {p p' : Ptrs} (hp : p.Ordered) {a : BitVec 64} (h : Fresh p p' a) : Fresh (Exb.gp0 p) p' a := by
  simp only [Fresh, Exb.gp0, Ptrs.Ordered] at *; omega

theorem newFresh_gp0 {Γ Γ' : Gam} {p p' : Ptrs} (hp : p.Ordered) (h : NewFresh Γ Γ' p p') :
    NewFresh Γ Γ' (Exb.gp0 p) p' := by
  intro o ho a h1 h2
  rcases h o ho a h1 h2 with h | h
  · exact Or.inl h
  · exact Or.inr (fresh_gp0 hp h)

/-- **Composition at the ghost allocator**: the second step may release frame memory and scratch; the cells of the final
typing are allocated (`Layout`), which fixes the region of a cell fresh in the first step. -/
theorem newFresh_trans_g {Γ0 Γ Γ' : Gam} {p0 p p' : Ptrs} (hp : p.Ordered) (hp' : p'.Ordered)
    (hm0 : (Exb.gp0 p0).Mono p) (hL' : Layout guestC p' Γ')
    (h0 : NewFresh Γ0 Γ (Exb.gp0 p0) p) (h : NewFresh Γ Γ' (Exb.gp0 p) p') :
    NewFresh Γ0 Γ' (Exb.gp0 p0) p' := by
  intro o ho a h1 h2
  rcases h o ho a h1 h2 with ⟨o1, ho1, hb1, ht1, hlo1, hhi1⟩ | hf
  · rcases h0 o1 ho1 a hlo1 hhi1 with ⟨o0, ho0, hb0, ht0, hlo0, hhi0⟩ | hf0
    · exact Or.inl ⟨o0, ho0, hb0.trans hb1, ht0.trans ht1, hlo0, hhi0⟩
    · right
      have hal := live_alloc hp' hL' ho h1 h2
      simp only [Fresh, Ptrs.Allocated, Ptrs.Ordered, Ptrs.Mono, Exb.gp0] at *
      omega
  · right
    simp only [Fresh, Ptrs.Ordered, Ptrs.Mono, Exb.gp0] at *
    omega

theorem keepH_of_run_g {Γ Γ' : Gam} {s t : State σ} {p p' : Ptrs}
    (hp : ptrsOf s = some p) (hp' : ptrsOf t = some p') (hm : (Exb.gp0 p).Mono p') (hx : Ext Γ Γ')
    (hnf : NewFresh Γ Γ' (Exb.gp0 p) p') (hL' : Layout guestC p' Γ') (hord' : p'.Ordered) :
    KeepH guestC Γ Γ' s t := by
  intro q q' hq hq' hord
  obtain rfl : q = p := Option.some.inj (hq.symm.trans hp)
  obtain rfl : q' = p' := Option.some.inj (hq'.symm.trans hp')
  refine ⟨hm.1, fun x hx' _ => hx x hx', fun o ho hr a h1 h2 => ?_⟩
  rcases hnf o ho a h1 h2 with h | h
  · exact Or.inl h
  · refine Or.inr ?_
    obtain ⟨-, h4⟩ := (live_of hL' ho).1 hr
    have hO := hord
    have hO' := hord'
    simp only [Ptrs.Ordered] at hO hO'
    simp only [Fresh, Exb.gp0] at h
    omega

theorem layout_gp0 {Γ : Gam} {p : Ptrs} (hHO : ∀ o ∈ Γ, (guestC.ty o.ty).region = .heap)
    (hL : Layout guestC p Γ) : Layout guestC (Exb.gp0 p) Γ := by
  refine ⟨fun o ho => ?_, hL.2⟩
  obtain ⟨a, b, c, d, e⟩ := hL.1 o ho
  refine ⟨a, b, c, d, ?_⟩
  have h := hHO o ho
  revert e
  rw [h]
  simp [Region.Live, Exb.gp0]

theorem bufOK_of_gp0 {Γ : Gam} {p : Ptrs} (hp : p.Ordered) {b n : Nat}
    (h : BufOK guestC Γ (Exb.gp0 p) b n) : BufOK guestC Γ p b n := by
  intro a ha
  rcases h a ha with h | ⟨hn, hal⟩
  · exact Or.inl h
  · refine Or.inr ⟨hn, ?_⟩
    simp only [Ptrs.Allocated, Exb.gp0] at hal ⊢
    omega

def EbRun (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (Γ : Gam) (u : State σ) (p : Ptrs) : Prop :=
  ptrsOf s0 = some p0 ∧ ptrsOf u = some p ∧ (Exb.gp0 p0).Mono p ∧ Ext Γ0 Γ ∧ NewFresh Γ0 Γ (Exb.gp0 p0) p ∧
  G guestC (HR σ) Γ u ∧ JrNZ u ∧ (∃ e, gword u nmEv = some e ∧ e.toNat < nullMax) ∧
  (∃ c, gword u nmCC = some c ∧ c.toNat < nullMax) ∧ p0.Ordered

section run
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {Γ : Gam} {u : State σ} {p : Ptrs}

theorem ebRun_refl (hG : G guestC (HR σ) Γ0 s0) (hp : ptrsOf s0 = some p0) (hJ : JrNZ s0)
    (he : ∃ e, gword s0 nmEv = some e ∧ e.toNat < nullMax)
    (hc : ∃ c, gword s0 nmCC = some c ∧ c.toNat < nullMax) :
    EbRun Γ0 s0 p0 Γ0 s0 p0 :=
  ⟨hp, hp, mono_g_refl (ordered_of_G hG hp), fun o ho => ⟨o, ho, rfl, rfl, le_refl _⟩,
    fun o ho a _ _ => Or.inl ⟨o, ho, rfl, rfl, by assumption, by assumption⟩, hG, hJ, he, hc, ordered_of_G hG hp⟩

theorem ebRun_G (h : EbRun Γ0 s0 p0 Γ u p) : G guestC (HR σ) Γ u := h.2.2.2.2.2.1

theorem ebRun_ptrs (h : EbRun Γ0 s0 p0 Γ u p) : ptrsOf u = some p := h.2.1

theorem ebRun_ptrs0 (h : EbRun Γ0 s0 p0 Γ u p) : ptrsOf s0 = some p0 := h.1

theorem ebRun_ord0 (h : EbRun Γ0 s0 p0 Γ u p) : p0.Ordered := h.2.2.2.2.2.2.2.2.2

theorem ebRun_jr (h : EbRun Γ0 s0 p0 Γ u p) : JrNZ u := h.2.2.2.2.2.2.1

theorem ebRun_ev (h : EbRun Γ0 s0 p0 Γ u p) : ∃ e, gword u nmEv = some e ∧ e.toNat < nullMax := h.2.2.2.2.2.2.2.1

theorem ebRun_cc (h : EbRun Γ0 s0 p0 Γ u p) : ∃ c, gword u nmCC = some c ∧ c.toNat < nullMax :=
  h.2.2.2.2.2.2.2.2.1

theorem ebRun_ord (h : EbRun Γ0 s0 p0 Γ u p) : p.Ordered := ordered_of_G h.2.2.2.2.2.1 h.2.1

theorem ebRun_mono (h : EbRun Γ0 s0 p0 Γ u p) : (Exb.gp0 p0).Mono p := h.2.2.1

theorem ebRun_ext (h : EbRun Γ0 s0 p0 Γ u p) : Ext Γ0 Γ := h.2.2.2.1

theorem ebRun_nf (h : EbRun Γ0 s0 p0 Γ u p) : NewFresh Γ0 Γ (Exb.gp0 p0) p := h.2.2.2.2.1

/-- Only the locals and the clock changed. -/
theorem ebRun_loc (h : EbRun Γ0 s0 p0 Γ u p) (l : Locs) (c : Nat) :
    EbRun Γ0 s0 p0 Γ { u with locals := l, clock := c } p := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h9, h10, h11, h12⟩ := h
  exact ⟨h1, (ptrsOf_congr rfl).trans h2, h3, h4, h5, (G_locFree Hooks.guestHooksR_lawful u l c).mpr h6,
    jrNZ_congr (s := u) rfl h9, h10, h11, h12⟩

theorem ebRun_set (h : EbRun Γ0 s0 p0 Γ u p) (n : MlS) (v : ValueHOL 64) :
    EbRun Γ0 s0 p0 Γ (setVarHOLFinite n v u) p := ebRun_loc h _ _

/-- A state with the same memory, globals, domain and `be`. -/
theorem ebRun_same (h : EbRun Γ0 s0 p0 Γ u p) {t : State σ} (hm : t.memory = u.memory)
    (hg : t.globals = u.globals) (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be) :
    EbRun Γ0 s0 p0 Γ t p := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h9, h10, h11, h12⟩ := h
  refine ⟨h1, (ptrsOf_congr hg).trans h2, h3, h4, h5, G_congr Hooks.guestHooksR_lawful hm hg hd hbe h6,
    jrNZ_congr hg h9, ?_, ?_, h12⟩
  · obtain ⟨e, he, hs⟩ := h10; exact ⟨e, by rw [gword_congr hg]; exact he, hs⟩
  · obtain ⟨e, he, hs⟩ := h11; exact ⟨e, by rw [gword_congr hg]; exact he, hs⟩

/-- **A summarized call**: the core extends the run (the callee's `PW` and write list are arbitrary; `ev` / `cur_cont` and the
journal globals are not written, and the globals `ev` / `cur_cont` keep small values by `hev` / `hcc`). -/
theorem ebRun_core {sg : Sig} {PW : BitVec 64 → Prop} {vs : List (ValueHOL 64)}
    {r : PanSemResultExact 64} {Γ' : Gam} {t : State σ} {p' : Ptrs}
    (h : EbRun Γ0 s0 p0 Γ u p)
    (hc : SumCore guestC (HR σ) sg PW Γ u vs r t Γ' p p')
    (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hJo : JrOut sg.gw) :
    EbRun Γ0 s0 p0 Γ' t p' := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h9, h10, h11, h12⟩ := h
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hglob := hc.2.2.2.2.2.2.2.1
  refine ⟨h1, hc.2.1, mono_trans h3 hc.2.2.1, ext_trans h4 hc.2.2.2.1,
    newFresh_trans h3 hc.2.2.1 h5 hc.2.2.2.2.1, hc.2.2.2.2.2.1,
    jrNZ_sumCore (by decide) hJo hc h9, ?_, ?_, h12⟩
  · obtain ⟨e, he, hs⟩ := h10
    exact ⟨e, by unfold gword; rw [hglob _ hF.pgEv hgw.1]; exact he, hs⟩
  · obtain ⟨e, he, hs⟩ := h11
    exact ⟨e, by unfold gword; rw [hglob _ hF.pgCC hgw.2]; exact he, hs⟩

end run

end InitECandidate.Solver.MemSafe.Eb
