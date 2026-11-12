import InitECandidate.Solver.MemSafe.Ptx.PmcFin2

/-!
# F3: `process_message_call`, part P: the facts after the call of `process_message` / `process_create_message`
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

section call
variable {Γ0 : Gam} {s0 : State σ} {out : BitVec 64}

/-- `PmFinL` at the callee, from `FE` at the caller: the facts `PC'` after the call. -/
theorem pc_of_fin {u st : State σ} {Γ : Gam} {child : BitVec 64} {callee : Locs}
    (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ u) (hKB : KB Γ0 Γ s0 u) (hO : OutIn Γ out)
    (hFr : OutFresh Γ0 out) (hZ : Zeros u.memory out)
    (hlo : u.locals.lookup (nm "out") = some (.val (.word out)))
    (hfin : PmFinL Γ (callEntryStateHOLFinite u callee) child st) :
    ∃ Γ', PC' Γ0 s0 Γ' out child
      (setVarHOLFinite (nm "frame") (.val (.word child)) { st with locals := u.locals }) := by
  obtain ⟨hMV, ⟨Γ', hG', ho, hk, hb, ⟨rec, hgp⟩, hlog⟩, hev, hcc⟩ := hfin
  have hk' : KeepH guestC Γ Γ' u st :=
    keepH_congr (s := callEntryStateHOLFinite u callee) (s' := u) rfl rfl hk
  have hb' : BKeep guestC Γ u st :=
    bkeep_congr (s := callEntryStateHOLFinite u callee) (s' := u) rfl rfl hb
  obtain ⟨p, hp, hord, -⟩ := id hG
  obtain ⟨p', hp', -⟩ := id hG'
  have hOn : OutIn Γ' out := by
    obtain ⟨O, hO, hOb, hOt, hOs⟩ := hO
    obtain ⟨-, hsurv, -⟩ := hk' p p' hp hp' hord
    obtain ⟨x, hx, hxb, hxt, hxs⟩ := hsurv O hO (by rw [hOt]; decide)
    exact ⟨x, hx, hxb.trans hOb, hxt.trans hOt, le_trans hOs hxs⟩
  have hKB' : KB Γ0 Γ' s0 st := kb_step hG hKB hk' hb'
  refine ⟨Γ', ?_⟩
  have hGT : G guestC (Hooks.guestHooksR (σ := σ)) Γ'
      (setVarHOLFinite (nm "frame") (.val (.word child)) { st with locals := u.locals }) :=
    (G_locFree Hooks.guestHooksR_lawful st u.locals st.clock).mpr hG'
  refine ⟨⟨⟨hGT, kb_loc rfl rfl hKB', hOn, hFr, ho, rfl, fun j hj => absurd rfl hj, fun a _ => rfl,
    fun j x hj => by cases hj⟩, ?_, ?_⟩, zeros_of_bkeep hO hb' hZ, hMV, hev, hcc, ⟨rec, hgp⟩, hlog, fld128_lt32 hGT ho⟩
  · exact (lk_set_ne { st with locals := u.locals } (.val (.word child)) (by decide)).trans hlo
  · exact lk_set_self _ _ _

end call

end InitECandidate.Solver.MemSafe.Ptx

#print axioms InitECandidate.Solver.MemSafe.Ptx.pc_of_fin
