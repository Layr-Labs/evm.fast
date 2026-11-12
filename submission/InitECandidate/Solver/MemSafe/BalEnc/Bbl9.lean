import InitECandidate.Solver.MemSafe.BalEnc.Bbl8

set_option autoImplicit false

/-!
# `build_block_access_list_rlp`: the tail (the encoding phase from the tracked state)
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.BalEnc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.MemSafe.Bal
open InitECandidate.Solver.MemSafe.Aw (Below G_heapOnly AwInv AwE awInv_init)

variable {σ : Type}

theorem hrg_guestC : (guestC.ty tEV).region = .scratch ∧ ∀ t ∈ adjTys, (guestC.ty t).region = .scratch := by
  decide

theorem gword_eq_of_lookup {s s0 : State σ} {g : MlS} (h : s.globals.lookup g = s0.globals.lookup g) :
    gword s g = gword s0 g := by
  unfold gword
  rw [h]

set_option maxHeartbeats 8000000 in
theorem hoareG_tail {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} (hp0 : ptrsOf s0 = some p0)
    (Ent : BbEnt Γ0 s0 p0) (hev : ∃ e, gword s0 nmEv = some e ∧ e.toNat < nullMax)
    (hcc : ∃ c, gword s0 nmCC = some c ∧ c.toNat < nullMax) {L : Gam → State σ → Prop} :
    HoareG σ guestCtx (fun s => ∃ Γ, PI bbc Γ0 s0 p0 L Γ s) phase2 (BblPost s0 Γ0 p0) := by
  intro s hs ⟨Γ, hIV, hL⟩ hg
  have hIV' := hIV
  obtain ⟨hT, hb4⟩ := hIV
  have hT' := hT
  obtain ⟨p1, hp1, hm, hxE, hnf, hG1, hmod1, hpg1, hd1, hbe1⟩ := hT
  obtain ⟨q1, hq1, hord1, hL1, -⟩ := id hG1
  rw [hp1] at hq1
  cases hq1
  have hevS : ∃ e, gword s nmEv = some e ∧ e.toNat < nullMax := by
    obtain ⟨e, he, hlt⟩ := hev
    exact ⟨e, by rw [gword_eq_of_lookup (hpg1 nmEv (by decide))]; exact he, hlt⟩
  have hccS : ∃ c, gword s nmCC = some c ∧ c.toNat < nullMax := by
    obtain ⟨c, hc, hlt⟩ := hcc
    exact ⟨c, by rw [gword_eq_of_lookup (hpg1 nmCC (by decide))]; exact hc, hlt⟩
  have hGh : G guestC (guestHooksR (σ := σ)) (heapOf Γ) s :=
    G_heapOnly relCfg_guestR drvCfg_guestHooksR hrg_guestC hG1 hevS hccS
  let a : AwE σ := ⟨guestCS, nwH (guestHooksR (σ := σ)), [], s, heapOf Γ, p1, p1.hp⟩
  have hGa : G guestCS (nwH (guestHooksR (σ := σ))) (heapOf Γ) s := g_iff.2 hGh
  have hK : Aw.AwOK a := ⟨hooksLawful_cs, tagSlots_cs, allocGlobs_cs, hord1.2.2.2.2.2.1, le_rfl, hord1,
    hord1.1⟩
  have hB : Below (heapOf Γ) p1.hp := by
    intro o ho
    obtain ⟨hoΓ, hr⟩ := mem_heapOf.1 ho
    have := (hL1.1 o hoΓ).2.2.2.2
    rw [hr] at this
    unfold Region.Live at this
    unfold Obj.hi
    unfold Obj.lo at this
    omega
  have hBA : Bal.BalNN a.s0 a.Γ0 := by
    obtain ⟨w, hw, o, ho, hob, hot⟩ := (bb_facts Ent hIV').ba
    exact ⟨o, mem_heapOf.2 ⟨ho, by rw [hot]; decide⟩, hot, by rw [hob]; exact hw⟩
  have H := hoareG_phase2 hK ⟨rfl, rfl⟩ rfl hBA s hs ⟨awInv_init a hGa hp1 hB, hs_nil _⟩ hg
  intro v hv
  obtain ⟨-, -, hret⟩ := H
  obtain ⟨hinv, hbr⟩ := hret v hv
  exact bbl_final hp0 Ent.hord Ent.hL hT' hp1 hb4 hinv hbr

end InitECandidate.Solver.MemSafe.BalEnc
