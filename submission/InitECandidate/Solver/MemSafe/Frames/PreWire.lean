import InitECandidate.Solver.MemSafe.Frames.ProJL
import InitECandidate.Solver.MemSafe.Pre.EmitLogR
import InitECandidate.Solver.MemSafe.Pre.DispatchR
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# `PreHyps` from the Pre lane (frames11, task 1)

* **`etl_guestR`**: `PreHyps.etl`, from `Pre.sumSpecA_emit_transfer_log_guestR` (Pre `Pre.EtlPre`,
  footprint `LaPW`: list header / array cells, which are `PWtopM []` by type and object
  disjointness, `Inc.laPW_obj`). No hypothesis.
* **`rp_guestR hPM hPC hG`**: `PreHyps.rp`, from `Pre.sumSpecA_run_precompile_guestR hPM hPC` (hand-proved dispatcher, eon)
  (caps `⟨ev, 0, [8, 23], false⟩`: running-EV gas cells, in `PWtopM gasKs`; `SPILLED` (slot 24) is a
  `prot` slot outside the caps, so it is kept) and **`RpGas`** (`GAS_LEFT` is not raised).
* **`preHyps_of`**: `PreHyps σ` from the three remaining facts (`FHypsPre`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

/-! ## `emit_transfer_log` -/

/-- A cell of a `Γ` object that is no EV / CK / message record is in `PWtopL` (the log list
objects are allowed). -/
theorem noFrameL_cell {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {Γ : Gam} {s : State σ}
    (hG : G C H Γ s) {e : Obj} (he : e ∈ Γ) {k : Nat} (hk : e.HasSlot k)
    (hty : e.ty ≠ tEV ∧ e.ty ≠ tCK) (hm : e.ty ∉ msgTys0) {ks : List Nat}
    {vs : List (ValueHOL 64)} : PWtopL tEV tCK ks vs s Γ (e.cell k) := by
  refine ⟨Or.inr (noFrame_cell hG he hk hty), ?_⟩
  obtain ⟨p, -, hord, hL, -⟩ := hG
  exact noMsg0_of_ty hL he hm (inO_cell hord hL he (by unfold Obj.HasSlot at hk; omega))

/-- The list cells `log_append` writes are `PWtopL []`. -/
theorem laPW_pwL {H : Hooks σ} {vs : List (ValueHOL 64)} {Γ : Gam} {s : State σ}
    (hG : G guestC H Γ s) {a : BitVec 64} (h : Inc.LaPW Γ a) : PWtopL tEV tCK [] vs s Γ a := by
  obtain ⟨p, -, -, hL, -⟩ := id hG
  obtain ⟨y, hy, h1, h2, h3, j, hj, rfl⟩ := Inc.laPW_obj hL h
  exact noFrameL_cell hG hy hj ⟨h1, h2⟩ h3

/-- **`PreHyps.etl`** (no hypothesis). -/
theorem etl_guestR :
    SumSpecA σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "emit_transfer_log")
      (sgA 3 []) EtlPre (PWtopL tEV tCK []) LogQ := by
  intro vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs hpre
  obtain ⟨e, ⟨he, het, heb⟩, L, hL, hLb, hLt, hLe⟩ := hpre
  obtain ⟨Γ', p, p', core, hQ⟩ := Pre.sumSpecA_emit_transfer_log_guestR vs body callee rs hl s hs
    hloc r hr hg hna Γ hG hargs ⟨e, he, het, heb, L, hL, hLt, hLe, hLb⟩
  exact ⟨Γ', p, p', sumCore_pw core fun a ⟨hpc, hw⟩ => ⟨hpc, laPW_pwL hG hw⟩, hQ⟩

/-! ## `run_precompile` -/

/-- **`run_precompile` does not raise the running frame's `GAS_LEFT`** (the gas half of
`PreHyps.rp`): every good non-abortive result, from a `G` state with `RpPre`, leaves `EV 64` of the
running EV record at most its entry value. -/
def RpGas (σ : Type) : Prop :=
  FunSpec σ guestCtx (nm "run_precompile") (fun vs s r t => Good (some r) → ¬ Abortive r →
    ∀ Γ, G guestC (Hooks.guestHooksR (σ := σ)) Γ s → RpPre vs s Γ →
      ∀ e, gword s nmEv = some e → (fld t.memory e 64).toNat ≤ (fld s.memory e 64).toNat)

