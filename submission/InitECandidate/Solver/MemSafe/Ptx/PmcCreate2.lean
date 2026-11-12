import InitECandidate.Solver.MemSafe.Ptx.PmcCreate

/-!
# F3: `process_message_call`, part S: `pmcCreate`, `pmcCall` and the `frame` block
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

section create2
variable {M : Nat} {msg out : BitVec 64} {Γ0 : Gam} {s0 : State σ}

/-- The call of `process_create_message`, with the create target carried from the entry (package F3m). -/
theorem hoare_callPcm (hf : HypPcm σ M) (htg : TgtB Γ0 s0.memory msg) :
    Hoare σ guestCtx (FE M msg Γ0 s0 out)
      (.call (some (some (VarKind.local, nm "frame"), none)) (nm "process_create_message") [lv (nm "msg")])
      (fun r t => r = none ∧ PC Γ0 s0 out t) := by
  have hH := Hooks.guestHooksR_lawful (σ := σ)
  refine hoare_callA hf ?_
  intro s hs hP vs hvs callee v st hR hst _
  obtain ⟨Γ, p, hG, hp, hfo, hKB, -, hO, hFr, hZ, hlm, hlo⟩ := hP
  rw [evs_cons (ev_lv_eq hlm) evs_nil] at hvs
  cases hvs
  have hGe : G guestC (Hooks.guestHooksR (σ := σ)) Γ (callEntryStateHOLFinite s callee) :=
    (G_locFree hH s _ _).mpr hG
  have htg' : TgtB Γ s.memory msg := tgtB_kb htg hKB hp
  obtain ⟨child, rfl, hfin⟩ := hR Γ hGe ⟨msg, rfl, hfo, htg'⟩ v rfl
  exact ⟨rfl, pc_of_fin hG hKB hO hFr hZ hlo hfin |>.imp fun Γ' h => ⟨child, h⟩⟩

theorem hoare_create (hG0 : G guestC (Hooks.guestHooksR (σ := σ)) Γ0 s0) (hpcm : HypPcm σ M)
    (htg : TgtB Γ0 s0.memory msg) :
    Hoare σ guestCtx (FE M msg Γ0 s0 out) pmcCreate (Rcall Γ0 s0 out) := by
  unfold pmcCreate
  refine hoare_decCallS (sumSpecA_relX stSum_dep) fun s hs hP vs hvs callee v st hR hst hsh => ?_
  have hFE := fe_dep hP hvs hR
  have hk : Hoare σ guestCtx (FE M msg Γ0 s0 out)
      (.seq (.ite (.cmp .equal (lv (nm "dep")) (cw 0)) pmcStoresDep .skip)
        (.call (some (some (VarKind.local, nm "frame"), none)) (nm "process_create_message")
          [lv (nm "msg")])) (Rcall Γ0 s0 out) := by
    refine hoare_seqD (Rn := FE M msg Γ0 s0 out) ?_ ?_
    · refine hoare_ite ?_ ?_
      · intro s hs ⟨hP, _⟩ ht
        have hnn := storesDep_nn s
        have hP' := hP
        obtain ⟨Γ, p, hG, hp, hfo, hKB, -, hO, hFr, hZ, hlm, hlo⟩ := hP
        have h := hoare_stDep (Γ0 := Γ0) (s0 := s0) (Γ := Γ) (u0 := s) (out := out) hG0
          (fun u hu => ev_evmEmpty hu) s hs
          ⟨fun _ => none, ⟨⟨hG, hKB, hO, hFr, rfl, fun j hj => absurd rfl hj, fun a _ => rfl,
            fun j x hj => by cases hj⟩, hlo⟩, rfl, rfl, rfl, rfl, rfl, rfl⟩ ht
        refine Or.inr ⟨hnn, Or.inr ⟨hnn, fun v hv => ?_⟩⟩
        obtain ⟨hv', W, hT, hCb⟩ := h v hv
        exact ⟨out, hv', pmcFin_of_col hT hCb hZ hfo.2.2.1 hfo.2.2.2.1⟩
      · exact hoare_skip fun s _ ⟨hP, _⟩ => Or.inl ⟨rfl, hP⟩
    · exact hoare_post (hoare_callPcm hpcm htg) (fun r t _ _ h => Or.inl h)
  refine hoare_conseq hk (fun t _ ht => ?_) (fun r t _ _ hq => rcall_res (by decide) (by decide) _ hq)
  subst ht; exact hFE

theorem hoare_pmcCall (hG0 : G guestC (Hooks.guestHooksR (σ := σ)) Γ0 s0) (hpm : HypPm σ M)
    (hpcm : HypPcm σ M) (htc : fld s0.memory msg 24 = 0 → TgtB Γ0 s0.memory msg) :
    Hoare σ guestCtx (FE M msg Γ0 s0 out) pmcCall (Rcall Γ0 s0 out) := by
  unfold pmcCall
  refine hoare_ite (fun s hs h htr => ?_)
    (hoare_pre (hoare_post (hoare_callPm hpm) fun r t _ _ h => Or.inl h) fun s _ h => h.1)
  obtain ⟨-, -, -, -, -, -, h24, -, -, -, hlm, -⟩ := h.1
  exact hoare_create hG0 hpcm (htc (h24.symm.trans (cond24 hlm h.2))) s hs h.1 htr

theorem hoare_frame (hG0 : G guestC (Hooks.guestHooksR (σ := σ)) Γ0 s0) (hpm : HypPm σ M)
    (hpcm : HypPcm σ M) (htc : fld s0.memory msg 24 = 0 → TgtB Γ0 s0.memory msg) :
    Hoare σ guestCtx (FE M msg Γ0 s0 out) (.dec (nm "frame") .one (cw 0) (.seq pmcCall pmcTail))
      (PmcQ Γ0 s0) := by
  refine hoare_dec fun s hs hP v hv hsh => ?_
  refine hoare_conseq (P := FE M msg Γ0 s0 out) (Q := PmcQ Γ0 s0)
    (hoare_seqD (Rn := PC Γ0 s0 out) (hoare_pmcCall hG0 hpm hpcm htc) (hoare_afterCall hG0))
    (fun t _ ht => ?_) (fun r t _ _ hq v hv => ?_)
  · subst ht
    exact fe_set hP (by decide) (by decide) v
  · obtain ⟨o, ho, hf⟩ := hq v hv
    exact ⟨o, ho, pmcFin_congr rfl rfl rfl rfl hf⟩

end create2

end InitECandidate.Solver.MemSafe.Ptx

#print axioms InitECandidate.Solver.MemSafe.Ptx.hoare_frame
