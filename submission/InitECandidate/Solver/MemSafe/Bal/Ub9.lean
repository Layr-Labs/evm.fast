import InitECandidate.Solver.MemSafe.Bal.Ub8

set_option maxRecDepth 100000
set_option cbv.warning false
set_option maxHeartbeats 0
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.MemSafe.Stor

variable {σ : Type}

def icBody : ProgHOL 64 :=
  .seq (callD (nm "update_builder_from_tx") []) (.seq (callD (nm "merge_tx_into_block") []) (.return (cw 0)))

theorem entry_incorporate_tx_into_block : fnEntry Guest.Software.guestFn_incorporate_tx_into_block =
    (nm "incorporate_tx_into_block", [], icBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_incorporate_tx_into_block : guestCode (nm "incorporate_tx_into_block") = some ([], icBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 428) (by decide)) ⟨_, rfl⟩
    entry_incorporate_tx_into_block

/-- The footprint of `incorporate_tx_into_block`. -/
def icc : List Cap := ubc ++ mgc

theorem icc_ks : ∀ c ∈ icc, c.ks = [] := by decide +kernel
theorem icc_ub : ∀ c ∈ ubc, c ∈ icc := fun c hc => by simp [icc, hc]
theorem icc_mg : ∀ c ∈ mgc, c ∈ icc := fun c hc => by simp [icc, hc]

def IcPW (s : State σ) (Γ : Gam) (a : BitVec 64) : Prop := CapPW icc s Γ a ∨ Inc.LaPW Γ a

theorem cpw_sub_g {cs0 cs' : List Cap} (hks : ∀ c ∈ cs0, c.ks = []) (hs : ∀ c ∈ cs', c ∈ cs0) {Γ0 : Gam}
    {s0 : State σ} {p0 : Ptrs} {Γ : Gam} {t s' : State σ}
    (hT : Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (cpw cs0 Γ0 s0 p0) Γ t)
    (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0) :
    ∀ y, ProtCell guestC Γ y → CapPW cs' s' Γ y → cpw cs0 Γ0 s0 p0 y := by
  obtain ⟨pT, hpT, hmT, hxT, hnfT, hGT, -⟩ := hT
  obtain ⟨qT, hqT, hordT, hLayT, -⟩ := hGT
  rw [hpT] at hqT
  cases hqT
  intro y hpc hpw
  rcases capBack' hord0 hordT hmT hL0 hLayT hnfT (cs := cs') (cs0 := cs0)
    (fun c hc => ⟨hks c (hs c hc), fun hall => ⟨c, hs c hc, hall, fun _ h => h⟩⟩) hpc hpw with ⟨h1, h2⟩ | h
  · exact Or.inl ⟨h1, Or.inl h2⟩
  · exact Or.inr h

