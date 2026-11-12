import InitECandidate.Solver.MemSafe.Sp.Si
import InitECandidate.Solver.MemSafe.Ra.JrA
import InitECandidate.Solver.MemSafe.Wg.CostBase
import InitECandidate.Solver.MemSafe.Ini.SiFinal
import InitECandidate.Solver.MemSafe.Ra.AttHyp
import InitECandidate.Solver.Band.Dec
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

/-! # JrFix: `state_init`'s cost at `Att.CcPreNJ Att.SiPreC` (Sp's proof never uses `JrNZ`). -/

namespace InitECandidate.Solver.MemSafe.Sp
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Wg InitECandidate.Solver.MemSafe.Att
open InitECandidate.Solver.Spec.Mpt.Leaves (NdbW InH)

variable {σ : Type}

/-- **`state_init`'s cost without `JrNZ`** (package JrFix: `state_init` is what sets the journal). -/
theorem hypSiCostNJ : CondCost σ guestCtx guestC (Eb.HR σ) (nm "state_init") (Eb.CcSig 3) (Att.CcPreNJ Att.SiPreC) bSi := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  intro vs body callee rs hl s hs hpre0 hgood
  obtain ⟨hloc, Γ, p, hG, hp, -, -, p', hp', db, rt, cd, rfl, hND, -⟩ := hpre0
  obtain ⟨p2, hp2, hord, hL, -⟩ := id hG
  obtain rfl : p2 = p := Option.some.inj (hp2.symm.trans hp)
  rw [hX] at hl
  obtain ⟨rfl, -, hlen, hbind⟩ := lookupCode_gen Ini.code_si hl
  have hA : callee.lookup (nm "nodedb") = some (.val (.word db)) := (hbind 0 (by decide) (by simp)).1
  have hB : callee.lookup (nm "state_root") = some (.val (.word rt)) := (hbind 1 (by decide) (by simp)).1
  have hC : callee.lookup (nm "codedb") = some (.val (.word cd)) := (hbind 2 (by decide) (by simp)).1
  have hnd : NdbW db p2.hp s.memory := Wit.ndbW_of_ndbR hL hND
  have hev : ∀ (x : MlS) (V : BitVec 64), callee.lookup x = some (.val (.word V)) →
      ∀ t : St σ, SiJ db s t → ev t (lv x) = some (.val (.word V)) := by
    intro x V h t ht
    obtain ⟨-, -, -, -, -, -, -, -, -, -, -, hl⟩ := ht
    rw [ev_lv, hl, hloc]
    exact h
  have key : Inv.CostP σ guestCtx (fun t => t = s) Ini.siBody bSiE := by
    unfold Ini.siBody
    refine Inv.costP_seq (R := SiJ db s)
      (Inv.costP_of_cost (cost_call (fun _ _ _ _ hl' => ?_) (by intro _ _ _ _ h; cases h)))
      (hoare_si_alloc hX hnd hp hord) ?_
    · exact Wire.calleeCost_guest (f := nm "alloc") (B := 2) rfl _ _ _ _ hl'
    refine Inv.costP_seq (R := SiJ db s) (Inv.costP_of_cost (cost_store _ _))
      (hoare_post (hoare_si_store (k := 0) (by omega) (hev _ _ hA)) fun _ _ _ _ h _ => h.2) ?_
    refine Inv.costP_seq (R := SiJ db s) (Inv.costP_of_cost (cost_store _ _))
      (hoare_post (hoare_si_store (k := 8) (by omega) (hev _ _ hB)) fun _ _ _ _ h _ => h.2) ?_
    refine Inv.costP_seq (R := SiJ db s) (Inv.costP_of_cost (cost_store _ _))
      (hoare_post (hoare_si_store (k := 16) (by omega) (hev _ _ hC)) fun _ _ _ _ h _ => h.2) ?_
    refine Band.costP_decCall Band.dwtm_costP ?_ (funSpec_true _) ?_
    · intro t _ ht vs' hvs' callee'
      obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs'
      obtain ⟨v2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
      rw [evs_nil] at hr2
      cases hr2
      rw [hev _ _ hA t ht] at h1
      rw [hev _ _ hB t ht] at h2
      cases h1
      cases h2
      obtain ⟨q, q', W, hpt, ho, hm, hn, hW, hWn, hfr, hdiff, hl⟩ := ht
      refine ⟨db, .val (.word rt), rfl, q', hpt, ho, ndbW_mono ?_ hm.1⟩
      refine Spec.Mpt.Leaves.wFrame_ndbW _ _ _ _ hn (fun a h1 h2 => ?_)
      by_contra hne
      obtain ⟨d1, d2⟩ := hdiff a hne
      exact hfr a.toNat d1 d2 (Or.inl ⟨h1, h2⟩)
    · intro _ _ _ _ _ _ _ _ _ _ _
      exact Inv.costP_of_cost (cost_guest_costA costFin_siK)
  have := key s hs rfl hgood
  rw [bSiE_eq] at this
  exact this

end InitECandidate.Solver.MemSafe.Sp

#print axioms InitECandidate.Solver.MemSafe.Sp.hypSiCostNJ
