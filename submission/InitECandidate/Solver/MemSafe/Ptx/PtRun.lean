import InitECandidate.Solver.MemSafe.Ptx.PtCode
import InitECandidate.Solver.MemSafe.Ptx.PtGw
import InitECandidate.Solver.MemSafe.ShardsR.All

/-!
# F3d: the run invariant `PtRun` of `process_transaction`

`PtRun D Γ0 s0 p0 Γ u p`: from the entry `(Γ0, s0, p0)` to `(Γ, u, p)`: allocator monotone, `Ext`, `NewFresh`,
`G`, protected globals other than `journal_n` unchanged, **every `prot` cell of a non-state object of `Γ0`
outside the written set `W` is unchanged** (this gives `BKeep` for the block objects, and keeps `tx`, `bo`, `be`
fields), `JrNZ`, and `ev` / `cur_cont` small.
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

variable {σ : Type}

/-- The ghost entry allocator: the real heap pointer, nothing allocated in frame memory or scratch. -/
def gp0 (p : Ptrs) : Ptrs := ⟨p.hp, heapEnd, scratchEnd⟩

theorem gp0_ord {p : Ptrs} (h : p.Ordered) : (gp0 p).Ordered := by
  obtain ⟨h1, h2, h3, h4, h5, h6, -, -⟩ := h
  have e1 : heapEnd % 8 = 0 := by decide
  have e2 : scratchEnd % 8 = 0 := by decide
  have e3 : heapEnd ≤ scratchEnd := by decide
  exact ⟨h1, h2, le_rfl, e3, le_rfl, h6, e1, e2⟩

theorem gp0_mono {p q : Ptrs} (hq : q.Ordered) (h : p.hp ≤ q.hp) : (gp0 p).Mono q := by
  obtain ⟨-, -, h3, h4, h5, -⟩ := hq
  exact ⟨h, h3, h5⟩

theorem gp0_alloc {p : Ptrs} {x : Nat} (h : (gp0 p).Allocated x) : heapBase ≤ x ∧ x < p.hp := by
  unfold Ptrs.Allocated gp0 at h
  simp only at h
  omega

abbrev HR (σ : Type) : Hooks σ := Hooks.guestHooksR (σ := σ)

def PtRun (D : BitVec 64 → Option (BitVec 64)) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (Γ : Gam) (u : State σ)
    (p : Ptrs) : Prop :=
  (∃ q, ptrsOf s0 = some q ∧ (p0 = q ∨ p0 = gp0 q)) ∧ ptrsOf u = some p ∧ p0.Mono p ∧ Ext Γ0 Γ ∧ NewFresh Γ0 Γ p0 p ∧
  G guestC (HR σ) Γ u ∧
  (∀ g ∈ guestC.PG, g ≠ Hooks.gJn → u.globals.lookup g = s0.globals.lookup g) ∧
  (∀ a, ProtCell guestC (nst guestSt Γ0) a →
    (D a = none → u.memory a = s0.memory a) ∧ ∀ v, D a = some v → rd u.memory a = v) ∧
  JrNZ u ∧ (∃ e, gword u nmEv = some e ∧ e.toNat < nullMax) ∧
  (∃ c, gword u nmCC = some c ∧ c.toNat < nullMax) ∧ p0.Ordered ∧
  (∀ g, ptW.contains g = false → u.globals.lookup g = s0.globals.lookup g)

section run
variable {D : BitVec 64 → Option (BitVec 64)} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {Γ : Gam} {u : State σ} {p : Ptrs}

theorem ptRun_refl {D : BitVec 64 → Option (BitVec 64)} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
    (hD : ∀ a, D a = none) (hG : G guestC (HR σ) Γ0 s0) (hp : ptrsOf s0 = some p0) (hJ : JrNZ s0)
    (he : ∃ e, gword s0 nmEv = some e ∧ e.toNat < nullMax)
    (hc : ∃ c, gword s0 nmCC = some c ∧ c.toNat < nullMax) :
    PtRun D Γ0 s0 p0 Γ0 s0 p0 :=
  ⟨⟨p0, hp, Or.inl rfl⟩, hp, ⟨le_refl _, le_refl _, le_refl _⟩, fun o ho => ⟨o, ho, rfl, rfl, le_refl _⟩,
    fun o ho a _ _ => Or.inl ⟨o, ho, rfl, rfl, by assumption, by assumption⟩, hG,
    fun _ _ _ => rfl, fun a _ => ⟨fun _ => rfl, fun v hv => by rw [hD] at hv; cases hv⟩, hJ, he, hc, ordered_of_G hG hp, fun _ _ => rfl⟩

theorem ptRun_G (h : PtRun D Γ0 s0 p0 Γ u p) : G guestC (HR σ) Γ u := h.2.2.2.2.2.1

theorem ptRun_ptrs (h : PtRun D Γ0 s0 p0 Γ u p) : ptrsOf u = some p := h.2.1

