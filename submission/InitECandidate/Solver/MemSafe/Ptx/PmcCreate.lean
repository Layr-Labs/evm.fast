import InitECandidate.Solver.MemSafe.Ptx.PmcCall2

/-!
# F3: `process_message_call`, part R: the creation branch (`pmcCreate`)

`var dep = account_deployable(msg[32]); if dep == 0 { collision stores; return out }; frame = process_create_message(msg)`.
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

/-- The result of the call part: `PC` and continue, or a return with `PmcQ`. -/
def Rcall (Γ0 : Gam) (s0 : State σ) (out : BitVec 64) (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  (r = none ∧ PC Γ0 s0 out t) ∨ (r ≠ none ∧ PmcQ Γ0 s0 r t)

theorem ev_evmEmpty {Γ : Gam} {u : State σ} (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ u) :
    ∃ w, ev u (gv (nm "evm_empty")) = some (.val (.word w)) := by
  obtain ⟨p, -, -, -, -, -, hGl, -⟩ := hG
  obtain ⟨v, hv, -⟩ := hGl (nm "evm_empty") _ gt_evm_empty
  exact ⟨v, HtabEntries.ev_gv (gword_some hv)⟩

section create
variable {M : Nat} {msg out : BitVec 64} {Γ0 : Gam} {s0 : State σ}

theorem fe_dep {s : State σ} {callee : Locs} {vs : List (ValueHOL 64)} {v : ValueHOL 64}
    {st : State σ} (hs : FE M msg Γ0 s0 out s)
    (hvs : evs s [ldW (nm "msg") 32] = some vs)
    (hR : SumRelX guestC (Hooks.guestHooksR (σ := σ)) sgB20 (fun _ s _ => JrNZ s)
      (fun _ _ Γ a => ProtCell guestC Γ a ∧ StCell guestSt Γ a) (fun _ s _ _ t _ => FpQ s t)
      vs (callEntryStateHOLFinite s callee) (.returned v) st) :
    FE M msg Γ0 s0 out (setVarHOLFinite (nm "dep") v { st with locals := s.locals }) := by
  have hH := Hooks.guestHooksR_lawful (σ := σ)
  obtain ⟨Γ, p, hG, hp, hfo, hKB, h24, hO, hFr, hZ, hlm, hlo⟩ := hs
  obtain ⟨w, vs', rfl, hw, hvs'⟩ := evs_cons_inv hvs
  obtain rfl := evs_zero hvs'
  have hw' := ev_lLoad_eq (x := "msg") (k := 32) hlm hw
  subst hw'
  have hGe : G guestC (Hooks.guestHooksR (σ := σ)) Γ (callEntryStateHOLFinite s callee) :=
    (G_locFree hH s _ _).mpr hG
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p := (ptrsOf_congr rfl).trans hp
  have hJ : JrNZ (callEntryStateHOLFinite s callee) := jrNZ_congr (s := s) rfl hfo.2.2.2.2.1
  obtain ⟨Γ', p', hc, hG', hp', hfo', hrun⟩ := fi_rel (M := M) (msg := msg) hR hGe hpe hfo
    (Entry2.argsOK_b20 (hfo.1.2 p hp 32 (by simp [msgXOffs]))) (by simp [sgB20]) (by simp [sgB20])
    hJ (fun a h => h)
  have hrun' := runT_locals hH (runT_src hrun (s := s) rfl rfl) s.locals
  have h24' : fld st.memory msg 24 = fld s0.memory msg 24 :=
    (fld24_keep hfo.1.1 (protKeep_nst_of_sumCore hGe
      (Entry2.argsOK_b20 (hfo.1.2 p hp 32 (by simp [msgXOffs]))) hc)).trans h24
  exact fe_set (fe_run (M := M) hG hKB hO hFr hZ hrun' hfo' h24' hlm hlo) (by decide) (by decide) v

theorem pc_res {n : MlS} (hn1 : n ≠ nm "out") (hn2 : n ≠ nm "frame") (old : Option (ValueHOL 64))
    {t : State σ} (h : PC Γ0 s0 out t) : PC Γ0 s0 out { t with locals := t.locals.resVarEq (n, old) } := by
  obtain ⟨Γ', child, hTP, hZ, hMV, hev, hcc, hgp, hlog⟩ := h
  refine ⟨Γ', child, ⟨tb_congr rfl rfl rfl rfl hTP.1, ?_, ?_⟩, hZ, hMV, hev, hcc, hgp, hlog⟩
  · show (t.locals.resVarEq (n, old)).lookup (nm "out") = _
    rw [lookup_resVarEq_ne _ _ hn1]; exact hTP.2.1
  · show (t.locals.resVarEq (n, old)).lookup (nm "frame") = _
    rw [lookup_resVarEq_ne _ _ hn2]; exact hTP.2.2

theorem rcall_res {n : MlS} (hn1 : n ≠ nm "out") (hn2 : n ≠ nm "frame") (old : Option (ValueHOL 64))
    {r : Option (PanSemResultExact 64)} {t : State σ} (h : Rcall Γ0 s0 out r t) :
    Rcall Γ0 s0 out r { t with locals := t.locals.resVarEq (n, old) } := by
  rcases h with ⟨h1, h2⟩ | ⟨h1, h2⟩
  · exact Or.inl ⟨h1, pc_res hn1 hn2 old h2⟩
  · refine Or.inr ⟨h1, fun v hv => ?_⟩
    obtain ⟨o, ho, hf⟩ := h2 v hv
    exact ⟨o, ho, pmcFin_congr rfl rfl rfl rfl hf⟩

end create

end InitECandidate.Solver.MemSafe.Ptx
