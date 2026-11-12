import InitECandidate.Solver.MemSafe.Ptx.PcmTh2

/-!
# F3c: the then-branch pieces: `cs_setEv`, the tail `ev = parent; return child`, the handler, the guarded call
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

/-- The post of `process_create_message` on a return. -/
def PcQ (Γ0 : Gam) (s0 : State σ) : Option (PanSemResultExact 64) → State σ → Prop := fun r t =>
  r ≠ none ∧ ∀ v, r = some (.returned v) → ∃ child, v = .val (.word child) ∧ PmFinL Γ0 s0 child t

theorem pcQ_loc {Γ0 : Gam} {s0 : State σ} {r : Option (PanSemResultExact 64)} {t : State σ}
    (h : PcQ Γ0 s0 r t) (l : Locs) : PcQ Γ0 s0 r { t with locals := l } :=
  ⟨h.1, fun v hv => let ⟨c, hc, hf⟩ := h.2 v hv; ⟨c, hc, pmFinL_congr rfl rfl rfl rfl hf⟩⟩

/-- Locals before the guarded call. -/
def LOC0 (msg child : BitVec 64) (l : Locs) : Prop :=
  l.lookup (nm "msg") = some (.val (.word msg)) ∧ l.lookup (nm "child") = some (.val (.word child)) ∧
    ∃ w : BitVec 64, l.lookup (nm "snapshot") = some (.val (.word w))

def LOC (msg child par : BitVec 64) (l : Locs) : Prop :=
  LOC0 msg child l ∧ l.lookup (nm "parent") = some (.val (.word par)) ∧ par.toNat < nullMax

section then1
variable {Γ0 : Gam} {s0 : State σ} {msg child : BitVec 64}

theorem cs_setEv {s : State σ} {w : BitVec 64} (hc : CS Γ0 s0 child s)
    (hw : w.toNat < nullMax ∨ w = child) :
    CS Γ0 s0 child (setGlobalHOLFinite nmEv (.val (.word w)) s) := by
  obtain ⟨Γ, p, rec, hG, hp, hkb, ⟨o, ho, hob, hot⟩, hgp, hlog, hJ⟩ := hc
  have hgo : ∀ g, g ≠ nmEv →
      (setGlobalHOLFinite nmEv (.val (.word w)) s).globals.lookup g = s.globals.lookup g := by
    intro g h
    show (s.globals.update (nmEv, _)).lookup g = _
    rw [lookup_update_ne _ _ (Ne.symm h)]
  have hge : gword (setGlobalHOLFinite nmEv (.val (.word w)) s) nmEv = some w := by
    refine gword_of ?_
    show (s.globals.update (nmEv, _)).lookup nmEv = _
    rw [lookup_update_self]
  have hpq : ptrsOf (setGlobalHOLFinite nmEv (.val (.word w)) s) = ptrsOf s := by
    unfold ptrsOf gword
    rw [hgo gHeap (by decide), hgo gFrame (by decide), hgo gScratch (by decide)]
  have hG' : G guestC (Hooks.guestHooksR (σ := σ)) Γ (setGlobalHOLFinite nmEv (.val (.word w)) s) :=
    G_ev_set hG rfl rfl rfl hgo ⟨w, hge, hw.elim Or.inl fun h => Or.inr ⟨o, ho, hob.trans h.symm, hot⟩⟩
  have hkb' := kb_step hG hkb (keepH_of_ptrs hpq) (bkeep_of_mem (C := guestC) rfl)
  have hp' : ptrsOf (setGlobalHOLFinite nmEv (.val (.word w)) s) = some p := hpq.trans hp
  refine ⟨Γ, p, rec, hG', hp', hkb', ⟨o, ho, hob, hot⟩, ?_, ?_, ?_⟩
  · exact hgp
  · exact hlog
  · exact jrNZ_of_lookup (fun g hg => hgo g (by simp [jrGs] at hg; rcases hg with rfl | rfl <;> decide)) hJ

theorem cfOK_of_gp {Γ : Gam} {m : Mem} {p : Ptrs} {rec : BitVec 64}
    (hgp : GP Γ m p (child, rec)) (h112 : fld m child 112 = msg) : CfOK guestC Γ m p msg := by
  obtain ⟨⟨M, hMΓ, hMb, hMt, hMs⟩, hB, -⟩ := hgp
  have hm : msgOf m (child, rec) = msg := h112
  rw [hm] at hMb hB
  refine ⟨⟨M, hMΓ, hMb, ?_, by unfold Obj.HasSlot; omega, (msg_addrProt hMt).2⟩, ?_⟩
  · rcases hMt with h | h <;> rw [h] <;> decide
  · exact hB 32 (by simp [msgXOffs])

end then1

end InitECandidate.Solver.MemSafe.Ptx