theorem ptRun_ord0 (h : PtRun D Γ0 s0 p0 Γ u p) : p0.Ordered := h.2.2.2.2.2.2.2.2.2.2.2.1

theorem ptRun_jr (h : PtRun D Γ0 s0 p0 Γ u p) : JrNZ u := h.2.2.2.2.2.2.2.2.1

theorem ptRun_ord (h : PtRun D Γ0 s0 p0 Γ u p) : p.Ordered := ordered_of_G h.2.2.2.2.2.1 h.2.1

/-- Only the locals and the clock changed. -/
theorem ptRun_loc (h : PtRun D Γ0 s0 p0 Γ u p) (l : Locs) (c : Nat) :
    PtRun D Γ0 s0 p0 Γ { u with locals := l, clock := c } p := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13⟩ := h
  exact ⟨h1, (ptrsOf_congr rfl).trans h2, h3, h4, h5, (G_locFree Hooks.guestHooksR_lawful u l c).mpr h6,
    h7, h8, jrNZ_congr (s := u) rfl h9, h10, h11, h12, h13⟩

theorem ptRun_set (h : PtRun D Γ0 s0 p0 Γ u p) (n : MlS) (v : ValueHOL 64) :
    PtRun D Γ0 s0 p0 Γ (setVarHOLFinite n v u) p := ptRun_loc h _ _

/-- A state with the same memory, globals, domain and `be`. -/
theorem ptRun_same (h : PtRun D Γ0 s0 p0 Γ u p) {t : State σ} (hm : t.memory = u.memory)
    (hg : t.globals = u.globals) (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be) :
    PtRun D Γ0 s0 p0 Γ t p := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13⟩ := h
  refine ⟨h1, (ptrsOf_congr hg).trans h2, h3, h4, h5, G_congr Hooks.guestHooksR_lawful hm hg hd hbe h6,
    fun g hg' hn => by rw [hg]; exact h7 g hg' hn,
    fun a ha => ⟨fun hd => by rw [hm]; exact (h8 a ha).1 hd, fun v hv => by rw [hm]; exact (h8 a ha).2 v hv⟩,
    jrNZ_congr hg h9, ?_, ?_, h12, fun g hg' => by rw [hg]; exact h13 g hg'⟩
  · obtain ⟨e, he, hs⟩ := h10; exact ⟨e, by rw [gword_congr hg]; exact he, hs⟩
  · obtain ⟨e, he, hs⟩ := h11; exact ⟨e, by rw [gword_congr hg]; exact he, hs⟩

/-- **A summarized state-object call**: the call's core (writing only `prot` cells of state objects)
extends the run. -/
theorem ptRun_core {sg : Sig} {vs : List (ValueHOL 64)}
    {r : PanSemResultExact 64} {Γ Γ' : Gam} {u t : State σ} {p p' : Ptrs}
    (h : PtRun D Γ0 s0 p0 Γ u p)
    (hargs : ArgsOK guestC Γ p sg.params vs)
    (hc : SumCore guestC (HR σ) sg (fun a => ProtCell guestC Γ a ∧ StCell guestSt Γ a) Γ u vs r t Γ' p p')
    (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hJo : JrOut sg.gw) (hjn : ∀ g ∈ sg.gw, g = Hooks.gJn)
    (hgl : ∀ g, ptW.contains g = false → t.globals.lookup g = u.globals.lookup g) :
    PtRun D Γ0 s0 p0 Γ' t p' := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13⟩ := h
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hpk := protKeep_nst_of_sumCore (St := guestSt) h6 hargs hc
  have hglob := hc.2.2.2.2.2.2.2.1
  refine ⟨h1, hc.2.1, mono_trans h3 hc.2.2.1, ext_trans h4 hc.2.2.2.1,
    newFresh_trans h3 hc.2.2.1 h5 hc.2.2.2.2.1, hc.2.2.2.2.2.1, ?_, ?_,
    jrNZ_sumCore (by decide) hJo hc h9, ?_, ?_, h12, fun g hg' => (hgl g hg').trans (h13 g hg')⟩
  · intro g hg hn
    rw [hglob g hg (fun hm => hn (hjn g hm))]; exact h7 g hg hn
  · intro a ha
    have := hpk a (protCell_ext (C := guestC) (ext_nst h4) ha)
    exact ⟨fun hd => by rw [this]; exact (h8 a ha).1 hd,
      fun v hv => by unfold rd at *; rw [this]; exact (h8 a ha).2 v hv⟩
  · obtain ⟨e, he, hs⟩ := h10
    exact ⟨e, by unfold gword; rw [hglob _ hF.pgEv hgw.1]; exact he, hs⟩
  · obtain ⟨e, he, hs⟩ := h11
    exact ⟨e, by unfold gword; rw [hglob _ hF.pgCC hgw.2]; exact he, hs⟩

end run

end InitECandidate.Solver.MemSafe.Ptx