/-- The cells of the ev capability of the `pre_*` entries are `PWtopM gasKs`. -/
theorem evCaps_pw {vs : List (ValueHOL 64)} {Γ : Gam} {s : State σ}
    (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ s) {a : BitVec 64}
    (hw : CapPW Pre.evCaps s Γ a) :
    PWtopM tEV tCK gasKs vs s Γ a := by
  obtain ⟨p, -, hord, hL, -⟩ := hG
  obtain ⟨c, hc, ⟨e, ⟨he, het, heg⟩, k, hk, rfl⟩ | ⟨hall, -⟩⟩ := hw
  · simp only [Pre.evCaps, List.mem_singleton] at hc
    subst hc
    have hsz := ev_size (Hooks.frameCfg_guestHooksR (σ := σ)) hL he het
    have hk' : k = 8 ∨ k = 23 := by simpa using hk
    refine ⟨Or.inl ⟨e, ⟨he, het, ?_⟩, k, by rcases hk' with rfl | rfl <;> decide, rfl⟩,
      noMsg_of_ty hL he (by rw [het]; decide) (inO_cell hord hL he (by rcases hk' with rfl | rfl <;> omega))⟩
    rcases heg with h | h
    · exact absurd h (by decide)
    · exact h
  · simp only [Pre.evCaps, List.mem_singleton] at hc
    subst hc; cases hall

/-- **`PreHyps.rp`** from `run_precompile`'s fold summary (open in `pre_modexp` / the pairing
check) and `RpGas`. -/
theorem rp_guestR
    (hPM : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "pre_modexp") Pre.preSig
      Pre.evCaps)
    (hPC : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "pre_alt_bn128_pairing_check")
      Pre.preSig Pre.evCaps)
    (hGas : RpGas σ) :
    SumSpecA σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "run_precompile") (sgA 1 [])
      RpPre (PWtopM tEV tCK gasKs) RpQ := by
  have hc := Pre.sumSpecA_run_precompile_guestR hPM hPC
  intro vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs hpre
  have hpre' := hpre
  obtain ⟨⟨e, ⟨he, het, heb⟩, -⟩, -⟩ := hpre'
  have hreq : ReqOK Pre.evCaps s Γ := by
    intro c hc' _
    simp only [Pre.evCaps, List.mem_singleton] at hc'
    subst hc'
    exact ⟨e, he, het, heb⟩
  have hid : Pre.IdPre s Γ := by
    obtain ⟨⟨e', ⟨he', het', heb'⟩, M, hM⟩, -⟩ := hpre
    exact ⟨e', he', het', heb', M, hM.1, hM.2.2.1, by rw [hM.2.1]; rfl⟩
  obtain ⟨Γ', p, p', core0, -⟩ := hc vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs ⟨hreq, hid⟩
  have core : SumCore guestC Hooks.guestHooksR (sgA 1 [])
      (fun a => ProtCell guestC Γ a ∧ CapPW Pre.evCaps s Γ a) Γ s vs r
      (evaluateHOLFiniteState s body).2 Γ' p p' := by
    obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8, -, h10⟩ := core0
    exact ⟨h1, h2, h3, h4, h5, h6, h7, h8, fun h => absurd h (by decide), h10⟩
  have hgas := hGas vs body callee rs hl s hs hloc r hr hg hna Γ hG hpre
  generalize (evaluateHOLFiniteState s body).2 = t at core hgas ⊢
  refine ⟨Γ', p, p', sumCore_pw core fun a ⟨hpc, hw⟩ => ⟨hpc, evCaps_pw hG hw⟩, ?_⟩
  intro e' he'
  rw [heb] at he'
  cases he'
  have h64 := hgas e.base heb
  -- `SPILLED` (slot 24) is a `prot` cell outside the capability
  obtain ⟨q, hq, hord, hL, -⟩ := id hG
  have hsz := ev_size (Hooks.frameCfg_guestHooksR (σ := σ)) hL he het
  have hpc24 : ProtCell guestC Γ (e.cell 24) :=
    ⟨e, he, 24, by unfold Obj.HasSlot; omega,
      by rw [het]; exact (Hooks.frameCfg_guestHooksR (σ := σ)).evProt 24 (by decide), rfl⟩
  have hac : ∀ a, ArgCells (sgA 1 []).params vs a → ¬ ProtCell guestC Γ a :=
    fun a ha => absurd ha (argCells_any (sgA_any 1 []))
  have h24 := sumCore_prot (PW := fun a => CapPW Pre.evCaps s Γ a) core hG hac (e.cell 24) hpc24
    (by
      rintro ⟨c, hc', ⟨o, ⟨ho, hot, -⟩, k, hk, hok⟩ | ⟨hall, -⟩⟩
      · simp only [Pre.evCaps, List.mem_singleton] at hc'
        subst hc'
        have hk' : k = 8 ∨ k = 23 := by simpa using hk
        have hsz' := ev_size (Hooks.frameCfg_guestHooksR (σ := σ)) hL ho hot
        obtain ⟨-, rfl⟩ := cell_inj hord hL he ho (by unfold Obj.HasSlot; omega)
          (by unfold Obj.HasSlot; rcases hk' with rfl | rfl <;> omega) hok
        rcases hk' with h | h <;> cases h
      · simp only [Pre.evCaps, List.mem_singleton] at hc'
        subst hc'; cases hall)
  have hce : e.cell 24 = e.base + BitVec.ofNat 64 192 := rfl
  have h192 : fld t.memory e.base 192 = fld s.memory e.base 192 := by
    unfold fld; rw [← hce]; unfold rd; rw [h24]
  rw [h192]; omega

/-- **`PreHyps`** from `run_precompile`'s two open callee summaries and `RpGas`. -/
theorem preHyps_of
    (hPM : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "pre_modexp") Pre.preSig
      Pre.evCaps)
    (hPC : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "pre_alt_bn128_pairing_check")
      Pre.preSig Pre.evCaps)
    (hGas : RpGas σ) : PreHyps σ :=
  ⟨etl_guestR, rp_guestR hPM hPC hGas⟩

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.etl_guestR
#print axioms InitECandidate.Solver.MemSafe.Frames.rp_guestR
#print axioms InitECandidate.Solver.MemSafe.Frames.preHyps_of
