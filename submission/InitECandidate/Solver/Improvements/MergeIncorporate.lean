import InitECandidate.Solver.Improvements.MergeTableBound
import InitECandidate.Solver.MemSafe.Bal.Ub9
import InitECandidate.Solver.Band6.UbCost

/-! Carry the typed transaction and block state across the builder update and
into the call to merge_tx_into_block. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace MergeIncorporate
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Bal InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

def price : Nat := (1 + Band6.bUB + 0) + ((1 + MergeTableBound.bodyPrice + 0) + 0)

theorem cost :
    CondCost σ guestCtx guestC (guestHooksR (σ := σ)) (nm "incorporate_tx_into_block")
      biSig UbPre price := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, -⟩ := Struct.lookupCode_zero code_incorporate_tx_into_block hl
  rintro s0 hs0 ⟨hloc, Γ0, p0, hG0, hp0, hargs, -, hbs, hts, hba, hkb, hia, his, hsk⟩ hg
  obtain ⟨q, hq, hord, hL, -⟩ := id hG0
  rw [hp0] at hq
  cases hq
  have Ent : UbEnt Γ0 s0 p0 := ⟨hord, hL, hbs, hts, hba, hkb, hia, his, hsk⟩
  let P : State σ → Prop := PE icc Γ0 s0 p0 E0 (fun _ => True)
  have hU : HoareG σ guestCtx P (callD (nm "update_builder_from_tx") [])
      (RR icc Γ0 s0 p0 (LE E0 (fun _ => True))) := by
    refine gstepE hH (sumSpec_update_builder_from_tx Band6.hgs_R) (by decide_cbv)
      (fun g _ => by simp [biSig]) Ent.hord Ent.hL (fun _ _ _ h => h) ?_
    intro Γ s hP vs hvs callee
    obtain rfl : vs = [] := by rw [evs_nil] at hvs; exact (Option.some.inj hvs).symm
    have F := ub_facts Ent hP.1
    exact hdata_any (sg := biSig) (Pre := UbPre) (PW' := fun _ s Γ a => UbPW s Γ a)
      (by simp [biSig]) rfl hP.1 ⟨rfl, F.bs, F.ts, F.ba, F.kb, F.ia, F.is, F.sk⟩
      (fun y hpc hy => cpw_ub_g icc_ks icc_ub hP.1.1 Ent.hord Ent.hL y hpc hy)
  have hentry {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
      (hpre : ∀ {Γ s}, IV icc Γ0 s0 p0 Γ s → Pre [] s Γ)
      (hcongr : ∀ {Γ s t}, t.globals = s.globals → Pre [] s Γ → Pre [] t Γ)
      {f : Flapjack.Pancake.PanLang.MlS} {B : Nat}
      (hC : CondCost σ guestCtx guestC (guestHooksR (σ := σ)) f biSig Pre B) :
      Inv.CostP σ guestCtx P (callD f []) (1 + B + 0) := by
    refine Inv.costP_callD hC ?_
    intro s hs ⟨Γ, hIV, hLE⟩ vs hvs callee
    rw [evs_nil] at hvs
    cases hvs
    obtain ⟨p, hp, _⟩ := id hIV.1
    refine ⟨Γ, p, MemSafe.G_congr (s := s) hH rfl rfl rfl rfl (Struct.trk_G hIV.1), ?_,
      ⟨rfl, fun i pt v hpt => by simp [biSig] at hpt⟩, hcongr rfl (hpre hIV)⟩
    show ptrsOf (callEntryStateHOLFinite s callee) = _
    exact hp
  have cu := hentry (Pre := UbPre)
    (fun h => let F := ub_facts Ent h; ⟨rfl, F.bs, F.ts, F.ba, F.kb, F.ia, F.is, F.sk⟩)
    (by
      intro Γ s t hg h
      obtain ⟨-, hbs, hts, hba, hkb, hia, his, hsk⟩ := h
      have e : ∀ g, gword t g = gword s g := fun g => by unfold gword; rw [hg]
      refine ⟨rfl, ?_⟩
      simp only [GF] at hbs hts hba hkb hia his hsk ⊢
      rw [e, e, e, e, e, e, e]
      exact ⟨hbs, hts, hba, hkb, hia, his, hsk⟩)
    (Band6.ub_condCost_lit (σ := σ))
  have cm := hentry (Pre := MgPre)
    (fun h => let F := ub_facts Ent h; ⟨rfl, F.bsNN, F.tsNN⟩)
    (by
      intro Γ s t hg h
      obtain ⟨-, hbs, hts⟩ := h
      have e : ∀ g, gword t g = gword s g := fun g => by unfold gword; rw [hg]
      refine ⟨rfl, ?_⟩
      simpa only [BsNN, TsNN, e] using And.intro hbs hts)
    (MergeTableBound.callee_cost (σ := σ))
  unfold icBody
  exact Inv.costP_seq cu (Band6.inv_of_hoareG hU)
    (Inv.costP_seq (R := fun _ => True) cm (fun _ _ _ _ _ => trivial)
      (Inv.costP_of_cost (cost_return (cw 0)))) s0 hs0
    ⟨Γ0, ⟨Struct.trk_refl hG0 hp0, fun _ _ => rfl⟩, fun x v h => by simp [E0] at h, trivial⟩ hg

#print axioms cost
end MergeIncorporate
