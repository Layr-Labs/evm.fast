import InitECandidate.Solver.MemSafe.Ptx.PcmK

/-!
# F3c: **`process_create_message`'s post** (`pcm_funSpec`)

From `HypPmM σ M` (`process_message`'s post with the message link and `JrNZ`) and `HypCfL σ`
(`create_finish`'s summary with a footprint that avoids list cells), `process_create_message` ends, on a
return, in `PmFinL` (`PmRL`'s post).
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

def LOCa (msg tgt : BitVec 64) (l : Locs) : Prop :=
  l.lookup (nm "msg") = some (.val (.word msg)) ∧ l.lookup (nm "target") = some (.val (.word tgt)) ∧
    ∃ w : BitVec 64, l.lookup (nm "snapshot") = some (.val (.word w))

def AJ (M : Nat) (Γ0 : Gam) (s0 : State σ) (msg tgt : BitVec 64) (u : State σ) : Prop :=
  (∃ Γ p, G guestC (Hooks.guestHooksR (σ := σ)) Γ u ∧ ptrsOf u = some p ∧ FoPre M msg Γ u ∧
    KB Γ0 Γ s0 u ∧ BufOK guestC Γ p tgt.toNat 20) ∧ LOCa msg tgt u.locals

section fun'
variable {M : Nat} {Γ0 : Gam} {s0 : State σ} {msg tgt : BitVec 64}

theorem hoare_aj_call {f : MlS}
    (hf : StSum σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) guestSt f (sgB [Hooks.gJn])) :
    Hoare σ guestCtx (AJ M Γ0 s0 msg tgt) (callD f [lv (nm "target")])
      (fun r t => r = none ∧ AJ M Γ0 s0 msg tgt t) := by
  have hH := Hooks.guestHooksR_lawful (σ := σ)
  refine hoare_callD (sumSpecA_relX hf) ?_
  intro s hs ⟨⟨Γ, p, hG, hp, hfo, hKB, hb⟩, hl⟩ vs hvs callee v st hR hst
  rw [evs_cons (ev_lv_eq hl.2.1) evs_nil] at hvs
  cases hvs
  have hGe : G guestC (Hooks.guestHooksR (σ := σ)) Γ (callEntryStateHOLFinite s callee) :=
    (G_locFree hH s _ _).mpr hG
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p := (ptrsOf_congr rfl).trans hp
  have hJ : JrNZ (callEntryStateHOLFinite s callee) := jrNZ_congr (s := s) rfl hfo.2.2.2.2.1
  obtain ⟨Γ', p', hc, hG', hp', hfo', hrun⟩ := fi_rel (M := M) (msg := msg) hR hGe hpe hfo
    (argsOK_sgB hb) (by simp; decide) (by decide) hJ (fun a h => h)
  refine ⟨rfl, ⟨Γ', p', (G_locFree hH st s.locals st.clock).mpr hG', (ptrsOf_congr rfl).trans hp',
    hfo', kb_loc (s := st) rfl rfl (kb_step hGe (kb_loc (t := callEntryStateHOLFinite s callee) rfl rfl hKB)
      (keepH_of_runT hrun) (bkeep_of_runT hrun)), bufOK_runT hGe hrun hb⟩, hl⟩

/-- The state before the call of `process_message`. -/
def AK (M : Nat) (Γ0 : Gam) (s0 : State σ) (msg : BitVec 64) (u : State σ) : Prop :=
  (∃ Γ p, G guestC (Hooks.guestHooksR (σ := σ)) Γ u ∧ ptrsOf u = some p ∧ FoPre M msg Γ u ∧
    KB Γ0 Γ s0 u) ∧ u.locals.lookup (nm "msg") = some (.val (.word msg)) ∧
    ∃ w : BitVec 64, u.locals.lookup (nm "snapshot") = some (.val (.word w))

theorem hoare_pcmK5 (hpm : HypPmM σ M) (hcf : HypCfL σ) (htg : TgtB Γ0 s0.memory msg) :
    Hoare σ guestCtx (AK M Γ0 s0 msg) pcmK5 (PcQ Γ0 s0) := by
  have hH := Hooks.guestHooksR_lawful (σ := σ)
  unfold pcmK5
  refine hoare_decCallS hpm fun s hs hP vs hvs callee v st hR hst hsh => ?_
  obtain ⟨⟨Γ, p, hG, hp, hfo, hKB⟩, hm, hw⟩ := hP
  rw [evs_cons (ev_lv_eq hm) evs_nil] at hvs
  cases hvs
  have hGe : G guestC (Hooks.guestHooksR (σ := σ)) Γ (callEntryStateHOLFinite s callee) :=
    (G_locFree hH s _ _).mpr hG
  obtain ⟨child, msg', hvs', hv', hfin, hJ⟩ := hR Γ hGe ⟨msg, rfl, hfo⟩ v rfl
  obtain rfl : msg = msg' := by simpa using hvs'
  subst hv'
  refine hoare_post (P := fun t => t = setVarHOLFinite (nm "child") (.val (.word child))
    { st with locals := s.locals }) ?_ (fun r t _ _ hq => pcQ_loc hq _)
  obtain ⟨hMV, ⟨Γ', hG', ho, hk, hb, ⟨rec, hgp⟩, hlog⟩, hev, hcc⟩ := hfin
  have hk' : KeepH guestC Γ Γ' s st :=
    keepH_congr (s := callEntryStateHOLFinite s callee) (s' := s) rfl rfl hk
  have hb' : BKeep guestC Γ s st :=
    bkeep_congr (s := callEntryStateHOLFinite s callee) (s' := s) rfl rfl hb
  have hKB' : KB Γ0 Γ' s0 st := kb_step hG hKB hk' hb'
  obtain ⟨p', hp', -⟩ := id hG'
  have hPM : PMm Γ0 s0 msg child st :=
    ⟨⟨Γ', p', rec, hG', hp', hKB', ho, hgp p' hp', hlog p' hp', hJ⟩, hev, hcc, htg⟩
  refine hoare_pre (hoare_pcmK6 (msg := msg) (child := child) hcf) fun t _ ht => ?_
  subst ht
  exact ⟨pmm_congr hPM rfl rfl rfl rfl, (lk_set_ne _ _ (by decide)).trans hm, lk_set_self _ _ _,
    hw.elim fun w hw => ⟨w, (lk_set_ne _ _ (by decide)).trans hw⟩⟩

theorem hoare_pcmK1 (hpm : HypPmM σ M) (hcf : HypCfL σ) (htg : TgtB Γ0 s0.memory msg) :
    Hoare σ guestCtx (fun s => (∃ Γ p, G guestC (Hooks.guestHooksR (σ := σ)) Γ s ∧ ptrsOf s = some p ∧
      FoPre M msg Γ s ∧ KB Γ0 Γ s0 s) ∧ s.locals.lookup (nm "msg") = some (.val (.word msg)) ∧
      ∃ w : BitVec 64, s.locals.lookup (nm "snapshot") = some (.val (.word w)))
      pcmK1 (PcQ Γ0 s0) := by
  have hH := Hooks.guestHooksR_lawful (σ := σ)
  unfold pcmK1
  refine hoare_dec fun s hs hP v hv hsh => ?_
  obtain ⟨⟨Γ, p, hG, hp, hfo, hKB⟩, hm, hw⟩ := hP
  have hv' := ev_lLoad_eq (x := "msg") (k := 32) hm hv
  subst hv'
  refine hoare_post (P := fun t => t = setVarHOLFinite (nm "target")
    (.val (.word (fld s.memory msg 32))) s) ?_ (fun r t _ _ hq => pcQ_loc hq _)
  have hAJ : AJ M Γ0 s0 msg (fld s.memory msg 32)
      (setVarHOLFinite (nm "target") (.val (.word (fld s.memory msg 32))) s) :=
    ⟨⟨Γ, p, (G_locFree hH s _ _).mpr hG, (ptrsOf_congr rfl).trans hp, hfo, kb_loc rfl rfl hKB,
      hfo.1.2 p hp 32 (by simp [msgXOffs])⟩, (lk_set_ne _ _ (by decide)).trans hm, lk_set_self _ _ _,
      hw.elim fun w hw => ⟨w, (lk_set_ne _ _ (by decide)).trans hw⟩⟩
  unfold pcmK2 pcmK3 pcmK4
  refine hoare_pre ?_ (fun t _ ht => (ht ▸ hAJ : AJ M Γ0 s0 msg (fld s.memory msg 32) t))
  refine hoare_seqP (Rn := AJ M Γ0 s0 msg (fld s.memory msg 32)) (hoare_aj_call stSum_ds) ?_
  refine hoare_seqP (Rn := AJ M Γ0 s0 msg (fld s.memory msg 32))
    (hoare_aj_call (stSum_mac guestCtx_code tabJL_guestR)) ?_
  refine hoare_seqP (Rn := AJ M Γ0 s0 msg (fld s.memory msg 32)) (hoare_aj_call stSum_inc) ?_
  refine hoare_pre (hoare_pcmK5 (msg := msg) hpm hcf htg) fun t _ h => ?_
  obtain ⟨⟨Γ, p, hG, hp, hfo, hKB, -⟩, hm, -, hw⟩ := h
  exact ⟨⟨Γ, p, hG, hp, hfo, hKB⟩, hm, hw⟩

theorem hoare_pcmBody (hpm : HypPmM σ M) (hcf : HypCfL σ) {p0 : Ptrs}
    (hG0 : G guestC (Hooks.guestHooksR (σ := σ)) Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    (hfo0 : FoPre M msg Γ0 s0) (htg : TgtB Γ0 s0.memory msg)
    (hl : s0.locals.lookup (nm "msg") = some (.val (.word msg))) :
    Hoare σ guestCtx (fun t => t = s0) pcmBody (PcQ Γ0 s0) := by
  have hH := Hooks.guestHooksR_lawful (σ := σ)
  unfold pcmBody
  refine hoare_decCallS snap_spec fun s hs hP vs hvs callee v st hR hst hsh => ?_
  subst hP
  obtain rfl : vs = [] := evs_zero hvs
  obtain ⟨w, rfl⟩ := val_of_shapeEq_one' hsh
  refine hoare_post (P := fun t => t = setVarHOLFinite (nm "snapshot") (.val (.word w))
    { st with locals := s.locals }) ?_ (fun r t _ _ hq => pcQ_loc hq _)
  have hGe : G guestC (Hooks.guestHooksR (σ := σ)) Γ0 (callEntryStateHOLFinite s callee) :=
    (G_locFree hH s _ _).mpr hG0
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p0 := (ptrsOf_congr rfl).trans hp0
  obtain ⟨Γ', p', hc, hG', hp', hfo', hrun⟩ := fi_rel (M := M) (msg := msg) hR.1 hGe hpe hfo0
    (argsOK_any (by simp [sgSn]) rfl) (by simp [sgSn]) (by simp [sgSn])
    (fun c hc => absurd hc (by simp))
    (fun a h => absurd h.2 (by rintro ⟨c, hc, -⟩; exact absurd hc (by simp)))
  have hKB : KB Γ0 Γ' s st :=
    kb_step hGe (kb_refl (se := s) hp0 (ordered_of_G hG0 hp0) (t := callEntryStateHOLFinite s callee) rfl rfl)
      (keepH_of_runT hrun) (bkeep_of_runT hrun)
  refine hoare_pre (hoare_pcmK1 (msg := msg) hpm hcf htg) fun t _ ht => ?_
  subst ht
  exact ⟨⟨Γ', p', (G_locFree hH st _ _).mpr hG', (ptrsOf_congr rfl).trans hp', hfo',
    kb_loc rfl rfl hKB⟩, (lk_set_ne _ _ (by decide)).trans hl, w, lk_set_self _ _ _⟩

end fun'

/-- **`process_create_message`'s post** (`PmRL`'s form): from `process_message`'s post (with the
message link and `JrNZ`) and `create_finish`'s summary (footprint avoiding list cells). -/
theorem pcm_funSpec {M : Nat} (hpm : HypPmM σ M) (hcf : HypCfL σ) : HypPcm σ M := by
  intro vs body callee rs hl s hs hloc r hr Γ hG ⟨msg, hvs, hfo, htg⟩ v hv
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, A, rfl, -, hlk⟩ := lookupCode_one code_pcm hl
  obtain rfl : A = .val (.word msg) := List.head_eq_of_cons_eq hvs
  obtain ⟨p, hp, -⟩ := id hG
  have hQ := hoare_pcmBody hpm hcf hG hp hfo htg (by rw [hloc]; exact hlk) s hs rfl
    (by rw [hr]; subst hv; trivial)
  rw [hr] at hQ
  exact hQ.2 v (by subst hv; rfl)

end InitECandidate.Solver.MemSafe.Ptx

#print axioms InitECandidate.Solver.MemSafe.Ptx.pcm_funSpec