theorem cpw_ub_g {cs0 : List Cap} (hks : ∀ c ∈ cs0, c.ks = []) (hu : ∀ c ∈ ubc, c ∈ cs0) {Γ0 : Gam}
    {s0 : State σ} {p0 : Ptrs} {Γ : Gam} {t s' : State σ}
    (hT : Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (cpw cs0 Γ0 s0 p0) Γ t)
    (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0) :
    ∀ y, ProtCell guestC Γ y → UbPW s' Γ y → cpw cs0 Γ0 s0 p0 y := by
  intro y hpc h
  rcases h with h | h
  · exact cpw_sub_g hks (fun c hc => hu c (hc : c ∈ ubc)) hT hord0 hL0 y hpc h
  · rcases pw_of_la hord0 hL0 hT hpc h with ⟨h1, h2 | h2⟩ | h
    · exact Or.inl ⟨h1, Or.inl (capPW_mono (fun c hc => hu c (ubc_sub_bal c hc)) h2)⟩
    · exact Or.inl ⟨h1, Or.inr ⟨hu _ ubc_la, h2⟩⟩
    · exact Or.inr h

theorem trk_cpw_la_g {cs0 : List Cap} (hla : laCap ∈ cs0) {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {Γ : Gam}
    {t : State σ}
    (hT : Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (cpw cs0 Γ0 s0 p0) Γ t) :
    Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0
      (fun a => ProtCell guestC Γ0 a ∧ (CapPW cs0 s0 Γ0 a ∨ Inc.LaPW Γ0 a) ∨ ¬ p0.Allocated a.toNat) Γ t := by
  obtain ⟨p, hp, hm, hx, hnf, hG, hmod, hpg, hd, hbe⟩ := hT
  refine ⟨p, hp, hm, hx, hnf, hG, hmod.mono fun a ha => ?_, hpg, hd, hbe⟩
  rcases ha with ha | ha | ha
  · exact Or.inl ha
  · exact Or.inr (Or.inl ha)
  · refine Or.inr (Or.inr ?_)
    rcases ha with ⟨h1, h2 | ⟨-, h3⟩⟩ | h
    · exact Or.inl ⟨h1, Or.inl h2⟩
    · exact Or.inl ⟨h1, Or.inr h3⟩
    · exact Or.inr h

section ub9
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

theorem ic_main (Ent : UbEnt Γ0 s0 p0) (hgs : HGS σ) :
    HoareG σ guestCtx (PE icc Γ0 s0 p0 E0 (fun _ => True)) icBody (RR icc Γ0 s0 p0 (LE E0 (fun _ => True))) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  unfold icBody
  refine hseqR2 (L := LE E0 (fun _ => True)) ?_ (hseqR2 (L := LE E0 (fun _ => True)) ?_ ?_)
  · refine gstepE hH (sumSpec_update_builder_from_tx hgs) (by decide_cbv) (fun g _ => by simp [biSig])
      Ent.hord Ent.hL (fun _ _ _ h => h) ?_
    intro Γ s' hP vs hvs callee
    obtain rfl : vs = [] := by rw [evs_nil] at hvs; exact (Option.some.inj hvs).symm
    have F := ub_facts Ent hP.1
    exact hdata_any (sg := biSig) (Pre := UbPre) (PW' := fun _ s Γ a => UbPW s Γ a) (by simp [biSig]) rfl hP.1
      ⟨rfl, F.bs, F.ts, F.ba, F.kb, F.ia, F.is, F.sk⟩
      (fun y hpc hy => cpw_ub_g icc_ks icc_ub hP.1.1 Ent.hord Ent.hL y hpc hy)
  · refine gstepE hH sumSpec_merge_tx_into_block (by decide_cbv) (fun g _ => by simp [biSig])
      Ent.hord Ent.hL (fun _ _ _ h => h) ?_
    intro Γ s' hP vs hvs callee
    obtain rfl : vs = [] := by rw [evs_nil] at hvs; exact (Option.some.inj hvs).symm
    have F := ub_facts Ent hP.1
    exact hdata_any (sg := biSig) (Pre := MgPre) (PW' := fun _ s Γ a => CapPW mgc s Γ a) (by simp [biSig]) rfl hP.1
      ⟨rfl, F.bsNN, F.tsNN⟩
      (fun y hpc hy => cpw_sub_g icc_ks icc_mg hP.1.1 Ent.hord Ent.hL y hpc hy)
  · refine hoareG_return fun t _ ⟨Γ, hIV, hl⟩ v hv => ?_
    exact Or.inr ⟨by simp, gq4_of_iv _ ⟨Struct.trk_congr hH hIV.1 rfl rfl rfl rfl, hIV.2⟩⟩

/-- **`incorporate_tx_into_block()`**: `update_builder_from_tx(); merge_tx_into_block();`. -/
theorem sumSpec_incorporate_tx_into_block (hgs : HGS σ) :
    SumSpecA σ guestCtx guestC (guestHooksR (σ := σ)) (nm "incorporate_tx_into_block") biSig UbPre
      (fun _ s Γ a => IcPW s Γ a) B4Post := by
  have hF := Rec.foldOK_guestR (σ := σ)
  intro vs body callee rs hl s0 hs hloc r hr hg hna Γ0 hG0 hargs hpre
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, rfl⟩ := Struct.lookupCode_zero code_incorporate_tx_into_block hl'
  obtain ⟨-, hbs, hts, hba, hkb, hia, his, hsk⟩ := hpre
  obtain ⟨p0, hp0, -⟩ := hargs
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  have Ent : UbEnt Γ0 s0 p0 := ⟨hord0, hL0, hbs, hts, hba, hkb, hia, his, hsk⟩
  have H' : HoareG σ guestCtx (fun u => u = s0) icBody (GQ4 icc Γ0 s0 p0) := by
    refine hoareG_conseq (ic_main Ent hgs) (fun s _ hu => ?_) (fun r t _ _ h => rr_to_gq h)
    subst hu
    exact ⟨Γ0, ⟨Struct.trk_refl hG0 hp0, fun g _ => rfl⟩, fun x w h => absurd h (by simp [E0]), trivial⟩
  have H'' := H' s0 hs rfl (by rw [hr]; exact hg)
  rw [hr] at H''
  obtain ⟨hbl, Γ', hT'⟩ := H'' r rfl hna
  obtain ⟨p', hc⟩ := Inc.trk_sumCoreA (sg := biSig)
    (PWs := fun a => ProtCell guestC Γ0 a ∧ IcPW s0 Γ0 a)
    (vs := []) (r := r) (trk_cpw_la_g (cs0 := icc) (by simp [icc, ubc]) hT') hp0 (fun h => by simp [biSig] at h)
    (fun p _ w' hw' i rt w'' hi hfl => by simp [biSig] at hi)
  exact ⟨Γ', p0, p', hc, fun v' hv' => by rw [hv'] at hr; exact hbl⟩

end ub9

end InitECandidate.Solver.MemSafe.Bal

#print axioms InitECandidate.Solver.MemSafe.Bal.sumSpec_incorporate_tx_into_block
