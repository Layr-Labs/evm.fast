import InitECandidate.Solver.MemSafe.Ptx.PcmEv

/-!
# F3c: the then-branch invariant `THm` and its Hoare steps (`state_restore`, `refill`, `halt`, driver stores)
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

theorem cs_congr {Γ0 : Gam} {s0 u u' : State σ} {child : BitVec 64} (h : CS Γ0 s0 child u)
    (hm : u'.memory = u.memory) (hg : u'.globals = u.globals) (hd : u'.memaddrs = u.memaddrs)
    (hbe : u'.be = u.be) : CS Γ0 s0 child u' := by
  obtain ⟨Γ, p, rec, hG, hp, hkb, hev, hgp, hlog, hJ⟩ := h
  exact ⟨Γ, p, rec, G_congr Hooks.guestHooksR_lawful hm hg hd hbe hG, (ptrsOf_congr hg).trans hp,
    kb_loc hm hg hkb, hev, by rw [hm]; exact hgp, by rw [hm]; exact hlog, jrNZ_congr hg hJ⟩

/-- The child's facts, `ev` = the child, `cur_cont` small, and the create target at the entry (`TgtB`). -/
def THm (Γ0 : Gam) (s0 : State σ) (msg child : BitVec 64) (u : State σ) : Prop :=
  CS Γ0 s0 child u ∧ gword u nmEv = some child ∧
    (∃ c, gword u nmCC = some c ∧ c.toNat < nullMax) ∧ TgtB Γ0 s0.memory msg

theorem thm_congr {Γ0 : Gam} {s0 u u' : State σ} {msg child : BitVec 64}
    (h : THm Γ0 s0 msg child u) (hm : u'.memory = u.memory) (hg : u'.globals = u.globals)
    (hd : u'.memaddrs = u.memaddrs) (hbe : u'.be = u.be) : THm Γ0 s0 msg child u' := by
  obtain ⟨hc, he, ⟨c, hcc, hcs⟩, h112⟩ := h
  exact ⟨cs_congr hc hm hg hd hbe, by rw [gword_congr hg]; exact he,
    ⟨c, by rw [gword_congr hg]; exact hcc, hcs⟩, h112⟩

theorem thm_step' {Γ0 : Gam} {s0 u t : State σ} {msg child : BitVec 64}
    (hT : THm Γ0 s0 msg child u)
    (hr : ∀ (Γ : Gam) (p : Ptrs) (rec : BitVec 64), G guestC (Hooks.guestHooksR (σ := σ)) Γ u →
      ptrsOf u = some p → KB Γ0 Γ s0 u → (∃ o ∈ Γ, o.base = child ∧ o.ty = tEV) → GP Γ u.memory p (child, rec) →
      ∃ (Γ' : Gam) (p' : Ptrs), RunT guestC (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ u Γ' t p p' ∧
        XKeep guestC Γ u.memory t.memory (child, 0) ∧ LstKeep Γ u.memory t.memory) :
    THm Γ0 s0 msg child t := by
  obtain ⟨hc, he, ⟨c, hcc, hcs⟩, h112⟩ := hT
  have hc' := cs_step hc hr
  obtain ⟨Γ, p, rec, hG, hp, hkb, hev, hgp, -⟩ := hc
  obtain ⟨Γ', p', hrun, -, -⟩ := hr Γ p rec hG hp hkb hev hgp
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hg : ∀ g, g ∈ guestC.PG → g ≠ Hooks.gJn → t.globals.lookup g = u.globals.lookup g :=
    fun g hg hn => hrun.2.2.2.2.2.2.1 g hg (by simpa using hn)
  refine ⟨hc', ?_, ⟨c, ?_, hcs⟩, ?_⟩
  · unfold gword; rw [hg nmEv hF.pgEv (by decide)]; exact he
  · unfold gword; rw [hg nmCC hF.pgCC (by decide)]; exact hcc
  · exact h112

theorem thm_step {Γ0 : Gam} {s0 u t : State σ} {msg child : BitVec 64} (hT : THm Γ0 s0 msg child u)
    (hr : ∀ (Γ : Gam) (p : Ptrs), G guestC (Hooks.guestHooksR (σ := σ)) Γ u → ptrsOf u = some p →
      (∃ o ∈ Γ, o.base = child ∧ o.ty = tEV) →
      ∃ (Γ' : Gam) (p' : Ptrs), RunT guestC (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ u Γ' t p p' ∧
        XKeep guestC Γ u.memory t.memory (child, 0) ∧ LstKeep Γ u.memory t.memory) :
    THm Γ0 s0 msg child t :=
  thm_step' hT fun Γ p _ hG hp _ hev _ => hr Γ p hG hp hev

end InitECandidate.Solver.MemSafe.Ptx
